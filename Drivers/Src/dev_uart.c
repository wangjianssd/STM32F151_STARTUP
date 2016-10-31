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

/*Incluides --------------------------------------------------------*/
#include "device.h"

/* Exported types ------------------------------------------------------------*/
typedef struct
{
    DevGpioPort      port;
    DevGpioPin       pin;
    DevGpioAlternate af;
}DevUartPinPort;

typedef struct
{
    UART_HandleTypeDef  hander;
    DevUartPin          pin;
}DevUartHander;

/*Gloable variables ---------------------------------------------------------*/
DevUartHander UartHander[DEV_UART_NUM];

/*Static variables ---------------------------------------------------------*/
//static uint8_t UartRxByteTab[DEV_UART_NUM] = 0;
static DEV_UART_RX_FUNC_PTR DevUartRxCbTab[DEV_UART_NUM] = {NULL};
static DevUartPinPort Uart1TxPinGroup[] = 
{
    {DEV_UART1_PIN_AF0_TX_PORT, DEV_UART1_PIN_AF0_TX_PIN, DEV_GPIO_AF7_USART1},\
    {DEV_UART1_PIN_AF1_TX_PORT, DEV_UART1_PIN_AF1_TX_PIN, DEV_GPIO_AF7_USART1}
};

static DevUartPinPort Uart1RxPinGroup[] = 
{
    {DEV_UART1_PIN_AF0_RX_PORT, DEV_UART1_PIN_AF0_RX_PIN, DEV_GPIO_AF7_USART1},\
    {DEV_UART1_PIN_AF1_RX_PORT, DEV_UART1_PIN_AF1_RX_PIN, DEV_GPIO_AF7_USART1}
};

static DevUartPinPort Uart2TxPinGroup[] = 
{
    {DEV_UART2_PIN_AF0_TX_PORT, DEV_UART2_PIN_AF0_TX_PIN, DEV_GPIO_AF7_USART2},\
    {DEV_UART2_PIN_AF1_TX_PORT, DEV_UART2_PIN_AF1_TX_PIN, DEV_GPIO_AF7_USART2}
};

static DevUartPinPort Uart2RxPinGroup[] = 
{
    {DEV_UART2_PIN_AF0_RX_PORT, DEV_UART1_PIN_AF0_RX_PIN, DEV_GPIO_AF7_USART2},\
    {DEV_UART2_PIN_AF1_RX_PORT, DEV_UART1_PIN_AF1_RX_PIN, DEV_GPIO_AF7_USART2}
};

static DevUartPinPort Uart3TxPinGroup[] = 
{
    {DEV_UART3_PIN_AF0_TX_PORT, DEV_UART3_PIN_AF0_TX_PIN, DEV_GPIO_AF7_USART3},\
    {DEV_UART3_PIN_AF1_TX_PORT, DEV_UART3_PIN_AF1_TX_PIN, DEV_GPIO_AF7_USART3},\
    {DEV_UART3_PIN_AF2_TX_PORT, DEV_UART3_PIN_AF2_TX_PIN, DEV_GPIO_AF7_USART3}
};

static DevUartPinPort Uart3RxPinGroup[] = 
{
    {DEV_UART3_PIN_AF0_RX_PORT, DEV_UART3_PIN_AF0_RX_PIN, DEV_GPIO_AF7_USART3},\
    {DEV_UART3_PIN_AF1_RX_PORT, DEV_UART3_PIN_AF1_RX_PIN, DEV_GPIO_AF7_USART3},\
    {DEV_UART3_PIN_AF2_RX_PORT, DEV_UART3_PIN_AF2_RX_PIN, DEV_GPIO_AF7_USART3}
};

static DevUartPinPort Uart4TxPinGroup[] = 
{
    {DEV_UART4_PIN_AF0_TX_PORT, DEV_UART4_PIN_AF0_TX_PIN, DEV_GPIO_AF8_UART4},\
};

