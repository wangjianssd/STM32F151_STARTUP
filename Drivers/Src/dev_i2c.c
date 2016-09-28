/**
 *
 * @brief       :  
 *
 * @file        : i2c.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-09-22
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-09-22           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Variables -----------------------------------------------------------------*/
static I2C_HandleTypeDef I2cHander[DEV_I2C_NUM];

/*****************************************************************************
 * Function      : DevI2cInit
 * Description   : I2C device init
 * Input         : I2cHanderTypeDef hi2c  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevI2cInit(DevI2cHander hi2c)
{
	I2C_HandleTypeDef *hander;

	DBG_ASSERT(hi2c.device < DEV_I2C_NUM __DBG_LINE);

	hander = &I2cHander[hi2c.device];

    if (hi2c.device == DEV_I2C1)
    {
        hander->Instance = I2C1;
    }
	
    hander->Init.ClockSpeed = hi2c.clock;

    if (hi2c.addr_mode == DEV_I2C_ADDRESS_MODE_7BIT)
    {
        hander->Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
    }
    else
    {
        hander->Init.AddressingMode = I2C_ADDRESSINGMODE_10BIT;
    }
    
    hander->Init.DutyCycle = I2C_DUTYCYCLE_2;
    hander->Init.OwnAddress1 = 0;
    hander->Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    hander->Init.OwnAddress2 = 0;
    hander->Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    hander->Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
        
    if (HAL_I2C_Init(hander) != HAL_OK)
    {
        return false;
    }
    
  return true;
}
		
/*****************************************************************************
 * Function      : DevI2cByteRead
 * Description   : 
 * Input         : DevI2c i2c  
	               uint8_t addr           
	               uint8_t reg            
 * Output        : uint8_t* data  
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevI2cByteRead (DevI2c i2c,  uint8_t addr, uint8_t reg, uint8_t* data)
{
    uint8_t count = 0;
   // HAL_StatusTypeDef temp;
   I2C_HandleTypeDef *hander;
   
   DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);
   
   hander = &I2cHander[i2c];
   
  //  temp = HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500);
    while( HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500) != HAL_OK)
    {
         if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        {
          return false;
        }
         
         count++;
         
         if (count > 3)
         {
            return false;
         }
         
         //temp = HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500);
    }
   
    if(HAL_I2C_Master_Receive(hander,  (addr | 0x01), data, 1, 1000) != HAL_OK)
    {
        if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
                {
                  return false;
                }
    }
	
    return true;

}

/*****************************************************************************
 * Function      : DevI2cBytesRead
 * Description   : 
 * Input         : DevI2c i2c  
                   uint8_t addr           
                   uint8_t reg            
                   uint16_t size          
 * Output        : uint8_t* data 
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool  DevI2cBytesRead (DevI2c i2c,  uint8_t addr, uint8_t reg, uint8_t* data, uint16_t size)
{
    uint8_t count = 0;
	
    I2C_HandleTypeDef *hander;

    DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

    hander = &I2cHander[i2c];
    
    while(HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500) != HAL_OK)
    {
         if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        {
          return false;
        }
         
         count++;
         
         if (count > 3)
         {
            return false;
         }
    }
   
    if(HAL_I2C_Master_Receive(hander,  (addr | 0x01), data, size, (size * 500) + 500) != HAL_OK)
    {
        if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        {
            return false;
        }
    }
	
    return true;

}

/*****************************************************************************
 * Function      : DevI2cByteWrite
 * Description   : 
 * Input         : DevI2c i2c  
                   uint8_t addr           
                   uint8_t reg            
                   uint8_t data          
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool  DevI2cByteWrite (DevI2c i2c , uint8_t addr, uint8_t reg, uint8_t data)
{
    uint8_t tx_data[2] = {reg, data};
    
    uint8_t count = 0;
    
	I2C_HandleTypeDef *hander;

	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

	hander = &I2cHander[i2c];
    
     while(HAL_I2C_Master_Transmit(hander, addr, (uint8_t*)tx_data, 2, 1000) != HAL_OK)
     {
         if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
         {
             return false;
         }
    
         if (count > 3)
         {
             return false;
         }
     }
     
     return true;

}


