/**
 *
 * @brief       :  
 *
 * @file        : dev_rtc.c
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
DBG_THIS_MODULE("RTC")

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
static RTC_HandleTypeDef hrtc;
static FNCT_VOID DevRtcIsr = NULL;

/* Function prototypes -------------------------------------------------------*/
static void DevRtcIrqHander(void);

void DevRtcInit(void)
{
   // RCC_PeriphCLKInitTypeDef PeriphClkInit;

   // PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_RTC;
   // PeriphClkInit.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
    
   // if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  //  {
      //Error_Handler();
   // }
   __HAL_RCC_RTC_ENABLE();


}
void DevRtcDeinit(void)
{
    __HAL_RCC_RTC_DISABLE();

}


bool DevRtcSet(DevRtcTime time)
{
    RTC_TimeTypeDef sTime;
    RTC_DateTypeDef sDate;
    
    hrtc.Instance = RTC;
    hrtc.Init.HourFormat = time.time_format;
    
    hrtc.Init.AsynchPrediv = 127;
    hrtc.Init.SynchPrediv = 255;
    hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
    hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
    hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;

    sTime.Hours     = time.hour;
    sTime.Minutes   = time.minutes;
    sTime.Seconds   = time.seconds;
    sTime.TimeFormat        = time.time_format;
    sTime.DayLightSaving    = time.daylight_saving;
    sTime.StoreOperation    = RTC_STOREOPERATION_RESET;
    
    if (HAL_RTC_SetTime(&hrtc, &sTime, RTC_FORMAT_BIN) != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    sDate.Date      = time.date;
    sDate.WeekDay   = time.weekday;
    sDate.Month     = time.month;
    sDate.Year      = time.year;
    
    if (HAL_RTC_SetDate(&hrtc, &sDate, RTC_FORMAT_BIN) != HAL_OK)
    {
        return DEF_FALSE;
    }

    return DEF_TRUE;

}

bool DevRtcGet(DevRtcTime *time)
{
    RTC_TimeTypeDef sTime;
    RTC_DateTypeDef sDate;
    
    if (HAL_RTC_GetTime(&hrtc, &sTime, RTC_FORMAT_BIN) != HAL_OK)
    {
        return DEF_FALSE;
    }

    if (HAL_RTC_GetDate(&hrtc, &sDate, RTC_FORMAT_BIN) != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    time->hour     = sTime.Hours;
    time->minutes   = sTime.Minutes;
    time->seconds   = sTime.Seconds;
    time->time_format        = sTime.TimeFormat;
    time->daylight_saving    = sTime.DayLightSaving;

    time->date      = sDate.Date;
    time->weekday   = sDate.WeekDay;
    time->month     = sDate.Month;
    time->year      = sDate.Year;
    return DEF_TRUE;
}

void DevRtcIrqRegister( uint8_t second, FNCT_VOID isr )
{
	DBG_ASSERT(second > 0);
    
    if (HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, (second - 1), RTC_WAKEUPCLOCK_CK_SPRE_16BITS) == HAL_OK)
    {
        DevRtcIsr = isr;
    }
}

void DevRtcIrqEnable( void )
{
    IntVectRegister(RTC_WKUP_IRQn, (FNCT_VOID)DevRtcIrqHander);

    IntEnable(RTC_WKUP_IRQn);
}

void DevRtcIrqDisable( void )
{
    //HAL_RTCEx_DeactivateWakeUpTimer(&hrtc);
    
    IntDisable(RTC_WKUP_IRQn);
    
    IntVectUnregister(RTC_WKUP_IRQn);
}

void DevRtcIrqHander(void)
{
	    /* Get the pending status of the WAKEUPTIMER Interrupt */
    if(__HAL_RTC_WAKEUPTIMER_GET_FLAG(&hrtc, RTC_FLAG_WUTF) != RESET)
    {
      /* WAKEUPTIMER callback */ 
      if (DevRtcIsr != NULL)
      {
        DevRtcIsr();
      }
      
      /* Clear the WAKEUPTIMER interrupt pending bit */
      __HAL_RTC_WAKEUPTIMER_CLEAR_FLAG(&hrtc, RTC_FLAG_WUTF);
    }

  /* Clear the EXTI's line Flag for RTC WakeUpTimer */
  __HAL_RTC_WAKEUPTIMER_EXTI_CLEAR_FLAG();
  
  /* Change RTC state */
  hrtc.State = HAL_RTC_STATE_READY;
}

