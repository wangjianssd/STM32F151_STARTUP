/**
 *
 * @brief       :  
 *
 * @file        : dev_rtc.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-28
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-28           v0.1              wangjian        first version 
*/
#ifndef  __DEV_RTC__
#define  __DEV_RTC__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/
typedef enum
{ 
  DEV_RTC_TIME_FORMAT_12H = RTC_HOURFORMAT_12,      
  DEV_RTC_TIME_FORMAT_24H = RTC_HOURFORMAT_24
}DevRtcTimeFormat; 

typedef enum
{ 
    DEV_RTC_MONTH_JANUARY = 1, 
    DEV_RTC_MONTH_FEBRUARY,
    DEV_RTC_MONTH_MARCH,
    DEV_RTC_MONTH_APRIL,
    DEV_RTC_MONTH_MAY,
    DEV_RTC_MONTH_JUNE,
    DEV_RTC_MONTH_JULY,
    DEV_RTC_MONTH_AUGUST,
    DEV_RTC_MONTH_SEPTEMBER,
    DEV_RTC_MONTH_OCTOBER,
    DEV_RTC_MONTH_NOVEMBER,
    DEV_RTC_MONTH_DECEMBER
}DevRtcMonthFormat; 

typedef enum
{ 
    DEV_RTC_WEEKDAY_MONDAY = 1, 
    DEV_RTC_WEEKDAY_TUESDAY,
    DEV_RTC_WEEKDAY_WEDNESDAY,
    DEV_RTC_WEEKDAY_THURSDAY,
    DEV_RTC_WEEKDAY_FRIDAY,
    DEV_RTC_WEEKDAY_SATURDAY,
    DEV_RTC_WEEKDAY_SUNDAY
}DevRtcWeekdayFormat; 

typedef enum
{ 
  DEV_RTC_DAYLIGHT_SAVING_SUB1H = RTC_DAYLIGHTSAVING_SUB1H,      
  DEV_RTC_DAYLIGHT_SAVING_ADD1H = RTC_DAYLIGHTSAVING_ADD1H,
  DEV_RTC_DAYLIGHT_SAVING_NONE  = RTC_DAYLIGHTSAVING_NONE
}DevRtcDayLightSaving; 


typedef struct
{
    DevRtcWeekdayFormat weekday;          /*!< Specifies the RTC Date WeekDay.
                                          This parameter can be a value of @ref RTC_WeekDay_Definitions */
    DevRtcMonthFormat month;              /*!< Specifies the RTC Date Month (in BCD format).
                                          This parameter can be a value of @ref RTC_Month_Date_Definitions */
    uint8_t date;                         /*!< Specifies the RTC Date.
                                          This parameter must be a number between Min_Data = 1 and Max_Data = 31 */
    uint8_t year;                         /*!< Specifies the RTC Date Year.
                                          This parameter must be a number between Min_Data = 0 and Max_Data = 99 */
    uint8_t hour;                         /*!< Specifies the RTC Time Hour.
                                          This parameter must be a number between Min_Data = 0 and Max_Data = 12 if the RTC_HourFormat_12 is selected
                                          This parameter must be a number between Min_Data = 0 and Max_Data = 23 if the RTC_HourFormat_24 is selected  */
    uint8_t minutes;                      /*!< Specifies the RTC Time Minutes.
                                          This parameter must be a number between Min_Data = 0 and Max_Data = 59 */
    uint8_t seconds;                      /*!< Specifies the RTC Time Seconds.
                                          This parameter must be a number between Min_Data = 0 and Max_Data = 59 */
    DevRtcTimeFormat time_format;         /*!< Specifies the RTC AM/PM (12/24)Time. */
    DevRtcDayLightSaving daylight_saving; /*!< Specifies RTC_DayLightSaveOperation: the value of hour adjustment. */
}DevRtcTime; 

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
void DevRtcInit(void);
void DevRtcDeinit(void);
bool DevRtcSet(DevRtcTime time);
bool DevRtcGet(DevRtcTime *time);
void DevRtcIrqRegister( uint8_t second, FNCT_VOID isr );
void DevRtcIrqEnable( void );
void DevRtcIrqDisable( void );

#ifdef __cplusplus
}
#endif

#endif
