/**
 *
 * @brief       :  
 *
 * @file        : dev_watchdog.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-28
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-28           v0.1              wangjian        first version 
*/
#ifndef  __DEV_WATCHDOG__
#define  __DEV_WATCHDOG__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
void BspWatchdogSet (uint16_t time_ms);
void BspWatchdogClear (void);

void BspWatchdogStop (void);

#ifdef __cplusplus
}
#endif

#endif
