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

/*Gloable variables ---------------------------------------------------------*/
UART_HandleTypeDef UartHander[DEV_UART_NUM];

/*Static variables ---------------------------------------------------------*/
//static uint8_t UartRxByteTab[DEV_UART_NUM] = 0;
static DEV_UART_RX_FUNC_PTR DevUartRxCbTab[DEV_UART_NUM] = {NULL};

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
bool DevUartInit(DevUartHander huart )
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

	DevUartRxCbTab[huart.device] = NULL;
	//UartRxByteTab[huart.device] = 0;
	//set RX IT config
	//HAL_UART_Receive_IT(hander, &UartRxByte, 1);
	
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
bool DevUartTx(DevUart uart , uint8_t* data, uint16_t size )
{
    DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

    if (HAL_UART_Transmit (&UartHander[uart], data, size, 100) != HAL_OK)
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
bool DevUartRx(DevUart uart, uint8_t* data, uint16_t size )
{
    DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

    if (HAL_UART_Receive (&UartHander[uart], data, size, 1000) != HAL_OK)
    {
      return false;
    }

    return true;
}

/*****************************************************************************
 * Function      : DevUartRxCb
 * Description   : Call back function in interrupt mode
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160926
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartRxCb(DevUart uart, uint8_t* data, uint16_t size)
{
  	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

    if (DevUartRxCbTab[uart] != NULL)
    {
        DevUartRxCbTab[uart](data, size);
    }
}

/*****************************************************************************
 * Function      : DevUartRxCbRegister
 * Description   : Register callback function for uart rx isr
 * Input         : DevUart uart
                FNCT_VOID isr
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160926
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartRxCbRegister(DevUart uart, DEV_UART_RX_FUNC_PTR isr )
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);
	
	DBG_ASSERT(isr != NULL __DBG_LINE);
	
	DevUartRxCbTab[uart] = isr;

	__HAL_UART_ENABLE_IT(&UartHander[uart], UART_IT_RXNE);

	//HAL_UART_Receive_IT(&UartHander[uart], &UartRxByteTab[uart], (sizeof(UartRxByteTab) / DEV_UART_NUM));
}

/*****************************************************************************
 * Function      : DevUartRxCbUnregister
 * Description   : Unregister callback function for uart rx isr
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160926
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartRxCbUnregister(DevUart uart)
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);
	
	__HAL_UART_DISABLE_IT(&UartHander[uart], UART_IT_RXNE);

	DevUartRxCbTab[uart] = NULL;
}

/*****************************************************************************
 * Function      : UartIrqHander()
 * Description   : Uart irq hander
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160927
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartIrqHander(DevUart uart)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	UART_HandleTypeDef *hander = &UartHander[uart];

	/* UART in mode Receiver ---------------------------------------------------*/
	if(	(__HAL_UART_GET_FLAG(hander, UART_FLAG_RXNE) != RESET) 
	 && (__HAL_UART_GET_IT_SOURCE(hander, UART_IT_RXNE) != RESET))
	{ 
      __HAL_UART_DISABLE_IT(hander, UART_IT_RXNE);

      data = (uint16_t)(hander->Instance->DR & (uint16_t)0x01FF);
      tmp = (uint8_t *)&data;
      size = 1;

      if(hander->Init.WordLength == UART_WORDLENGTH_9B)
      {		
          if(hander->Init.Parity == UART_PARITY_NONE)
          {
              data &= (uint16_t)0x01FF;
              size = 2;
          }
          else
          {
             data &= (uint16_t)0x00FF;
          }
      }
      else
      {
          if(hander->Init.Parity == UART_PARITY_NONE)
          {
            data &= (uint8_t)0x00FF;
          }
          else
          {
            data &= (uint8_t)0x007F;
          }
      }

      if (DevUartRxCbTab[uart] != NULL)
      {
          DevUartRxCbTab[uart](tmp, size);
      }

      __HAL_UART_CLEAR_FLAG(hander, UART_IT_RXNE);

      __HAL_UART_ENABLE_IT(hander, UART_IT_RXNE);
    
	}

	/* UART in mode Trans ---------------------------------------------------*/
	if( (__HAL_UART_GET_FLAG(hander, UART_FLAG_TC) != RESET) 
	 && (__HAL_UART_GET_IT_SOURCE(hander, UART_FLAG_TC) != RESET))
	{
	  __HAL_UART_CLEAR_FLAG(hander, UART_FLAG_TC);
	}
}

