/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#pragma message("Compiled on " __DATE__ " at " __TIME__ )
#pragma message("File on " __FILE__ " at " )

#include "config.h"
DBG_THIS_MODULE("TEST")          
/* Public variables ---------------------------------------------------------*/
    
/* Private variables ---------------------------------------------------------*/
#pragma location = ".USER_DATA"
    const uint8_t  ROM1Tab[128] = {0xaa};

/* Private function prototypes -----------------------------------------------*/
void TaskSysTickTest(void const * argument);
void TaskCompileTimePrint(void const * argument);
void TaskQmc5883lTest(void const * argument);
void Taskhmc5983Test(void const * argument);
void TaskMCOTest(void const * argument);
void TaskDeviceFlashTest(void const * argument);
void TaskDebugLogTest(void const * argument);
void TaskM24lr04eTest(void const * argument);
void TaskSeggerSysView(void const * argument);
void TaskSleepTest(void const * argument);

void TaskSleepTestCb(void)
{
    DBG_LOG(__DBG_LEVEL_INFO__, "Sleep cb\r\n");
}

/* Private function prototypes -----------------------------------------------*/
int main(void)
{
  DeviceInit();

  TaskDebugLogTest((void *)0);
  BspWatchdogSet(10000);
  
  DBG_LOG(__DBG_LEVEL_INFO__, "BspWatchdogSet 10000ms\r\n");
  TaskCompileTimePrint((void *)0);
  //StartTaskSysTickTest((void *)0);
  TaskDeviceFlashTest((void *)0);
  //TaskMCOTest((void *)0);
  TaskSleepTest((void *)0);

  TaskM24lr04eTest((void *)0);
  
  //TaskQmc5883lTest((void *)0);
  Taskhmc5983Test((void *)0);
  while(1);
}

void TaskSleepTest(void const * argument)
{
   // while(1)
   // {
   //   BspLowPowerEnter();

    //  Delay(100);
   // }
    BspLowPowerEnterCbRegister(TaskSleepTestCb);
    
    //BspLowPowerEnter();


}

void TaskM24lr04eTest(void const * argument)
{
    DBG_THIS_MODULE("M24LR04E")
    bool ret;
    uint8_t rec[128];
    BspM24lr04eSysInfo info = {0};
    
    ret = BspM24lr04eInit();
    DBG_LOG(__DBG_LEVEL_ERROR__, "Init success\r\n");
    DBG_LOG(__DBG_LEVEL_WARNING__, "Init success\r\n");
    DBG_LOG(__DBG_LEVEL_INFO__, "Init success\r\n");

    if (ret == true)
    {
        DBG_LOG(__DBG_LEVEL_INFO__, "Init success\r\n");
    }
    else
    {
        DBG_LOG(__DBG_LEVEL_INFO__, "Init failed\r\n");
    }
    
//    ret = BspM24lr04eRead(__BSP_M24LR64E_ADDR_USER__, 0, rec, sizeof(temp));
//    ret = BspM24lr04eWrite(__BSP_M24LR64E_ADDR_USER__, 0, temp, sizeof(temp));
//    Delay(5);
//    ret = BspM24lr04eRead(__BSP_M24LR64E_ADDR_USER__, 0, rec, sizeof(temp));
//
//    if (memcmp(rec, temp, sizeof(temp)) == 0)
//    {
//      DBG_LOG(__DBG_LEVEL_INFO__, "Write Read test success\r\n");
//    }
//    else
//    {
//      DBG_LOG(__DBG_LEVEL_INFO__, "Write Read test failed\r\n");
//    }  

    
    ret = BspM24lr04eSyetenInfo(&info);

    if (ret == DEF_TRUE)
    {
      DBG_LOG(__DBG_LEVEL_INFO__, "UID         :%02X%02X%02X%02X%02X%02X%02X%02X\r\n",
                                  info.uid[7], info.uid[6], info.uid[5], info.uid[4], 
                                  info.uid[3], info.uid[2], info.uid[1], info.uid[0]);
      
      DBG_LOG(__DBG_LEVEL_INFO__, "DSFID       :%02X\r\n", info.dsfid);
      DBG_LOG(__DBG_LEVEL_INFO__, "AFI         :%02X\r\n", info.afi);
      DBG_LOG(__DBG_LEVEL_INFO__, "Memory size :%02X\r\n", info.mem_size);
      DBG_LOG(__DBG_LEVEL_INFO__, "Block size  :%02X\r\n", info.block_size);
      DBG_LOG(__DBG_LEVEL_INFO__, "ic_ref      :%02X\r\n", info.ic_ref);
    }
 
}

