///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:26
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_utils.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_utils.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_utils.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN AHBPrescTable
        EXTERN PLLMulTable
        EXTERN SystemCoreClock

        PUBLIC LL_Init1msTick
        PUBLIC LL_PLL_ConfigSystemClock_HSE
        PUBLIC LL_PLL_ConfigSystemClock_HSI
        PUBLIC LL_SetSystemCoreClock
        PUBLIC LL_mDelay
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_utils.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_utils.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   UTILS LL module driver.
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   12   *
//   13   * Redistribution and use in source and binary forms, with or without modification,
//   14   * are permitted provided that the following conditions are met:
//   15   *   1. Redistributions of source code must retain the above copyright notice,
//   16   *      this list of conditions and the following disclaimer.
//   17   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   18   *      this list of conditions and the following disclaimer in the documentation
//   19   *      and/or other materials provided with the distribution.
//   20   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   21   *      may be used to endorse or promote products derived from this software
//   22   *      without specific prior written permission.
//   23   *
//   24   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   25   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   26   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   27   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   28   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   29   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   30   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   31   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   32   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   33   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   34   *
//   35   ******************************************************************************
//   36   */
//   37 /* Includes ------------------------------------------------------------------*/
//   38 #include "stm32l1xx_ll_rcc.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function LL_RCC_HSE_EnableBypass
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_HSE_EnableBypass(void)
LL_RCC_HSE_EnableBypass:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable24  ;; 0x40023800
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function LL_RCC_HSE_DisableBypass
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_HSE_DisableBypass(void)
LL_RCC_HSE_DisableBypass:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable24  ;; 0x40023800
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function LL_RCC_HSE_Enable
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_HSE_Enable(void)
LL_RCC_HSE_Enable:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??DataTable24  ;; 0x40023800
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function LL_RCC_HSE_IsReady
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_RCC_HSE_IsReady(void)
LL_RCC_HSE_IsReady:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+17
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function LL_RCC_HSI_Enable
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_HSI_Enable(void)
LL_RCC_HSI_Enable:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable24  ;; 0x40023800
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function LL_RCC_HSI_IsReady
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_RCC_HSI_IsReady(void)
LL_RCC_HSI_IsReady:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function LL_RCC_SetSysClkSource
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_SetSysClkSource(uint32_t)
LL_RCC_SetSysClkSource:
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function LL_RCC_GetSysClkSource
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_RCC_GetSysClkSource(void)
LL_RCC_GetSysClkSource:
        LDR.N    R0,??DataTable24_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function LL_RCC_SetAHBPrescaler
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_SetAHBPrescaler(uint32_t)
LL_RCC_SetAHBPrescaler:
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0xF0
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function LL_RCC_SetAPB1Prescaler
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_SetAPB1Prescaler(uint32_t)
LL_RCC_SetAPB1Prescaler:
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x700
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function LL_RCC_SetAPB2Prescaler
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_SetAPB2Prescaler(uint32_t)
LL_RCC_SetAPB2Prescaler:
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x3800
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function LL_RCC_PLL_Enable
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_PLL_Enable(void)
LL_RCC_PLL_Enable:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable24  ;; 0x40023800
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function LL_RCC_PLL_IsReady
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_RCC_PLL_IsReady(void)
LL_RCC_PLL_IsReady:
        LDR.N    R0,??DataTable24  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+25
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function LL_RCC_PLL_ConfigDomain_SYS
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_RCC_PLL_ConfigDomain_SYS(uint32_t, uint32_t, uint32_t)
LL_RCC_PLL_ConfigDomain_SYS:
        LDR.N    R3,??DataTable24_1  ;; 0x40023808
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0xFD0000
        ORRS     R0,R0,R3
        ORRS     R0,R1,R0
        ORRS     R0,R2,R0
        LDR.N    R1,??DataTable24_1  ;; 0x40023808
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//   39 #include "stm32l1xx_ll_utils.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function LL_InitTick
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_InitTick(uint32_t, uint32_t)
LL_InitTick:
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable24_2  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.N    R1,??DataTable24_3  ;; 0xe000e018
        STR      R0,[R1, #+0]
        MOVS     R0,#+5
        LDR.N    R1,??DataTable24_4  ;; 0xe000e010
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//   40 #include "stm32l1xx_ll_system.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function LL_FLASH_SetLatency
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_FLASH_SetLatency(uint32_t)
LL_FLASH_SetLatency:
        LDR.N    R1,??DataTable24_5  ;; 0x40023c00
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable24_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function LL_FLASH_GetLatency
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_FLASH_GetLatency(void)
LL_FLASH_GetLatency:
        LDR.N    R0,??DataTable24_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function LL_FLASH_Enable64bitAccess
          CFI NoCalls
        THUMB
// static __interwork __softfp void LL_FLASH_Enable64bitAccess(void)
LL_FLASH_Enable64bitAccess:
        LDR.N    R0,??DataTable24_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable24_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//   41 #include "stm32l1xx_ll_pwr.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function LL_PWR_GetRegulVoltageScaling
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t LL_PWR_GetRegulVoltageScaling(void)
LL_PWR_GetRegulVoltageScaling:
        LDR.N    R0,??DataTable24_6  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1800
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//   42 #ifdef  USE_FULL_ASSERT
//   43 #include "stm32_assert.h"
//   44 #else
//   45 #define assert_param(expr) ((void)0U)
//   46 #endif
//   47 
//   48 /** @addtogroup STM32L1xx_LL_Driver
//   49   * @{
//   50   */
//   51 
//   52 /** @addtogroup UTILS_LL
//   53   * @{
//   54   */
//   55 
//   56 /* Private types -------------------------------------------------------------*/
//   57 /* Private variables ---------------------------------------------------------*/
//   58 /* Private constants ---------------------------------------------------------*/
//   59 /** @addtogroup UTILS_LL_Private_Constants
//   60   * @{
//   61   */
//   62 #define UTILS_MAX_FREQUENCY_SCALE1  ((uint32_t)32000000U)        /*!< Maximum frequency for system clock at power scale1, in Hz */
//   63 #define UTILS_MAX_FREQUENCY_SCALE2  ((uint32_t)16000000U)        /*!< Maximum frequency for system clock at power scale2, in Hz */
//   64 #define UTILS_MAX_FREQUENCY_SCALE3  ((uint32_t)4000000U)         /*!< Maximum frequency for system clock at power scale3, in Hz */
//   65 
//   66 /* Defines used for PLL range */
//   67 #define UTILS_PLLVCO_OUTPUT_SCALE1  ((uint32_t)96000000U)        /*!< Frequency max for PLLVCO output at power scale1, in Hz  */
//   68 #define UTILS_PLLVCO_OUTPUT_SCALE2  ((uint32_t)48000000U)        /*!< Frequency max for PLLVCO output at power scale2, in Hz  */
//   69 #define UTILS_PLLVCO_OUTPUT_SCALE3  ((uint32_t)24000000U)        /*!< Frequency max for PLLVCO output at power scale3, in Hz  */
//   70 
//   71 /* Defines used for HSE range */
//   72 #define UTILS_HSE_FREQUENCY_MIN     ((uint32_t)1000000U)         /*!< Frequency min for HSE frequency, in Hz   */
//   73 #define UTILS_HSE_FREQUENCY_MAX     ((uint32_t)24000000U)        /*!< Frequency max for HSE frequency, in Hz   */
//   74 
//   75 /* Defines used for FLASH latency according to HCLK Frequency */
//   76 #define UTILS_SCALE1_LATENCY1_FREQ  ((uint32_t)16000000U)        /*!< HCLK frequency to set FLASH latency 1 in power scale 1 */
//   77 #define UTILS_SCALE2_LATENCY1_FREQ  ((uint32_t)8000000U)         /*!< HCLK frequency to set FLASH latency 1 in power scale 2 */
//   78 #define UTILS_SCALE3_LATENCY1_FREQ  ((uint32_t)2000000U)         /*!< HCLK frequency to set FLASH latency 1 in power scale 3 */
//   79 /**
//   80   * @}
//   81   */
//   82 /* Private macros ------------------------------------------------------------*/
//   83 /** @addtogroup UTILS_LL_Private_Macros
//   84   * @{
//   85   */
//   86 #define IS_LL_UTILS_SYSCLK_DIV(__VALUE__) (((__VALUE__) == LL_RCC_SYSCLK_DIV_1)   \ 
//   87                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_2)   \ 
//   88                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_4)   \ 
//   89                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_8)   \ 
//   90                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_16)  \ 
//   91                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_64)  \ 
//   92                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_128) \ 
//   93                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_256) \ 
//   94                                         || ((__VALUE__) == LL_RCC_SYSCLK_DIV_512))
//   95 
//   96 #define IS_LL_UTILS_APB1_DIV(__VALUE__) (((__VALUE__) == LL_RCC_APB1_DIV_1) \ 
//   97                                       || ((__VALUE__) == LL_RCC_APB1_DIV_2) \ 
//   98                                       || ((__VALUE__) == LL_RCC_APB1_DIV_4) \ 
//   99                                       || ((__VALUE__) == LL_RCC_APB1_DIV_8) \ 
//  100                                       || ((__VALUE__) == LL_RCC_APB1_DIV_16))
//  101 
//  102 #define IS_LL_UTILS_APB2_DIV(__VALUE__) (((__VALUE__) == LL_RCC_APB2_DIV_1) \ 
//  103                                       || ((__VALUE__) == LL_RCC_APB2_DIV_2) \ 
//  104                                       || ((__VALUE__) == LL_RCC_APB2_DIV_4) \ 
//  105                                       || ((__VALUE__) == LL_RCC_APB2_DIV_8) \ 
//  106                                       || ((__VALUE__) == LL_RCC_APB2_DIV_16))
//  107 
//  108 #define IS_LL_UTILS_PLLMUL_VALUE(__VALUE__) (((__VALUE__) == LL_RCC_PLL_MUL_3) \ 
//  109                                           || ((__VALUE__) == LL_RCC_PLL_MUL_4) \ 
//  110                                           || ((__VALUE__) == LL_RCC_PLL_MUL_6) \ 
//  111                                           || ((__VALUE__) == LL_RCC_PLL_MUL_8) \ 
//  112                                           || ((__VALUE__) == LL_RCC_PLL_MUL_12) \ 
//  113                                           || ((__VALUE__) == LL_RCC_PLL_MUL_16) \ 
//  114                                           || ((__VALUE__) == LL_RCC_PLL_MUL_24) \ 
//  115                                           || ((__VALUE__) == LL_RCC_PLL_MUL_32) \ 
//  116                                           || ((__VALUE__) == LL_RCC_PLL_MUL_48))
//  117 
//  118 #define IS_LL_UTILS_PLLDIV_VALUE(__VALUE__) (((__VALUE__) == LL_RCC_PLL_DIV_2) || ((__VALUE__) == LL_RCC_PLL_DIV_3) || \ 
//  119                                              ((__VALUE__) == LL_RCC_PLL_DIV_4))
//  120 
//  121 #define IS_LL_UTILS_PLLVCO_OUTPUT(__VALUE__) ((LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE1) ? ((__VALUE__) <= UTILS_PLLVCO_OUTPUT_SCALE1) : \ 
//  122                                              ((LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE2) ? ((__VALUE__) <= UTILS_PLLVCO_OUTPUT_SCALE2) : \ 
//  123                                              ((__VALUE__) <= UTILS_PLLVCO_OUTPUT_SCALE3)))
//  124 
//  125 #define IS_LL_UTILS_PLL_FREQUENCY(__VALUE__) ((LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE1) ? ((__VALUE__) <= UTILS_MAX_FREQUENCY_SCALE1) : \ 
//  126                                              ((LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE2) ? ((__VALUE__) <= UTILS_MAX_FREQUENCY_SCALE2) : \ 
//  127                                              ((__VALUE__) <= UTILS_MAX_FREQUENCY_SCALE3)))
//  128 
//  129 #define IS_LL_UTILS_HSE_BYPASS(__STATE__) (((__STATE__) == LL_UTILS_HSEBYPASS_ON) \ 
//  130                                         || ((__STATE__) == LL_UTILS_HSEBYPASS_OFF))
//  131 
//  132 #define IS_LL_UTILS_HSE_FREQUENCY(__FREQUENCY__) (((__FREQUENCY__) >= UTILS_HSE_FREQUENCY_MIN) && ((__FREQUENCY__) <= UTILS_HSE_FREQUENCY_MAX))
//  133 /**
//  134   * @}
//  135   */
//  136 /* Private function prototypes -----------------------------------------------*/
//  137 /** @defgroup UTILS_LL_Private_Functions UTILS Private functions
//  138   * @{
//  139   */
//  140 static uint32_t    UTILS_GetPLLOutputFrequency(uint32_t PLL_InputFrequency,
//  141                                                LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct);
//  142 static ErrorStatus UTILS_SetFlashLatency(uint32_t Frequency);
//  143 static ErrorStatus UTILS_EnablePLLAndSwitchSystem(uint32_t SYSCLK_Frequency, LL_UTILS_ClkInitTypeDef *UTILS_ClkInitStruct);
//  144 static ErrorStatus UTILS_PLL_IsBusy(void);
//  145 /**
//  146   * @}
//  147   */
//  148 
//  149 /* Exported functions --------------------------------------------------------*/
//  150 /** @addtogroup UTILS_LL_Exported_Functions
//  151   * @{
//  152   */
//  153 
//  154 /** @addtogroup UTILS_LL_EF_DELAY
//  155   * @{
//  156   */
//  157 
//  158 /**
//  159   * @brief  This function configures the Cortex-M SysTick source to have 1ms time base.
//  160   * @note   When a RTOS is used, it is recommended to avoid changing the Systick
//  161   *         configuration by calling this function, for a delay use rather osDelay RTOS service.
//  162   * @param  HCLKFrequency HCLK frequency in Hz
//  163   * @note   HCLK frequency can be calculated thanks to RCC helper macro or function @ref LL_RCC_GetSystemClocksFreq
//  164   * @retval None
//  165   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function LL_Init1msTick
        THUMB
//  166 void LL_Init1msTick(uint32_t HCLKFrequency)
//  167 {
LL_Init1msTick:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  168   /* Use frequency provided in argument */
//  169   LL_InitTick(HCLKFrequency, 1000U);
        MOV      R1,#+1000
          CFI FunCall LL_InitTick
        BL       LL_InitTick
//  170 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock19
//  171 
//  172 /**
//  173   * @brief  This function provides accurate delay (in milliseconds) based
//  174   *         on SysTick counter flag
//  175   * @note   When a RTOS is used, it is recommended to avoid using blocking delay
//  176   *         and use rather osDelay service.
//  177   * @note   To respect 1ms timebase, user should call @ref LL_Init1msTick function which
//  178   *         will configure Systick to 1ms
//  179   * @param  Delay specifies the delay time length, in milliseconds.
//  180   * @retval None
//  181   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function LL_mDelay
          CFI NoCalls
        THUMB
//  182 void LL_mDelay(uint32_t Delay)
//  183 {
LL_mDelay:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  184   __IO uint32_t  tmp = SysTick->CTRL;  /* Clear the COUNTFLAG first */
        LDR.N    R1,??DataTable24_4  ;; 0xe000e010
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
//  185   /* Add this code to indicate that local variable is not used */
//  186   ((void)tmp);
        LDR      R1,[SP, #+0]
//  187 
//  188   /* Add a period to guaranty minimum wait */
//  189   if (Delay < LL_MAX_DELAY)
        CMN      R0,#+1
        BEQ.N    ??LL_mDelay_0
//  190   {
//  191     Delay++;
        ADDS     R0,R0,#+1
        B.N      ??LL_mDelay_0
//  192   }
//  193 
//  194   while (Delay)
//  195   {
//  196     if ((SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk) != 0U)
??LL_mDelay_1:
        LDR.N    R1,??DataTable24_4  ;; 0xe000e010
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+15
        BPL.N    ??LL_mDelay_0
//  197     {
//  198       Delay--;
        SUBS     R0,R0,#+1
//  199     }
//  200   }
??LL_mDelay_0:
        CMP      R0,#+0
        BNE.N    ??LL_mDelay_1
//  201 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  202 
//  203 /**
//  204   * @}
//  205   */
//  206 
//  207 /** @addtogroup UTILS_EF_SYSTEM
//  208   *  @brief    System Configuration functions
//  209   *
//  210   @verbatim
//  211  ===============================================================================
//  212            ##### System Configuration functions #####
//  213  ===============================================================================
//  214     [..]
//  215          System, AHB and APB buses clocks configuration
//  216 
//  217          (+) The maximum frequency of the SYSCLK, HCLK, PCLK1 and PCLK2 is 32000000 Hz.
//  218   @endverbatim
//  219   @internal
//  220              Depending on the device voltage range, the maximum frequency should be
//  221              adapted accordingly:
//  222              (++) +----------------------------------------------------------------+
//  223              (++) |  Wait states  |                HCLK clock frequency (MHz)      |
//  224              (++) |               |------------------------------------------------|
//  225              (++) |   (Latency)   |            voltage range       | voltage range |
//  226              (++) |               |            1.65 V - 3.6 V      | 2.0 V - 3.6 V |
//  227              (++) |               |----------------|---------------|---------------|
//  228              (++) |               |  VCORE = 1.2 V | VCORE = 1.5 V | VCORE = 1.8 V |
//  229              (++) |-------------- |----------------|---------------|---------------|
//  230              (++) |0WS(1CPU cycle)|0 < HCLK <= 2   |0 < HCLK <= 8  |0 < HCLK <= 16 |
//  231              (++) |---------------|----------------|---------------|---------------|
//  232              (++) |1WS(2CPU cycle)|2 < HCLK <= 4   |8 < HCLK <= 16 |16 < HCLK <= 32|
//  233              (++) +----------------------------------------------------------------+
//  234   @endinternal
//  235   * @{
//  236   */
//  237 
//  238 /**
//  239   * @brief  This function sets directly SystemCoreClock CMSIS variable.
//  240   * @note   Variable can be calculated also through SystemCoreClockUpdate function.
//  241   * @param  HCLKFrequency HCLK frequency in Hz (can be calculated thanks to RCC helper macro)
//  242   * @retval None
//  243   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function LL_SetSystemCoreClock
          CFI NoCalls
        THUMB
//  244 void LL_SetSystemCoreClock(uint32_t HCLKFrequency)
//  245 {
//  246   /* HCLK clock frequency */
//  247   SystemCoreClock = HCLKFrequency;
LL_SetSystemCoreClock:
        LDR.N    R1,??DataTable24_7
        STR      R0,[R1, #+0]
//  248 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  249 
//  250 /**
//  251   * @brief  This function configures system clock with HSI as clock source of the PLL
//  252   * @note   The application need to ensure that PLL is disabled.
//  253   * @note   Function is based on the following formula:
//  254   *         - PLL output frequency = ((HSI frequency * PLLMul) / PLLDiv)
//  255   *         - PLLMul: The application software must set correctly the PLL multiplication factor to avoid exceeding
//  256   *           - 96 MHz as PLLVCO when the product is in range 1,
//  257   *           - 48 MHz as PLLVCO when the product is in range 2,
//  258   *           - 24 MHz when the product is in range 3
//  259   * @note   FLASH latency can be modified through this function. 
//  260   * @note   If this latency increases to 1WS, FLASH 64-bit access will be automatically enabled. 
//  261   *         A decrease of FLASH latency to 0WS will not disable 64-bit access. If needed, user should call
//  262   *         the following function @ref LL_FLASH_Disable64bitAccess.
//  263   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
//  264   *                             the configuration information for the PLL.
//  265   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
//  266   *                             the configuration information for the BUS prescalers.
//  267   * @retval An ErrorStatus enumeration value:
//  268   *          - SUCCESS: Max frequency configuration done
//  269   *          - ERROR: Max frequency configuration not done
//  270   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function LL_PLL_ConfigSystemClock_HSI
        THUMB
//  271 ErrorStatus LL_PLL_ConfigSystemClock_HSI(LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct,
//  272                                          LL_UTILS_ClkInitTypeDef *UTILS_ClkInitStruct)
//  273 {
LL_PLL_ConfigSystemClock_HSI:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  274   ErrorStatus status = SUCCESS;
        MOVS     R0,#+1
//  275   uint32_t pllfreq = 0U;
        MOVS     R6,#+0
//  276 
//  277   /* Check if one of the PLL is enabled */
//  278   if (UTILS_PLL_IsBusy() == SUCCESS)
          CFI FunCall UTILS_PLL_IsBusy
        BL       UTILS_PLL_IsBusy
        CMP      R0,#+1
        BNE.N    ??LL_PLL_ConfigSystemClock_HSI_0
//  279   {
//  280     /* Calculate the new PLL output frequency */
//  281     pllfreq = UTILS_GetPLLOutputFrequency(HSI_VALUE, UTILS_PLLInitStruct);
        MOVS     R1,R4
        LDR.N    R0,??DataTable24_8  ;; 0xf42400
          CFI FunCall UTILS_GetPLLOutputFrequency
        BL       UTILS_GetPLLOutputFrequency
        MOVS     R6,R0
//  282 
//  283     /* Enable HSI if not enabled */
//  284     if (LL_RCC_HSI_IsReady() != 1U)
          CFI FunCall LL_RCC_HSI_IsReady
        BL       LL_RCC_HSI_IsReady
        CMP      R0,#+1
        BEQ.N    ??LL_PLL_ConfigSystemClock_HSI_1
//  285     {
//  286       LL_RCC_HSI_Enable();
          CFI FunCall LL_RCC_HSI_Enable
        BL       LL_RCC_HSI_Enable
//  287       while (LL_RCC_HSI_IsReady() != 1U)
??LL_PLL_ConfigSystemClock_HSI_2:
          CFI FunCall LL_RCC_HSI_IsReady
        BL       LL_RCC_HSI_IsReady
        CMP      R0,#+1
        BNE.N    ??LL_PLL_ConfigSystemClock_HSI_2
//  288       {
//  289         /* Wait for HSI ready */
//  290       }
//  291     }
//  292 
//  293     /* Configure PLL */
//  294     LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI, UTILS_PLLInitStruct->PLLMul, UTILS_PLLInitStruct->PLLDiv);
??LL_PLL_ConfigSystemClock_HSI_1:
        LDR      R2,[R4, #+4]
        LDR      R1,[R4, #+0]
        MOVS     R0,#+0
          CFI FunCall LL_RCC_PLL_ConfigDomain_SYS
        BL       LL_RCC_PLL_ConfigDomain_SYS
//  295 
//  296     /* Enable PLL and switch system clock to PLL */
//  297     status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
        MOVS     R1,R5
        MOVS     R0,R6
          CFI FunCall UTILS_EnablePLLAndSwitchSystem
        BL       UTILS_EnablePLLAndSwitchSystem
        B.N      ??LL_PLL_ConfigSystemClock_HSI_3
//  298   }
//  299   else
//  300   {
//  301     /* Current PLL configuration cannot be modified */
//  302     status = ERROR;
??LL_PLL_ConfigSystemClock_HSI_0:
        MOVS     R0,#+0
//  303   }
//  304 
//  305   return status;
??LL_PLL_ConfigSystemClock_HSI_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  306 }
          CFI EndBlock cfiBlock22
//  307 
//  308 /**
//  309   * @brief  This function configures system clock with HSE as clock source of the PLL
//  310   * @note   The application need to ensure that PLL is disabled.
//  311   * @note   Function is based on the following formula:
//  312   *         - PLL output frequency = ((HSE frequency * PLLMul) / PLLDiv)
//  313   *         - PLLMul: The application software must set correctly the PLL multiplication factor to avoid exceeding
//  314   *           - 96 MHz as PLLVCO when the product is in range 1,
//  315   *           - 48 MHz as PLLVCO when the product is in range 2,
//  316   *           - 24 MHz when the product is in range 3
//  317   * @note   FLASH latency can be modified through this function. 
//  318   * @note   If this latency increases to 1WS, FLASH 64-bit access will be automatically enabled. 
//  319   *         A decrease of FLASH latency to 0WS will not disable 64-bit access. If needed, user should call
//  320   *         the following function @ref LL_FLASH_Disable64bitAccess.
//  321   * @param  HSEFrequency Value between Min_Data = 1000000 and Max_Data = 24000000
//  322   * @param  HSEBypass This parameter can be one of the following values:
//  323   *         @arg @ref LL_UTILS_HSEBYPASS_ON
//  324   *         @arg @ref LL_UTILS_HSEBYPASS_OFF
//  325   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
//  326   *                             the configuration information for the PLL.
//  327   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
//  328   *                             the configuration information for the BUS prescalers.
//  329   * @retval An ErrorStatus enumeration value:
//  330   *          - SUCCESS: Max frequency configuration done
//  331   *          - ERROR: Max frequency configuration not done
//  332   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function LL_PLL_ConfigSystemClock_HSE
        THUMB
//  333 ErrorStatus LL_PLL_ConfigSystemClock_HSE(uint32_t HSEFrequency, uint32_t HSEBypass,
//  334                                          LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct, LL_UTILS_ClkInitTypeDef *UTILS_ClkInitStruct)
//  335 {
LL_PLL_ConfigSystemClock_HSE:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  336   ErrorStatus status = SUCCESS;
        MOVS     R0,#+1
//  337   uint32_t pllfreq = 0U;
        MOVS     R8,#+0
//  338 
//  339   /* Check the parameters */
//  340   assert_param(IS_LL_UTILS_HSE_FREQUENCY(HSEFrequency));
//  341   assert_param(IS_LL_UTILS_HSE_BYPASS(HSEBypass));
//  342 
//  343   /* Check if one of the PLL is enabled */
//  344   if (UTILS_PLL_IsBusy() == SUCCESS)
          CFI FunCall UTILS_PLL_IsBusy
        BL       UTILS_PLL_IsBusy
        CMP      R0,#+1
        BNE.N    ??LL_PLL_ConfigSystemClock_HSE_0
//  345   {
//  346     /* Calculate the new PLL output frequency */
//  347     pllfreq = UTILS_GetPLLOutputFrequency(HSEFrequency, UTILS_PLLInitStruct);
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall UTILS_GetPLLOutputFrequency
        BL       UTILS_GetPLLOutputFrequency
        MOV      R8,R0
//  348 
//  349     /* Enable HSE if not enabled */
//  350     if (LL_RCC_HSE_IsReady() != 1U)
          CFI FunCall LL_RCC_HSE_IsReady
        BL       LL_RCC_HSE_IsReady
        CMP      R0,#+1
        BEQ.N    ??LL_PLL_ConfigSystemClock_HSE_1
//  351     {
//  352       /* Check if need to enable HSE bypass feature or not */
//  353       if (HSEBypass == LL_UTILS_HSEBYPASS_ON)
        CMP      R5,#+1
        BNE.N    ??LL_PLL_ConfigSystemClock_HSE_2
//  354       {
//  355         LL_RCC_HSE_EnableBypass();
          CFI FunCall LL_RCC_HSE_EnableBypass
        BL       LL_RCC_HSE_EnableBypass
        B.N      ??LL_PLL_ConfigSystemClock_HSE_3
//  356       }
//  357       else
//  358       {
//  359         LL_RCC_HSE_DisableBypass();
??LL_PLL_ConfigSystemClock_HSE_2:
          CFI FunCall LL_RCC_HSE_DisableBypass
        BL       LL_RCC_HSE_DisableBypass
//  360       }
//  361 
//  362       /* Enable HSE */
//  363       LL_RCC_HSE_Enable();
??LL_PLL_ConfigSystemClock_HSE_3:
          CFI FunCall LL_RCC_HSE_Enable
        BL       LL_RCC_HSE_Enable
//  364       while (LL_RCC_HSE_IsReady() != 1U)
??LL_PLL_ConfigSystemClock_HSE_4:
          CFI FunCall LL_RCC_HSE_IsReady
        BL       LL_RCC_HSE_IsReady
        CMP      R0,#+1
        BNE.N    ??LL_PLL_ConfigSystemClock_HSE_4
//  365       {
//  366         /* Wait for HSE ready */
//  367       }
//  368     }
//  369 
//  370       /* Configure PLL */
//  371       LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE, UTILS_PLLInitStruct->PLLMul, UTILS_PLLInitStruct->PLLDiv);
??LL_PLL_ConfigSystemClock_HSE_1:
        LDR      R2,[R6, #+4]
        LDR      R1,[R6, #+0]
        MOVS     R0,#+65536
          CFI FunCall LL_RCC_PLL_ConfigDomain_SYS
        BL       LL_RCC_PLL_ConfigDomain_SYS
//  372 
//  373     /* Enable PLL and switch system clock to PLL */
//  374     status = UTILS_EnablePLLAndSwitchSystem(pllfreq, UTILS_ClkInitStruct);
        MOVS     R1,R7
        MOV      R0,R8
          CFI FunCall UTILS_EnablePLLAndSwitchSystem
        BL       UTILS_EnablePLLAndSwitchSystem
        B.N      ??LL_PLL_ConfigSystemClock_HSE_5
//  375   }
//  376   else
//  377   {
//  378     /* Current PLL configuration cannot be modified */
//  379     status = ERROR;
??LL_PLL_ConfigSystemClock_HSE_0:
        MOVS     R0,#+0
//  380   }
//  381 
//  382   return status;
??LL_PLL_ConfigSystemClock_HSE_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return
//  383 }
          CFI EndBlock cfiBlock23
//  384 
//  385 /**
//  386   * @}
//  387   */
//  388 
//  389 /**
//  390   * @}
//  391   */
//  392 
//  393 /** @addtogroup UTILS_LL_Private_Functions
//  394   * @{
//  395   */
//  396 /**
//  397   * @brief  Update number of Flash wait states in line with new frequency and current
//  398             voltage range.
//  399   * @param  Frequency  HCLK frequency
//  400   * @retval An ErrorStatus enumeration value:
//  401   *          - SUCCESS: Latency has been modified
//  402   *          - ERROR: Latency cannot be modified
//  403   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function UTILS_SetFlashLatency
        THUMB
//  404 static ErrorStatus UTILS_SetFlashLatency(uint32_t Frequency)
//  405 {
UTILS_SetFlashLatency:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  406   ErrorStatus status = SUCCESS;
        MOVS     R5,#+1
//  407 
//  408   uint32_t latency = LL_FLASH_LATENCY_0;  /* default value 0WS */
        MOVS     R6,#+0
//  409 
//  410   /* Frequency cannot be equal to 0 */
//  411   if (Frequency == 0U)
        CMP      R4,#+0
        BNE.N    ??UTILS_SetFlashLatency_0
//  412   {
//  413     status = ERROR;
        MOVS     R5,#+0
        B.N      ??UTILS_SetFlashLatency_1
//  414   }
//  415   else
//  416   {
//  417     if (LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE1)
??UTILS_SetFlashLatency_0:
          CFI FunCall LL_PWR_GetRegulVoltageScaling
        BL       LL_PWR_GetRegulVoltageScaling
        CMP      R0,#+2048
        BNE.N    ??UTILS_SetFlashLatency_2
//  418     {
//  419       if (Frequency > UTILS_SCALE1_LATENCY1_FREQ)
        LDR.N    R0,??DataTable24_9  ;; 0xf42401
        CMP      R4,R0
        BCC.N    ??UTILS_SetFlashLatency_3
//  420       {
//  421         /* 16 < HCLK <= 32 => 1WS (2 CPU cycles) */
//  422         latency = LL_FLASH_LATENCY_1;
        MOVS     R6,#+1
        B.N      ??UTILS_SetFlashLatency_3
//  423       }
//  424       /* else HCLK < 16MHz default LL_FLASH_LATENCY_0 0WS */
//  425      }
//  426     else if (LL_PWR_GetRegulVoltageScaling() == LL_PWR_REGU_VOLTAGE_SCALE2)
??UTILS_SetFlashLatency_2:
          CFI FunCall LL_PWR_GetRegulVoltageScaling
        BL       LL_PWR_GetRegulVoltageScaling
        CMP      R0,#+4096
        BNE.N    ??UTILS_SetFlashLatency_4
//  427     {
//  428       if (Frequency > UTILS_SCALE2_LATENCY1_FREQ)
        LDR.N    R0,??DataTable24_10  ;; 0x7a1201
        CMP      R4,R0
        BCC.N    ??UTILS_SetFlashLatency_3
//  429       {
//  430         /* 8 < HCLK <= 16 => 1WS (2 CPU cycles) */
//  431         latency = LL_FLASH_LATENCY_1;
        MOVS     R6,#+1
        B.N      ??UTILS_SetFlashLatency_3
//  432       }
//  433       /* else HCLK < 8MHz default LL_FLASH_LATENCY_0 0WS */
//  434     }
//  435     else
//  436     {
//  437       if (Frequency > UTILS_SCALE3_LATENCY1_FREQ)
??UTILS_SetFlashLatency_4:
        LDR.N    R0,??DataTable24_11  ;; 0x1e8481
        CMP      R4,R0
        BCC.N    ??UTILS_SetFlashLatency_3
//  438       {
//  439         /* 2 < HCLK <= 4 => 1WS (2 CPU cycles) */
//  440         latency = LL_FLASH_LATENCY_1;
        MOVS     R6,#+1
//  441       }
//  442       /* else HCLK < 4MHz default LL_FLASH_LATENCY_0 0WS */
//  443     }
//  444 
//  445     /* Latency cannot be set to 1WS only if 64-bit access bit is enabled */
//  446     if (latency == LL_FLASH_LATENCY_1)
??UTILS_SetFlashLatency_3:
        CMP      R6,#+1
        BNE.N    ??UTILS_SetFlashLatency_5
//  447     {
//  448       LL_FLASH_Enable64bitAccess();
          CFI FunCall LL_FLASH_Enable64bitAccess
        BL       LL_FLASH_Enable64bitAccess
//  449     }
//  450 
//  451     LL_FLASH_SetLatency(latency);
??UTILS_SetFlashLatency_5:
        MOVS     R0,R6
          CFI FunCall LL_FLASH_SetLatency
        BL       LL_FLASH_SetLatency
//  452 
//  453     /* Check that the new number of wait states is taken into account to access the Flash
//  454        memory by reading the FLASH_ACR register */
//  455     if (LL_FLASH_GetLatency() != latency)
          CFI FunCall LL_FLASH_GetLatency
        BL       LL_FLASH_GetLatency
        CMP      R0,R6
        BEQ.N    ??UTILS_SetFlashLatency_1
//  456     {
//  457       status = ERROR;
        MOVS     R5,#+0
//  458     }
//  459   }
//  460   return status;
??UTILS_SetFlashLatency_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  461 }
          CFI EndBlock cfiBlock24
//  462 
//  463 /**
//  464   * @brief  Function to check that PLL can be modified
//  465   * @param  PLL_InputFrequency  PLL input frequency (in Hz)
//  466   * @param  UTILS_PLLInitStruct pointer to a @ref LL_UTILS_PLLInitTypeDef structure that contains
//  467   *                             the configuration information for the PLL.
//  468   * @retval PLL output frequency (in Hz)
//  469   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function UTILS_GetPLLOutputFrequency
          CFI NoCalls
        THUMB
//  470 static uint32_t UTILS_GetPLLOutputFrequency(uint32_t PLL_InputFrequency, LL_UTILS_PLLInitTypeDef *UTILS_PLLInitStruct)
//  471 {
UTILS_GetPLLOutputFrequency:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  472   uint32_t pllfreq = 0U;
        MOVS     R2,#+0
//  473 
//  474   /* Check the parameters */
//  475   assert_param(IS_LL_UTILS_PLLMUL_VALUE(UTILS_PLLInitStruct->PLLMul));
//  476   assert_param(IS_LL_UTILS_PLLDIV_VALUE(UTILS_PLLInitStruct->PLLDiv));
//  477 
//  478   /* Check different PLL parameters according to RM                          */
//  479   /* The application software must set correctly the PLL multiplication factor to avoid exceeding
//  480      96 MHz as PLLVCO when the product is in range 1,
//  481      48 MHz as PLLVCO when the product is in range 2,
//  482      24 MHz when the product is in range 3. */
//  483   pllfreq = PLL_InputFrequency * (PLLMulTable[UTILS_PLLInitStruct->PLLMul >> RCC_POSITION_PLLMUL]);
        MOV      R2,#+15360
        CLZ      R2,R2
        LDR.N    R3,??DataTable24_12
        LDR      R4,[R1, #+0]
        LSRS     R4,R4,R2
        LDRB     R2,[R4, R3]
        MUL      R2,R2,R0
//  484   assert_param(IS_LL_UTILS_PLLVCO_OUTPUT(pllfreq));
//  485 
//  486   /* The application software must set correctly the PLL multiplication factor to avoid exceeding 
//  487      maximum frequency 32000000 in range 1 */
//  488   pllfreq = pllfreq / ((UTILS_PLLInitStruct->PLLDiv >> RCC_POSITION_PLLDIV)+1U);
        MOV      R0,#+768
        CLZ      R0,R0
        LDR      R1,[R1, #+4]
        LSRS     R1,R1,R0
        ADDS     R0,R1,#+1
        UDIV     R2,R2,R0
//  489   assert_param(IS_LL_UTILS_PLL_FREQUENCY(pllfreq));
//  490 
//  491   return pllfreq;
        MOVS     R0,R2
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  492 }
          CFI EndBlock cfiBlock25
//  493 
//  494 /**
//  495   * @brief  Function to check that PLL can be modified
//  496   * @retval An ErrorStatus enumeration value:
//  497   *          - SUCCESS: PLL modification can be done
//  498   *          - ERROR: PLL is busy
//  499   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function UTILS_PLL_IsBusy
        THUMB
//  500 static ErrorStatus UTILS_PLL_IsBusy(void)
//  501 {
UTILS_PLL_IsBusy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  502   ErrorStatus status = SUCCESS;
        MOVS     R4,#+1
//  503 
//  504   /* Check if PLL is busy*/
//  505   if (LL_RCC_PLL_IsReady() != 0U)
          CFI FunCall LL_RCC_PLL_IsReady
        BL       LL_RCC_PLL_IsReady
        CMP      R0,#+0
        BEQ.N    ??UTILS_PLL_IsBusy_0
//  506   {
//  507     /* PLL configuration cannot be modified */
//  508     status = ERROR;
        MOVS     R4,#+0
//  509   }
//  510 
//  511 
//  512   return status;
??UTILS_PLL_IsBusy_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  513 }
          CFI EndBlock cfiBlock26
//  514 
//  515 /**
//  516   * @brief  Function to enable PLL and switch system clock to PLL
//  517   * @param  SYSCLK_Frequency SYSCLK frequency
//  518   * @param  UTILS_ClkInitStruct pointer to a @ref LL_UTILS_ClkInitTypeDef structure that contains
//  519   *                             the configuration information for the BUS prescalers.
//  520   * @retval An ErrorStatus enumeration value:
//  521   *          - SUCCESS: No problem to switch system to PLL
//  522   *          - ERROR: Problem to switch system to PLL
//  523   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function UTILS_EnablePLLAndSwitchSystem
        THUMB
//  524 static ErrorStatus UTILS_EnablePLLAndSwitchSystem(uint32_t SYSCLK_Frequency, LL_UTILS_ClkInitTypeDef *UTILS_ClkInitStruct)
//  525 {
UTILS_EnablePLLAndSwitchSystem:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
//  526   ErrorStatus status = SUCCESS;
        MOVS     R5,#+1
//  527   uint32_t hclk_frequency = 0U;
        MOVS     R6,#+0
//  528 
//  529   assert_param(IS_LL_UTILS_SYSCLK_DIV(UTILS_ClkInitStruct->AHBCLKDivider));
//  530   assert_param(IS_LL_UTILS_APB1_DIV(UTILS_ClkInitStruct->APB1CLKDivider));
//  531   assert_param(IS_LL_UTILS_APB2_DIV(UTILS_ClkInitStruct->APB2CLKDivider));
//  532 
//  533   /* Calculate HCLK frequency */
//  534   hclk_frequency = __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, UTILS_ClkInitStruct->AHBCLKDivider);
        MOVS     R1,#+251658240
        CLZ      R1,R1
        LDR.N    R2,??DataTable24_13
        LDRB     R3,[R4, #+0]
        ANDS     R3,R3,#0xF0
        LSRS     R3,R3,R1
        LDRB     R1,[R3, R2]
        LSRS     R0,R0,R1
        MOVS     R6,R0
//  535 
//  536   /* Increasing the number of wait states because of higher CPU frequency */
//  537   if (SystemCoreClock < hclk_frequency)
        LDR.N    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BCS.N    ??UTILS_EnablePLLAndSwitchSystem_0
//  538   {
//  539     /* Set FLASH latency to highest latency */
//  540     status = UTILS_SetFlashLatency(hclk_frequency);
        MOVS     R0,R6
          CFI FunCall UTILS_SetFlashLatency
        BL       UTILS_SetFlashLatency
        MOVS     R5,R0
//  541   }
//  542 
//  543   /* Update system clock configuration */
//  544   if (status == SUCCESS)
??UTILS_EnablePLLAndSwitchSystem_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??UTILS_EnablePLLAndSwitchSystem_1
//  545   {
//  546     /* Enable PLL */
//  547     LL_RCC_PLL_Enable();
          CFI FunCall LL_RCC_PLL_Enable
        BL       LL_RCC_PLL_Enable
//  548     while (LL_RCC_PLL_IsReady() != 1U)
??UTILS_EnablePLLAndSwitchSystem_2:
          CFI FunCall LL_RCC_PLL_IsReady
        BL       LL_RCC_PLL_IsReady
        CMP      R0,#+1
        BNE.N    ??UTILS_EnablePLLAndSwitchSystem_2
//  549     {
//  550       /* Wait for PLL ready */
//  551     }
//  552 
//  553     /* Sysclk activation on the main PLL */
//  554     LL_RCC_SetAHBPrescaler(UTILS_ClkInitStruct->AHBCLKDivider);
        LDR      R0,[R4, #+0]
          CFI FunCall LL_RCC_SetAHBPrescaler
        BL       LL_RCC_SetAHBPrescaler
//  555     LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
        MOVS     R0,#+3
          CFI FunCall LL_RCC_SetSysClkSource
        BL       LL_RCC_SetSysClkSource
//  556     while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
??UTILS_EnablePLLAndSwitchSystem_3:
          CFI FunCall LL_RCC_GetSysClkSource
        BL       LL_RCC_GetSysClkSource
        CMP      R0,#+12
        BNE.N    ??UTILS_EnablePLLAndSwitchSystem_3
//  557     {
//  558       /* Wait for system clock switch to PLL */
//  559     }
//  560 
//  561     /* Set APB1 & APB2 prescaler*/
//  562     LL_RCC_SetAPB1Prescaler(UTILS_ClkInitStruct->APB1CLKDivider);
        LDR      R0,[R4, #+4]
          CFI FunCall LL_RCC_SetAPB1Prescaler
        BL       LL_RCC_SetAPB1Prescaler
//  563     LL_RCC_SetAPB2Prescaler(UTILS_ClkInitStruct->APB2CLKDivider);
        LDR      R0,[R4, #+8]
          CFI FunCall LL_RCC_SetAPB2Prescaler
        BL       LL_RCC_SetAPB2Prescaler
//  564   }
//  565 
//  566   /* Decreasing the number of wait states because of lower CPU frequency */
//  567   if (SystemCoreClock > hclk_frequency)
??UTILS_EnablePLLAndSwitchSystem_1:
        LDR.N    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BCS.N    ??UTILS_EnablePLLAndSwitchSystem_4
//  568   {
//  569     /* Set FLASH latency to lowest latency */
//  570     status = UTILS_SetFlashLatency(hclk_frequency);
        MOVS     R0,R6
          CFI FunCall UTILS_SetFlashLatency
        BL       UTILS_SetFlashLatency
        MOVS     R5,R0
//  571   }
//  572 
//  573   /* Update SystemCoreClock variable */
//  574   if (status == SUCCESS)
??UTILS_EnablePLLAndSwitchSystem_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??UTILS_EnablePLLAndSwitchSystem_5
//  575   {
//  576     LL_SetSystemCoreClock(hclk_frequency);
        MOVS     R0,R6
          CFI FunCall LL_SetSystemCoreClock
        BL       LL_SetSystemCoreClock
//  577   }
//  578 
//  579   return status;
??UTILS_EnablePLLAndSwitchSystem_5:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  580 }
          CFI EndBlock cfiBlock27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     0x40023c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     0xf42401

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     0x7a1201

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     0x1e8481

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     PLLMulTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     AHBPrescTable

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  581 
//  582 /**
//  583   * @}
//  584   */
//  585 
//  586 /**
//  587   * @}
//  588   */
//  589 
//  590 /**
//  591   * @}
//  592   */
//  593 
//  594 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 854 bytes in section .text
// 
// 854 bytes of CODE memory
//
//Errors: none
//Warnings: 1
