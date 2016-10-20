/**
 *
 * @brief       :  
 *
 * @file        : dev_gpio.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-09-29
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-09-29           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
extern uint8_t const MapTbl[256];
static GPIO_TypeDef *GpioPortTab[DEV_GPIO_PORT_NUM] =
{
    GPIOA,
    GPIOB,
    GPIOC,
    GPIOD,
    GPIOE,
#ifdef STM32L151xD    
    GPIOF,
    GPIOG
#endif       
};

static const uint16_t GpioPinTab[DEV_GPIO_PIN_NUM] =
{
    GPIO_PIN_0,
    GPIO_PIN_1,
    GPIO_PIN_2,
    GPIO_PIN_3,
    GPIO_PIN_4,
    GPIO_PIN_5,
    GPIO_PIN_6,
    GPIO_PIN_7,
    GPIO_PIN_8,
    GPIO_PIN_9,
    GPIO_PIN_10,
    GPIO_PIN_11,
    GPIO_PIN_12,
    GPIO_PIN_13,
    GPIO_PIN_14,
    GPIO_PIN_15
};

DEV_GPIO_INT_FUNC_PTR DevGpioIsrTab[DEV_GPIO_PIN_NUM] = {NULL};
static DEF_IO uint16_t DevGpioRegisterFlag = 0;

/*****************************************************************************
 * Function      : DevGpioInit
 * Description   : Init gpio
 * Input         : DevGpioPin   port
                   DevGpioPin   pin
                   DevGpioConfig config
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioInit( DevGpioPort port, DevGpioPin pin, DevGpioConfig config )
{
    GPIO_InitTypeDef gpio;
    
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);

    /* GPIO Ports Clock Enable */
    switch (port)
    {
        case DEV_GPIO_PORTA: __HAL_RCC_GPIOA_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTB: __HAL_RCC_GPIOB_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTC: __HAL_RCC_GPIOC_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTD: __HAL_RCC_GPIOD_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTE: __HAL_RCC_GPIOE_CLK_ENABLE();
            break;
        default: 
            break;
    }
    
    /*Configure GPIO pin Output Level */
    HAL_GPIO_WritePin(GpioPortTab[port], GpioPinTab[pin], (GPIO_PinState)config.level);
    
    /*Configure GPIO pins : PE2 PE3 */
    gpio.Pin = GpioPinTab[pin];
    gpio.Mode = config.mode;
    gpio.Pull = config.pull;
    gpio.Speed = config.speed;

    if ((config.mode == DEV_GPIO_MODE_AF_PP)
     || (config.mode == DEV_GPIO_MODE_AF_OD))
    {
        gpio.Alternate = config.alternate;
    }
    
    HAL_GPIO_Init(GpioPortTab[port], &gpio);
}