void TaskDebugLogTest(void const * argument)
{
    DebugInit(__DBG_LEVEL_INFO__ | __DBG_LEVEL_WARNING__ | __DBG_LEVEL_ORIGIN__ | __DBG_LEVEL_ERROR__);

    DBG_LOG(__DBG_LEVEL_ORIGIN__, "Debug level:INFO WARN ORIGN ERROR\r\n");

}

#pragma location = "USER_INFO"
__root const uint8_t UserInfo[256] @ "USER_INFO" ={"12345678910a"};

void TaskDeviceFlashTest(void const * argument)
{
    uint32_t addr;
    uint8_t  data[256];
    uint32_t a;
    extern  uint32_t __ICFEDIT_region_USER_INFO_ADDR__;
    DBG_THIS_MODULE("FLASH")
        
    uint8_t buffer[] = "BUFFER ARRAY DATA.";
    
    DBG_LOG(__DBG_LEVEL_INFO__, "Flash start:%02x, end:%02x, bank size:%d, used:%d, total:%d kb\r\n",
                                __DEVICE_FLASH_START_ADDR__, __DEVICE_FLASH_END_ADDR__, __DEVICE_FLASH_BANK_SIZE__, __DEVICE_FLASH_USED_SIZE__, __DEVICE_FLASH_TOTAL_SIZE__ / 1024);
       
   DBG_LOG(__DBG_LEVEL_INFO__, "Ram start:%02x, end:%02x, used:%d bytes, total:%d kb \r\n", 
                                __DEVICE_RAM_START_ADDR__, __DEVICE_RAM_END_ADDR__ , __DEVICE_RAM_USED_SIZE__, __DEVICE_RAM_TOTAL_SIZE__ / 1024);

//flash read
    
    addr = (uint32_t)&__ICFEDIT_region_USER_INFO_ADDR__;  
    memset (data, 0, sizeof(data));

    DevFlashRead(addr, data, sizeof(data));
    
    DBG_LOG(__DBG_LEVEL_INFO__, "Read  addr:%02x: %s\r\n", addr, data);

//flash erase
    DevFlashUnlock();

    DevFlashErase(addr);

    DevFlashLock();
    
    memset (data, 0, sizeof(data));

    DevFlashRead(addr, data, sizeof(data) - 1);

    DBG_LOG(__DBG_LEVEL_INFO__, "Erase addr:%02x: %s\r\n", addr, data);
    
//flash write
    DevFlashUnlock();

    DevFlashWrite(addr, buffer, sizeof(buffer));

    DevFlashLock();
    
    DBG_LOG(__DBG_LEVEL_INFO__, "write addr:%02x: %s\r\n", addr, buffer);
    
    memset (data, 0, sizeof(data));

    DevFlashRead(addr, data, sizeof(data) - 1);
    
    DBG_LOG(__DBG_LEVEL_INFO__, "read addr:%02x: %s\r\n", addr, data);
}

void TaskSysTickTest(void const * argument)
{
     SysTickInit(HAL_RCC_GetHCLKFreq() / 1000);
     
     while (1)
     {
       SysTickDelay(1000);

       DevGpioToggle(DEV_GPIO_PORTE,  DEV_GPIO_PIN2);
     }

}

