/**
 * @brief       : 
 *
 * @file        : bsp.c
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/09/21 
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/09/21    v0.0.1     WangJian    first version
 */

/* Includes ------------------------------------------------------------------*/
#include "bsp.h"

/* Define --------------------------------------------------------------------*/
    

/**
  * @brief This function provides accurate delay (in milliseconds) based 

  */
void Delay(uint32_t delay)
{
#if(__RTOS_SUPPORT__ > 0)
  osDelay(delay);
#else
  HAL_Delay(delay);
#endif
}

