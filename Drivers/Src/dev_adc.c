/**
 *
 * @brief       :  
 *
 * @file        : dev_adc.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-31
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-31           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Define --------------------------------------------------------------------*/
DBG_THIS_MODULE("ADC")


/* Exported types ------------------------------------------------------------*/
typedef struct
{
    DevGpioPort      port;
    DevGpioPin       pin;
}DevAdcPinPort;

/* Variables -----------------------------------------------------------------*/
static ADC_HandleTypeDef hadc;
static uint32_t DevAdcChannelTab[DEV_ADC_CH_NUM] = 
{
    ADC_CHANNEL_0,\
    ADC_CHANNEL_1,\
    ADC_CHANNEL_2,\
    ADC_CHANNEL_3,\
    ADC_CHANNEL_4,\
    ADC_CHANNEL_5,\
    ADC_CHANNEL_6,\
    ADC_CHANNEL_7,\
    ADC_CHANNEL_8,\
    ADC_CHANNEL_9,\
    ADC_CHANNEL_10,\
    ADC_CHANNEL_11,\
    ADC_CHANNEL_12,\
    ADC_CHANNEL_13,\
    ADC_CHANNEL_14,\
    ADC_CHANNEL_15,\
    ADC_CHANNEL_16,\
    ADC_CHANNEL_17,\
    ADC_CHANNEL_18,\
    ADC_CHANNEL_19,\
    ADC_CHANNEL_20,\
    ADC_CHANNEL_21,\
    ADC_CHANNEL_22,\
    ADC_CHANNEL_23,\
    ADC_CHANNEL_24,\
    ADC_CHANNEL_25,\
    ADC_CHANNEL_26,\
    
#if defined(__STM32L151xCA__) || defined (__STM32L151xD__) || defined (__STM32L152xCA__) || defined (__STM32L152xD__) || defined (STM32L162xCA) || defined (__STM32L162xD__) || defined(__STM32L151xE__) || defined(__STM32L151xDX__) || defined (__STM32L152xE__) || defined (__STM32L152xDX__) || defined (__STM32L162xE__) || defined (__STM32L162xDX__)
    ADC_CHANNEL_27,\
    ADC_CHANNEL_28,\
    ADC_CHANNEL_29,\
    ADC_CHANNEL_30,\
    ADC_CHANNEL_31
#endif    
};

static DevAdcPinPort DevAdcChannelPinTab[DEV_ADC_CH_NUM] = 
{
    {DEV_ADC_CH0_PORT,  DEV_ADC_CH0_PIN},\
    {DEV_ADC_CH1_PORT,  DEV_ADC_CH1_PIN},\
    {DEV_ADC_CH2_PORT,  DEV_ADC_CH2_PIN},\
    {DEV_ADC_CH3_PORT,  DEV_ADC_CH3_PIN},\
    {DEV_ADC_CH4_PORT,  DEV_ADC_CH4_PIN},\
    {DEV_ADC_CH5_PORT,  DEV_ADC_CH5_PIN},\
    {DEV_ADC_CH6_PORT,  DEV_ADC_CH6_PIN},\
    {DEV_ADC_CH7_PORT,  DEV_ADC_CH7_PIN},\
    {DEV_ADC_CH8_PORT,  DEV_ADC_CH8_PIN},\
    {DEV_ADC_CH9_PORT,  DEV_ADC_CH9_PIN},\
    {DEV_ADC_CH10_PORT, DEV_ADC_CH10_PIN},\
    {DEV_ADC_CH11_PORT, DEV_ADC_CH11_PIN},\
    {DEV_ADC_CH12_PORT, DEV_ADC_CH12_PIN},\
    {DEV_ADC_CH13_PORT, DEV_ADC_CH13_PIN},\
    {DEV_ADC_CH14_PORT, DEV_ADC_CH14_PIN},\
    {DEV_ADC_CH15_PORT, DEV_ADC_CH15_PIN},\
    {NULL               , NULL},\
    {NULL               , NULL},\
    {DEV_ADC_CH18_PORT, DEV_ADC_CH18_PIN},\
    {DEV_ADC_CH19_PORT, DEV_ADC_CH19_PIN},\
    {DEV_ADC_CH20_PORT, DEV_ADC_CH20_PIN},\
    {DEV_ADC_CH21_PORT, DEV_ADC_CH21_PIN},\
    {DEV_ADC_CH22_PORT, DEV_ADC_CH22_PIN},\
    {DEV_ADC_CH23_PORT, DEV_ADC_CH23_PIN},\
    {DEV_ADC_CH24_PORT, DEV_ADC_CH24_PIN},\
    {DEV_ADC_CH25_PORT, DEV_ADC_CH25_PIN},\
    {NULL               , NULL},\
    
#if defined(__STM32L151xCA__) || defined (__STM32L151xD__) || defined (__STM32L152xCA__) || defined (__STM32L152xD__) || defined (STM32L162xCA) || defined (__STM32L162xD__) || defined(__STM32L151xE__) || defined(__STM32L151xDX__) || defined (__STM32L152xE__) || defined (__STM32L152xDX__) || defined (__STM32L162xE__) || defined (__STM32L162xDX__)
    {DEV_ADC_CH27_PORT, DEV_ADC_CH27_PIN},\
    {DEV_ADC_CH28_PORT, DEV_ADC_CH28_PIN},\
    {DEV_ADC_CH29_PORT, DEV_ADC_CH29_PIN},\
    {DEV_ADC_CH30_PORT, DEV_ADC_CH30_PIN},\
    {DEV_ADC_CH31_PORT, DEV_ADC_CH31_PIN} 
#endif
};

