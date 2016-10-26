/**
 * @brief       : 
 *
 * @file        : bsp.h
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/9/9
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/9/9    v0.0.1      WangJian    first version
 */
#ifndef __BSP_H__
#define __BSP_H__

/* Includes ------------------------------------------------------------------*/
#include "device.h"
#include "bsp_qmc5883l.h"
#include "bsp_hmc5983.h"
#include "bsp_m24lr04e.h"
#include "bsp_com.h"

/* Define --------------------------------------------------------------------*/
#define __RTOS_SUPPORT__                           0
#define __SYSTEM_TICK_PER_SEC__                    1000
#define __SYSTEM_CORE_CLOCK__                      

/* Exported functions --------------------------------------------------------*/
void Delay(uint32_t delay);

#endif
