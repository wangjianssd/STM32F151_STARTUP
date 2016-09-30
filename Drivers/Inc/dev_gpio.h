/**
 *
 * @brief       :  
 *
 * @file        : dev_gpio.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-09-29
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-09-29           v0.1              wangjian        first version 
*/
#ifndef  __DEV_GPIO__
#define  __DEV_GPIO__
    
#ifdef __cplusplus
     extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/
typedef enum
{
    DEV_GPIO_PORTA, /*!< GPIO PORTA */
    DEV_GPIO_PORTB, /*!< GPIO PORTB */
    DEV_GPIO_PORTC, /*!< GPIO PORTC */
    DEV_GPIO_PORTD, /*!< GPIO PORTD */
    DEV_GPIO_PORTE, /*!< GPIO PORTE */
    DEV_GPIO_PORTF, /*!< GPIO PORTF */
    DEV_GPIO_PORTG, /*!< GPIO PORTG */
    DEV_GPIO_PORT_NUM
}DevGpioPort;

typedef enum
{
    DEV_GPIO_PIN0,  /*!< GPIO PIN0 */
    DEV_GPIO_PIN1,  /*!< GPIO PIN1 */
    DEV_GPIO_PIN2,  /*!< GPIO PIN2 */
    DEV_GPIO_PIN3,  /*!< GPIO PIN3 */
    DEV_GPIO_PIN4,  /*!< GPIO PIN4 */
    DEV_GPIO_PIN5,  /*!< GPIO PIN5 */
    DEV_GPIO_PIN6,  /*!< GPIO PIN6 */
    DEV_GPIO_PIN7,  /*!< GPIO PIN7 */
    DEV_GPIO_PIN8,  /*!< GPIO PIN8 */
    DEV_GPIO_PIN9,  /*!< GPIO PIN9 */
    DEV_GPIO_PIN10, /*!< GPIO PIN10 */
    DEV_GPIO_PIN11, /*!< GPIO PIN11 */
    DEV_GPIO_PIN12, /*!< GPIO PIN12 */
    DEV_GPIO_PIN13, /*!< GPIO PIN13 */
    DEV_GPIO_PIN14, /*!< GPIO PIN14 */
    DEV_GPIO_PIN15, /*!< GPIO PIN15 */
    DEV_GPIO_PIN_NUM
}DevGpioPin;

typedef enum
{
    DEV_GPIO_MODE_INPUT     = GPIO_MODE_INPUT,      /*!< Input Floating Mode*/
    DEV_GPIO_MODE_OUTPUT_PP = GPIO_MODE_OUTPUT_PP,  /*!< Output Push Pull Mode */
    DEV_GPIO_MODE_OUTPUT_OD = GPIO_MODE_OUTPUT_OD,  /*!< Output Open Drain Mode */
    DEV_GPIO_MODE_AF_PP     = GPIO_MODE_AF_PP,      /*!< Alternate Function Push Pull Mode  */
    DEV_GPIO_MODE_AF_OD     = GPIO_MODE_AF_OD,      /*!< Alternate Function Open Drain Mode */
    DEV_GPIO_MODE_ANALOG    = GPIO_MODE_ANALOG,     /*!< Analog Mode  */
}DevGpioMode;

typedef enum
{
    DEV_GPIO_MODE_IT_RISING             = GPIO_MODE_IT_RISING,          /*!< External Interrupt Mode with Rising edge trigger detection */
    DEV_GPIO_MODE_IT_FALLING            = GPIO_MODE_IT_FALLING,         /*!< External Interrupt Mode with Falling edge trigger detection  */
    DEV_GPIO_MODE_IT_RISING_FALLING     = GPIO_MODE_IT_RISING_FALLING,  /*!< External Interrupt Mode with Rising/Falling edge trigger detection  */
    DEV_GPIO_MODE_EVT_RISING            = GPIO_MODE_EVT_RISING,         /*!< External Event Mode with Rising edge trigger detection   */
    DEV_GPIO_MODE_EVT_FALLING           = GPIO_MODE_EVT_FALLING,        /*!< External Event Mode with Falling edge trigger detection  */
    DEV_GPIO_MODE_EVT_RISING_FALLING    = GPIO_MODE_EVT_RISING_FALLING, /*!< External Event Mode with Rising/Falling edge trigger detection  */
}DevGpioIntType;

