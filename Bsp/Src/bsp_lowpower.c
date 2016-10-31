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

/*****************************************************************************
 * Function      : BspLowPowerEnter
 * Description   : Entetr lower power mode
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161028
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
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

/*****************************************************************************
 * Function      : BspLowPowerEnterCbRegister
 * Description   : Register callback for enter lowpower mode
 * Input         : FNCT_VOID cb  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161028
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspLowPowerEnterCbRegister(FNCT_VOID cb)
{
    BspLowPowerCb = cb;
}

/*****************************************************************************
 * Function      : BspLowPowerEnterCbUnregister
 * Description   : Unregister callback function for lowpower mode
 * Input         : FNCT_VOID cb  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161028
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspLowPowerEnterCbUnregister(FNCT_VOID cb)
{
    BspLowPowerCb = NULL;
}

