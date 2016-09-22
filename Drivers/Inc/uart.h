/**
 * @brief       : 
 *
 * @file        : uart.h
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/09/20
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/09/20  v0.0.1       WangJian    first version
 */

#ifndef __UART_H__
#define __UART_H__

/* Exported types ------------------------------------------------------------*/
typedef enum
{
  DEVICE_UART1, /*!< UART1 */
  DEVICE_UART2, /*!< UART2 */
  DEVICE_UART3  /*!< UART3 */
} UartDeviceTypeDef;

//typedef enum
//{
//  I2C_ADDRESS_MODE_7BIT,  /*!< I2C 7BIT ADDRESS MODE */
//  I2C_ADDRESS_MODE_10BIT  /*!< I2C 10BIT ADDRESS MODE */
//}I2cAddrModeTypeDef;

typedef struct
{
  UartDeviceTypeDef   uart;       /*!< Specifies the I2C Hander */
  uint32_t            baud;     /*!< Specifies the buad rate    */
  //I2cAddrModeTypeDef addr_mode; /*!< Specifies the I2C address mode */
}UartHanderTypeDef;


/* Exported functions --------------------------------------------------------*/


#endif

