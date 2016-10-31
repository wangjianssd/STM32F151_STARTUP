/**
 *
 * @brief       :  
 *
 * @file        : dev_spi.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-19
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-19           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/
typedef struct
{
    DevGpioPort      port;
    DevGpioPin       pin;
    DevGpioAlternate af;
}DevSpiPinPort;

typedef struct
{
    SPI_HandleTypeDef  hander;
    DevSpiPin          pin;
}DevSpiHander;

/* Function prototypes -------------------------------------------------------*/
static void DevSpiIOInit( DevSpi spi);
static void DevSpiIODeInit( DevSpi spi );
static void DevSpiClockEnable( DevSpi spi );
static void DevSpiClockDisable( DevSpi spi );

/* Variables -----------------------------------------------------------------*/
static DevSpiHander SpiHander[DEV_SPI_NUM];
static DevSpiPinPort Spi1MisoPinGroup[] = 
{
    {DEV_SPI1_PIN_AF0_MISO_PORT, DEV_SPI1_PIN_AF0_MISO_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF1_MISO_PORT, DEV_SPI1_PIN_AF1_MISO_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF2_MISO_PORT, DEV_SPI1_PIN_AF2_MISO_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF3_MISO_PORT, DEV_SPI1_PIN_AF3_MISO_PIN, DEV_GPIO_AF5_SPI1},
};

static DevSpiPinPort Spi1MosiPinGroup[] = 
{
    {DEV_SPI1_PIN_AF0_MOSI_PORT, DEV_SPI1_PIN_AF0_MOSI_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF1_MOSI_PORT, DEV_SPI1_PIN_AF1_MOSI_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF2_MOSI_PORT, DEV_SPI1_PIN_AF2_MOSI_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF3_MOSI_PORT, DEV_SPI1_PIN_AF3_MOSI_PIN, DEV_GPIO_AF5_SPI1},
};

static DevSpiPinPort Spi1SckPinGroup[] = 
{
    {DEV_SPI1_PIN_AF0_SCK_PORT, DEV_SPI1_PIN_AF0_SCK_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF1_SCK_PORT, DEV_SPI1_PIN_AF1_SCK_PIN, DEV_GPIO_AF5_SPI1},\
    {DEV_SPI1_PIN_AF2_SCK_PORT, DEV_SPI1_PIN_AF2_SCK_PIN, DEV_GPIO_AF5_SPI1},
};

static DevSpiPinPort Spi2MisoPinGroup[] = 
{
    {DEV_SPI2_PIN_AF0_MISO_PORT, DEV_SPI2_PIN_AF0_MISO_PIN, DEV_GPIO_AF5_SPI2},\
    {DEV_SPI2_PIN_AF1_MISO_PORT, DEV_SPI2_PIN_AF1_MISO_PIN, DEV_GPIO_AF5_SPI2},
};

static DevSpiPinPort Spi2MosiPinGroup[] = 
{
    {DEV_SPI2_PIN_AF0_MOSI_PORT, DEV_SPI2_PIN_AF0_MOSI_PIN, DEV_GPIO_AF5_SPI2},\
    {DEV_SPI2_PIN_AF1_MOSI_PORT, DEV_SPI2_PIN_AF1_MOSI_PIN, DEV_GPIO_AF5_SPI2},
};

static DevSpiPinPort Spi2SckPinGroup[] = 
{
    {DEV_SPI2_PIN_AF0_SCK_PORT, DEV_SPI3_PIN_AF0_SCK_PIN, DEV_GPIO_AF5_SPI2},\
    {DEV_SPI2_PIN_AF1_SCK_PORT, DEV_SPI3_PIN_AF1_SCK_PIN, DEV_GPIO_AF5_SPI2},
};

#ifdef  STM32L151xD
static DevSpiPinPort Spi3MisoPinGroup[] = 
{
    {DEV_SPI3_PIN_AF0_MISO_PORT, DEV_SPI3_PIN_AF0_MISO_PIN, DEV_GPIO_AF6_SPI3},\
    {DEV_SPI3_PIN_AF1_MISO_PORT, DEV_SPI3_PIN_AF1_MISO_PIN, DEV_GPIO_AF6_SPI3},
};

static DevSpiPinPort Spi3MosiPinGroup[] = 
{
    {DEV_SPI3_PIN_AF0_MOSI_PORT, DEV_SPI3_PIN_AF0_MOSI_PIN, DEV_GPIO_AF6_SPI3},\
    {DEV_SPI3_PIN_AF1_MOSI_PORT, DEV_SPI3_PIN_AF1_MOSI_PIN, DEV_GPIO_AF6_SPI3},
};

static DevSpiPinPort Spi3SckPinGroup[] = 
{
    {DEV_SPI3_PIN_AF0_SCK_PORT, DEV_SPI3_PIN_AF0_SCK_PIN, DEV_GPIO_AF6_SPI3},\
    {DEV_SPI3_PIN_AF1_SCK_PORT, DEV_SPI3_PIN_AF1_SCK_PIN, DEV_GPIO_AF6_SPI3},
};
#endif


