/**
 *
 * @brief       :  
 *
 * @file        : bsp_m24lr04e.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-25
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-25           v0.1              wangjian        first version 
*/

#ifndef  __BSP_M24LR04E__
#define  __BSP_M24LR04E__

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/
#define __BSP_M24LR04E_I2C__    		        (DEV_I2C1)
#define __BSP_M24LR04E_I2C_SDA_AF__    		    (DEV_I2C_PIN_AF1) //PB9
#define __BSP_M24LR04E_I2C_SCL_AF__    		    (DEV_I2C_PIN_AF0) //PB8
#define __BSP_M24LR04E_I2C_CLOCK__              (50000)
#define __BSP_M24LR64E_ADDR_USER__              (0xA6)              /**< 正常读写模式I2C地址 */      
#define __BSP_M24LR64E_ADDR_SYS__               (0xAE)              /**< 配置模式I2C地址 */  
#define __BSP_M24LR64E_CFG__                    (0x910)             /**< 配置中断类型地址 */ 
#define __BSP_M24LR64E_SYS_INFO__               (2304u)
#define __BSP_M24LR64E_PAGE_WRITE_TIME__        (1u)                /**< 信标帧类型 */ 

#define __BSP_M24LR04E_MAX_ADDR__               (0x2000)
#define __BSP_M24LR04E_PAGE_SIZE__              (0x04)
#define __BSP_M24LR04E_SECTION_SIZE__           (0x80)

// PA3
#define __BSP_M24LR04E_WIP_PORT__               (DEV_GPIO_PORTA)
#define __BSP_M24LR04E_WIP_PIN__                (DEV_GPIO_PIN1)
#define __BSP_M24LR04E_POWER_SW_PORT__		    (DEV_GPIO_PORTB)
#define __BSP_M24LR04E_POWER_SW_PIN__		    (DEV_GPIO_PIN10)
#define __BSP_M24LR04E_PRESENT_PORT__		    (DEV_GPIO_PORTB)
#define __BSP_M24LR04E_PRESENT_PIN__		    (DEV_GPIO_PIN5)

/* Exported types ------------------------------------------------------------*/
typedef struct
{
    uint8_t  i2c_code[4];
    uint8_t  rf_code1[4];    
    uint8_t  rf_code2[4];
    uint8_t  rf_code3[4];
    uint8_t  rfu[2];
    uint8_t  afi;
    uint8_t  dsfid;
    uint8_t  uid[8];
    uint8_t  ic_ref;
    uint8_t  mem_size;
    uint8_t  block_size;
    uint8_t  rfu1;
} BspM24lr04eSysInfo;

/* Function prototypes -------------------------------------------------------*/
bool BspM24lr04eInit(void);
bool BspM24lr04eSyetenInfo(BspM24lr04eSysInfo *info);
bool BspM24lr04eRead(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len);
bool BspM24lr04eWrite(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len);
void BspM24lr04ePowerOn(void);
void BspM24lr04ePowerOn(void);

/* Variables -----------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif

#endif
