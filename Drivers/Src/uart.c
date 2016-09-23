/**
 * @brief       : 
 *
 * @file        : uart.c
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
static UART_HandleTypeDef UartHander[DEV_UART_NUM];

/* Exported functions --------------------------------------------------------*/
/*****************************************************************************
 * Function      : UartInit
 * Description   : Uart init
 * Input         : UartHanderTypeDef huart
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160923
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool UartInit(DevUartHander huart )
{
	UART_HandleTypeDef *hander;

	DBG_ASSERT(huart.device < DEV_UART_NUM __DBG_LINE);

	hander = &UartHander[huart.device];

	if (huart.device == DEV_UART1)
    {
        hander->Instance = USART1;
	}
	else if (huart.device == DEV_UART2)
    {
		hander->Instance = USART2;
	}
	else if (huart.device == DEV_UART3)
    {
		hander->Instance = USART3;
	}
	
    hander->Init.BaudRate = huart.baud;

	if (huart.length == DEV_UART_WORDLENGTH_8B)
    {
		hander->Init.WordLength = UART_WORDLENGTH_8B;
	}
	else if (huart.length == DEV_UART_WORDLENGTH_9B)
    {
		hander->Init.WordLength = UART_WORDLENGTH_9B;
	}

    if (huart.stop_bit == DEV_UART_STOPBITS_1)
    {
		hander->Init.StopBits = UART_STOPBITS_1;
	}
	else if (huart.stop_bit == DEV_UART_STOPBITS_2)
    {
		hander->Init.StopBits = UART_STOPBITS_2;
	}

    if (huart.parity == DEV_UART_PARITY_NONE)
    {
		hander->Init.Parity = UART_PARITY_NONE;
	}
	else if (huart.parity == DEV_UART_PARITY_EVEN)
    {
		hander->Init.Parity = UART_PARITY_EVEN;
	}
	else if (huart.parity == DEV_UART_PARITY_ODD)
    {
		hander->Init.Parity = UART_PARITY_ODD;
	}
	
    if (huart.mode == DEV_UART_MODE_RX)
    {
		hander->Init.Mode = UART_MODE_RX;
	}
	else if (huart.mode == DEV_UART_MODE_TX)
    {
		hander->Init.Mode = UART_MODE_TX;
	}
	else if (huart.mode == DEV_UART_MODE_TX_RX)
    {
		hander->Init.Mode = UART_MODE_TX_RX;
	}

	hander->Init.HwFlowCtl = UART_HWCONTROL_NONE;
	hander->Init.OverSampling = UART_OVERSAMPLING_16;
	
	if (HAL_UART_Init(hander) != HAL_OK)
	{
	  return false;
	}
	
	return true;
}

/*****************************************************************************
 * Function      : UartSend
 * Description   : Uart send data
 * Input         : uint8_t* data
 				   UartHanderTypeDef huart
                   uint16_t size
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160923
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool UartSend(DevUartHander huart , uint8_t* data, uint16_t size )
{
    UART_HandleTypeDef *hander;

    DBG_ASSERT(huart.device < DEV_UART_NUM __DBG_LINE);

    hander = &UartHander[huart.device];

    if (HAL_UART_Transmit (hander, data, size, 500) != HAL_OK)
    {
        return false;
    }

    return true;
}

/*****************************************************************************
 * Function      : UartReceive
 * Description   : Uart receive data
 * Input         : UartHanderTypeDef huart
	               uint16_t size
 * Output        : uint8_t* data
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160923
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool UartReceive(DevUartHander huart, uint8_t* data, uint16_t size )
{
    UART_HandleTypeDef *hander;

    DBG_ASSERT(huart.device < DEV_UART_NUM __DBG_LINE);

    hander = &UartHander[huart.device];

    if (HAL_UART_Receive (hander, data, size, 1000) != HAL_OK)
    {
      return false;
    }

    return true;
}