typedef enum
{
    DEV_GPIO_NOPULL     = GPIO_NOPULL,  /*!< No Pull-up or Pull-down activation */
    DEV_GPIO_PULLUP     = GPIO_PULLUP,  /*!< Pull-up activation  */
    DEV_GPIO_PULLDOWN   = GPIO_PULLDOWN,/*!< Pull-down activation */
}DevGpioPull;

typedef enum
{
    DEV_GPIO_SPEED_FREQ_LOW         = GPIO_SPEED_FREQ_LOW,      /*!< max: 400 KHz, please refer to the product datasheet */
    DEV_GPIO_SPEED_FREQ_MEDIUM      = GPIO_SPEED_FREQ_MEDIUM,   /*!< max: 1 MHz to 2 MHz, please refer to the product datasheet */
    DEV_GPIO_SPEED_FREQ_HIGH        = GPIO_SPEED_FREQ_HIGH,     /*!< max: 2 MHz to 10 MHz, please refer to the product datasheet */
    DEV_GPIO_SPEED_FREQ_VERY_HIGH   = GPIO_SPEED_FREQ_VERY_HIGH,/*!< max: 8 MHz to 50 MHz, please refer to the product datasheet */
}DevGpioSpeed;

typedef enum
{
    DEV_GPIO_AF0            = 0,
    DEV_GPIO_AF0_MCO        = DEV_GPIO_AF0, /*!< MCO Alternate Function mapping */
    DEV_GPIO_AF0_TAMPER     = DEV_GPIO_AF0, /*!< TAMPER Alternate Function mapping */
    DEV_GPIO_AF0_SWJ        = DEV_GPIO_AF0, /*!< SWJ (SWD and JTAG) Alternate Function mapping  */
    DEV_GPIO_AF0_TRACE      = DEV_GPIO_AF0, /*!< TRACE Alternate Function mapping */
    DEV_GPIO_AF0_RTC_50Hz   = DEV_GPIO_AF0, /*!< RTC_OUT Alternate Function mapping */

    DEV_GPIO_AF1        = 1,
    DEV_GPIO_AF1_TIM2   = DEV_GPIO_AF1, /*!< TIM2 Alternate Function mapping */            

    DEV_GPIO_AF2      = 2,
    DEV_GPIO_AF2_TIM3 = DEV_GPIO_AF2, /*!< TIM2 Alternate Function mapping */            
    DEV_GPIO_AF2_TIM4 = DEV_GPIO_AF2, /*!< TIM3 Alternate Function mapping */           
    DEV_GPIO_AF2_TIM5 = DEV_GPIO_AF2, /*!< TIM4 Alternate Function mapping */             

    DEV_GPIO_AF3        = 3,
    DEV_GPIO_AF3_TIM9   = DEV_GPIO_AF3, /*!< TIM9 Alternate Function mapping */            
    DEV_GPIO_AF3_TIM10  = DEV_GPIO_AF3, /*!< TIM10 Alternate Function mapping */            
    DEV_GPIO_AF3_TIM11  = DEV_GPIO_AF3, /*!< TIM11 Alternate Function mapping */            

    DEV_GPIO_AF4      = 4,
    DEV_GPIO_AF4_I2C1 = DEV_GPIO_AF4, /*!< I2C1 Alternate Function mapping */            
    DEV_GPIO_AF4_I2C2 = DEV_GPIO_AF4, /*!< I2C2 Alternate Function mapping */            

    DEV_GPIO_AF5      = 5,
    DEV_GPIO_AF5_SPI1 = DEV_GPIO_AF5, /*!< SPI1/I2S1 Alternate Function mapping */             
    DEV_GPIO_AF5_SPI2 = DEV_GPIO_AF5, /*!< SPI2/I2S2 Alternate Function mapping */             

    DEV_GPIO_AF6      = 6,
    DEV_GPIO_AF6_SPI3 = DEV_GPIO_AF6, /*!< SPI3/I2S3 Alternate Function mapping */             

    DEV_GPIO_AF7        = 7,
    DEV_GPIO_AF7_USART1 = DEV_GPIO_AF7, /*!< USART1 Alternate Function mapping */            
    DEV_GPIO_AF7_USART2 = DEV_GPIO_AF7, /*!< USART2 Alternate Function mapping */            
    DEV_GPIO_AF7_USART3 = DEV_GPIO_AF7, /*!< USART3 Alternate Function mapping */            

    DEV_GPIO_AF8       = 8,
    DEV_GPIO_AF8_UART4 = DEV_GPIO_AF8, /*!< USART4 Alternate Function mapping */             
    DEV_GPIO_AF8_UART5 = DEV_GPIO_AF8, /*!< USART5 Alternate Function mapping */             

    DEV_GPIO_AF11     = 11,
    DEV_GPIO_AF11_LCD = DEV_GPIO_AF11, /*!< LCD Alternate Function mapping */            

    DEV_GPIO_AF12      = 12,
    DEV_GPIO_AF12_FSMC = DEV_GPIO_AF12, /*!< FSMC Alternate Function mapping */          
    DEV_GPIO_AF12_SDIO = DEV_GPIO_AF12, /*!< SDIO Alternate Function mapping */            

    DEV_GPIO_AF14         = 14,
    DEV_GPIO_AF14_TIM_IC1 = DEV_GPIO_AF14, /*!< TIMER INPUT CAPTURE Alternate Function mapping */             
    DEV_GPIO_AF14_TIM_IC2 = DEV_GPIO_AF14, /*!< TIMER INPUT CAPTURE Alternate Function mapping */            
    DEV_GPIO_AF14_TIM_IC3 = DEV_GPIO_AF14, /*!< TIMER INPUT CAPTURE Alternate Function mapping */            
    DEV_GPIO_AF14_TIM_IC4 = DEV_GPIO_AF14, /*!< TIMER INPUT CAPTURE Alternate Function mapping */             

    DEV_GPIO_AF15          = 15,
    DEV_GPIO_AF15_EVENTOUT = DEV_GPIO_AF15, /*!<EVENTOUT Alternate Function mapping */           
}DevGpioAlternate;

