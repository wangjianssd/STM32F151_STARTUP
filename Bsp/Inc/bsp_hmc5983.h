/**
 *
 * @brief       :  
 *
 * @file        : bsp_hmc5983.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-19
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-19           v0.1              wangjian        first version 
*/
#ifndef  __BSP_HMC5983__
#define  __BSP_HMC5983__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/
#define __BSP_HMC5983_SPI__    		                (DEV_SPI1)
#define __BSP_HMC5983_SPI_CS_PORT__                 (DEV_GPIO_PORTB)
#define __BSP_HMC5983_SPI_CS_PIN__                  (DEV_GPIO_PIN1)
#define __BSP_HMC5983_RDY_PORT__                    (DEV_GPIO_PORTC)
#define __BSP_HMC5983_RDY_PIN__                     (DEV_GPIO_PIN13)

/*HMC5983 Command Word Definitions*/ 
#define __BSP_HMC5983_SPI_R_REGISTER__	            (0x80)
#define __BSP_HMC5983_SPI_W_REGISTER__	            (0x00)
#define __BSP_HMC5983_CONFIG_REG_A_ADDR__           (0x00)
#define __BSP_HMC5983_CONFIG_REG_B_ADDR__           (0x01)
#define __BSP_HMC5983_MODE_REG_ADDR__               (0x02)
#define __BSP_HMC5983_X_MSB_REG_ADDR__              (0x03)
#define __BSP_HMC5983_X_LSB_REG_ADDR__              (0x04)
#define __BSP_HMC5983_Z_MSB_REG_ADDR__              (0x05)
#define __BSP_HMC5983_Z_LSB_REG_ADDR__              (0x06)
#define __BSP_HMC5983_Y_MSB_REG_ADDR__              (0x07)
#define __BSP_HMC5983_Y_LSB_REG_ADDR__              (0x08)
#define __BSP_HMC5983_STATUS_REG_ADDR__             (0x09)
#define __BSP_HMC5983_ID_REG_A__                    (0x0A)
#define __BSP_HMC5983_ID_REG_B__                    (0x0B)
#define __BSP_HMC5983_ID_REG_C__                    (0x0C)
#define __BSP_HMC5983_TEMPERATURE_REG_MSB__         (0x31)
#define __BSP_HMC5983_TEMPERATURE_REG_LSB__         (0x32)
#define __BSP_HMC5983_REG_A_DEFAULT_VALUE__         (0x70)//(0x10)
#define __BSP_HMC5983_REG_B_DEFAULT_VALUE__         (0xA0)
#define __BSP_HMC5983_REG_A_VALUE_FOR_DETECT__      (0xF0)//(0x90)
#define __BSP_HMC5983_REG_B_VALUE_FOR_DETECT__      (0xA0)
#define __BSP_HMC5983_REG_A_VALUE_FOR_SELF_TEST__   (0xF0)//(0x91)
#define __BSP_HMC5983_REG_B_VALUE_FOR_SELF_TEST__   (0xA0)
#define __BSP_HMC5983_MODE_REG_VALUE_FOR_SINGLE__   (0x01)
#define __BSP_HMC5983_MODE_REG_VALUE_FOR_CON__      (0x00)
#define __BSP_HMC5983_MODE_REG_VALUE_FOR_LP__       (0x03)

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
bool BspHmc5983Init(void);
bool BspHmc5983Config(uint8_t reg_a, uint8_t reg_b);
bool BspHmc5983SpiRead( uint8_t reg, uint8_t *data);
bool BspHmc5983SpiWrite( uint8_t reg, uint8_t data);
bool BspHmc5983SensorDetect( int16_t *x, int16_t *y, int16_t *z );
bool BspHmc5983RdyFlagGet (void);

/* Variables -----------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif

#endif
