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

#ifndef __I2C_H__
#define __I2C_H__

/* Exported types ------------------------------------------------------------*/
typedef enum
{
  DEV_I2C1, /*!< I2C1 */
  DEV_I2C_NUM	
}DevI2c;

typedef enum
{
	DEV_I2C_ADDRESS_MODE_7BIT,  /*!< I2C 7BIT ADDRESS MODE */
	DEV_I2C_ADDRESS_MODE_10BIT  /*!< I2C 10BIT ADDRESS MODE */
}DevI2cAddrMode;

typedef struct
{
	DevI2c         device;    /*!< Specifies the I2C device */
	uint32_t       clock;     /*!< Specifies the clock frequency */
	DevI2cAddrMode addr_mode; /*!< Specifies the I2C address mode */
}DevI2cHander;


/* Exported functions --------------------------------------------------------*/
bool I2cInit(DevI2cHander hi2c);
bool I2cByteRead (DevI2cHander hi2c, uint8_t addr, uint8_t reg, uint8_t* data);
bool I2cBytesRead (DevI2cHander hi2c, uint8_t addr, uint8_t reg, uint8_t* data, uint16_t size);
bool I2cByteWrite (DevI2cHander hi2c, uint8_t addr, uint8_t reg, uint8_t data);

#endif

