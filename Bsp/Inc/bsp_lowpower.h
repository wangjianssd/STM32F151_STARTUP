/**
 *
 * @brief       :  
 *
 * @file        : bsp_lowpower.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-27           v0.1              wangjian        first version 
*/
#ifndef  __BSP_LOWPOWER__
#define  __BSP_LOWPOWER__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
void BspLowPowerEnter (void);
void BspLowPowerEnterCbRegister(FNCT_VOID cb);
void BspLowPowerEnterCbUnregister(FNCT_VOID cb);

#ifdef __cplusplus
}
#endif

#endif