void TaskCompileTimePrint(void const * argument)
{ 
  DBG_LOG(__DBG_LEVEL_INFO__, "Compiled on:%s %s\r\n",ComiledDateGet(), ComiledTimeGet());
}

void TaskMCOTest(void const * argument)
{
    uint8_t byte;
    DBG_THIS_MODULE("MCO")
        
    BspCom1Init(256000);
        
    DBG_LOG(__DBG_LEVEL_INFO__, "\r\n \
    s -> stop mco out\r\n \
    1 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_1\r\n \
    2 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_16\r\n \
    3 -> 2m-RCC_MCO1SOURCE_MSI, RCC_MCODIV_1\r\n \
    4 -> 37k-RCC_MCO1SOURCE_LSI, RCC_MCODIV_1 \r\n \
    5 -> 16mRCC_MCO1SOURCE_HSI, RCC_MCODIV_1 \r\n");


    while (1)
    {
      while (BspCom1RxFIFOIsEmpty() == false)
      {
          byte = BspCom1RxFIFOOut();
          
          if (byte == 'c')
          {
              DevGpioToggle(DEV_GPIO_PORTC,  DEV_GPIO_PIN6);
          }
          else if (byte == '1')
          {
            HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_1);
          }
          else if (byte == '2')
          {
            HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_16);
          }
          else if (byte == '3')
          {
            HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_MSI, RCC_MCODIV_1);
          }
          else if (byte == '4')
          {
            HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_LSI, RCC_MCODIV_1);
          }
          else if (byte == '5')
          {
            HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_HSI, RCC_MCODIV_1);
          } 
          else if (byte == 's')
          {
              DevClockMCODisnable();
          }
            
      }
      
      Delay (1000);
      DevGpioToggle(DEV_GPIO_PORTE,  DEV_GPIO_PIN2);
      BspCom1TxFIFOOut();
      
   
    }

}
void Taskhmc5983Test(void const * argument)
{
    bool ret;
    int16_t x;
    int16_t y;
    int16_t z; 
    
    uint8_t buf[6] = {0};
    
    DBG_THIS_MODULE("HMC5983")

    ret = BspHmc5983Init();
    
    DBG_LOG(__DBG_LEVEL_INFO__, "--------------HMC5983 Init--------------------------\r\n");

    if(true == ret)
    {
        DBG_LOG(__DBG_LEVEL_INFO__, "--------------HMC5983 Init success--------------------------\r\n");
    }
    else
    {
        DBG_LOG(__DBG_LEVEL_INFO__, "--------------HMC5983 fail--------------------------\r\n");
    }
    
#if 0
    BspHmc5983SensorDetect(&x, &y , &z);

    BspHmc5983Config(0xE4,  
                     __BSP_HMC5983_REG_B_VALUE_FOR_DETECT__);
    BspHmc5983SpiWrite(__BSP_HMC5983_MODE_REG_ADDR__, 
                       __BSP_HMC5983_MODE_REG_VALUE_FOR_CON__);
    


    while(1)
    {
        if (BspHmc5983RdyFlagGet() == DEF_TRUE)
        {
            for(uint8_t i=0; i<6; i++)
            {
                if(false == BspHmc5983SpiRead(__BSP_HMC5983_X_MSB_REG_ADDR__ + i, &buf[i]))
                {
                     break;
                }
            }

            x = BUILD_UINT16(buf[1], buf[0]);
            z = BUILD_UINT16(buf[3], buf[2]);
            y = BUILD_UINT16(buf[5], buf[4]);
            
            DBG_LOG(__DBG_LEVEL_WARNING__, "MagnetIsr X:%d, Y:%d, Z:%d\r\n", x, y, z);

        }

      //  BspLowPowerEnter();
    }
#endif
    
    while(1)
    {
        if (BspHmc5983SensorDetect(&x, &y , &z) == true)
        {
            DBG_LOG(__DBG_LEVEL_WARNING__, "Magnet X:%d, Y:%d, Z:%d\r\n", x, y, z);

        }
        else
        {
             DBG_LOG(__DBG_LEVEL_INFO__, "Magnet get failed\r\n",  sizeof("Magnet get failed\r\n"));
        }
        
        BspWatchdogClear();

        Delay(1000);
        //BspHmc5983SensorDetect(&x, &y , &z);
       // BspLowPowerEnter();
       // Delay(1000);

    }

}