static DevUartPinPort Uart4RxPinGroup[] = 
{
    {DEV_UART4_PIN_AF0_RX_PORT, DEV_UART4_PIN_AF0_RX_PIN, DEV_GPIO_AF8_UART4},\
};

static DevUartPinPort Uart5TxPinGroup[] = 
{
    {DEV_UART5_PIN_AF0_TX_PORT, DEV_UART5_PIN_AF0_TX_PIN, DEV_GPIO_AF8_UART5},\
};

static DevUartPinPort Uart5RxPinGroup[] = 
{
    {DEV_UART5_PIN_AF0_RX_PORT, DEV_UART5_PIN_AF0_RX_PIN, DEV_GPIO_AF8_UART5},\
};

/* Exported functions --------------------------------------------------------*/
static void DevUartIOInit( DevUart uart);
static void DevUartIODeInit( DevUart uart );
static void DevUartClockEnable( DevUart uart );
static void DevUartClockDisable( DevUart uart );
static void DevUart1IrqHander(void);
static void DevUart2IrqHander(void);
static void DevUart3IrqHander(void);
#ifdef  __STM32L151xD__
static void DevUart4IrqHander(void);
static void DevUart5IrqHander(void);
#endif


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

	DBG_ASSERT(uart < DEV_UART_NUM);

	hander = &UartHander[uart].hander;

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
#ifdef  __STM32L151xD__
    else if (uart == DEV_UART4)
    {
		hander->Instance = UART4;
	}
    else if (uart == DEV_UART5)
    {
		hander->Instance = UART5;
	}
#endif
    hander->Init.BaudRate = config.baud;
	hander->Init.WordLength = config.length;
	hander->Init.StopBits = config.stop_bit;
	hander->Init.Parity = config.parity;
	hander->Init.Mode = config.mode;
	hander->Init.HwFlowCtl = config.flow_contrl;

	hander->Init.OverSampling = UART_OVERSAMPLING_16;

	DevUartClockEnable(uart);
    
    UartHander[uart].pin = config.pin;

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

	DBG_ASSERT(uart < DEV_UART_NUM);

	hander = &UartHander[uart].hander;
	
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
    DBG_ASSERT(uart < DEV_UART_NUM);

    if (HAL_UART_Transmit (&UartHander[uart].hander, data, size, 100) != HAL_OK)
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
    DBG_ASSERT(uart < DEV_UART_NUM);

    if (HAL_UART_Receive (&UartHander[uart].hander, data, size, 1000) != HAL_OK)
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
	DBG_ASSERT(uart < DEV_UART_NUM);
	
	DBG_ASSERT(isr != NULL);
	
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
	DBG_ASSERT(uart < DEV_UART_NUM);
	
	__HAL_UART_DISABLE_IT(&UartHander[uart].hander, UART_IT_RXNE);

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

	UART_HandleTypeDef *hander = &UartHander[DEV_UART1].hander;

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

	UART_HandleTypeDef *hander = &UartHander[DEV_UART2].hander;

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

	UART_HandleTypeDef *hander = &UartHander[DEV_UART3].hander;

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