/* Function prototypes -------------------------------------------------------*/
static bool DevAdcChPinInit (DevAdcChannel ch);
static bool DevAdcChPinDeinit (DevAdcChannel ch);
static bool DevAdcChannelSel (DevAdcChannel ch);

/*****************************************************************************
 * Function      : DevAdcInit
 * Description   : Init adc
 * Input         : DevAdcChannel ch  
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161101
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevAdcInit (void)
{    
      /**Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
      */
    hadc.Instance = ADC1;
    hadc.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
    hadc.Init.Resolution = ADC_RESOLUTION_12B;
    hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
    hadc.Init.ScanConvMode = ADC_SCAN_DISABLE;
    hadc.Init.EOCSelection = ADC_EOC_SEQ_CONV;
    hadc.Init.LowPowerAutoWait = ADC_AUTOWAIT_DISABLE;
    hadc.Init.LowPowerAutoPowerOff = ADC_AUTOPOWEROFF_DISABLE;
    hadc.Init.ChannelsBank = ADC_CHANNELS_BANK_A;
    hadc.Init.ContinuousConvMode = DISABLE;
    hadc.Init.NbrOfConversion = 1;
    hadc.Init.DiscontinuousConvMode = DISABLE;
    hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
    hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
    hadc.Init.DMAContinuousRequests = DISABLE;

    __HAL_RCC_ADC1_CLK_ENABLE();
    
    if (HAL_ADC_Init(&hadc) != HAL_OK)
    {
      return DEF_FALSE;
    }
    
    return DEF_TRUE;

}

/*****************************************************************************
 * Function      : DevAdcChannelSel
 * Description   : ADC channel select
 * Input         : DevAdcChannel ch  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161102
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static bool DevAdcChannelSel (DevAdcChannel ch)
{
    /**Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time. 
    */
    if (DevAdcChPinInit(ch) != DEF_TRUE)
    {
        return DEF_FALSE;
    }

}

/*****************************************************************************
 * Function      : DevAdcDeInit
 * Description   : Deinit adc
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161101
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevAdcDeInit (void)
{    
    HAL_ADC_DeInit(&hadc);
    
    __HAL_RCC_ADC1_CLK_DISABLE();

}

/*****************************************************************************
 * Function      : DevAdcChPinInit
 * Description   : Init ch pin
 * Input         : DevAdcChannel ch  
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161101
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static bool DevAdcChPinInit (DevAdcChannel ch)
{
    ADC_ChannelConfTypeDef sConfig;
    
    DevGpioConfig config;
    DevAdcPinPort pin;


    if ((ch != DEV_ADC_CH16) && (ch != DEV_ADC_CH17)
        &&(ch != DEV_ADC_CH26))
    {
        config.mode = DEV_GPIO_MODE_ANALOG;
        config.pull = DEV_GPIO_NOPULL;
        config.speed = DEV_GPIO_SPEED_FREQ_VERY_HIGH;
        DevGpioInit(DevAdcChannelPinTab[ch].port, DevAdcChannelPinTab[ch].pin, config );
    }

    sConfig.Channel = DevAdcChannelTab[ch];
    sConfig.Rank = 1;
    sConfig.SamplingTime = ADC_SAMPLETIME_4CYCLES;
    if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;

}

/*****************************************************************************
 * Function      : DevAdcChPinDeinit
 * Description   : Deinit ADC ch
 * Input         : DevAdcChannel ch  
 * Output        : None
 * Return        : static
 * Others        : 
 * Record
 * 1.Date        : 20161102
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static bool DevAdcChPinDeinit (DevAdcChannel ch)
{
    ADC_ChannelConfTypeDef sConfig;
    
    DevGpioConfig config;
    DevAdcPinPort pin;


    if ((ch != DEV_ADC_CH16) && (ch != DEV_ADC_CH17)
        &&(ch != DEV_ADC_CH26))
    {
        DevGpioDeInit(DevAdcChannelPinTab[ch].port, DevAdcChannelPinTab[ch].pin);
    }
    
    return DEF_TRUE;

}

/*****************************************************************************
 * Function      : DevAdcGet
 * Description   : Get ch adc value
 * Input         : DevAdcChannel ch  
                   uint16_t *data    
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161101
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevAdcGet ( DevAdcChannel ch , uint16_t *data)
{
    uint32_t value;
    
    if (DevAdcChannelSel(ch) != DEF_TRUE)
    {    
        return DEF_FALSE;
    }

    HAL_ADC_Start(&hadc);

    if (HAL_ADC_PollForConversion(&hadc, 500) != HAL_OK)
    {
        DevAdcChPinDeinit(ch);
        return DEF_FALSE;
    }

    value = HAL_ADC_GetValue(&hadc);

    *data = (uint16_t)value;
    
    DevAdcChPinDeinit(ch);
    
    DBG_LOG(__DBG_LEVEL_TRACE__, "ADC ch:%d, val:%d\r\n", ch, *data);
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : DevAdcCalGet
 * Description   : Get adc cal value
 * Input         : void  
 * Output        : None
 * Return        : DevAdCal
 * Others        : 
 * Record
 * 1.Date        : 20161101
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
DevAdcCal *DevAdcCalGet (void)
{
    //DevAdcCal ret;
    DevAdcCal *p;
    
    p = (DevAdcCal *)(DEV_ADC_VREF_INTCAL_BASE);
    //ret = *p;
  
    return p;
}


