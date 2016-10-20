/**
 *
 * @brief       :  
 *
 * @file        : dev_spi.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-18
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-18           v0.1              wangjian        first version 
*/
#ifndef  __DEV_SPI__
#define  __DEV_SPI__

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "dev_gpio.h"

/* Define --------------------------------------------------------------------*/
                    /*SPI1			    |SPI2			    |SPI3		
                    MISO	MOSI	SCK	|MISO	MOSI	SCK	|MISO	MOSI	SCK
DEV_SPI_PIN_AF0     PA6	    PA7	    PA5	|PB14	PB15	PB13|PB4	PB5	    PB3
DEV_SPI_PIN_AF1     PA11	PA12	PB3	|PD3	PD4	    PD1	|PC11	PC12	PC10
DEV_SPI_PIN_AF2     PB4	    PB5	    PE13|						
DEV_SPI_PIN_AF3     PE14	PE15		|					
                    */
//SPI1
//MISO
#define DEV_SPI1_PIN_AF0_MISO_PORT                   DEV_GPIO_PORTA
#define DEV_SPI1_PIN_AF0_MISO_PIN                    DEV_GPIO_PIN6
#define DEV_SPI1_PIN_AF1_MISO_PORT                   DEV_GPIO_PORTA
#define DEV_SPI1_PIN_AF1_MISO_PIN                    DEV_GPIO_PIN11
#define DEV_SPI1_PIN_AF2_MISO_PORT                   DEV_GPIO_PORTB
#define DEV_SPI1_PIN_AF2_MISO_PIN                    DEV_GPIO_PIN4
#define DEV_SPI1_PIN_AF3_MISO_PORT                   DEV_GPIO_PORTE
#define DEV_SPI1_PIN_AF3_MISO_PIN                    DEV_GPIO_PIN14
//MOSI
#define DEV_SPI1_PIN_AF0_MOSI_PORT                   DEV_GPIO_PORTA
#define DEV_SPI1_PIN_AF0_MOSI_PIN                    DEV_GPIO_PIN7
#define DEV_SPI1_PIN_AF1_MOSI_PORT                   DEV_GPIO_PORTA
#define DEV_SPI1_PIN_AF1_MOSI_PIN                    DEV_GPIO_PIN12
#define DEV_SPI1_PIN_AF2_MOSI_PORT                   DEV_GPIO_PORTB
#define DEV_SPI1_PIN_AF2_MOSI_PIN                    DEV_GPIO_PIN5
#define DEV_SPI1_PIN_AF3_MOSI_PORT                   DEV_GPIO_PORTE
#define DEV_SPI1_PIN_AF3_MOSI_PIN                    DEV_GPIO_PIN15
//SCK
#define DEV_SPI1_PIN_AF0_SCK_PORT                   DEV_GPIO_PORTA
#define DEV_SPI1_PIN_AF0_SCK_PIN                    DEV_GPIO_PIN5
#define DEV_SPI1_PIN_AF1_SCK_PORT                   DEV_GPIO_PORTB
#define DEV_SPI1_PIN_AF1_SCK_PIN                    DEV_GPIO_PIN3
#define DEV_SPI1_PIN_AF2_SCK_PORT                   DEV_GPIO_PORTE
#define DEV_SPI1_PIN_AF2_SCK_PIN                    DEV_GPIO_PIN13

//SPI2
//MISO
#define DEV_SPI2_PIN_AF0_MISO_PORT                   DEV_GPIO_PORTB
#define DEV_SPI2_PIN_AF0_MISO_PIN                    DEV_GPIO_PIN14
#define DEV_SPI2_PIN_AF1_MISO_PORT                   DEV_GPIO_PORTD
#define DEV_SPI2_PIN_AF1_MISO_PIN                    DEV_GPIO_PIN3
//MOSI
#define DEV_SPI2_PIN_AF0_MOSI_PORT                   DEV_GPIO_PORTB
#define DEV_SPI2_PIN_AF0_MOSI_PIN                    DEV_GPIO_PIN15
#define DEV_SPI2_PIN_AF1_MOSI_PORT                   DEV_GPIO_PORTD
#define DEV_SPI2_PIN_AF1_MOSI_PIN                    DEV_GPIO_PIN4
//SCK
#define DEV_SPI2_PIN_AF0_SCK_PORT                   DEV_GPIO_PORTB
#define DEV_SPI2_PIN_AF0_SCK_PIN                    DEV_GPIO_PIN13
#define DEV_SPI2_PIN_AF1_SCK_PORT                   DEV_GPIO_PORTD
#define DEV_SPI2_PIN_AF1_SCK_PIN                    DEV_GPIO_PIN1

