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

/* Exported functions --------------------------------------------------------*/
static void DevI2cIOiInit( DevI2c i2c );
static void DevI2cIODeInit( DevI2c i2c );
static void DevI2cClockEnable( DevI2c i2c );
static void DevI2cClockDisable( DevI2c i2c );

/*****************************************************************************
 * Function      : DevI2cIOInit
 * Description   : Init I2C IO config
 * Input         : DevI2c i2c
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevI2cIOInit( DevI2c i2c )
{
	GPIO_InitTypeDef GPIO_InitStruct;
	
	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);
	
	if(i2c == DEV_I2C1)
	{

		/* Peripheral clock enable */		
		__HAL_RCC_GPIOB_CLK_ENABLE();
	
		/**I2C1 GPIO Configuration	 
		PB8	   ------> I2C1_SCL
		PB9	   ------> I2C1_SDA 
		*/
		GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
		GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
		GPIO_InitStruct.Pull = GPIO_PULLUP;
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
		GPIO_InitStruct.Alternate = GPIO_AF4_I2C1;
		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
	}
	
}

/*****************************************************************************
 * Function      : DevI2cIODeInit
 * Description   : Deinit I2c io config
 * Input         : DevI2c i2c
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevI2cIODeInit( DevI2c i2c )
{	
	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);
	
	if(i2c == DEV_I2C1)
	{

			/**I2C1 GPIO Configuration	 
		PB8	   ------> I2C1_SCL
		PB9	   ------> I2C1_SDA 
		*/
		HAL_GPIO_DeInit(GPIOB, GPIO_PIN_8|GPIO_PIN_9);
	}
}

/*****************************************************************************
 * Function      : DevI2cClockEnable
 * Description   : Enable I2C clock
 * Input         : DevI2c i2c
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevI2cClockEnable( DevI2c i2c )
{
	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

	if(i2c == DEV_I2C1)
	{
		/* Peripheral clock enable */
		__HAL_RCC_I2C1_CLK_ENABLE();
	}
}

/*****************************************************************************
 * Function      : DevI2cClockDisable
 * Description   : Disable I2C clock
 * Input         : DevI2c i2c
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevI2cClockDisable( DevI2c i2c )
{
	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

	if(i2c == DEV_I2C1)
	{
		/* Peripheral clock enable */
		__HAL_RCC_I2C1_CLK_DISABLE();
	}

}
/*****************************************************************************
 * Function      : DevI2cInit
 * Description   : I2C device init
 * Input         : DevI2c i2c 
 				   DevI2cConfig config
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20160922
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevI2cInit(DevI2c i2c, DevI2cConfig config)
{
	I2C_HandleTypeDef *hander;

	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

	hander = &I2cHander[i2c];

    if (i2c == DEV_I2C1)
    {
        hander->Instance = I2C1;
    }
		
    hander->Init.ClockSpeed = config.clock;

	hander->Init.AddressingMode = config.addr_mode;
    
    hander->Init.DutyCycle = I2C_DUTYCYCLE_2;
    hander->Init.OwnAddress1 = 0;
    hander->Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
    hander->Init.OwnAddress2 = 0;
    hander->Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
    hander->Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;

	DevI2cClockEnable(i2c);

	DevI2cIOInit(i2c);

    if (HAL_I2C_Init(hander) != HAL_OK)
    {
        return false;
    }
    
  return true;
}

/*****************************************************************************
 * Function      : DevI2cDeInit
 * Description   : Deinit I2C device 
 * Input          : DevI2c i2c
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160929
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevI2cDeInit( DevI2c i2c )
{
	I2C_HandleTypeDef *hander;

	DBG_ASSERT(i2c < DEV_I2C_NUM __DBG_LINE);

	hander = &I2cHander[i2c];

	DevI2cIODeInit(i2c);

	HAL_I2C_DeInit (hander);
	
	DevI2cClockDisable(i2c);

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


