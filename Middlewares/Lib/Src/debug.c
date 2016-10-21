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
#include <stdarg.h>
/* Define --------------------------------------------------------------------*/
#define __DEBUG_PREFIX_LEN__                           (128)


/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
static uint8_t DebugTxFIFO[__DEBUG_TX_FIFO_SIZE__ + FIFO_INFO_SIZE] = {0};
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
    DevUartConfig config;
    
    config.baud 		= 256000;
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

    DebugLevel = debug_lev;
}

#if __DEBUG_INFO_PRINT_EN__ > 0

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
            
    	default:
    		break;
	}

    pbuf = (int8_t *)(buff + i);

    va_start(args, line);
    
    fmt = va_arg(args, const int8_t*);
    
    i += sprintf((char *)pbuf, (char *)fmt, args);
    
    va_end(args);

    DebugTxFIFOIn((uint8_t *)buff, i);

#if 1 
    DebugTxFIFOOut();
#endif
}

#endif

void DBG_ASSERT(bool_t cond _DBG_LINE_)
{
    if (cond == false)
    {
        while (1);
    }
}




//typedef uint8_t debug_entry_t;
//static sqqueue_ctrl_t debug_buf_sqq;

//uint8_t global_debug_level;

//OSEL_NO_INIT uint16_t dbg_line;

//static uint8_t dbg_prefix_buf[DEBUG_PREFIX_LEN];

//void debug_init(uint8_t debug_lev)
//{
//    osel_memset((uint8_t *)&debug_buf_sqq, 0x00, sizeof(sqqueue_ctrl_t));
//    
//    if(sqqueue_ctrl_init(&debug_buf_sqq, 
//                         sizeof(debug_entry_t), 
//                         DEBUG_BUF_SQQ_LEN)
//       == FALSE)
//    {
//        DBG_ASSERT(FALSE __DBG_LINE);
//    }
//    
//    global_debug_level = debug_lev;
//}

//#if DEBUG_INFO_PRINT_EN> 0

//static bool_t debug_info_enter_sqqueue(uint8_t *string, uint8_t len)
//{
//    osel_int_status_t s = 0;
//    bool_t res = FALSE;
//            
//    OSEL_ENTER_CRITICAL(s);
//    // ?string_enter??enter????????
//    res = debug_buf_sqq.string_enter(&debug_buf_sqq, string, len);  
//    OSEL_EXIT_CRITICAL(s);
//    
//    return res;
//}

//void debug_log(uint8_t dbg_lev, const char *fn, uint16_t line, ...)
//{
//    if(!(global_debug_level&dbg_lev))
//    {
//        return;
//    }
//    
//    uint8_t dbg_prefix_buf[DEBUG_PREFIX_LEN];
//	char *pbuf = (char *)&dbg_prefix_buf[0];
//	(void)osel_memset(dbg_prefix_buf, 0, DEBUG_PREFIX_LEN);
//    
//	switch (dbg_lev)
//	{
//	case DBG_LEVEL_TRACE:
//		(void)tfp_sprintf(pbuf, "[%s, %u][TRACE] ", fn, line);
//		break;
//        
//	case DBG_LEVEL_INFO:
//        (void)tfp_sprintf(pbuf, "[%s, %u][INFO ] ", fn, line);
//		break;
//        
//	case DBG_LEVEL_WARNING:
//		(void)tfp_sprintf(pbuf, "[%s, %u][WARN ] ", fn, line);
//		break;
//        
//	case DBG_LEVEL_ERROR:
//		(void)tfp_sprintf(pbuf, "[%s, %u][ERROR] ", fn, line);
//		break;
//        
//	default:
//		break;
//	}
//	
//	pbuf += strlen((char_t *)dbg_prefix_buf);
//    
//	va_list args;
//	va_start(args, line);
//	const char_t *fmt = va_arg(args, const char_t*);
//    tfp_vsprintf(pbuf, (char *)fmt, args);
//	va_end(args);

//    debug_info_enter_sqqueue((uint8_t *)dbg_prefix_buf, strlen((char_t *)dbg_prefix_buf));
//#if 1  // ????????,???????????
//    debug_info_printf();
//#endif
//}
//#endif

//void debug_info_printf(void)
//{
//    uint8_t ch = 0x00;
//    if(debug_buf_sqq.sqq.base == NULL)
//    {
//        return;
//    }
//    
//    while(debug_buf_sqq.get_len(&debug_buf_sqq))
//    {
//        ch = *((debug_entry_t *)debug_buf_sqq.del(&debug_buf_sqq));
//        UART_DEVICE.send(DEBUG_PRINTF_ID, ch);
//    }
//}

//uint16_t debug_info_get(void)
//{
//    uint16_t line;
//    line = dbg_line;
//    return line;
//}

//void debug_info_clr(void)
//{
//    dbg_line = 0xFFFF;
//}

//void debug_info_set(uint16_t debug_line)
//{
//    dbg_line = debug_line;
//}

//void board_reset(void)
//{
//    __set_FAULTMASK(1);
//    NVIC_SystemReset();
//}

//#if DEBUG_INFO_PRINT_EN > 0
//void DBG_ASSERT(bool_t cond _DBG_LINE_)
//{
//    do 
//    {
//        if((cond) == FALSE)
//        {
//            dbg_line = line;
//            board_reset();
//        	OSEL_INT_LOCK();
//            while(1);
//        }
//    } while(__LINE__ == -1);
//}

//#else
//void DBG_ASSERT(bool_t cond _DBG_LINE_)                        		       
//{  
//	do
//	{
//		if((cond) == FALSE)
//		{
//            dbg_line = line;
//            board_reset();
//		}
//	} while(__LINE__ == -1);
//}

//#endif


