/**
 * @brief       : 
 *
 * @file        : i2c.h
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/09/20
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/09/20  v0.0.1       WangJian    first version
 */

#ifndef __DEV_I2C_H__
#define __DEV_I2C_H__

/* Includes ------------------------------------------------------------------*/
#include "dev_gpio.h"

/* Define --------------------------------------------------------------------*/

/*              |I2C1		 |I2C2	      |
                |SDA	SCL	 |SDA	SCL   |
DEV_I2C_PIN_AF0 |PB7	PB8	 |PB11	PB10  |
DEV_I2C_PIN_AF1 |PB9	PB6	 |            |
*/
//I2C1
//SDA
#define DEV_I2C1_PIN_AF0_SDA_PORT                   DEV_GPIO_PORTB
#define DEV_I2C1_PIN_AF0_SDA_PIN                    DEV_GPIO_PIN7
#define DEV_I2C1_PIN_AF1_SDA_PORT                   DEV_GPIO_PORTB
#define DEV_I2C1_PIN_AF1_SDA_PIN                    DEV_GPIO_PIN9

//SCL
#define DEV_I2C1_PIN_AF0_SCL_PORT                   DEV_GPIO_PORTB
#define DEV_I2C1_PIN_AF0_SCL_PIN                    DEV_GPIO_PIN8
#define DEV_I2C1_PIN_AF1_SCL_PORT                   DEV_GPIO_PORTB
#define DEV_I2C1_PIN_AF1_SCL_PIN                    DEV_GPIO_PIN6

//I2C2
//SDA
#define DEV_I2C2_PIN_AF0_SDA_PORT                   DEV_GPIO_PORTB
#define DEV_I2C2_PIN_AF0_SDA_PIN                    DEV_GPIO_PIN11

//SCL
#define DEV_I2C2_PIN_AF0_SCL_PORT                   DEV_GPIO_PORTB
#define DEV_I2C2_PIN_AF0_SCL_PIN                    DEV_GPIO_PIN10

/* Exported types ------------------------------------------------------------*/
typedef enum
{
  DEV_I2C1, /*!< I2C1 */
  DEV_I2C2, /*!< I2C2 */
  DEV_I2C_NUM	
}DevI2c;

typedef enum
{
    DEV_I2C_PIN_AF0 = 0, /*!< I2C_PIN_AF0 */
    DEV_I2C_PIN_AF1 = 1, /*!< I2C_PIN_AF1 */
    DEV_I2C_PIN_AF_NUM
}DevI2cPinAF;

typedef struct
{
    DevI2cPinAF  sda_af;
    DevI2cPinAF  scl_af;
} DevI2cPin;


typedef enum
{
	DEV_I2C_ADDRESS_MODE_7BIT  = I2C_ADDRESSINGMODE_7BIT,  /*!< I2C 7BIT ADDRESS MODE */
	DEV_I2C_ADDRESS_MODE_10BIT = I2C_ADDRESSINGMODE_10BIT  /*!< I2C 10BIT ADDRESS MODE */
}DevI2cAddrMode;

typedef struct
{
	uint32_t       clock;     /*!< Specifies the clock frequency */
	DevI2cAddrMode addr_mode; /*!< Specifies the I2C address mode */
    DevI2cPin      pin;       /*!< Specifies the I2C pin */
}DevI2cConfig;

typedef struct
{
    uint16_t addr;
    uint16_t reg;     
    uint8_t  reg_len;
    uint8_t  *data;
    uint16_t data_len;
}DevI2cMsg;

/* Exported functions --------------------------------------------------------*/
bool DevI2cInit(DevI2c i2c, DevI2cConfig config);
void DevI2cDeInit( DevI2c i2c );
bool DevI2cByteRead (DevI2c i2c, uint8_t addr, uint8_t reg, uint8_t* data);
bool DevI2cRead (DevI2c i2c, DevI2cMsg msg);
bool DevI2cBytesRead (DevI2c i2c, uint8_t addr, uint8_t reg, uint8_t* data, uint16_t size);
bool DevI2cByteWrite (DevI2c i2c, uint8_t addr, uint8_t reg, uint8_t data);
bool DevI2cWrite (DevI2c i2c, DevI2cMsg msg);

#endif