#ifdef  __STM32L151xD__
/*****************************************************************************
 * Function      : Uart4IrqHander()
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
void DevUart4IrqHander(void)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	UART_HandleTypeDef *hander = &UartHander[DEV_UART4];

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

      if (DevUartRxCbTab[DEV_UART4] != NULL)
      {
          DevUartRxCbTab[DEV_UART4](tmp, size);
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
 * Function      : Uart5IrqHander()
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
void DevUart5IrqHander(void)
{
	uint16_t data ;
	uint8_t *tmp ;
	uint8_t  size = 0;

	UART_HandleTypeDef *hander = &UartHander[DEV_UART5];

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

      if (DevUartRxCbTab[DEV_UART5] != NULL)
      {
          DevUartRxCbTab[DEV_UART5](tmp, size);
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

#endif

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
	DBG_ASSERT(uart < DEV_UART_NUM);

	UART_HandleTypeDef *hander = &UartHander[uart].hander;

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
#ifdef  __STM32L151xD__
        case DEV_UART2:    IntVectRegister(UART4_IRQn, (FNCT_VOID)DevUart4IrqHander);
                           IntEnable(UART4_IRQn);
                           break;
        case DEV_UART3:    IntVectRegister(UART5_IRQn, (FNCT_VOID)DevUart5IrqHander);
                           IntEnable(UART5_IRQn);
                           break; 
#endif
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
	DBG_ASSERT(uart < DEV_UART_NUM);

	UART_HandleTypeDef *hander = &UartHander[uart].hander;
    
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
	DBG_ASSERT(uart < DEV_UART_NUM);

	switch (uart)
	{
        case DEV_UART1: __HAL_RCC_USART1_CLK_ENABLE();
			break;
		case DEV_UART2: __HAL_RCC_USART2_CLK_ENABLE();
			break;
		case DEV_UART3: __HAL_RCC_USART3_CLK_ENABLE();
			break;	
#ifdef  __STM32L151xD__
          case DEV_UART4: __HAL_RCC_UART4_CLK_ENABLE();
            break;
        case DEV_UART5: __HAL_RCC_UART5_CLK_ENABLE();
            break; 
#endif
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
	DBG_ASSERT(uart < DEV_UART_NUM);

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
    DevGpioConfig config;
    DevUartPinPort tx;
    DevUartPinPort rx;
	DBG_ASSERT(uart < DEV_UART_NUM);
    
    switch (uart)
    {
        case DEV_UART1: tx = Uart1TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart1RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART2: tx = Uart2TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart2RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART3: tx = Uart3TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart3RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART4: tx = Uart4TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart4RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART5: tx = Uart5TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart5RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        default:
            break;

    }

    config.mode = DEV_GPIO_MODE_AF_PP;
    config.pull = DEV_GPIO_PULLUP;
    config.speed = DEV_GPIO_SPEED_FREQ_VERY_HIGH;

    if (UartHander[uart].hander.Init.Mode == UART_MODE_TX_RX)
    {
        //rx pin
        config.alternate = tx.af;
        DevGpioInit(tx.port, tx.pin, config );
        
        //tx pin
        config.alternate = rx.af;
        DevGpioInit(rx.port, rx.pin, config );
    }
    else if (UartHander[uart].hander.Init.Mode == UART_MODE_TX)
    {
        //tx pin
        config.alternate = tx.af;
        DevGpioInit(tx.port, tx.pin, config );
    }
    else if (UartHander[uart].hander.Init.Mode == UART_MODE_RX)
    {
        //rx pin
        config.alternate = rx.af;
        DevGpioInit(rx.port, rx.pin, config );
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
    DevUartPinPort tx;
    DevUartPinPort rx;
    
	DBG_ASSERT(uart < DEV_UART_NUM);
    
    switch (uart)
    {
        case DEV_UART1: tx = Uart1TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart1RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART2: tx = Uart2TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart2RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART3: tx = Uart3TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart3RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART4: tx = Uart4TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart4RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        
        case DEV_UART5: tx = Uart5TxPinGroup[UartHander[uart].pin.tx_af];
                        rx = Uart5RxPinGroup[UartHander[uart].pin.rx_af];
                        break;
        default:
            break;

    }

    if (UartHander[uart].hander.Init.Mode == UART_MODE_TX_RX)
    {
        DevGpioDeInit(tx.port, tx.pin);
        DevGpioDeInit(rx.port, rx.pin);
    }
    else if (UartHander[uart].hander.Init.Mode == UART_MODE_TX)
    {
        DevGpioDeInit(tx.port, tx.pin);        
    }
    else if (UartHander[uart].hander.Init.Mode == UART_MODE_RX)
    {
        DevGpioDeInit(rx.port, rx.pin);
    }

}

