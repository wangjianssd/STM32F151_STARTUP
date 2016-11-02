/**
 *
 * @brief       :  
 *
 * @file        : bsp_power.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-11-02
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-11-02           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "bsp.h"
/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
/*****************************************************************************
 * Function      : BspDeviceVoltageGet
 * Description   : Get device Voltage
 * Input         : none  
 * Output        : uint16_t *vol
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161102
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspDeviceVoltageGet (uint16_t *vol)
{
    uint16_t vref_int_val;
    uint16_t power_det1;
    DevAdcCal  *cal;
        
    cal = DevAdcCalGet();
    
    if (DevAdcInit() != DEF_TRUE)
    {    
        return DEF_FALSE;
    }
    
    if (DevAdcGet(__BSP_POWER_ADC_CHANNEL_VOLTAGE__ , &vref_int_val) != DEF_TRUE)
    {
        return DEF_FALSE;
    }
    
    if (DevAdcGet(__BSP_POWER_ADC_CHANNEL_VOLTAGE_DETECT__ , &power_det1) != DEF_TRUE)
    {
        return DEF_FALSE;
    }
    
    DevAdcDeInit();
    
   // *vol = (uint16_t)((__BSP_POWER_VDDA__* (cal->vref_intcal) * power_det1) 
    //     / (vref_int_val*__BSP_POWER_ADC_CONV__) * 1.5);

    *vol = 1.5 * __BSP_POWER_VDDA__ * (vref_int_val *  power_det1) / (cal->vref_intcal * __BSP_POWER_ADC_CONV__);
    
    return DEF_TRUE;
}


/*****************************************************************************
 * Function      : BspDeviceTemperatureGet
 * Description   : Get device temperature
 * Input         : None 
 * Output        : float *temp 
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161102
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspDeviceTemperatureGet (float *temp)
{
    uint16_t data;
    DevAdcCal  *cal;
    bool ret;
        
    ret = DEF_FALSE;
    
    if (DevAdcInit() == DEF_TRUE)
    {            
        if (DevAdcGet(__BSP_POWER_ADC_CHANNEL_TEMPERATURE__ , &data) == DEF_TRUE)
        {
            //DBG_LOG(__DBG_LEVEL_INFO__, "ADC ch:%d, val:%d\r\n", ch, data);

            cal = DevAdcCalGet();
            
            //DBG_LOG(__DBG_LEVEL_INFO__, "ADC cal 1:%d, cal2:%d, cal_ref:%d\r\n", cal->tscal1, cal->tscal2, cal->vref_intcal);
            *temp = ((110 - 0) * (data - cal->tscal1))/(float)(cal->tscal2 - cal->tscal1) + 0;

            ret = DEF_TRUE;
            
            //DBG_LOG(__DBG_LEVEL_INFO__, "Temp sensor: %f C\r\n", temp);
        }

    }

    DevAdcDeInit();

    return ret;
}

