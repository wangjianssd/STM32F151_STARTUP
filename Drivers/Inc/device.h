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
#include "dev_flash.h"

/* Golable Variable--------------------------------------------------------------------*/
#pragma section = "RAM_DUMMY"
#pragma section = "FLASH_DUMMY"

extern  uint32_t __ICFEDIT_region_RAM_start__;
extern  uint32_t __ICFEDIT_region_RAM_end__;
extern  uint32_t __ICFEDIT_region_ROM_start__;
extern  uint32_t __ICFEDIT_region_ROM_end__;

/* Define --------------------------------------------------------------------*/
#define __DEVICE_HSI_CLK__                      (16000000ul)
#define __DEVICE_HSE_CLK__                      (0u)
#define __DEVICE_LSI_CLK__                      (37000ul)
#define __DEVICE_LSE_CLK__                      (32768ul)
#define __DEVICE_FLASH_START_ADDR__             ((uint32_t)&__ICFEDIT_region_ROM_start__)
#define __DEVICE_FLASH_END_ADDR__               ((uint32_t)&__ICFEDIT_region_ROM_end__)
#define __DEVICE_FLASH_TOTAL_SIZE__             (__DEVICE_FLASH_END_ADDR__ - __DEVICE_FLASH_START_ADDR__ + 1)
#define __DEVICE_FLASH_DUMMY_SIZE__             (__section_begin("FLASH_DUMMY"))
#define __DEVICE_FLASH_BANK_SIZE__              (FLASH_PAGE_SIZE)
#define __DEVICE_RAM_START_ADDR__               ((uint32_t)&__ICFEDIT_region_RAM_start__)
#define __DEVICE_RAM_END_ADDR__                 ((uint32_t)&__ICFEDIT_region_RAM_end__)
#define __DEVICE_RAM_TOTAL_SIZE__               (__DEVICE_RAM_END_ADDR__ - __DEVICE_RAM_START_ADDR__ + 1)
#define __DEVICE_RAM_DUMMY_SIZE__               (__section_begin("RAM_DUMMY"))
#define __DEVICE_CSTACK_BASE__                  (CSTACK$$Base)
#define __DEVICE_CSTACK_LIMIT__                 (CSTACK$$Limit)
#define __DEVICE_HEAP_BASE__                    (HEAP$$Base)
#define __DEVICE_HEAP_LIMIT__                   (HEAP$$Limit)

/* Exported functions --------------------------------------------------------*/
void DeviceInit (void);

#endif

