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
       
   BspCom1SendData(temp,  i);
     // DevGpioIrqDisable(DEV_GPIO_PORTD, DEV_GPIO_PIN14);

}
/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
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

  ////int
  port = DEV_GPIO_PORTD;
  pin = DEV_GPIO_PIN14;

//  config.level = DEV_GPIO_PIN_LEVEL_LOW;
//  config.pull = DEV_GPIO_NOPULL;
//  config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
//  config.mode = DEV_GPIO_MODE_OUTPUT_PP;
  
//  DevGpioInit( port, pin, config );
  DevGpioIrqRegister(port, pin, DEV_GPIO_MODE_IT_RISING_FALLING, GpioPE3ISR);
  DevGpioIrqEnable(port, pin);
  ///////
  port = DEV_GPIO_PORTC;
  pin = DEV_GPIO_PIN13;

  config.level = DEV_GPIO_PIN_LEVEL_LOW;
  config.pull = DEV_GPIO_NOPULL;
  config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
  config.mode = DEV_GPIO_MODE_OUTPUT_PP;
  
  DevGpioInit( port, pin, config );

  //  GPIO_InitTypeDef GPIO_InitStruct;
//
//  /* GPIO Ports Clock Enable */
//  __HAL_RCC_GPIOE_CLK_ENABLE();
//  __HAL_RCC_GPIOC_CLK_ENABLE();
//  __HAL_RCC_GPIOD_CLK_ENABLE();
//  __HAL_RCC_GPIOA_CLK_ENABLE();
//  __HAL_RCC_GPIOB_CLK_ENABLE();
//
//  /*Configure GPIO pin Output Level */
//  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2|GPIO_PIN_3, GPIO_PIN_RESET);
//
//  /*Configure GPIO pin Output Level */
//  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
//
//  /*Configure GPIO pins : PE2 PE3 */
//  GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3;
//  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
//  GPIO_InitStruct.Pull = GPIO_NOPULL;
//  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);
//
//  /*Configure GPIO pin : PC13 */
//  GPIO_InitStruct.Pin = GPIO_PIN_13;
//  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
//  GPIO_InitStruct.Pull = GPIO_NOPULL;
//  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

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
