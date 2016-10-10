/**
 *
 * @brief       :  
 *
 * @file        : dev_flash.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-10
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-10           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
bool_t DevFlashUnlock( void );
bool_t DevFlashLock( void );
bool_t DevFlashErase( uint32_t address);
bool_t DevFlashWrite( uint32_t address, uint8_t const *pdata, uint32_t len );
void DevFlashRead( uint32_t address, uint8_t *pdata, uint32_t len );

/* Variables -----------------------------------------------------------------*/

#ifndef  __DEV_FLASH__
#define  __DEV_FLASH__

#ifdef __cplusplus
 extern "C" {
#endif


#ifdef __cplusplus
}
#endif

#endif
