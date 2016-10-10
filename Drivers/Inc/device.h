/**
 * @brief       : 
 *
 * @file        : device.h
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/09/20
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/09/20  v0.0.1       WangJian    first version
 */

#ifndef __DEVICE_H__
#define __DEVICE_H__

/* Exported incluides --------------------------------------------------------*/
#include "lib.h"
#include "stm32l1xx_hal.h"
#include "cmsis_os.h"
#include "interrupt.h"
#include "dev_clock.h"
#include "dev_i2c.h"
#include "dev_uart.h"
#include "dev_gpio.h"

/* Define --------------------------------------------------------------------*/
#define __DEVICE_HSI_CLK__                      (16000000ul)
#define __DEVICE_HSE_CLK__                      (0u)
#define __DEVICE_LSI_CLK__                      (37000ul)
#define __DEVICE_LSE_CLK__                      (32768ul)
#define __DEVICE_FLASH_SIZE__                   (32768u)
#define __DEVICE_FLASH_BANK_SIZE__              (512)
#define __DEVICE_RAM_SIZE__                     (32768u)


/* Exported functions --------------------------------------------------------*/
void DeviceInit (void);

#endif