/*****************************************************************************
 * Function      : DevGpioDeInit
 * Description   : Deinit gpio
 * Input         : DevGpioPort port
                DevGpioPin pin
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioDeInit( DevGpioPort port, DevGpioPin pin )
{
    HAL_GPIO_DeInit(GpioPortTab[port], pin);
}
/*****************************************************************************
 * Function      : DevGpioWrite
 * Description   : set gpio pin value
 * Input         : DevGpioPin port
                   DevGpioPin pin
                   DevGpioPinLevel level
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioWrite( DevGpioPort port, DevGpioPin pin, DevGpioPinLevel level )
{
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);

    HAL_GPIO_WritePin(GpioPortTab[port], GpioPinTab[pin], (GPIO_PinState)level);
}

/*****************************************************************************
 * Function      : DevGpioRead
 * Description   : get gpio level
 * Input         : DevGpioPin port
                   DevGpioPin pin
 * Output        : None
 * Return        : DevGpioPinLevel
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
DevGpioPinLevel DevGpioRead( DevGpioPort port, DevGpioPin pin )
{
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);

    return (DevGpioPinLevel)HAL_GPIO_ReadPin(GpioPortTab[port], GpioPinTab[pin]);
}

/*****************************************************************************
 * Function      : DevGpioToggle
 * Description   : Toggle gpio
 * Input         : DevGpioPin port
                   DevGpioPin pin
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioToggle( DevGpioPort port, DevGpioPin pin )
{
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);

    HAL_GPIO_TogglePin(GpioPortTab[port], GpioPinTab[pin]);
}

/*****************************************************************************
 * Function      : DevGpioIrqRegister
 * Description   : Register irq for gpio interrupt
 * Input         : DevGpioPort port
                   DevGpioPin pin
                   DEV_GPIO_INT_FUNC_PTR isr
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioIrqRegister( DevGpioPort port, DevGpioPin pin, DevGpioIntType type, DEV_GPIO_INT_FUNC_PTR isr )
{
    GPIO_InitTypeDef gpio;
    
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);

    /* GPIO Ports Clock Enable */
    switch (port)
    {
        case DEV_GPIO_PORTA: __HAL_RCC_GPIOA_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTB: __HAL_RCC_GPIOB_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTC: __HAL_RCC_GPIOC_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTD: __HAL_RCC_GPIOD_CLK_ENABLE();
            break;
        case DEV_GPIO_PORTE: __HAL_RCC_GPIOE_CLK_ENABLE();
            break;
        default: 
            break;
    }

    gpio.Pin = GpioPinTab[pin];

    gpio.Mode = type;
    
    gpio.Pull= GPIO_NOPULL;
    HAL_GPIO_Init(GpioPortTab[port], &gpio);

    DevGpioIsrTab[pin] = isr;
}
/*****************************************************************************
 * Function      : DevGpioIrqHander
 * Description   : hander for gpio irq
 * Input         : DevGpioPort port
                   DevGpioPin pin
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioIrqHander(void)
{
    uint16_t flag;
    uint8_t high;
    uint8_t low;
    DevGpioPin pin;

    flag = DevGpioGetITFlag() & DevGpioRegisterFlag;
    
    DevGpioClearITFlag(flag);

    low  = (uint8_t)flag;
    high = (uint8_t)(flag >> 8);

    /* EXTI line interrupt detected */
    while (low != 0)
    {
        pin = MapTbl[low];
        
        DevGpioIsrTab[pin]();
        
        low &= ~(1 << pin);
    }
    
    /* EXTI line interrupt detected */
    while (high != 0)
    {
        pin = MapTbl[high];
        
        DevGpioIsrTab[pin + 8]();
        
        high &= ~(1 << pin);
    }

    

}

/*****************************************************************************
 * Function      : DevGpioIrqEnable
 * Description   : enable gpio interrupt
 * Input         : DevGpioPort port
                DevGpioPin pin
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioIrqEnable( DevGpioPort port, DevGpioPin pin )
{
    IRQn_Type irq;
    
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);
	
	/* Peripheral interrupt init */
    if (pin < DEV_GPIO_PIN5)
    {
        irq = pin + EXTI0_IRQn;
    }
    else if (pin < DEV_GPIO_PIN10)
    {
        irq = EXTI9_5_IRQn;
    }
    else
    {
        irq = EXTI15_10_IRQn;
    }
    
    DevGpioRegisterFlag |= (1 << pin);

    IntVectRegister(irq, (FNCT_VOID)DevGpioIrqHander);

    IntEnable(irq);
}

/*****************************************************************************
 * Function      : DevGpioIrqDisable
 * Description   : Disaple gpio interrupt
 * Input         : DevGpioPort port
                   DevGpioPin pin
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160930
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevGpioIrqDisable( DevGpioPort port, DevGpioPin pin )
{
    //GPIO_InitTypeDef gpio;

    IRQn_Type irq;
    
	DBG_ASSERT(port < DEV_GPIO_PORT_NUM __DBG_LINE);
    
	DBG_ASSERT(pin < DEV_GPIO_PIN_NUM __DBG_LINE);
	
	/* Peripheral interrupt init */
    if (pin < DEV_GPIO_PIN5)
    {
        irq = (IRQn_Type)((IRQn_Type)pin + EXTI0_IRQn);
    }
    else if (pin < DEV_GPIO_PIN10)
    {
        irq = EXTI9_5_IRQn;
    }
    else
    {
        irq = EXTI15_10_IRQn;
    }
    
    DevGpioRegisterFlag &= ~(1 << pin);
    
    IntVectUnregister(irq);

    IntDisable(irq);

   // HAL_NVIC_DisableIRQ(irq);
}
