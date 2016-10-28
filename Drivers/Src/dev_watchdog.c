/**
 *
 * @brief       :  
 *
 * @file        : dev_watchdog.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-28
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-28           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
static IWDG_HandleTypeDef hiwdg;

void BspWatchdogClear (void)
{
    HAL_IWDG_Refresh(&hiwdg);
}


void BspWatchdogSet (uint16_t time_ms)
{
    uint16_t count;    
    count = (uint16_t)((float)time_ms/6.92);

    if(count > 4095)
    {
        count = 4095; 
    }

    hiwdg.Instance = IWDG;
    hiwdg.Init.Prescaler = IWDG_PRESCALER_256;
    hiwdg.Init.Reload = count;
    
    if (HAL_IWDG_Init(&hiwdg) != HAL_OK)
    {
    }

}

void BspWatchdogStop (void)
{
    /* write 0x5555,enable access to the IWDG_PR and IWDG_RLR registers*/    

    IWDG_DISABLE_WRITE_ACCESS(&hiwdg);

}

