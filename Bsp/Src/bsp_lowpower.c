/**
 *
 * @brief       :  
 *
 * @file        : bsp_lowpower.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-27           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "bsp.h"

/* Define --------------------------------------------------------------------*/
DBG_THIS_MODULE("LOW_POWER")          

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/
static FNCT_VOID BspLowPowerCb = NULL;

void BspLowPowerEnter (void)
{
    if (BspLowPowerCb != NULL)
    {
        BspLowPowerCb();
    }
    
    DBG_LOG(__DBG_LEVEL_WARNING__, "Device enter sleep mode ...\r\n");

    SysTickDisable();

    DevSleep(DEV_SLEEP_STOP);
    
    DBG_LOG(__DBG_LEVEL_WARNING__, "Device leave sleep mode ...\r\n");

    SysTickInit(HAL_RCC_GetHCLKFreq() / 1000);
   // DeviceInit();
}

void BspLowPowerEnterCbRegister(FNCT_VOID cb)
{
    BspLowPowerCb = cb;
}

void BspLowPowerEnterCbUnregister(FNCT_VOID cb)
{
    BspLowPowerCb = NULL;
}