/* Function prototypes -------------------------------------------------------*/
/*****************************************************************************
 * Function      : DevSpiInit
 * Description   : Init spi device
 * Input         : DevSpi spi
                   DevSpiConfig config
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevSpiInit( DevSpi spi, DevSpiConfig config )
{
    SPI_HandleTypeDef *hander;

    DBG_ASSERT(spi < DEV_SPI_NUM);

    hander = &SpiHander[spi].hander;

    if (spi == DEV_SPI1)
    {
        hander->Instance = SPI1;
    }
    else if (spi == DEV_SPI2)
    {
        hander->Instance = SPI2;
    }
#ifdef  STM32L151xD
    else if (spi == DEV_SPI3)
    {
        hander->Instance = SPI3;
    }
#endif
    //hspi1.Instance = SPI1;
    hander->Init.Mode = config.mode;//SPI_MODE_MASTER;
    hander->Init.DataSize = config.data_size;//SPI_DATASIZE_8BIT;
    hander->Init.CLKPolarity = config.clock_pol;//SPI_POLARITY_LOW;
    hander->Init.CLKPhase = config.clock_phase;//SPI_PHASE_1EDGE;
    hander->Init.BaudRatePrescaler = config.buad_rate;//SPI_BAUDRATEPRESCALER_2;
    hander->Init.FirstBit = config.first_bit;//SPI_FIRSTBIT_MSB;

    hander->Init.Direction = SPI_DIRECTION_2LINES;
    hander->Init.NSS = SPI_NSS_SOFT;
    hander->Init.TIMode = SPI_TIMODE_DISABLE;
    hander->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
    hander->Init.CRCPolynomial = 7;

    SpiHander[spi].pin = config.pin;
    DevSpiIOInit(spi);
    
	DevSpiClockEnable(spi);
    
	if (HAL_SPI_Init(hander) != HAL_OK)
	{
	  return false;
	}
	
    __HAL_SPI_ENABLE(hander);

	return true;    

}

/*****************************************************************************
 * Function      : DevSpiDeinit
 * Description   : Deinit spi
 * Input         : DevSpi spi
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevSpiDeinit( DevSpi spi )
{
	SPI_HandleTypeDef *hander;

	DBG_ASSERT(spi < DEV_SPI_NUM);

    hander = &SpiHander[spi].hander;
	
	DevSpiClockDisable(spi);

	DevSpiIODeInit(spi);
	
    __HAL_SPI_DISABLE(hander);
    
	if (HAL_SPI_DeInit(hander) != HAL_OK)
	{
	  return false;
	}
	
	return true;

}
/*****************************************************************************
 * Function      : DevSpiIOInit
 * Description   : Init spi io
 * Input         : DevSpi spi     
                DevSpiPin pin  
 * Output        : None
 * Return        : static
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void DevSpiIOInit( DevSpi spi)
{
    DevSpiPinPort miso;
    DevSpiPinPort mosi;
    DevSpiPinPort sck;
    DevGpioConfig config;
    DevSpiPin pin; 
    
    DBG_ASSERT(spi < DEV_SPI_NUM);
    
    pin = SpiHander[spi].pin;
    
    switch (spi)
    {
        case DEV_SPI1: miso.port = Spi1MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi1MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi1MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi1MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi1MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi1MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi1SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi1SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi1SckPinGroup[pin.sck_af].af;
                       break;
        case DEV_SPI2: miso.port = Spi2MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi2MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi2MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi2MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi2MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi2MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi2SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi2SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi2SckPinGroup[pin.sck_af].af;
                       break;
#ifdef  __STM32L151xD__
        case DEV_SPI3: miso.port = Spi3MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi3MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi3MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi3MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi3MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi3MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi3SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi3SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi3SckPinGroup[pin.sck_af].af;
                       break; 
#endif
        default: 
                       break;
    }
    
    config.mode = DEV_GPIO_MODE_AF_PP;
    config.pull = DEV_GPIO_NOPULL;
    config.speed = DEV_GPIO_SPEED_FREQ_VERY_HIGH;
    
    config.alternate = miso.af;
    DevGpioInit(miso.port, miso.pin, config );

    config.alternate = mosi.af;
    DevGpioInit(mosi.port, mosi.pin, config );

    config.alternate = sck.af;
    DevGpioInit(sck.port, sck.pin, config );

}

/*****************************************************************************
 * Function      : DevSpiIODeInit
 * Description   : Deinit spi io
 * Input         : DevSpi spi  
 * Output        : None
 * Return        : static
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void DevSpiIODeInit( DevSpi spi )
{
    DevSpiPinPort miso;
    DevSpiPinPort mosi;
    DevSpiPinPort sck;
    DevSpiPin pin; 
    
    DBG_ASSERT(spi < DEV_SPI_NUM);
    
    pin = SpiHander[spi].pin;
    
    switch (spi)
    {
        case DEV_SPI1: miso.port = Spi1MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi1MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi1MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi1MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi1MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi1MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi1SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi1SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi1SckPinGroup[pin.sck_af].af;
                       break;
        case DEV_SPI2: miso.port = Spi2MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi2MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi2MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi2MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi2MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi2MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi2SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi2SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi2SckPinGroup[pin.sck_af].af;
                       break;
#ifdef  __STM32L151xD__
        case DEV_SPI3: miso.port = Spi3MisoPinGroup[pin.miso_af].port;
                       miso.pin  = Spi3MisoPinGroup[pin.miso_af].pin;
                       miso.af   = Spi3MisoPinGroup[pin.miso_af].af;
                       mosi.port = Spi3MosiPinGroup[pin.mosi_af].port;
                       mosi.pin  = Spi3MosiPinGroup[pin.mosi_af].pin;
                       mosi.af   = Spi3MosiPinGroup[pin.mosi_af].af;
                       sck.port  = Spi3SckPinGroup[pin.sck_af].port;
                       sck.pin   = Spi3SckPinGroup[pin.sck_af].pin;
                       sck.af    = Spi3SckPinGroup[pin.sck_af].af;
                       break; 
#endif
        default: 
                       break;
    }
    
    DevGpioDeInit(miso.port, miso.pin);
    DevGpioDeInit(mosi.port, mosi.pin);
    DevGpioDeInit(sck.port, sck.pin);

}

/*****************************************************************************
 * Function      : DevSpiClockEnable
 * Description   : Enable spi clock
 * Input         : DevSpi spi  
 * Output        : None
 * Return        : None
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void DevSpiClockEnable( DevSpi spi )
{
    DBG_ASSERT(spi < DEV_SPI_NUM);

    switch (spi)
    {
        case DEV_SPI1: __HAL_RCC_SPI1_CLK_ENABLE();
            break;
        case DEV_SPI2: __HAL_RCC_SPI2_CLK_ENABLE();
            break;
#ifdef  __STM32L151xD__
        case DEV_SPI3: __HAL_RCC_SPI3_CLK_ENABLE();
            break;  
#endif
        default: 
            break;
    }
}


/*****************************************************************************
 * Function      : DevSpiClockDisable
 * Description   : Disable spi clock
 * Input         : DevSpi spi  
 * Output        : None
 * Return        : None
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void DevSpiClockDisable( DevSpi spi )
{
    DBG_ASSERT(spi < DEV_SPI_NUM);

    switch (spi)
    {
        case DEV_SPI1: __HAL_RCC_SPI1_CLK_DISABLE();
            break;
        case DEV_SPI2: __HAL_RCC_SPI2_CLK_DISABLE();
            break;
#ifdef  __STM32L151xD__
        case DEV_SPI3: __HAL_RCC_SPI3_CLK_DISABLE();
            break;  
#endif
        default: 
            break;
    }
}


/*****************************************************************************
 * Function      : DevSpiTx
 * Description   : Spi send data
 * Input         : DevSpi spi
                   uint8_t* data
                   uint16_t size
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevSpiTx( DevSpi spi, uint8_t* data, uint16_t size )
{
    uint8_t temp;
    uint32_t timeout;
	SPI_HandleTypeDef *hander;

    DBG_ASSERT(spi < DEV_SPI_NUM);
    
    hander = &SpiHander[spi].hander;
    
    for (uint16_t i = 0; i < size; i++)
    {
        timeout = 0;
        while (__HAL_SPI_GET_FLAG(hander, SPI_FLAG_TXE) == 0)
        {
            timeout++;

            if (timeout > 70000)
            {
                return false;
            }
        }
        
       hander->Instance->DR = data[i];
       timeout = 0;
       while (__HAL_SPI_GET_FLAG(hander, SPI_FLAG_RXNE) == 0)
       {
           timeout++;

           if (timeout > 70000)
           {
               return false;
           }
       }
       
       temp = hander->Instance->DR;
    }


//    if (HAL_SPI_Transmit (&SpiHander[spi].hander, data, size, 1000) != HAL_OK)
//    {
//        return false;
//    }

    return true;
}


/*****************************************************************************
 * Function      : DevSpiRx
 * Description   : Spi receive data
 * Input         : DevSpi spi
                   uint16_t size
 * Output        : uint8_t* data
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevSpiRx( DevSpi spi, uint8_t* data, uint16_t size )
{
    uint8_t temp;
    uint32_t timeout;
	SPI_HandleTypeDef *hander;

    DBG_ASSERT(spi < DEV_SPI_NUM);
    
    hander = &SpiHander[spi].hander;

    
    for (uint16_t i = 0; i < size; i++)
    {
         timeout = 0;
         while (__HAL_SPI_GET_FLAG(hander, SPI_FLAG_TXE) == 0)
         {
             timeout++;
        
             if (timeout > 70000)
             {
                 return false;
             }
         }
         
        hander->Instance->DR = 0xf0;

        timeout = 0;
        while (__HAL_SPI_GET_FLAG(hander, SPI_FLAG_RXNE) == 0)
        {
            timeout++;
        
            if (timeout > 70000)
            {
                return false;
            }
        }
        
        data[i] = hander->Instance->DR;
    }

//    if (HAL_SPI_Receive(&SpiHander[spi].hander, data, size, 1000) != HAL_OK)
//    {
//        return false;
//    }

    return true;
}

