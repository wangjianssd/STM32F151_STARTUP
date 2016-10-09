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
static void DevUartIOInit( DevUart uart );
static void DevUartIODeInit( DevUart uart );
static void DevUartClockEnable( DevUart uart );
static void DevUartClockDisable( DevUart uart );
static void DevUart1IrqHander(void);
static void DevUart2IrqHander(void);
static void DevUart3IrqHander(void);


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
bool DevUartInit(DevUart uart, DevUartConfig config )
{
	UART_HandleTypeDef *hander;

	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	hander = &UartHander[uart];

	if (uart == DEV_UART1)
    {
        hander->Instance = USART1;
	}
	else if (uart == DEV_UART2)
    {
		hander->Instance = USART2;
	}
	else if (uart == DEV_UART3)
    {
		hander->Instance = USART3;
	}
	
    hander->Init.BaudRate = config.baud;
	hander->Init.WordLength = config.length;
	hander->Init.StopBits = config.stop_bit;
	hander->Init.Parity = config.parity;
	hander->Init.Mode = config.mode;
	hander->Init.HwFlowCtl = config.flow_contrl;

	hander->Init.OverSampling = UART_OVERSAMPLING_16;

	DevUartClockEnable(uart);

	DevUartIOInit(uart);
	
	if (HAL_UART_Init(hander) != HAL_OK)
	{
	  return false;
	}

	DevUartRxCbTab[uart] = NULL;
	
	return true;
}

/*****************************************************************************
 * Function      : UartDeInit
 * Description   : Uart Deinit
 * Input         : DevUart uart
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160923
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevUartDeInit(DevUart uart )
{
	UART_HandleTypeDef *hander;

	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	hander = &UartHander[uart];
	
	DevUartClockDisable(uart);

	DevUartIODeInit(uart);
	
	if (HAL_UART_DeInit(hander) != HAL_OK)
	{
	  return false;
	}

	//DevUartRxCbTab[huart.device] = NULL;
	
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

	//__HAL_UART_ENABLE_IT(&UartHander[uart], UART_IT_RXNE);

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
 * Function      : Uart1IrqHander()
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
void DevUart1IrqHander(void)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	UART_HandleTypeDef *hander = &UartHander[DEV_UART1];

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

      if (DevUartRxCbTab[DEV_UART1] != NULL)
      {
          DevUartRxCbTab[DEV_UART1](tmp, size);
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

/*****************************************************************************
 * Function      : Uart2IrqHander()
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
void DevUart2IrqHander(void)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	UART_HandleTypeDef *hander = &UartHander[DEV_UART2];

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

      if (DevUartRxCbTab[DEV_UART2] != NULL)
      {
          DevUartRxCbTab[DEV_UART2](tmp, size);
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
void DevUart3IrqHander(void)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	UART_HandleTypeDef *hander = &UartHander[DEV_UART3];

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

      if (DevUartRxCbTab[DEV_UART3] != NULL)
      {
          DevUartRxCbTab[DEV_UART3](tmp, size);
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


/*****************************************************************************
 * Function      : DevUartIrqEnable
 * Description   : Enable uart interrupt
 * Input         : DevUart uart
                DevUartIrq irq
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartIrqEnable( DevUart uart, DevUartIrq irq )
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	UART_HandleTypeDef *hander = &UartHander[uart];

    switch (uart)
    {
        case DEV_UART1:    IntVectRegister(USART1_IRQn, (FNCT_VOID)DevUart1IrqHander);
                           IntEnable(USART1_IRQn);
                           break;
        case DEV_UART2:    IntVectRegister(USART2_IRQn, (FNCT_VOID)DevUart2IrqHander);
                           IntEnable(USART2_IRQn);
                           break;
        case DEV_UART3:    IntVectRegister(USART3_IRQn, (FNCT_VOID)DevUart3IrqHander);
                           IntEnable(USART3_IRQn);
                           break;
        default:            break;
    }

	
	__HAL_UART_ENABLE_IT(hander, irq);
}

/*****************************************************************************
 * Function      : DevUartIrqDisable
 * Description   : Disable uart interrupt
 * Input         : DevUart uart
                   DevUartIrq irq
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartIrqDisable( DevUart uart, DevUartIrq irq )
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	UART_HandleTypeDef *hander = &UartHander[uart];
    
	HAL_NVIC_ClearPendingIRQ(USART3_IRQn);
    
	//HAL_NVIC_DisableIRQ(USART3_IRQn);
    
	__HAL_UART_DISABLE_IT(hander, irq);
}

/*****************************************************************************
 * Function      : DevUartClockEnable
 * Description   : Enable uart clock
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartClockEnable( DevUart uart )
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	switch (uart)
	{
        case DEV_UART1: __HAL_RCC_USART1_CLK_ENABLE();
			break;
		case DEV_UART2: __HAL_RCC_USART2_CLK_ENABLE();
			break;
		case DEV_UART3: __HAL_RCC_USART3_CLK_ENABLE();
			break;	
		default: 
			break;
	}
	
}

/*****************************************************************************
 * Function      : DevUartClockDisable
 * Description   : Disable uart clock
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartClockDisable( DevUart uart )
{
	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	switch (uart)
	{
        case DEV_UART1: __HAL_RCC_USART1_CLK_DISABLE();
			break;
		case DEV_UART2: __HAL_RCC_USART2_CLK_DISABLE();
			break;
		case DEV_UART3: __HAL_RCC_USART3_CLK_DISABLE();
			break;	
		default: 
			break;
	}
	
}

/*****************************************************************************
 * Function      : DevUartIOInit
 * Description   : config io for uart
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartIOInit( DevUart uart )
{
	GPIO_InitTypeDef GPIO_InitStruct;

	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	UART_HandleTypeDef *hander = &UartHander[uart];
	
	  if(uart == DEV_UART3)
	  {
		/* Peripheral clock enable */		
		 __HAL_RCC_GPIOD_CLK_ENABLE();
		
		/**USART3 GPIO Configuration	
		PD8 	------> USART3_TX
		PD9 	------> USART3_RX 
		*/
		GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
		GPIO_InitStruct.Pull = GPIO_PULLUP;
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
		GPIO_InitStruct.Alternate = GPIO_AF7_USART3;
		HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

	  }
}

