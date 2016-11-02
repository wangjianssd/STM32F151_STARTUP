/**
 *
 * @brief       :  
 *
 * @file        : debug.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-21
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-21           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "lib.h"
#include "bsp.h"

#if (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_RTT__)
#include "SEGGER_RTT.h"
#endif

//#include <stdarg.h>
/* Define --------------------------------------------------------------------*/
#define __DEBUG_PREFIX_LEN__                           (128)


/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
#if (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_COM__)
static uint8_t DebugTxFIFO[__DEBUG_TX_FIFO_SIZE__ + FIFO_INFO_SIZE] = {0};
#endif

static uint8_t DebugLevel = 0;

/*****************************************************************************
 * Function      : DebugInit
 * Description   : Init debug module
 * Input         : uint8_t debug_lev
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161021
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DebugInit( uint8_t debug_lev )
{
#if (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_COM__)

    DevUartConfig config;
    
    config.baud 		= 2000000;
	config.length 		= DEV_UART_WORDLENGTH_8B;
	config.mode 		= DEV_UART_MODE_TX;
	config.parity 		= __DEBUG_CONFIG_PARITY__;
	config.stop_bit     = __DEBUG_CONFIG_STOP__;
	config.flow_contrl 	= __DEBUG_CONFIG_FLOW_CTL__;
    config.pin.tx_af    = __DEBUG_TX_PIN_AF__;

    if (DevUartInit(__DEBUG_COM__, config) != true)
	{
      
	}
    
    FIFOInit ((FIFODataTypeDef *)DebugTxFIFO, __DEBUG_TX_FIFO_SIZE__);
#elif (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_SYSVIEW__)
    SEGGER_SYSVIEW_Conf();
    SEGGER_SYSVIEW_Start();

#endif
    DebugLevel = debug_lev;
}

#if __DEBUG_INFO_PRINT_EN__ > 0
#if (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_COM__)
/*****************************************************************************
 * Function      : DebugTxFIFOIn
 * Description   : put debug data in TX FIFO 
 * Input         : uint8_t *data
                   uint16_t len
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DebugTxFIFOIn( uint8_t *data, uint16_t len )
{
	if (__DEBUG_TX_FIFO_SIZE__ - GetFIFOCount((FIFODataTypeDef *)DebugTxFIFO) < len)
	{
        return false;
	}

    for (uint32_t i = 0; i < len; i++)
    {
        FIFOIn((FIFODataTypeDef *)DebugTxFIFO, &data[i]);
    }
    
	return true;
}

/*****************************************************************************
 * Function      : DebugTxFIFOOut
 * Description   : Send debug TX FIFO data
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DebugTxFIFOOut( void )
{
    uint8_t byte;
    
    while (!FIFOIsEmpty((FIFODataTypeDef *)DebugTxFIFO))
    {
        FIFOOut((FIFODataTypeDef *)DebugTxFIFO, &byte);
        DevUartTx(__DEBUG_COM__, &byte, 1);
    }
}
#endif

/*****************************************************************************
 * Function      : DebugLog
 * Description   : Debug log
 * Input         : uint8_t dbg_lev  
                   const char *fn   
                   uint16_t line    
                    ...              
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161021
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DebugLog(uint8_t dbg_lev, const char *fn, uint16_t line, ...)
{
    int8_t  buff[__DEBUG_PREFIX_LEN__];
    uint16_t i;
    int8_t *pbuf;
	va_list args;
	const int8_t *fmt;
    
    if(!(DebugLevel & dbg_lev))
    {
        return;
    }
        
	memset(buff, 0, __DEBUG_PREFIX_LEN__);
    
	switch (dbg_lev)
	{
    	case __DBG_LEVEL_TRACE__:
             i = sprintf((char *)buff, "[%s, %u][TRACE] ", fn, line);
    		break;
            
    	case __DBG_LEVEL_INFO__:
            i = sprintf((char *)buff, "[%s, %u][INFO ] ", fn, line);
    		break;
            
    	case __DBG_LEVEL_WARNING__:
            i = sprintf((char *)buff, "[%s, %u][WARN ] ", fn, line);
    		break;
            
    	case __DBG_LEVEL_ERROR__:
            i = sprintf((char *)buff, "[%s, %u][ERROR] ", fn, line);
    		break;
        case __DBG_LEVEL_ASSERT__:
            i = sprintf((char *)buff, "[%s, %u][ASSERT] ", fn, line);
    		break;
    	default:
    		break;
	}

    pbuf = (int8_t *)(buff + i);

    va_start(args, line);
    
    fmt = va_arg(args, const int8_t*);
    
    tfp_vsprintf(pbuf, (char *)fmt, args);
    //i = sprintf(pbuf, (char *)fmt, args);
#if (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_COM__)

    DebugTxFIFOIn((uint8_t *)buff, strlen(buff));

#if 1 
    DebugTxFIFOOut();
#endif
#elif (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_RTT__)

    SEGGER_RTT_vprintf(0, buff);
#elif (__DEBUG_PORT__ == __DEBUG_PORT_SEGGER_SYSVIEW__)

    if (dbg_lev == __DBG_LEVEL_WARNING__) 
    {
        SEGGER_SYSVIEW_PrintfTargetEx((char const*)buff, SEGGER_SYSVIEW_WARNING);
    }
    else if ((dbg_lev == __DBG_LEVEL_ERROR__) || (dbg_lev == __DBG_LEVEL_ASSERT__) )
    {
        SEGGER_SYSVIEW_PrintfTargetEx((char const*)buff, SEGGER_SYSVIEW_ERROR);
    }
    else  
    {
        SEGGER_SYSVIEW_PrintfTargetEx((char const*)buff, SEGGER_SYSVIEW_LOG);
    }


#endif
    va_end(args);
}
#endif

//void DBG_ASSERT(bool_t cond _DBG_LINE_)
//{
//    int8_t  buff[__DEBUG_PREFIX_LEN__];
//    uint16_t i;

//    if (cond == false)
//    {
//        while (1);
//    }
//}

void DebugAssert(bool_t cond, const char *fn, uint16_t line)
{         
    if (cond == false)
    {
        DebugLog(__DBG_LEVEL_ASSERT__, fn, line);
        
        while (1);
    }

}