//SPI3
//MISO
#define DEV_SPI3_PIN_AF0_MISO_PORT                   DEV_GPIO_PORTB
#define DEV_SPI3_PIN_AF0_MISO_PIN                    DEV_GPIO_PIN4
#define DEV_SPI3_PIN_AF1_MISO_PORT                   DEV_GPIO_PORTC
#define DEV_SPI3_PIN_AF1_MISO_PIN                    DEV_GPIO_PIN11
//MOSI
#define DEV_SPI3_PIN_AF0_MOSI_PORT                   DEV_GPIO_PORTB
#define DEV_SPI3_PIN_AF0_MOSI_PIN                    DEV_GPIO_PIN5
#define DEV_SPI3_PIN_AF1_MOSI_PORT                   DEV_GPIO_PORTC
#define DEV_SPI3_PIN_AF1_MOSI_PIN                    DEV_GPIO_PIN12
//SCK
#define DEV_SPI3_PIN_AF0_SCK_PORT                   DEV_GPIO_PORTB
#define DEV_SPI3_PIN_AF0_SCK_PIN                    DEV_GPIO_PIN3
#define DEV_SPI3_PIN_AF1_SCK_PORT                   DEV_GPIO_PORTC
#define DEV_SPI3_PIN_AF1_SCK_PIN                    DEV_GPIO_PIN10

/* Exported types ------------------------------------------------------------*/
typedef enum
{
    DEV_SPI1, /*!< SPI1 */
    DEV_SPI2, /*!< SPI2 */
    DEV_SPI3, /*!< SPI3 */
    DEV_SPI_NUM	
}DevSpi;

typedef enum
{
    DEV_SPI_PIN_AF0 = 0, /*!< SPI_PIN_AF0 */
    DEV_SPI_PIN_AF1 = 1, /*!< SPI_PIN_AF1 */
    DEV_SPI_PIN_AF2 = 2, /*!< SPI_PIN_AF2 */
    DEV_SPI_PIN_AF3 = 3, /*!< SPI_PIN_AF3 */
    DEV_SPI_PIN_AF_NUM
}DevSpiPinAF;

typedef struct
{
    DevSpiPinAF  miso_af;
    DevSpiPinAF  mosi_af;
    DevSpiPinAF  sck_af;
} DevSpiPin;

typedef enum
{
	DEV_SPI_MODE_MASTER  = SPI_MODE_MASTER,  /*!< SPI MASTER MODE */
	DEV_SPI_MODE_SLAVE   = SPI_MODE_SLAVE    /*!< SPI SLAVEMODE */
}DevSpiMode;

typedef enum
{
	DEV_SPI_DATASIZE_8BIT  = SPI_DATASIZE_8BIT,  /*!< SPI DATA SIZE 8 BIT */
	DEV_SPI_DATASIZE_16BIT = SPI_DATASIZE_16BIT  /*!< SPI DATA SIZE 16 BIT */
}DevSpiDataSize;

typedef enum
{
	DEV_SPI_POLARITY_LOW  = SPI_POLARITY_LOW,   /*!< SPI FIRST CLOCK POLARITY LOW */
	DEV_SPI_POLARITY_HIGH   = SPI_POLARITY_HIGH /*!< SPI FIRST CLOCK POLARITY HIGH*/
}DevSpiClockPolarity;

typedef enum
{
	DEV_SPI_PHASE_1EDGE  = SPI_PHASE_1EDGE,  /*!< SPI CAPTURE AT CLOCK FIRST EDGE */
	DEV_SPI_PHASE_2EDGE   = SPI_PHASE_2EDGE  /*!< SPI CAPTURE AT CLOCK SECOND EDGE*/
}DevSpiClockPhase;

typedef enum
{
	DEV_SPI_FIRSTBIT_MSB  = SPI_FIRSTBIT_MSB,  /*!< SPI FIRST DATA ORDER MSB */
	DEV_SPI_FIRSTBIT_LSB  = SPI_FIRSTBIT_LSB   /*!< SPI FIRST DATA ORDER LSB*/
}DevSpiFirstBit;

typedef enum
{
	DEV_SPI_BAUDRATEPRESCALER_2  = SPI_BAUDRATEPRESCALER_2,     /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_4  = SPI_BAUDRATEPRESCALER_4,     /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_8  = SPI_BAUDRATEPRESCALER_8,     /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_16  = SPI_BAUDRATEPRESCALER_16,   /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_32  = SPI_BAUDRATEPRESCALER_32,   /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_64  = SPI_BAUDRATEPRESCALER_64,   /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_128  = SPI_BAUDRATEPRESCALER_128, /*!< SPI BUAD RATE CONFIG */
    DEV_SPI_BAUDRATEPRESCALER_256  = SPI_BAUDRATEPRESCALER_256, /*!< SPI BUAD RATE CONFIG */
}DevSpiBuadRate;

typedef struct
{
	DevSpiMode          mode;       /*!< Specifies the operating mode for the SPI. */
	DevSpiDataSize      data_size;  /*!< Specifies the data length*/
	DevSpiClockPolarity clock_pol;  /*!< Specifies the clock polarity. */
	DevSpiClockPhase    clock_phase;/*!< Specifies the clock phase.*/
	DevSpiFirstBit      first_bit;  /*!< Specifies data order */
    DevSpiBuadRate      buad_rate;  /*!< Specifies buad rate */
    DevSpiPin           pin;        /*!< Specifies spi pin */
}DevSpiConfig;

/* Function prototypes -------------------------------------------------------*/
bool DevSpiInit (DevSpi spi, DevSpiConfig config);
void DevSpiDeInit (DevSpi spi);
bool DevSpiTx ( DevSpi spi, uint8_t* data, uint16_t size );
bool DevSpiRx ( DevSpi spi, uint8_t* data, uint16_t size );

/* Variables -----------------------------------------------------------------*/

#ifdef __cplusplus
}
#endif

#endif
