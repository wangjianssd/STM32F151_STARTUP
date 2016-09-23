/**
 * @brief       : 
 *
 * @file        : qmc5883.c
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

/* Define --------------------------------------------------------------------*/

    
/* Private function prototypes -----------------------------------------------*/ 
static bool Qmc5883lPowerOn(void);
static bool Qmc5883lPowerOff(void);
static bool Qmc5883lI2cByteRead(uint8_t reg, uint8_t* data);
static bool Qmc5883lI2cBytesRead(uint8_t reg, uint8_t* data, uint16_t size);
static bool Qmc5883lI2cByteWrite (uint8_t reg, uint8_t  data);


/* Private variables ---------------------------------------------------------*/
static DevI2cHander I2cHander;
static int16_t FilterArrary[__QMC5883L_AVG_FILTER_NUM__][3] = {0};
static uint8_t FilterCount = 0;

/*****************************************************************************
 * Function      : Qmc5883lPowerOn
 * Description   : power on device
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lPowerOn(void)
{
  //HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
  Delay(2);
}

/*****************************************************************************
 * Function      : Qmc5883lPowerOff
 * Description   : Power off device
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lPowerOff(void)
{
  //HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
  Delay(2);
}

/*****************************************************************************
 * Function      : Qmc5883lInit
 * Description   : 
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lInit(void)
{
  I2cHander.device = __QMC5883L_I2C_HANDLER__;
  I2cHander.clock = __QMC5883L_I2C_CLOCK__;
  I2cHander.addr_mode = DEV_I2C_ADDRESS_MODE_7BIT;

  if (I2cInit(I2cHander) != true)
  {
    return false;
  }

  memset(FilterArrary, 0, sizeof(FilterArrary));
  
  FilterCount = 0;
  
  Qmc5883lPowerOff();
    
  Qmc5883lPowerOn();  
  
  return true;
}

/*****************************************************************************
 * Function      : Qmc5883lConfig
 * Description   : Qmc5883 work mode config
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lConfig(void)
{
     bool ret;
     
     uint8_t  temp[16];
     
     float magnet[3];
     
     memset(temp, 0 , sizeof(temp));
    
    ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);
    
    Qmc5883lI2cByteWrite(0x0B, 0x01);
        
    Qmc5883lI2cByteWrite(0x20, 0x40);

    Qmc5883lI2cByteWrite(0x21, 0x01);

    Qmc5883lI2cByteWrite(0x09, __QMC5883L_REG_09_VALUE__);    //10hz

   // osDelay(10);
    
    ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);

    if (temp[0x09] == __QMC5883L_REG_09_VALUE__)
    {
        return true;
    }

    return false;
}

/*****************************************************************************
 * Function      : Qmc5883lConfigEx
 * Description   : 
 * Input         : uint8_t reg_9  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lConfigEx(uint8_t reg_9)
{
     bool ret;
     
     uint8_t  temp[16];
     
     float magnet[3];
     
     memset(temp, 0 , sizeof(temp));
    
    ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);

    Qmc5883lI2cByteWrite(0x0B, 0x01);
        
    Qmc5883lI2cByteWrite(0x20, 0x40);

    Qmc5883lI2cByteWrite(0x21, 0x01);

    Qmc5883lI2cByteWrite(0x09, reg_9);    //10hz

   // osDelay(10);
    
    ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);

    if (temp[0x09] == reg_9)
    {
        return true;
    }

    return false;
}

/*****************************************************************************
 * Function      : Qmc5883lSelfTest
 * Description   : 
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lSelfTest (void)
{
    uint8_t count = 0;
    uint8_t temp = 0;
    int16_t magnet_row_a[3] = {0};
    int16_t magnet_row_b[3] = {0};
    
    //  1.  0x20 = 40,  0x21=1,  0x0B=1,   0x09=1D
    Qmc5883lI2cByteWrite(0x20, 0x40);
    Qmc5883lI2cByteWrite(0x21, 0x01);
    Qmc5883lI2cByteWrite(0x0B, 0x01);
    Qmc5883lI2cByteWrite(0x09, 0x1D);

    //  2.  Wait 10ms
    Delay(10);
    //osDelay(10);

    //  3.  0x09=1C    ( enter standby mode)
    Qmc5883lI2cByteWrite(0x09, 0x1C);

    //  4.  0x0B=0      (turn off set/reset)
    Qmc5883lI2cByteWrite(0x0B, 0x00);

    //  5.  0x09=12    (self-test mode,  do set)
    Qmc5883lI2cByteWrite(0x09, 0x12);

    //  6.  Wait 10ms and check whether 0x09=10 (wait until selftest done)
   // osDelay(10);
    count = 0;

    do
    {
        if ( Qmc5883lI2cBytesRead(0x09, &temp, 1) == false)
        {
           return false;    
        }
//        if ( Qmc5883lI2cByteRead(0x09, &temp) == false)
//        {
//           return false;    
//        }
        Delay(1);
       // osDelay(1);
       count++;

        if (count >100)
        {
            return false;    
        }
    } while (temp != 0x10);

    //  7.  0x09=1D
    Qmc5883lI2cByteWrite(0x09, 0x1D);

    //  8.  Read x/y/z data  ( data A )
    Qmc5883lGetData(magnet_row_a);

    //  9.  0x09=13     (self-test mode,  do reset)
     Qmc5883lI2cByteWrite(0x09, 0x13);

    //  10. Wait 10ms  and check whether 0x09=10 (wait until selftest done)

    //osDelay(10);
    count = 0;
    
    do
    {
       // Qmc5883lI2cBytesRead(0x09, &temp, 1);
        if ( Qmc5883lI2cBytesRead(0x09, &temp, 1) == false)
        {
           return false;    
        }
       // osDelay(1);
        Delay(1);
        count++;

        if (count >100)
        {
            return false;    
        }
        
    } while (temp != 0x10);

    //  11. 0x09=1D
    Qmc5883lI2cByteWrite(0x09, 0x1D);

    //  12. Read x/y/z data  ( data B )
    Qmc5883lGetData(magnet_row_b);

    //  check data
    if ((ABS(magnet_row_a[0] + magnet_row_b[0]) < 120)
      &&(ABS(magnet_row_a[1] + magnet_row_b[1]) < 120)
      &&(ABS(magnet_row_a[2] + magnet_row_b[2]) < 120))
    {
      
     // *((uint32_t *)0xE000ED0C) = 0x05fa0004;  
      return true;
    }
    
    return false;

}

/*****************************************************************************
 * Function      : Qmc5883lGetData
 * Description   : get raw data
 * Input         : int16_t *magnet_raw  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lGetData (int16_t *magnet_raw)
{
    uint8_t buff[6];
    uint8_t i;
    uint8_t temp;
    int16_t magnetRaw[3];
    uint8_t buff_temp[6];
    float magnet[3];
    
    Qmc5883lI2cBytesRead(0x06, &temp, 1);
    
    if (temp & 0x02)
    {
    	//LOG("output data OVL or ERROR!")
    	return false;
    }
    
    if ((temp & 0x01) == 0)
    {
    	//LOG("output data not ready!")
    	return false;
    }

    Qmc5883lI2cBytesRead(0, buff, 6);
    
    magnet_raw[0] = ((int16_t)buff[1] << 8) | buff[0];
    magnet_raw[1] = ((int16_t)buff[3] << 8) | buff[2];
    magnet_raw[2] = ((int16_t)buff[5] << 8) | buff[4];
    
    magnet[0] = (float)magnet_raw[0] / 120.f;//uT
    magnet[1] = (float)magnet_raw[1] / 120.f;//uT
    magnet[2] = (float)magnet_raw[2] / 120.f;//uT

    return true;
}

/*****************************************************************************
 * Function      : Qmc5883lFilterGetData
 * Description   : process data by average filter
 * Input         : const int16_t *magnet_raw  raw magnet data   
 * Output        : float   *magnet         filter data with uT     
                   int16_t *filter_magnet  filter data  
 * Return        : none
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void Qmc5883lFilterGetData (const int16_t *magnet_raw, float *magnet, int16_t *filter_magnet)
{
    uint8_t i = 0;
    int32_t sum_x = 0;
    int32_t sum_y = 0;
    int32_t sum_z = 0;
    
    sum_x = magnet_raw[0];
    sum_y = magnet_raw[1];
    sum_z = magnet_raw[2];
    
    FilterCount++;

    if (FilterCount > __QMC5883L_AVG_FILTER_NUM__)
    {
        FilterCount = __QMC5883L_AVG_FILTER_NUM__;
        
        for (i = 0; i < FilterCount - 1; i++)
        {
            if (FilterCount == __QMC5883L_AVG_FILTER_NUM__)
            {
              FilterArrary[i][0] = FilterArrary[i + 1][0];
              FilterArrary[i][1] = FilterArrary[i + 1][1];
              FilterArrary[i][2] = FilterArrary[i + 1][2];
            }

            sum_x += FilterArrary[i][0];
            sum_y += FilterArrary[i][1];
            sum_z += FilterArrary[i][2];
        }
    }
    else
    {
        for (i = 0; i < FilterCount - 1; i++)
        {
            sum_x += FilterArrary[i][0];
            sum_y += FilterArrary[i][1];
            sum_z += FilterArrary[i][2];
        }
    }
      
    FilterArrary[FilterCount - 1][0] = magnet_raw[0];
    FilterArrary[FilterCount - 1][1] = magnet_raw[1];
    FilterArrary[FilterCount - 1][2] = magnet_raw[2];
        
    filter_magnet[0] = sum_x / FilterCount;
    filter_magnet[1] = sum_y / FilterCount;
    filter_magnet[2] = sum_z / FilterCount;
    
    magnet[0] = (float)filter_magnet[0] / 120.f;//uT
    magnet[1] = (float)filter_magnet[1] / 120.f;//uT
    magnet[2] = (float)filter_magnet[2] / 120.f;//uT
}

/*****************************************************************************
 * Function      : Qmc5883lI2cByteWrite
 * Description   : I2C byte write drive
 * Input         : uint8_t reg    write reg
                   uint8_t data   write data  
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool Qmc5883lI2cByteWrite(uint8_t reg,uint8_t data)
{
    if (I2cByteWrite(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data)  != HAL_OK)
     {
        return false;
    }
    
    return true;
}

/*****************************************************************************
 * Function      : Qmc5883lI2cBytesRead
 * Description   : I2C bytes read drive
 * Input         : uint8_t reg    read reg
                   uint16_t size  read size
 * Output        : uint8_t* data  read data
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool  Qmc5883lI2cBytesRead(uint8_t reg, uint8_t* data, uint16_t size)
{
   if (I2cBytesRead(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data, size)  != true)
    {
       return false;
   }

   return true;
}

bool  Qmc5883lI2cByteRead(uint8_t reg, uint8_t* data)
{
   if (I2cByteRead(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data)  != true)
    {
       return false;
   }

   return true;
}
//bool Qmc5883lGetDataEx (float *magnet, int16_t *magnetRaw, Qmc5983lAccData *acc_data)
//{
//    uint8_t Buff[6];
//    uint8_t i;
//    uint8_t temp;
//    //uint8_t print_buffer[64];
//    uint16_t convert;
//    Qmc5883lI2cByteRead(0x06, &temp);
//    
//    //temp = QMC5883_ReadReg(0x06);
//    
//    if (temp & 0x02)
//    {
//    	//LOG("output data OVL or ERROR!")
//    	return false;
//    }
//    
//    if ((temp & 0x01) == 0)
//    {
//    	//LOG("output data not ready!")
//    	return false;
//    }
//
//    for (i = 0; i < 6; i++)
//    {
//        Qmc5883lI2cByteRead(i, &Buff[i]);
//    }
//    
//    //I2C_ReadByte(Buff,6,0x00,QMC5883_ADDR);
//    magnetRaw[0] = ((int16_t)Buff[1] << 8) | Buff[0];
//    magnetRaw[1] = ((int16_t)Buff[3] << 8) | Buff[2];
//    magnetRaw[2] = ((int16_t)Buff[5] << 8) | Buff[4];
//
//    acc_data->x = ((int16_t)Buff[1] << 8) | Buff[0];
//    acc_data->y = ((int16_t)Buff[3] << 8) | Buff[2];
//    acc_data->z = ((int16_t)Buff[5] << 8) | Buff[4];
//    
//    for(i=0;i<3;i++)
//    {
//        convert = magnetRaw[i];
//        magnet[i] = (float)convert / 120.f;//uT
//    }		
//    
//       convert = magnetRaw[0];
//        
//      convert = (acc_data->x);
//      magnet[0] = (float)convert / 120.f;//uT
//      convert = acc_data->y;
//      magnet[1] = convert / 120.f;//uT
//      convert = acc_data->z;
//      magnet[2] = convert / 120.f;//uT
//
//    
//    
//   // i = sprintf(print_buffer, "reg0~5 :%02x,%02x,%02x,%02x,%02x,%02x\r\n", Buff[0], Buff[1], Buff[2], Buff[3], Buff[4], Buff[5]);
//   // HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//
//   // i = sprintf(print_buffer, "MagnetRaw :%0x,%0x,%0x\r\n", MagnetRaw[0], MagnetRaw[1], MagnetRaw[2]);
//  //  HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//
//  //  i = sprintf(print_buffer, "Magnet :%f,%f,%f\r\n", magnet[0], magnet[1], magnet[2]);
//  //  HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//    return true;
//}