/*****************************************************************************
 * Function      : DevUartIODeInit
 * Description   : unconfig io for uart
 * Input         : DevUart uart
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevUartIODeInit( DevUart uart )
{
	GPIO_InitTypeDef GPIO_InitStruct;

	DBG_ASSERT(uart < DEV_UART_NUM __DBG_LINE);

	if(uart == DEV_UART3)
	{
		/**USART3 GPIO Configuration	
		PD8 	------> USART3_TX
		PD9 	------> USART3_RX 
		*/
		HAL_GPIO_DeInit(GPIOD, GPIO_PIN_8|GPIO_PIN_9);
	}
}


//void HAL_UART_MspInit(UART_HandleTypeDef* huart)
//{

//  GPIO_InitTypeDef GPIO_InitStruct;
//  if(huart->Instance==USART1)
//  {
//  /* USER CODE BEGIN USART1_MspInit 0 */

//  /* USER CODE END USART1_MspInit 0 */
//    /* Peripheral clock enable */
//    __HAL_RCC_USART1_CLK_ENABLE();
//  
//    /**USART1 GPIO Configuration    
//    PA9     ------> USART1_TX
//    PA10     ------> USART1_RX 
//    */
//    GPIO_InitStruct.Pin = GPIO_PIN_9|GPIO_PIN_10;
//    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//    GPIO_InitStruct.Pull = GPIO_PULLUP;
//    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
//    GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
//    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

//  /* USER CODE BEGIN USART1_MspInit 1 */

//  /* USER CODE END USART1_MspInit 1 */
//  }
//  else if(huart->Instance==USART3)
//  {
//  /* USER CODE BEGIN USART3_MspInit 0 */

//  /* USER CODE END USART3_MspInit 0 */
//    /* Peripheral clock enable */
//    __HAL_RCC_USART3_CLK_ENABLE();
//    
//     __HAL_RCC_GPIOD_CLK_ENABLE();
//    /**USART3 GPIO Configuration    
//    PD8     ------> USART3_TX
//    PD9     ------> USART3_RX 
//    */
//    GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
//    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//    GPIO_InitStruct.Pull = GPIO_PULLUP;
//    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
//    GPIO_InitStruct.Alternate = GPIO_AF7_USART3;
//    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

//    /* Peripheral interrupt init */
//    HAL_NVIC_SetPriority(USART3_IRQn, 5, 0);
//    HAL_NVIC_EnableIRQ(USART3_IRQn);
//  /* USER CODE BEGIN USART3_MspInit 1 */
//  //__HAL_USART_ENABLE_IT(huart, USART_IT_RXNE);


//  /* USER CODE END USART3_MspInit 1 */
//  }

//}

//void HAL_UART_MspDeInit(UART_HandleTypeDef* huart)
//{

//  if(huart->Instance==USART1)
//  {
//  /* USER CODE BEGIN USART1_MspDeInit 0 */

//  /* USER CODE END USART1_MspDeInit 0 */
//    /* Peripheral clock disable */
//    __HAL_RCC_USART1_CLK_DISABLE();
//  
//    /**USART1 GPIO Configuration    
//    PA9     ------> USART1_TX
//    PA10     ------> USART1_RX 
//    */
//    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_9|GPIO_PIN_10);

//  /* USER CODE BEGIN USART1_MspDeInit 1 */

//  /* USER CODE END USART1_MspDeInit 1 */
//  }
//  else if(huart->Instance==USART3)
//  {
//  /* USER CODE BEGIN USART3_MspDeInit 0 */

//  /* USER CODE END USART3_MspDeInit 0 */
//    /* Peripheral clock disable */
//    __HAL_RCC_USART3_CLK_DISABLE();
//  
//    /**USART3 GPIO Configuration    
//    PD8     ------> USART3_TX
//    PD9     ------> USART3_RX 
//    */
//    HAL_GPIO_DeInit(GPIOD, GPIO_PIN_8|GPIO_PIN_9);

//    /* Peripheral interrupt DeInit*/
//    HAL_NVIC_DisableIRQ(USART3_IRQn);

//  /* USER CODE BEGIN USART3_MspDeInit 1 */

//  /* USER CODE END USART3_MspDeInit 1 */
//  }

//}

