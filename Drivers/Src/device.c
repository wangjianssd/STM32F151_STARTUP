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


/* Exported functions --------------------------------------------------------*/

static uint16_t count = 0;
void GpioPE3ISR(void)
{
    uint16_t i;
    uint8_t temp[128] = 0;
    count++;

    i = sprintf(temp, "count:%d\r\n", count);
    BspCom1TxFIFOIn(temp, i);
   //BspCom1SendData(temp,  i);

}

static void MX_GPIO_Init(void)
{
    DevGpioPin port;
    DevGpioPin pin;
    DevGpioConfig config;

    port = DEV_GPIO_PORTE;
    pin = DEV_GPIO_PIN2;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );

    port = DEV_GPIO_PORTC;
    pin = DEV_GPIO_PIN6;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );

    port = DEV_GPIO_PORTC;
    pin = DEV_GPIO_PIN13;
    config.level = DEV_GPIO_PIN_LEVEL_LOW;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    DevGpioInit( port, pin, config );

    ////int
    port = DEV_GPIO_PORTD;
    pin = DEV_GPIO_PIN14;
    DevGpioIrqRegister(port, pin, DEV_GPIO_MODE_IT_RISING_FALLING, GpioPE3ISR);
    DevGpioIrqEnable(port, pin);
///////

}
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
	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* Configure the system clock */
	ClockInit ();

	MX_GPIO_Init();

	/* Initialize all configured peripherals */

	//UART_Init();
   
}
