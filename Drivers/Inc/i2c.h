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
  DEVICE_I2C1, /*!< I2C1 */
  //DEVICE_I2C2  /*!< I2C2 */
}I2cDeviceTypeDef;

typedef enum
{
  I2C_ADDRESS_MODE_7BIT,  /*!< I2C 7BIT ADDRESS MODE */
  I2C_ADDRESS_MODE_10BIT  /*!< I2C 10BIT ADDRESS MODE */
}I2cAddrModeTypeDef;

typedef struct
{
  I2cDeviceTypeDef   i2c;       /*!< Specifies the I2C Hander */
  uint32_t           clock;     /*!< Specifies the clock frequency */
  I2cAddrModeTypeDef addr_mode; /*!< Specifies the I2C address mode */
}I2cHanderTypeDef;


/* Exported functions --------------------------------------------------------*/
bool I2cInit(I2cHanderTypeDef hi2c);
bool I2cByteRead (I2cHanderTypeDef hi2c, uint8_t addr, uint8_t reg, uint8_t* data);
bool I2cBytesRead (I2cHanderTypeDef hi2c, uint8_t addr, uint8_t reg, uint8_t* data, uint16_t size);
bool I2cByteWrite (I2cHanderTypeDef hi2c, uint8_t addr, uint8_t reg, uint8_t data);

#endif

