/**
 * @brief       : 
 *
 * @file        : clock.c
 * @author      : wangjian
 *
 * Version      : v0.0.1
 * Date         : 2016/09/21
 * Change Logs  :
 *
 * Date          Version      Author        Notes
 * 2016/09/21    v0.0.1        wangjian    first version
 */
/* Exported incluides --------------------------------------------------------*/
#include "device.h"

/* Private variables ---------------------------------------------------------*/
static uint16_t count = 0;


/* Exported functions --------------------------------------------------------*/
void GpioPE3ISR(void);



/*****************************************************************************
 * Function      : DeviceInit
 * Description   : 
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DeviceInit (void)
{
    DevGpioPort port;
    DevGpioPin pin;
    DevGpioConfig config;

    //≥ı ºªØvector
    IntInit();
    CM3VectTabSetOffset(SRAM_BASE, INT_VECT_TABLE_OFFSET_ADDR);

	/* Configure the system clock */
	DevClockInit ();
    
	/* Configure the system tick */
    SysTickInit(HAL_RCC_GetHCLKFreq() / 1000);
    
	/* enable MCO pin output*/
    //DevClockMCOEnable();

    /* Configure gpio pin*/
    //PE2 OUTPUT
	port = DEV_GPIO_PORTE;
    pin = DEV_GPIO_PIN2;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );
    
    //PC6 OUTPUT
    port = DEV_GPIO_PORTC;
    pin = DEV_GPIO_PIN6;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );
    
    //PC13 OUTPUT
    port = DEV_GPIO_PORTC;
    pin = DEV_GPIO_PIN13;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );

    //PD14 INT 
    port = DEV_GPIO_PORTD;
    pin = DEV_GPIO_PIN14;
    DevGpioIrqRegister(port, pin, DEV_GPIO_MODE_IT_RISING_FALLING, GpioPE3ISR);
    DevGpioIrqEnable(port, pin);

   
}

void GpioPE3ISR(void)
{
    uint16_t i;
    uint8_t temp[128] = 0;
    count++;

    i = sprintf(temp, "count:%d\r\n", count);
    BspCom1TxFIFOIn(temp, i);
   //BspCom1SendData(temp,  i);

}

