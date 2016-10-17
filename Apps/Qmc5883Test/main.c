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

/* Public variables ---------------------------------------------------------*/
    
/* Private variables ---------------------------------------------------------*/
#pragma location = ".USER_DATA"
    const uint8_t  ROM1Tab[128] = {0xaa};

/* Private function prototypes -----------------------------------------------*/
void TaskSysTickTest(void const * argument);
void TaskCompileTimePrint(void const * argument);
void TaskQmc5883lTest(void const * argument);
void TaskMCOTest(void const * argument);
void TaskDeviceFlashTest(void const * argument);


/* Private function prototypes -----------------------------------------------*/
int main(void)
{
  
  DeviceInit();
    
  TaskCompileTimePrint((void *)0);

  //StartTaskSysTickTest((void *)0);
  TaskDeviceFlashTest((void *)0);
  //TaskMCOTest((void *)0);

  //TaskQmc5883lTest((void *)0);
  while(1);
}

//extern  uint32_t __RAM_END_FLAG_SIZE__;
//extern  uint32_t __ICFEDIT_region_USER_INFO_ADDR__;
//#pragma location = "USER_INFO"
//__root const uint8_t UserInfo[256] @ "USER_INFO" ={"111111111111"};
//__root  const uint8_t UserInfo[256] @ "USER_INFO" ={"22222222222222"};


void TaskDeviceFlashTest(void const * argument)
{
    uint32_t addr;
    uint8_t  data[256] = {'%'};
    uint32_t len;
    uint32_t i;
    uint8_t  temp[256] = {'@'};
    uint32_t temp1;
    BspCom1Init(256000);
    uint8_t buffer[] = "BUFFER ARRAY DATA";
    
    i = sprintf(temp, "Device info:\r\n",ComiledDateGet(), ComiledTimeGet());

    BspCom1SendData(temp,  i);

    i = sprintf(temp, "Flash start:%02x, end:%02x, bank size:%d, used:%d, total::%d kb\r\n", 
              __DEVICE_FLASH_START_ADDR__, __DEVICE_FLASH_END_ADDR__, __DEVICE_FLASH_BANK_SIZE__, __DEVICE_FLASH_USED_SIZE__, __DEVICE_FLASH_TOTAL_SIZE__ / 1024);

    BspCom1SendData(temp,  i);

    i = sprintf(temp, "Ram start:%02x, end:%02x, used:%d bytes, total:%d kb \r\n", 
              __DEVICE_RAM_START_ADDR__, __DEVICE_RAM_END_ADDR__ , __DEVICE_RAM_USED_SIZE__, __DEVICE_RAM_TOTAL_SIZE__ / 1024);
      
    BspCom1SendData(temp,  i);

  //  i = sprintf(temp, "Flash USER INFO start:%02x,  UserInfo:%02x\r\n",  &__ICFEDIT_region_USER_INFO_ADDR__, UserInfo);

  //  BspCom1SendData(temp,  i);
    
//flash read
   // addr = (uint32_t)&__ICFEDIT_region_USER_INFO_ADDR__;  
    
    memset (data, 0, sizeof(data));
    
    DevFlashRead(addr, data, sizeof(data) - 1);

    i = sprintf(temp, "Read addr:%02x: %s\r\n", addr, data);

    BspCom1SendData(temp,  i);

//flash erase
    DevFlashUnlock();

    DevFlashErase(addr);

    DevFlashLock();
    
    memset (data, 0, sizeof(data));

    DevFlashRead(addr, data, sizeof(data) - 1);

    i = sprintf(temp, "Erase addr:%02x: %s\r\n", addr, data);

    BspCom1SendData(temp,  i);
    
//flash write
    DevFlashUnlock();

    DevFlashWrite(addr, buffer, sizeof(buffer));

    DevFlashLock();

    memset (data, 0, sizeof(data));

    DevFlashRead(addr, data, sizeof(data) - 1);

    i = sprintf(temp, "read addr:%02x: %s\r\n", addr, data);

    BspCom1SendData(temp,  i);
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
  uint8_t  temp[64];
  uint8_t i;
  
  BspCom1Init(256000);

  i = sprintf(temp, "Compiled on:%s %s\r\n",ComiledDateGet(), ComiledTimeGet());
  
  BspCom1SendData(temp,  i);
  
}

void TaskMCOTest(void const * argument)
{
    uint8_t byte;
    
    BspCom1Init(256000);
    BspCom1SendData(( "\r\n \
    s -> stop mco out\r\n \
    1 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_1\r\n \
    2 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_16\r\n \
    3 -> 2m-RCC_MCO1SOURCE_MSI, RCC_MCODIV_1\r\n \
    4 -> 37k-RCC_MCO1SOURCE_LSI, RCC_MCODIV_1 \r\n \
    5 -> 16mRCC_MCO1SOURCE_HSI, RCC_MCODIV_1 \r\n"),
    sizeof("\r\n \
    s -> stop mco out\r\n \
    1 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_1\r\n \
    2 -> 32m-RCC_MCO1SOURCE_SYSCLK, RCC_MCODIV_16\r\n \
    3 -> 2m-RCC_MCO1SOURCE_MSI, RCC_MCODIV_1\r\n \
    4 -> 37k-RCC_MCO1SOURCE_LSI, RCC_MCODIV_1 \r\n \
    5 -> 16mRCC_MCO1SOURCE_HSI, RCC_MCODIV_1 \r\n")); 

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
  
  BspCom1Init(256000);
 
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET);
   //HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET);  
  BspQmc5883lInit();

  BspCom1SendData("\r\n--------------QMC5883 self test--------------------------\r\n",
                    sizeof( "\r\n--------------QMC5883 self test--------------------------\r\n"));
    
  ret = BspQmc5883lSelfTest();

  if (ret == true)
    {
      //HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_RESET); 
      BspCom1SendData( "\r\n--------------QMC5883 self test--ok----------------------\r\n",
                      sizeof( "\r\n--------------QMC5883 self test--ok----------------------\r\n"));

  }
  else
    {
     // HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET); 
      BspCom1SendData( "\r\n--------------QMC5883 self test--fail----------------------\r\n",
                      sizeof( "\r\n--------------QMC5883 self test--fail----------------------\r\n"));

  }

  // ret = Qmc5883lConfig();

  Delay(100);
BspCom1SendData( "\r\n \
1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \
2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \
3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \
4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n",
                            sizeof("\r\n \
1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \
2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \
3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \
4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n"));      
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
   
   i = sprintf(temp, "Reg9 set:%02X\r\n", reg_9);
       
   BspCom1SendData(temp,  i);

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

         i = sprintf(temp, "Magnet X:%f, Y:%f, Z:%f\r\n", magnet[0], magnet[1], magnet[2]);
       
        BspCom1SendData(temp,  i);
        
        success_count++;    
        
        if (success_count > 5)
        {
	// HAL_NVIC_SystemReset();
        }
    }
    else
    {
         i = sprintf(temp, "QMC5883_TEST total count:%d, success:%d\r\n", total_count, success_count);

         BspCom1SendData(temp,  i);
         
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
