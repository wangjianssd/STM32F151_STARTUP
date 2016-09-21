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
#include "config.h"

/* Public variables ---------------------------------------------------------*/
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart3;

/* Private variables ---------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/
void StartDefaultTask(void const * argument);

/* Private function prototypes -----------------------------------------------*/


/////
int main(void)
{
  /* Configure the system clock */
  DeviceInit();
  
  Qmc5883lInit();

  StartDefaultTask((void *)0);
}


/* StartDefaultTask function */
void StartDefaultTask(void const * argument)
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
  
   HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET);
   HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET);  

//while(1)
//{
//    HAL_Delay(100);
//
//    HAL_GPIO_TogglePin(GPIOE,  GPIO_PIN_2);
//
//}
    HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--------------------------\r\n",
                    sizeof( "\r\n--------------QMC5883 self test--------------------------\r\n"), 5000);
    
  ret = Qmc5883lSelfTest();

  if (ret == true)
    {
      //HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_RESET); 
      HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--ok----------------------\r\n",
                      sizeof( "\r\n--------------QMC5883 self test--ok----------------------\r\n"), 5000);

  }
  else
    {
     // HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET); 
      HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--fail----------------------\r\n",
                      sizeof( "\r\n--------------QMC5883 self test--fail----------------------\r\n"), 5000);

  }

  // ret = Qmc5883lConfig();

  HAL_Delay(100);
HAL_UART_Transmit(&huart3, "\r\n \
1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \
2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \
3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \
4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n",
                            sizeof("\r\n \
1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \
2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \
3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \
4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n"), 10000);      
  while (HAL_UART_Receive(&huart3, &reg_9, 1, 500) != HAL_OK);
   
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
   
   i = sprintf(temp, "Reg9 set:%02X\r\n", reg_9);
       
   HAL_UART_Transmit(&huart3, temp,  i, 500);

   ret =  Qmc5883lConfigEx(reg_9);
  
  for(;;)
  {
    HAL_Delay(100);
    //osDelay(100);
    ret = Qmc5883lGetData(magnet_raw);
    total_count++;
    
    if (ret == true)
    {
         Qmc5883lFilterGetData (magnet_raw, magnet, filter_magnet);

         i = sprintf(temp, "Magnet X:%f, Y:%f, Z:%f\r\n", magnet[0], magnet[1], magnet[2]);
       
        HAL_UART_Transmit(&huart3, temp,  i, 500);
        
        success_count++;    
    }
    else
    {
         i = sprintf(temp, "QMC5883_TEST total count:%d, success:%d\r\n", total_count, success_count);

         HAL_UART_Transmit(&huart3, temp,  i, 500);
    }  

     HAL_GPIO_TogglePin(GPIOE,  GPIO_PIN_2);
  }
  /* USER CODE END 5 */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/