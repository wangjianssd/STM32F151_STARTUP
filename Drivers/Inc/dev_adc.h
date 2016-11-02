/**
 *
 * @brief       :  
 *
 * @file        : dev_adc.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-31
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-31           v0.1              wangjian        first version 
*/
#ifndef  __DEV_ADC__
#define  __DEV_ADC__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/
#define DEV_ADC_CH0_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH0_PIN                  DEV_GPIO_PIN0
#define DEV_ADC_CH1_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH1_PIN                  DEV_GPIO_PIN1
#define DEV_ADC_CH2_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH2_PIN                  DEV_GPIO_PIN2
#define DEV_ADC_CH3_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH3_PIN                  DEV_GPIO_PIN3
#define DEV_ADC_CH4_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH4_PIN                  DEV_GPIO_PIN4
#define DEV_ADC_CH5_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH5_PIN                  DEV_GPIO_PIN5
#define DEV_ADC_CH6_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH6_PIN                  DEV_GPIO_PIN6
#define DEV_ADC_CH7_PORT                 DEV_GPIO_PORTA
#define DEV_ADC_CH7_PIN                  DEV_GPIO_PIN7
#define DEV_ADC_CH8_PORT                 DEV_GPIO_PORTB
#define DEV_ADC_CH8_PIN                  DEV_GPIO_PIN0
#define DEV_ADC_CH9_PORT                 DEV_GPIO_PORTB
#define DEV_ADC_CH9_PIN                  DEV_GPIO_PIN1
#define DEV_ADC_CH10_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH10_PIN                 DEV_GPIO_PIN0
#define DEV_ADC_CH11_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH11_PIN                 DEV_GPIO_PIN1
#define DEV_ADC_CH12_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH12_PIN                 DEV_GPIO_PIN2
#define DEV_ADC_CH13_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH13_PIN                 DEV_GPIO_PIN3
#define DEV_ADC_CH14_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH14_PIN                 DEV_GPIO_PIN4
#define DEV_ADC_CH15_PORT                DEV_GPIO_PORTC
#define DEV_ADC_CH15_PIN                 DEV_GPIO_PIN5

#define DEV_ADC_CH18_PORT                DEV_GPIO_PORTB
#define DEV_ADC_CH18_PIN                 DEV_GPIO_PIN12
#define DEV_ADC_CH19_PORT                DEV_GPIO_PORTB
#define DEV_ADC_CH19_PIN                 DEV_GPIO_PIN13
#define DEV_ADC_CH20_PORT                DEV_GPIO_PORTB
#define DEV_ADC_CH20_PIN                 DEV_GPIO_PIN14
#define DEV_ADC_CH21_PORT                DEV_GPIO_PORTB
#define DEV_ADC_CH21_PIN                 DEV_GPIO_PIN15
#define DEV_ADC_CH22_PORT                DEV_GPIO_PORTE
#define DEV_ADC_CH22_PIN                 DEV_GPIO_PIN7
#define DEV_ADC_CH23_PORT                DEV_GPIO_PORTE
#define DEV_ADC_CH23_PIN                 DEV_GPIO_PIN8
#define DEV_ADC_CH24_PORT                DEV_GPIO_PORTE
#define DEV_ADC_CH24_PIN                 DEV_GPIO_PIN9
#define DEV_ADC_CH25_PORT                DEV_GPIO_PORTE
#define DEV_ADC_CH25_PIN                 DEV_GPIO_PIN10

#if defined(__STM32L151xCA__) || defined (__STM32L151xD__) || defined (__STM32L152xCA__) || defined (__STM32L152xD__) || defined (STM32L162xCA) || defined (__STM32L162xD__) || defined(__STM32L151xE__) || defined(__STM32L151xDX__) || defined (__STM32L152xE__) || defined (__STM32L152xDX__) || defined (__STM32L162xE__) || defined (__STM32L162xDX__)
#define DEV_ADC_CH27_PORT                DEV_GPIO_PORTF
#define DEV_ADC_CH27_PIN                 DEV_GPIO_PIN6
#define DEV_ADC_CH28_PORT                DEV_GPIO_PORTF
#define DEV_ADC_CH28_PIN                 DEV_GPIO_PIN7
#define DEV_ADC_CH29_PORT                DEV_GPIO_PORTF
#define DEV_ADC_CH29_PIN                 DEV_GPIO_PIN8
#define DEV_ADC_CH30_PORT                DEV_GPIO_PORTF
#define DEV_ADC_CH30_PIN                 DEV_GPIO_PIN9
#define DEV_ADC_CH31_PORT                DEV_GPIO_PORTF
#define DEV_ADC_CH31_PIN                 DEV_GPIO_PIN10

#endif

#define DEV_ADC_VREF_INTCAL_BASE         VREF_INTCAL_BASE
#define DEV_ADC_TSCAL1_BASE              TS_CAL1_BASE
#define DEV_ADC_TSCAL2_BASE              TS_CAL2_BASE

/* Exported types ------------------------------------------------------------*/
typedef enum
{
    DEV_ADC_CH0 = 0, /*!< ADC CH0 */
    DEV_ADC_CH1,     /*!< ADC CH1 */
    DEV_ADC_CH2,     /*!< ADC CH2 */
    DEV_ADC_CH3,     /*!< ADC CH3 */
    DEV_ADC_CH4,     /*!< ADC CH4 */
    DEV_ADC_CH5,     /*!< ADC CH5 */
    DEV_ADC_CH6,     /*!< ADC CH6 */
    DEV_ADC_CH7,     /*!< ADC CH7 */
    DEV_ADC_CH8,     /*!< ADC CH8 */
    DEV_ADC_CH9,     /*!< ADC CH9 */
    DEV_ADC_CH10,    /*!< ADC CH10 */
    DEV_ADC_CH11,    /*!< ADC CH11 */
    DEV_ADC_CH12,    /*!< ADC CH12 */
    DEV_ADC_CH13,    /*!< ADC CH13 */
    DEV_ADC_CH14,    /*!< ADC CH14 */
    DEV_ADC_CH15,    /*!< ADC CH15 */
    DEV_ADC_CH16,    /*!< ADC CH16 */
    DEV_ADC_CH17,    /*!< ADC CH17 */
    DEV_ADC_CH18,    /*!< ADC CH18 */
    DEV_ADC_CH19,    /*!< ADC CH19 */
    DEV_ADC_CH20,    /*!< ADC CH20 */
    DEV_ADC_CH21,    /*!< ADC CH21 */
    DEV_ADC_CH22,    /*!< ADC CH22 */
    DEV_ADC_CH23,    /*!< ADC CH23 */
    DEV_ADC_CH24,    /*!< ADC CH24 */
    DEV_ADC_CH25,    /*!< ADC CH25 */
    DEV_ADC_CH26,    /*!< ADC CH26 */
    DEV_ADC_CH27,    /*!< ADC CH27 */
    DEV_ADC_CH28,    /*!< ADC CH28 */
    DEV_ADC_CH29,    /*!< ADC CH29 */
    DEV_ADC_CH30,    /*!< ADC CH30 */
    DEV_ADC_CH31,    /*!< ADC CH31 */
    DEV_ADC_CH_NUM
}DevAdcChannel;

typedef struct
{
	uint16_t vref_intcal;
	uint16_t tscal1;     
	uint16_t reserve;     
	uint16_t tscal2;
}DevAdcCal;

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
bool DevAdcInit (void);
void DevAdcDeInit (void);
bool DevAdcGet ( DevAdcChannel ch , uint16_t *data);
DevAdcCal *DevAdcCalGet (void);


#ifdef __cplusplus
}
#endif

#endif
