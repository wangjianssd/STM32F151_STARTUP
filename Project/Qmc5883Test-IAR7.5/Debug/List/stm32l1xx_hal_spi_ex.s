///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi_ex.c
//        -D USE_HAL_DRIVER -D STM32L151xD -lC
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List -lA
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List -o
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M3 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\INC\c\DLib_Config_Full.h" -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Apps/Config\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Inc\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Core\CMSIS\RTOS\Template\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Config\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc/Legacy\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/portable/IAR/ARM_CM3\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/include\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Include\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/RTT\
//        -I D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../BSP/Inc/\
//        -I
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -Ol
//    List file    =  
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_spi_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_spi_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended SPI HAL module driver.
//    8   *    
//    9   *          This file provides firmware functions to manage the following 
//   10   *          functionalities SPI extension peripheral:
//   11   *           + Extended Peripheral Control functions
//   12   *  
//   13   ******************************************************************************
//   14   * @attention
//   15   *
//   16   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   17   *
//   18   * Redistribution and use in source and binary forms, with or without modification,
//   19   * are permitted provided that the following conditions are met:
//   20   *   1. Redistributions of source code must retain the above copyright notice,
//   21   *      this list of conditions and the following disclaimer.
//   22   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   23   *      this list of conditions and the following disclaimer in the documentation
//   24   *      and/or other materials provided with the distribution.
//   25   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   26   *      may be used to endorse or promote products derived from this software
//   27   *      without specific prior written permission.
//   28   *
//   29   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   30   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   31   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   32   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   33   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   34   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   35   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   36   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   37   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   38   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   39   *
//   40   ******************************************************************************
//   41   */
//   42 
//   43 /* Includes ------------------------------------------------------------------*/
//   44 #include "stm32l1xx_hal.h"
//   45 
//   46 /** @addtogroup STM32L1xx_HAL_Driver
//   47   * @{
//   48   */
//   49 
//   50 /** @addtogroup SPI
//   51   * @{
//   52   */
//   53 #ifdef HAL_SPI_MODULE_ENABLED
//   54 
//   55 /* Private typedef -----------------------------------------------------------*/
//   56 /* Private define ------------------------------------------------------------*/
//   57 /* Private macro -------------------------------------------------------------*/
//   58 /* Private variables ---------------------------------------------------------*/
//   59 /* Private function prototypes -----------------------------------------------*/
//   60 /* Private functions ---------------------------------------------------------*/
//   61 
//   62 /** @addtogroup SPI_Exported_Functions
//   63   * @{
//   64   */
//   65 
//   66 /** @addtogroup SPI_Exported_Functions_Group1
//   67  *
//   68   * @{
//   69   */
//   70 
//   71 /**
//   72   * @brief  Initializes the SPI according to the specified parameters 
//   73   *         in the SPI_InitTypeDef and create the associated handle.
//   74   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//   75   *                the configuration information for SPI module.
//   76   * @retval HAL status
//   77   */
//   78 HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi)
//   79 {
//   80   /* Check the SPI handle allocation */
//   81   if(hspi == NULL)
//   82   {
//   83     return HAL_ERROR;
//   84   }
//   85 
//   86   /* Check the parameters */
//   87   assert_param(IS_SPI_ALL_INSTANCE(hspi->Instance));
//   88   assert_param(IS_SPI_MODE(hspi->Init.Mode));
//   89   assert_param(IS_SPI_DIRECTION_MODE(hspi->Init.Direction));
//   90   assert_param(IS_SPI_DATASIZE(hspi->Init.DataSize));
//   91   assert_param(IS_SPI_CPOL(hspi->Init.CLKPolarity));
//   92   assert_param(IS_SPI_CPHA(hspi->Init.CLKPhase));
//   93   assert_param(IS_SPI_NSS(hspi->Init.NSS));
//   94   assert_param(IS_SPI_BAUDRATE_PRESCALER(hspi->Init.BaudRatePrescaler));
//   95   assert_param(IS_SPI_FIRST_BIT(hspi->Init.FirstBit));
//   96   assert_param(IS_SPI_TIMODE(hspi->Init.TIMode));
//   97   assert_param(IS_SPI_CRC_CALCULATION(hspi->Init.CRCCalculation));
//   98   assert_param(IS_SPI_CRC_POLYNOMIAL(hspi->Init.CRCPolynomial));
//   99 
//  100   if(hspi->State == HAL_SPI_STATE_RESET)
//  101   {
//  102     /* Allocate lock resource and initialize it */
//  103     hspi->Lock = HAL_UNLOCKED;
//  104 
//  105     /* Init the low level hardware : GPIO, CLOCK, NVIC... */
//  106     HAL_SPI_MspInit(hspi);
//  107   }
//  108   
//  109   hspi->State = HAL_SPI_STATE_BUSY;
//  110 
//  111   /* Disble the selected SPI peripheral */
//  112   __HAL_SPI_DISABLE(hspi);
//  113 
//  114   /*----------------------- SPIx CR1 & CR2 Configuration ---------------------*/
//  115   /* Configure : SPI Mode, Communication Mode, Data size, Clock polarity and phase, NSS management,
//  116   Communication speed, First bit and CRC calculation state */
//  117   hspi->Instance->CR1 = (hspi->Init.Mode | hspi->Init.Direction | hspi->Init.DataSize |
//  118                          hspi->Init.CLKPolarity | hspi->Init.CLKPhase | (hspi->Init.NSS & SPI_CR1_SSM) |
//  119                          hspi->Init.BaudRatePrescaler | hspi->Init.FirstBit  | hspi->Init.CRCCalculation);
//  120 
//  121   /* Configure : NSS management */
//  122   hspi->Instance->CR2 = (((hspi->Init.NSS >> 16) & SPI_CR2_SSOE) | hspi->Init.TIMode);
//  123 
//  124   /*---------------------------- SPIx CRCPOLY Configuration ------------------*/
//  125   /* Configure : CRC Polynomial */
//  126   hspi->Instance->CRCPR = hspi->Init.CRCPolynomial;
//  127 
//  128 #if defined (STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined (STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined (STM32L151xE) || defined (STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)
//  129   /* Activate the SPI mode (Make sure that I2SMOD bit in I2SCFGR register is reset) */
//  130   CLEAR_BIT(hspi->Instance->I2SCFGR, SPI_I2SCFGR_I2SMOD);
//  131 #endif
//  132 
//  133   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
//  134   hspi->State = HAL_SPI_STATE_READY;
//  135   
//  136   return HAL_OK;
//  137 }
//  138 
//  139 /**
//  140   * @}
//  141   */
//  142 
//  143 /**
//  144   * @}
//  145   */
//  146 
//  147 #endif /* HAL_SPI_MODULE_ENABLED */
//  148 /**
//  149   * @}
//  150   */
//  151 
//  152 /**
//  153   * @}
//  154   */
//  155 
//  156 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
