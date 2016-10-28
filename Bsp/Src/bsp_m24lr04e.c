/**
 *
 * @brief       :  
 *
 * @file        : bsp_m24lr04e.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-25
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-25           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "bsp.h"

/* Define --------------------------------------------------------------------*/
DBG_THIS_MODULE("M24LR04E")

/* Exported types ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
static uint8_t WipCount = 0;

/* Function prototypes -------------------------------------------------------*/
static void BspM24lr04eWipInit(void);
static void BspM24lr04eWipIsr (void);
static bool BspM24lr04eSendByte(uint8_t mode, uint16_t const addr, uint8_t data);
static bool BspM24lr04eRecvByte(uint8_t mode, uint16_t const addr, uint8_t *data);
static bool BspM24lr04eWritePage(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len);
static bool BspM24lr04eWriteSection(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len);

/* Variables -----------------------------------------------------------------*/
/*****************************************************************************
 * Function      : BspM24lr04ePowerInit
 * Description   : Init power pin
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspM24lr04ePowerInit(void)
{
    DevGpioConfig gpio_config;

    gpio_config.mode = DEV_GPIO_MODE_OUTPUT_PP;
    gpio_config.level = DEV_GPIO_PIN_LEVEL_LOW;
    gpio_config.pull = DEV_GPIO_NOPULL;
    gpio_config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    DevGpioInit( __BSP_M24LR04E_POWER_SW_PORT__, 
                 __BSP_M24LR04E_POWER_SW_PIN__,  gpio_config);

    gpio_config.mode = DEV_GPIO_MODE_INPUT;
    gpio_config.pull = DEV_GPIO_NOPULL;
    gpio_config.speed = DEV_GPIO_SPEED_FREQ_HIGH;
    DevGpioInit( __BSP_M24LR04E_PRESENT_PORT__, 
                 __BSP_M24LR04E_PRESENT_PIN__,  gpio_config);

}

/*****************************************************************************
 * Function      : BspM24lr04ePowerOn
 * Description   : Power on
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspM24lr04ePowerOn(void)
{
    DevGpioWrite( __BSP_M24LR04E_POWER_SW_PORT__, 
                  __BSP_M24LR04E_POWER_SW_PIN__, DEV_GPIO_PIN_LEVEL_HIGH);
}

/*****************************************************************************
 * Function      : BspM24lr04ePowerOff
 * Description   : Power off
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspM24lr04ePowerOff(void)
{
    DevGpioWrite( __BSP_M24LR04E_POWER_SW_PORT__, 
                  __BSP_M24LR04E_POWER_SW_PIN__,  DEV_GPIO_PIN_LEVEL_LOW);
}

/*****************************************************************************
 * Function      : BspM24lr04eWipIsr
 * Description   : Wip interrupt isr
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspM24lr04eWipIsr (void)
{
    WipCount++;
    DBG_LOG(__DBG_LEVEL_INFO__, "RF Write:%d\r\n", WipCount);

}

/*****************************************************************************
 * Function      : BspM24lr04eWipInit
 * Description   : Init WIP pin
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspM24lr04eWipInit(void)
{
    DevGpioIrqRegister(__BSP_M24LR04E_WIP_PORT__, __BSP_M24LR04E_WIP_PIN__, 
                       DEV_GPIO_MODE_IT_RISING, BspM24lr04eWipIsr);
    
    DevGpioIrqEnable(__BSP_M24LR04E_WIP_PORT__, __BSP_M24LR04E_WIP_PIN__);
}

/*****************************************************************************
 * Function      : BspM24lr04eRecvByte
 * Description   : M24lr04e i2c byte rec
 * Input         : uint8_t mode         
                   uint16_t const addr  
 * Output        : uint8_t *data   
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eRecvByte(uint8_t mode, uint16_t const addr, uint8_t *data)
{    
    DevI2cMsg msg;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);
    
    DBG_ASSERT(data != NULL __DBG_LINE);
    
    msg.addr = mode;
    msg.data = data;
    msg.data_len = 1;
    msg.reg = addr;
    msg.reg_len = 2;
    

    if (DevI2cRead(__BSP_M24LR04E_I2C__, msg)  != DEF_TRUE)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eRead
 * Description   : M24lr04e i2c rec
 * Input         : uint8_t mode   
                   uint16_t addr  
                   uint8_t len    
 * Output        : uint8_t *data  
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161026
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eRead(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len)
{
    DevI2cMsg msg;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);
    
    DBG_ASSERT(data != NULL __DBG_LINE);

    if (len == 0)
    {
        return DEF_FALSE;
    }
//    else if (len == 1)
//    {
//        return BspM24lr04eRecvByte(mode, addr, data);
//    }
    else
    {
        msg.addr = mode;
        msg.data = data;
        msg.data_len = len;
        msg.reg = addr;
        msg.reg_len = 2;
        
        if (DevI2cRead(__BSP_M24LR04E_I2C__, msg)  != DEF_TRUE)
        {
            return DEF_FALSE;
        }
     }

     return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eSendByte
 * Description   : M24lr04e i2c byte send
 * Input         : uint8_t mode         
                   uint16_t const addr  
                   uint8_t *data        
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eSendByte(uint8_t mode, uint16_t const addr, uint8_t data)
{    
    DevI2cMsg msg;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);

    msg.addr = mode;
    msg.data = &data;
    msg.data_len = 1;
    msg.reg = addr;
    msg.reg_len = 2;
    
    if (DevI2cWrite(__BSP_M24LR04E_I2C__, msg)  != DEF_TRUE)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eWritePage
 * Description   : Write page
 * Input         : uint8_t mode   
                   uint16_t addr  
                   uint8_t *data  
                   uint8_t len    
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161027
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eWritePage(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len)
{
    DevI2cMsg msg;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);
    DBG_ASSERT(data != NULL __DBG_LINE);
    DBG_ASSERT(len <= __BSP_M24LR04E_PAGE_SIZE__ __DBG_LINE);

    msg.addr = mode;
    msg.data = data;
    msg.data_len = len;
    msg.reg = addr;
    msg.reg_len = 2;

    if (DevI2cWrite(__BSP_M24LR04E_I2C__, msg)  != DEF_TRUE)
    {
        return DEF_FALSE;
    }

    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eWriteSection
 * Description   : Write section
 * Input         : uint8_t mode   
                   uint16_t addr  
                   uint8_t *data  
                   uint8_t len    
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161027
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eWriteSection(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len)
{
    uint8_t *data_p;
    uint16_t addr_temp;
    uint8_t remain_data_pro;
    uint8_t remain_data_end;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);
    DBG_ASSERT(data != NULL __DBG_LINE);
    DBG_ASSERT(len <= __BSP_M24LR04E_SECTION_SIZE__ __DBG_LINE);
    
    data_p = data;
    addr_temp = addr;
    remain_data_pro = __BSP_M24LR04E_PAGE_SIZE__ - (addr_temp % __BSP_M24LR04E_PAGE_SIZE__);
    remain_data_end = 0;
    
    if (len >= remain_data_pro)
    {
        remain_data_end = (len - remain_data_pro) % __BSP_M24LR04E_PAGE_SIZE__;
    }
    // start page
    if (remain_data_pro != 0)
    {
        if (len <= remain_data_pro)
        {
            remain_data_pro = len;
        }
        
        if (BspM24lr04eWritePage(mode, addr_temp, data_p, remain_data_pro)
                == DEF_TRUE)
        {
            data_p += remain_data_pro;
            addr_temp += remain_data_pro;
            Delay(__BSP_M24LR64E_PAGE_WRITE_TIME__);
        }
        else
        {
            return DEF_FALSE;
        }
    }
    // complete page
    uint8_t data_page_numb = (len - remain_data_pro) / __BSP_M24LR04E_PAGE_SIZE__;
    for (uint8_t i = 0; i < data_page_numb; i++)
    {
        if (BspM24lr04eWritePage(mode, addr_temp, data_p, __BSP_M24LR04E_PAGE_SIZE__)
                == DEF_TRUE)
        {
            data_p += __BSP_M24LR04E_PAGE_SIZE__;
            addr_temp += __BSP_M24LR04E_PAGE_SIZE__;
            Delay(__BSP_M24LR64E_PAGE_WRITE_TIME__);
        }
        else
        {
            return DEF_FALSE;
        }
    }
    // the last page
    if (remain_data_end != 0)
    {
        if (BspM24lr04eWritePage(mode, addr_temp, data_p, remain_data_end)
                == DEF_TRUE)
        {
            Delay(__BSP_M24LR64E_PAGE_WRITE_TIME__);
        }
        else
        {
            return DEF_FALSE;
        }
    }
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eWrite
 * Description   : Write device
 * Input         : uint8_t mode   
                   uint16_t addr  
                   uint8_t *data  
                   uint8_t len    
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161027
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eWrite(uint8_t mode, uint16_t addr, uint8_t *data, uint8_t len)
{
    uint8_t *data_p;
    uint16_t addr_temp;
    uint8_t remain_data_section_pro;
    uint8_t remain_data_section_end;

    DBG_ASSERT(addr <= __BSP_M24LR04E_MAX_ADDR__ __DBG_LINE);
    DBG_ASSERT(data != NULL __DBG_LINE);

    if ((len == 0 ) || (data == NULL))
    {
        return DEF_FALSE;
    }

    data_p = data;
    addr_temp = addr;
    remain_data_section_pro = __BSP_M24LR04E_SECTION_SIZE__ - (addr_temp % __BSP_M24LR04E_SECTION_SIZE__);
    remain_data_section_end = 0;
    
    if (len >= remain_data_section_pro)
    {
        remain_data_section_end = (len - remain_data_section_pro) % __BSP_M24LR04E_SECTION_SIZE__;
    }
    
    if (remain_data_section_pro != 0)
    {
        if (len <= remain_data_section_pro)
        {
            remain_data_section_pro = len;
        }
        if (BspM24lr04eWriteSection(mode, addr_temp, data_p, remain_data_section_pro)
                == DEF_TRUE)
        {
            data_p += remain_data_section_pro;
            addr_temp += remain_data_section_pro;
        }
    }
    //
    uint8_t data_section_numb = (len - remain_data_section_pro) / __BSP_M24LR04E_SECTION_SIZE__;
    for (uint8_t i = 0; i < data_section_numb; i++)
    {
        if (BspM24lr04eWriteSection(mode, addr_temp, data_p, __BSP_M24LR04E_SECTION_SIZE__)
                == DEF_TRUE)
        {
            data_p += __BSP_M24LR04E_SECTION_SIZE__;
            addr_temp += __BSP_M24LR04E_SECTION_SIZE__;
        }
        else
        {
            return DEF_FALSE;
        }
    }
    
    if (remain_data_section_end != 0)
    {
        if (BspM24lr04eWriteSection(mode, addr_temp, data_p, remain_data_section_end)
                != DEF_TRUE)
        {
            return DEF_FALSE;
        }
    }
    
   // Delay(3);

    return DEF_TRUE;
}


bool BspM24lr04eSyetenInfo(BspM24lr04eSysInfo *info)
{
    return (BspM24lr04eRead(__BSP_M24LR64E_ADDR_SYS__, __BSP_M24LR64E_SYS_INFO__, 
                            (uint8_t *)info, sizeof(BspM24lr04eSysInfo)));

}

/*****************************************************************************
 * Function      : BspM24lr04eInit
 * Description   : Init m24lr04e
 * Input         : void  
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eInit(void)
{
	DevI2cConfig config;
    bool ret;
    uint8_t reg = 0;

    //open power
    BspM24lr04ePowerInit();
    
    BspM24lr04ePowerOn();

    Delay(1);

	config.clock 		= __BSP_M24LR04E_I2C_CLOCK__;
	config.addr_mode 	= DEV_I2C_ADDRESS_MODE_7BIT;
	config.pin.scl_af   = __BSP_M24LR04E_I2C_SCL_AF__;
    config.pin.sda_af   = __BSP_M24LR04E_I2C_SDA_AF__;

	if (DevI2cInit(__BSP_M24LR04E_I2C__, config) != DEF_TRUE)
	{
	    return DEF_FALSE;
	}

    BspM24lr04eWipInit();
    
    ret = BspM24lr04eRecvByte(__BSP_M24LR64E_ADDR_SYS__, __BSP_M24LR64E_CFG__, &reg);

    if (ret != DEF_TRUE)
    {
        return DEF_FALSE;
    }

    reg |= 0x08; //RF WIP/BUSY set 1, that mean write mode
    
    ret = BspM24lr04eSendByte(__BSP_M24LR64E_ADDR_SYS__, __BSP_M24LR64E_CFG__, reg);

    if (ret != DEF_TRUE)
    {
        return DEF_FALSE;
    }

    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : BspM24lr04eDeinit
 * Description   : Deibnit m24lr04e
 * Input         : void  
 * Output        : None
 * Return        : 
 * Others        : 
 * Record
 * 1.Date        : 20161025
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspM24lr04eDeinit(void)
{
    return DEF_TRUE;
}



