/**
 *
 * @brief       :  
 *
 * @file        : debug.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-21
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-21           v0.1              wangjian        first version 
*/
#ifndef  __DEBUG__
#define  __DEBUG__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/
#include <string.h>

/* Define --------------------------------------------------------------------*/
#define __DEBUG_PORT_SEGGER_RTT__                   (0)
#define __DEBUG_PORT_SEGGER_COM__                   (1)
#define __DEBUG_PORT_SEGGER_SYSVIEW__               (2)


#define __DEBUG_INFO_PRINT_EN__                     (2)
#define __DEBUG_PORT__                              (__DEBUG_PORT_SEGGER_SYSVIEW__)

#define __DBG_LEVEL_NONE__		                    (0x00)
#define __DBG_LEVEL_TRACE__		                    (0x01<<0)
#define __DBG_LEVEL_INFO__		                    (0x01<<1)
#define __DBG_LEVEL_WARNING__	                    (0x01<<2)
#define __DBG_LEVEL_ERROR__		                    (0x01<<3)
#define __DBG_LEVEL_CRITICAL__	                    (0x01<<4)
#define __DBG_LEVEL_ORIGIN__                        (0x01<<5)
#define __DBG_LEVEL_ASSERT__                        (0x01<<5)

#define	__DEBUG_COM__                                DEV_UART1
#define	__DEBUG_CONFIG_STOP__                        DEV_UART_STOPBITS_1 
#define	__DEBUG_CONFIG_BIT__                         DEV_UART_WORDLENGTH_8B
#define	__DEBUG_CONFIG_PARITY__                      DEV_UART_PARITY_NONE
#define	__DEBUG_CONFIG_FLOW_CTL__                    UART_HWCONTROL_NONE
#define	__DEBUG_TX_FIFO_SIZE__                       256
#define	__DEBUG_TX_PIN_AF__                          DEV_UART_PIN_AF0

#if __DEBUG_INFO_PRINT_EN__ > 0

#define _DBG_LINE_  	, uint16_t line
#define __DBG_LINE  	, __LINE__

/** define file name */
#define DBG_THIS_FILE                                               \
char const l_this_file[] = __FILE__;

#define DBG_THIS_MODULE(name_)                                      \
static char const l_this_file[] = name_;

void DebugLog(uint8_t dbg_lev, const char *fn, uint16_t line, ...);

#define __FILENAME__            (l_this_file)

#define DBG_LOG(level, ...)                                         \
    do                                                              \
    {                                                               \
        DebugLog(level, __FILENAME__, __LINE__, __VA_ARGS__);      \
    }while(__LINE__ == -1)


void DebugAssert(bool_t cond, const char *fn, uint16_t line);
    
#define DBG_ASSERT(cond, ...)                               \
        do                                            \
        {                                               \
            DebugAssert(cond, __FILE__, __LINE__);     \
        }while(__LINE__ == -1)

#else

#define _DBG_LINE_  	, uint16_t line

#define __DBG_LINE  	, __LINE__

#define DBG_THIS_FILE

#define DBG_THIS_MODULE(name_)
        
#define DBG_LOG(level, ...)

#define DBG_ASSERT(cond, ...)

#endif

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
//void DBG_ASSERT(bool_t cond _DBG_LINE_);
//bool_t debug_enter_queue(uint8_t *string, uint8_t len);
//void debug_sqqueue_init();

/* Variables -----------------------------------------------------------------*/
//extern uint8_t global_debug_level;

#ifdef __cplusplus
}
#endif

#endif


