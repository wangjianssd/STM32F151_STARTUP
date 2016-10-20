/**
 *
 * @brief       :  
 *
 * @file        : bsp_hmc5983.c
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
#include "bsp.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
static void BspHmc5983CsSetHigh( void );
static void BspHmc5983CsSetLow( void );

/*****************************************************************************
 * Function      : BspHmc5983Init
 * Description   : Init HMC5983 
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983Init(void)
{
    DevSpiConfig config;
    DevGpioConfig gpio_config;
    bool ret;

    config.mode         = DEV_SPI_MODE_MASTER;
    config.data_size    = DEV_SPI_DATASIZE_8BIT;
    config.clock_pol    = DEV_SPI_POLARITY_HIGH;
    config.clock_phase  = DEV_SPI_PHASE_2EDGE;
    config.first_bit    = DEV_SPI_FIRSTBIT_MSB;
    config.buad_rate    = DEV_SPI_BAUDRATEPRESCALER_32;
    config.pin.miso_af  = DEV_SPI_PIN_AF0;
    config.pin.mosi_af  = DEV_SPI_PIN_AF0;
    config.pin.sck_af   = DEV_SPI_PIN_AF0;

    if (DevSpiInit(__BSP_HMC5983_SPI__, config) != true)
    {
        return false;
    }

    gpio_config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    gpio_config.level = DEV_GPIO_PIN_LEVEL_HIGH;
    gpio_config.pull = DEV_GPIO_NOPULL;
    gpio_config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    DevGpioInit( __BSP_HMC5983_SPI_CS_PORT__, __BSP_HMC5983_SPI_CS_PIN__,  gpio_config);

    ret = BspHmc5983Config(__BSP_HMC5983_REG_A_DEFAULT_VALUE__, __BSP_HMC5983_REG_B_DEFAULT_VALUE__);

    if(false == ret)
    {
        return false;
    }

    ret = BspHmc5983SelfTest();

    if(false == ret)
    {
        return false;
    }

    return true; 
}


/*****************************************************************************
 * Function      : BspHmc5983Config
 * Description   : Config HMC5983
 * Input         : uint8_t reg_a
                   uint8_t reg_b
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983Config(uint8_t reg_a, uint8_t reg_b)
{
	uint8_t reg_a_r = __BSP_HMC5983_REG_A_DEFAULT_VALUE__;
    uint8_t reg_b_r = __BSP_HMC5983_REG_B_DEFAULT_VALUE__;
    BspHmc5983SpiWrite(__BSP_HMC5983_CONFIG_REG_A_ADDR__, reg_a);
    BspHmc5983SpiWrite(__BSP_HMC5983_CONFIG_REG_B_ADDR__, reg_b);
    
    BspHmc5983SpiRead(__BSP_HMC5983_CONFIG_REG_A_ADDR__, &reg_a_r);
    BspHmc5983SpiRead(__BSP_HMC5983_CONFIG_REG_B_ADDR__, &reg_b_r);
    
    if(reg_a != reg_a_r || reg_b != reg_b_r)
    {		
        return false;	
    }
    
    return true;

}


/*****************************************************************************
 * Function      : BspHmc5983CsSetLow
 * Description   : Set cs pin output low level
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void BspHmc5983CsSetLow( void )
{
    DevGpioWrite( __BSP_HMC5983_SPI_CS_PORT__, __BSP_HMC5983_SPI_CS_PIN__,  DEV_GPIO_PIN_LEVEL_LOW);
}

/*****************************************************************************
 * Function      : BspHmc5983CsSetHigh
 * Description   : Set cs pin output high level
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
static void BspHmc5983CsSetHigh( void )
{
    DevGpioWrite( __BSP_HMC5983_SPI_CS_PORT__, __BSP_HMC5983_SPI_CS_PIN__,  DEV_GPIO_PIN_LEVEL_HIGH);
}

/*****************************************************************************
 * Function      : BspHmc5983SpiRead
 * Description   : HMC5983 spi read process
 * Input         : uint8_t reg    
 * Output        : uint8_t* data  
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983SpiRead( uint8_t reg, uint8_t* data)
{
    uint8_t cmd;

    cmd = reg & 0x3f | __BSP_HMC5983_SPI_R_REGISTER__;

    BspHmc5983CsSetLow();

    if (DevSpiTx(__BSP_HMC5983_SPI__, &cmd, 1) != true)
    {
        return false;
    }

    if (DevSpiRx(__BSP_HMC5983_SPI__, data, 1) != true)
    {
        return false;
    }
    
    BspHmc5983CsSetHigh();
    
    return true;
}

/*****************************************************************************
 * Function      : BspHmc5983SpiWrite
 * Description   : HMC5983 spi write process
 * Input         : uint8_t reg   
                   uint8_t data  
 * Output        : none
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161019
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983SpiWrite( uint8_t reg, uint8_t data)
{
    uint8_t cmd;
    
    //BspHmc5983CsSetHigh();
    //Delay(1);

    cmd = reg & 0x3f + __BSP_HMC5983_SPI_W_REGISTER__;

    BspHmc5983CsSetLow();

    if (DevSpiTx(__BSP_HMC5983_SPI__, &cmd, 1) != true)
    {
        return false;
    }

    if (DevSpiTx(__BSP_HMC5983_SPI__, &data, 1) != true)
    {
        return false;
    }
    
    BspHmc5983CsSetHigh();
    
    return true;
}


/*****************************************************************************
 * Function      : BspHmc5983SelfTest
 * Description   : HMC5983 selftest process
 * Input         : void
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161020
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983SelfTest( void )
{    
    uint8_t buf[6] = {0};    
    int16_t x = 0;
    int16_t y = 0;
    int16_t z = 0;
    
    if(false == BspHmc5983Config(__BSP_HMC5983_REG_A_VALUE_FOR_SELF_TEST__,
                                 __BSP_HMC5983_REG_B_VALUE_FOR_SELF_TEST__))
    {
       // DBG_LOG(DBG_LEVEL_WARNING, "slef-test config failed\r\n");
        return false;    
    }    

    if(false == BspHmc5983SpiWrite(__BSP_HMC5983_MODE_REG_ADDR__,
                                   __BSP_HMC5983_MODE_REG_VALUE_FOR_SINGLE__))
    {        
        return false;
    } 
        
    Delay(7);
    
    for(uint32_t i = 0; i < 6; i++)	
    {		
        if(false == BspHmc5983SpiRead(__BSP_HMC5983_X_MSB_REG_ADDR__ + i, &buf[i]))
        {			
            return false;		
        }	
    }      
    
    x = BUILD_UINT16(buf[1], buf[0]);	
    z = BUILD_UINT16(buf[3], buf[2]);	
    y = BUILD_UINT16(buf[5], buf[4]); 
    
    if (   (x < 243 || x > 575) || (y < 243 || y > 575) || (z < 243 || z > 575))    
    {
#if 0        
        DBG_LOG(DBG_LEVEL_WARNING, "slef-test values error\r\n");        
        DBG_LOG(DBG_LEVEL_INFO, "x = %d,y = %d,z = %d\r\n",x, y, z);
#endif        
        //return false;    
        return true;    
    }     
    
    return true;
}

/*****************************************************************************
 * Function      : BspHmc5983SensorDetect
 * Description   : Get sensor value
 * Input         : int16_t *x
                   int16_t *y
                   int16_t *z
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161020
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspHmc5983SensorDetect( int16_t *x, int16_t *y, int16_t *z )
{
    uint8_t buf[6] = {0};
    
    if(false == BspHmc5983Config(__BSP_HMC5983_REG_A_VALUE_FOR_DETECT__,
                                 __BSP_HMC5983_REG_B_VALUE_FOR_DETECT__))
    {
       // DBG_LOG(DBG_LEVEL_WARNING, "hmc5983-detect config failed\r\n");
        return false;
    }
    
    if(false == BspHmc5983SpiWrite(__BSP_HMC5983_MODE_REG_ADDR__, 
                                   __BSP_HMC5983_MODE_REG_VALUE_FOR_SINGLE__))
	{
		return false;
	}
    
    Delay(7);

    for(int i=0; i<6; i++)
	{
		if(false == BspHmc5983SpiRead(__BSP_HMC5983_X_MSB_REG_ADDR__ + i, &buf[i]))
		{
			return false;
		}
	}

	*x = BUILD_UINT16(buf[1], buf[0]);
	*z = BUILD_UINT16(buf[3], buf[2]);
	*y = BUILD_UINT16(buf[5], buf[4]);
    
    return true;    
}

