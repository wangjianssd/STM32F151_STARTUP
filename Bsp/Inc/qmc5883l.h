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
 * Date        Version      Author      Notes
 * 2016/09/12  v0.0.1       WangJian    first version
 */

#ifndef __QMC_5883_H__
#define __QMC_5883_H__

/* Define --------------------------------------------------------------------*/
#define __QMC5883L_I2C_HANDLER__    DEVICE_I2C1
#define __QMC5883L_I2C_CLOCK__      (100000)
#define __QMC5883L_I2C_ADDRESS__    0x1A

//#define QMC5883L_REG_09_VALUE    (0x0D)  //512 2G 200HZ
//#define QMC5883L_REG_09_VALUE    (0x01)  //512 2G  10HZ
#define __QMC5883L_REG_09_VALUE__    (0x41)  //256 2G  10HZ
//#define QMC5883L_REG_09_VALUE    (0x81)  //128 2G  10HZ
//#define QMC5883L_REG_09_VALUE    (0xC1)  //64 2G  10HZ
//#define QMC5883L_REG_09_VALUE    (0xCD)  //64 2G  200HZ
#define __QMC5883L_AVG_FILTER_NUM__  (8)

/* Exported functions --------------------------------------------------------*/
bool Qmc5883lInit(void);
bool Qmc5883lConfig(void);
bool Qmc5883lConfigEx(uint8_t reg_9);
bool Qmc5883lSelfTest (void);
bool Qmc5883lGetData (int16_t *magnet_raw);
bool Qmc5883lFilterGetData (const int16_t *magnet_raw, float *magnet, int16_t *filter_magnet);

#endif