void TaskQmc5883lTest(void const * argument)
{
  /* Infinite loop */
  bool ret;

  float magnet[3] = {0};
  uint16_t magnet_raw[3];
  uint16_t filter_magnet[3];
  uint32_t total_count = 0;
  uint32_t success_count = 0;
  uint8_t  temp[64];
  uint8_t i;
  uint8_t reg_9;
  DBG_THIS_MODULE("QMC5883")
  BspCom1Init(256000);
 
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET);
   //HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET);  
  BspQmc5883lInit();

  DBG_LOG(__DBG_LEVEL_INFO__, "\r\n--------------QMC5883 self test--------------------------\r\n");
    
  ret = BspQmc5883lSelfTest();

  if (ret == true)
  {
      DBG_LOG(__DBG_LEVEL_INFO__, "\r\n--------------QMC5883 self test--ok----------------------\r\n");
  }
  else
  {  
     DBG_LOG(__DBG_LEVEL_INFO__, "\r\n--------------QMC5883 self test--fail----------------------\r\n");
  }

  // ret = Qmc5883lConfig();

  Delay(100);
  
  DBG_LOG(__DBG_LEVEL_INFO__, "\r\n \
1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \
2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \
3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \
4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n");
     
  //while (DevUartRx(DEV_UART3, &reg_9, 1) != true);
  	BspCom1RxFIFOClear();
 //	while (BspCom1RxFIFOIsEmpty() == true);
	
	reg_9 = BspCom1RxFIFOOut();
 	
	reg_9 = '1';	
   if(reg_9 == '1')
   {
      reg_9 = 0x01;
   }
   else if(reg_9 == '2')
   {
    reg_9 = 0x41;
   }
   else if(reg_9 == '3')
   {
    reg_9 = 0x81;
   }
   else if(reg_9 == '4')
   {
    reg_9 = 0xc1;
   }  
   else
   {
    reg_9 = 0xc1;
   }
   
   //reg_9 = reg_9 | 0x04;

   DBG_LOG(__DBG_LEVEL_INFO__, "Reg9 set:%02X\r\n", reg_9);

   ret =  BspQmc5883lConfigEx(reg_9);
  
  for(;;)
  {
    Delay(100);
    //osDelay(100);
    ret = BspQmc5883lGetData(magnet_raw);
    total_count++;
    
    if (ret == true)
    {
        BspQmc5883lFilterGetData (magnet_raw, magnet, filter_magnet);
        
        DBG_LOG(__DBG_LEVEL_INFO__, "Magnet X:%f, Y:%f, Z:%f\r\n", magnet[0], magnet[1], magnet[2]);
        
        success_count++;    
        
        if (success_count > 5)
        {
	// HAL_NVIC_SystemReset();
        }
    }
    else
    {
       DBG_LOG(__DBG_LEVEL_INFO__, "QMC5883_TEST total count:%d, success:%d\r\n", total_count, success_count);
       if ((total_count -  success_count)> 10)
        {
         BspQmc5883lInit();
          
          ret =  BspQmc5883lConfigEx(reg_9);
          
        }

    }  

     DevGpioToggle(DEV_GPIO_PORTE,  DEV_GPIO_PIN2);
     //DevGpioToggle(DEV_GPIO_PORTE,  DEV_GPIO_PIN3);

  }
}


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
