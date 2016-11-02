/**
 *
 * @brief       :  
 *
 * @file        : bsp_power.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-11-02
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-11-02           v0.1              wangjian        first version 
*/
#ifndef  __BSP_POWER__
#define  __BSP_POWER__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/
#define __BSP_POWER_ADC_VREFINT__                     (1900.0)  // mv
#define __BSP_POWER_VDDA__                            (3000.0)  // MV
#define __BSP_POWER_ADC_CONV__                        (4096)

#define __BSP_POWER_ADC_CHANNEL_TEMPERATURE__         DEV_ADC_CH16
#define __BSP_POWER_ADC_CHANNEL_VOLTAGE__             DEV_ADC_CH17
#define __BSP_POWER_ADC_CHANNEL_VOLTAGE_DETECT__      DEV_ADC_CH2

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
bool BspDeviceVoltageGet (uint16_t *vol);
bool BspDeviceTemperatureGet (float *temp);

#ifdef __cplusplus
}
#endif

#endif
