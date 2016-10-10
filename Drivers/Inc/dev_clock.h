/**
 *
 * @brief       :  
 *
 * @file        : dev_clock.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-10
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-10           v0.1              wangjian        first version 
*/
#ifndef  __DEV_CLOCK__
#define  __DEV_CLOCK__
    
#ifdef __cplusplus
     extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
bool DevClockInit(void);
uint32_t DevClockHSEGet( void );
uint32_t DevClockHSIGet( void );
uint32_t DevClockLSEGet( void );
uint32_t DevClockLSIGet( void );
void DevClockMCOEnable( void );
void DevClockMCODisnable( void );

/* Variables -----------------------------------------------------------------*/




#ifdef __cplusplus
}
#endif

#endif

