/**
 *
 * @brief       :  
 *
 * @file        : dev_sleep.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-27           v0.1              wangjian        first version 
*/

#ifndef  __DEV_SLEEP__
#define  __DEV_SLEEP__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/
typedef enum
{
    DEV_SLEEP_RUN,
    DEV_SLEEP_NORMAL,
    DEV_SLEEP_DEEP,
    DEV_SLEEP_STOP,
    DEV_SLEEP_SHUTOFF,
} DevSleepTypeDef;

/* Function prototypes -------------------------------------------------------*/
void DevSleep (DevSleepTypeDef sleep);


/* Variables -----------------------------------------------------------------*/

#ifdef __cplusplus
}
#endif

#endif
