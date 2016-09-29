/**
 * @brief       : 
 *
 * @file        : hmc5983.h
 * @author      : gang.cheng
 * @version     : v0.0.1
 * @date        : 2016/09/12
 *
 * Change Logs  :
 *
 * Date         Version      Author      Notes
 * 2016/09/12   v0.0.1       WangJian    first version
 */

#ifndef __BSP_QMC_5883L_H__
#define __BSP_QMC_5883L_H__

/* Define --------------------------------------------------------------------*/
#define __BSP_QMC5883L_I2C__    		(DEV_I2C1)
#define __BSP_QMC5883L_I2C_CLOCK__      (400000)
#define __BSP_QMC5883L_I2C_ADDRESS__    (0x1A)
//#define QMC5883L_REG_09_VALUE    (0x81)  //128 2G  10HZ
//#define QMC5883L_REG_09_VALUE    (0xC1)  //64 2G  10HZ
//#define QMC5883L_REG_09_VALUE    (0xCD)  //64 2G  200HZ
//#define QMC5883L_REG_09_VALUE    (0x0D)  //512 2G 200HZ
//#define QMC5883L_REG_09_VALUE    (0x01)  //512 2G  10HZ
#define __BSP_QMC5883L_REG_09_VALUE__   (0x41)  //256 2G  10HZ

#define __BSP_QMC5883L_AVG_FILTER_NUM__ (8)

/* Exported functions --------------------------------------------------------*/
bool BspQmc5883lInit(void);
bool BspQmc5883lConfig(void);
bool BspQmc5883lConfigEx(uint8_t reg_9);
bool BspQmc5883lSelfTest (void);
bool BspQmc5883lGetData (int16_t *magnet_raw);
void BspQmc5883lFilterGetData (const int16_t *magnet_raw, float *magnet, int16_t *filter_magnet);

#endif
