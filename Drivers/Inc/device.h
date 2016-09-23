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
#include "clock.h"
#include "i2c.h"
#include "uart.h"

/* Exported functions --------------------------------------------------------*/
void DeviceInit (void);

#endif

