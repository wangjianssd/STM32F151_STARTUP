/**
 *
 * @brief       :  
 *
 * @file        : dev_sleep.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-27           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"
/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
/*****************************************************************************
 * Function      : DevSleep
 * Description   : device enter sleep mode
 * Input         : DevSleepTypeDef sleep  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161027
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevSleep (DevSleepTypeDef sleep)
{
    switch (sleep)
    {
        case DEV_SLEEP_RUN:     HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFI);
                                break;
        case DEV_SLEEP_NORMAL:  __WFI();// HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_STOPENTRY_WFI);
                                break;
        case DEV_SLEEP_DEEP:    //HAL_PWR_EnableWakeUpPin(PWR_WAKEUP_PIN2);
                                HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFI);
                                break;
        case DEV_SLEEP_STOP:    HAL_PWR_EnterSTOPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFI);
                                break;
        case DEV_SLEEP_SHUTOFF: HAL_PWR_EnterSTANDBYMode();
                                break;
    }

}


