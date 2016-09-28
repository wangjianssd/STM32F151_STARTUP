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
#include "queue.h"

/* Define --------------------------------------------------------------------*/
    


/*****************************************************************************
 * Function      : Delay
 * Description   : This function provides accurate delay (in milliseconds) based
 * Input         : uint32_t delay  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void Delay(uint32_t delay)
{
#if(__RTOS_SUPPORT__ > 0)
  osDelay(delay);
#else
  HAL_Delay(delay);
#endif
}