typedef enum
{
    DEV_GPIO_PIN_LEVEL_LOW     = GPIO_PIN_RESET,/*!< No Pull-up or Pull-down activation */
    DEV_GPIO_PIN_LEVEL_HIGH    = GPIO_PIN_SET,  /*!< Pull-up activation  */
}DevGpioPinLevel;

typedef struct
{
	DevGpioPin   port;    /*!< Specifies the GPIO port    */
	DevGpioPin   pin;     /*!< Specifies the GPIO pin */
}DevGpio;

typedef struct
{
	DevGpioMode      mode;      /*!< Specifies the operating mode for the selected pins. */
	DevGpioPull      pull;      /*!< Specifies the Pull-up or Pull-Down activation for the selected pins. */
	DevGpioSpeed     speed;     /*!< Specifies the speed for the selected pins. */
	DevGpioAlternate alternate; /*!< Specifies the Peripheral to be connected to the selected pins */
	DevGpioPinLevel  level;     /*!< Specifies the default level for the selected pins */
}DevGpioConfig;

typedef void (*DEV_GPIO_INT_FUNC_PTR)(void);

/* Function prototypes -------------------------------------------------------*/
void DevGpioInit( DevGpioPort port, DevGpioPin pin, DevGpioConfig config );
void DevGpioDeInit( DevGpioPort port, DevGpioPin pin );
void DevGpioWrite( DevGpioPort port, DevGpioPin pin, DevGpioPinLevel level );
DevGpioPinLevel DevGpioRead( DevGpioPort port, DevGpioPin pin );
void DevGpioToggle( DevGpioPort port, DevGpioPin pin );

#ifdef __cplusplus
}
#endif

#endif
