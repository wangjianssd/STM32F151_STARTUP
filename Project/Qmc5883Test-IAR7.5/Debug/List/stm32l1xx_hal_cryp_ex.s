///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_cryp_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_cryp_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   CRYPEx HAL module driver.
//    8   *    
//    9   *          This file provides firmware functions to manage the following 
//   10   *          functionalities of the Cryptography (CRYP) extension peripheral:
//   11   *           + Computation completed callback.
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
//   46 #ifdef HAL_CRYP_MODULE_ENABLED
//   47 
//   48 /** @addtogroup STM32L1xx_HAL_Driver
//   49   * @{
//   50   */
//   51 
//   52 /** @defgroup CRYPEx CRYPEx
//   53   * @brief CRYP HAL Extended module driver.
//   54   * @{
//   55   */
//   56 
//   57 #if defined(STM32L162xC) || defined(STM32L162xCA) || defined(STM32L162xD) || defined(STM32L162xE) || defined(STM32L162xDX)
//   58 
//   59 /* Private typedef -----------------------------------------------------------*/
//   60 /* Private define ------------------------------------------------------------*/
//   61 /* Private macro -------------------------------------------------------------*/
//   62 /* Private variables ---------------------------------------------------------*/
//   63 /* Private function prototypes -----------------------------------------------*/
//   64 /* Private functions ---------------------------------------------------------*/
//   65 
//   66 /** @defgroup CRYPEx_Exported_Functions CRYPEx Exported Functions
//   67   * @{
//   68   */
//   69 
//   70 
//   71 /** @defgroup CRYPEx_Exported_Functions_Group1 Extended features functions 
//   72  *  @brief    Extended features functions. 
//   73  *
//   74 @verbatim   
//   75  ===============================================================================
//   76                  ##### Extended features functions #####
//   77  =============================================================================== 
//   78     [..]  This section provides callback functions:
//   79       (+) Computation completed.
//   80 
//   81 @endverbatim
//   82   * @{
//   83   */
//   84 
//   85 /**
//   86   * @brief  Computation completed callbacks.
//   87   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//   88   *         the configuration information for CRYP module
//   89   * @retval None
//   90   */
//   91 __weak void HAL_CRYPEx_ComputationCpltCallback(CRYP_HandleTypeDef *hcryp)
//   92 {
//   93   /* Prevent unused argument(s) compilation warning */
//   94   UNUSED(hcryp);
//   95 
//   96   /* NOTE : This function Should not be modified, when the callback is needed,
//   97             the HAL_CRYPEx_ComputationCpltCallback could be implemented in the user file
//   98    */ 
//   99 }
//  100 
//  101 /**
//  102   * @}
//  103   */
//  104 
//  105 
//  106 /**
//  107   * @}
//  108   */
//  109 
//  110 #endif /* STM32L162xC || STM32L162xCA || STM32L162xD || STM32L162xE || STM32L162xDX*/
//  111 
//  112 /**
//  113   * @}
//  114   */
//  115 
//  116 /**
//  117   * @}
//  118   */
//  119 
//  120 #endif /* HAL_CRYP_MODULE_ENABLED */
//  121 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
