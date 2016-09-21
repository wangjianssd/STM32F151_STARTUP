///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:26
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_it.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_it.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_it.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_IncTick
        EXTERN HAL_UART_IRQHandler
        EXTERN huart3

        PUBLIC BusFault_Handler
        PUBLIC DebugMon_Handler
        PUBLIC HardFault_Handler
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC SysTick_Handler
        PUBLIC USART3_IRQHandler
        PUBLIC UsageFault_Handler
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_it.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_it.c
//    4   * @brief   Interrupt Service Routines.
//    5   ******************************************************************************
//    6   *
//    7   * COPYRIGHT(c) 2016 STMicroelectronics
//    8   *
//    9   * Redistribution and use in source and binary forms, with or without modification,
//   10   * are permitted provided that the following conditions are met:
//   11   *   1. Redistributions of source code must retain the above copyright notice,
//   12   *      this list of conditions and the following disclaimer.
//   13   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   14   *      this list of conditions and the following disclaimer in the documentation
//   15   *      and/or other materials provided with the distribution.
//   16   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   17   *      may be used to endorse or promote products derived from this software
//   18   *      without specific prior written permission.
//   19   *
//   20   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   21   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   22   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   23   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   24   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   25   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   26   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   27   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   28   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   29   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   30   *
//   31   ******************************************************************************
//   32   */
//   33 /* Includes ------------------------------------------------------------------*/
//   34 #include "stm32l1xx_hal.h"
//   35 #include "stm32l1xx.h"
//   36 #include "stm32l1xx_it.h"
//   37 #include "cmsis_os.h"
//   38 
//   39 /* USER CODE BEGIN 0 */
//   40 
//   41 /* USER CODE END 0 */
//   42 
//   43 /* External variables --------------------------------------------------------*/
//   44 extern UART_HandleTypeDef huart3;
//   45 
//   46 /******************************************************************************/
//   47 /*            Cortex-M3 Processor Interruption and Exception Handlers         */ 
//   48 /******************************************************************************/
//   49 
//   50 /**
//   51 * @brief This function handles Non maskable interrupt.
//   52 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NMI_Handler
          CFI NoCalls
        THUMB
//   53 void NMI_Handler(void)
//   54 {
//   55   /* USER CODE BEGIN NonMaskableInt_IRQn 0 */
//   56 
//   57   /* USER CODE END NonMaskableInt_IRQn 0 */
//   58   /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
//   59 
//   60   /* USER CODE END NonMaskableInt_IRQn 1 */
//   61 }
NMI_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   62 
//   63 /**
//   64 * @brief This function handles Hard fault interrupt.
//   65 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HardFault_Handler
          CFI NoCalls
        THUMB
//   66 void HardFault_Handler(void)
//   67 {
//   68   /* USER CODE BEGIN HardFault_IRQn 0 */
//   69 
//   70   /* USER CODE END HardFault_IRQn 0 */
//   71   while (1)
HardFault_Handler:
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0
//   72   {
//   73   }
//   74   /* USER CODE BEGIN HardFault_IRQn 1 */
//   75 
//   76   /* USER CODE END HardFault_IRQn 1 */
//   77 }
          CFI EndBlock cfiBlock1
//   78 
//   79 /**
//   80 * @brief This function handles Memory management fault.
//   81 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MemManage_Handler
          CFI NoCalls
        THUMB
//   82 void MemManage_Handler(void)
//   83 {
//   84   /* USER CODE BEGIN MemoryManagement_IRQn 0 */
//   85 
//   86   /* USER CODE END MemoryManagement_IRQn 0 */
//   87   while (1)
MemManage_Handler:
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0
//   88   {
//   89   }
//   90   /* USER CODE BEGIN MemoryManagement_IRQn 1 */
//   91 
//   92   /* USER CODE END MemoryManagement_IRQn 1 */
//   93 }
          CFI EndBlock cfiBlock2
//   94 
//   95 /**
//   96 * @brief This function handles Pre-fetch fault, memory access fault.
//   97 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function BusFault_Handler
          CFI NoCalls
        THUMB
//   98 void BusFault_Handler(void)
//   99 {
//  100   /* USER CODE BEGIN BusFault_IRQn 0 */
//  101 
//  102   /* USER CODE END BusFault_IRQn 0 */
//  103   while (1)
BusFault_Handler:
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0
//  104   {
//  105   }
//  106   /* USER CODE BEGIN BusFault_IRQn 1 */
//  107 
//  108   /* USER CODE END BusFault_IRQn 1 */
//  109 }
          CFI EndBlock cfiBlock3
//  110 
//  111 /**
//  112 * @brief This function handles Undefined instruction or illegal state.
//  113 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UsageFault_Handler
          CFI NoCalls
        THUMB
//  114 void UsageFault_Handler(void)
//  115 {
//  116   /* USER CODE BEGIN UsageFault_IRQn 0 */
//  117 
//  118   /* USER CODE END UsageFault_IRQn 0 */
//  119   while (1)
UsageFault_Handler:
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0
//  120   {
//  121   }
//  122   /* USER CODE BEGIN UsageFault_IRQn 1 */
//  123 
//  124   /* USER CODE END UsageFault_IRQn 1 */
//  125 }
          CFI EndBlock cfiBlock4
//  126 
//  127 /**
//  128 * @brief This function handles Debug monitor.
//  129 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function DebugMon_Handler
          CFI NoCalls
        THUMB
//  130 void DebugMon_Handler(void)
//  131 {
//  132   /* USER CODE BEGIN DebugMonitor_IRQn 0 */
//  133 
//  134   /* USER CODE END DebugMonitor_IRQn 0 */
//  135   /* USER CODE BEGIN DebugMonitor_IRQn 1 */
//  136 
//  137   /* USER CODE END DebugMonitor_IRQn 1 */
//  138 }
DebugMon_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  139 
//  140 /**
//  141 * @brief This function handles System tick timer.
//  142 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SysTick_Handler
        THUMB
//  143 void SysTick_Handler(void)
//  144 {
SysTick_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  145   /* USER CODE BEGIN SysTick_IRQn 0 */
//  146 
//  147   /* USER CODE END SysTick_IRQn 0 */
//  148   HAL_IncTick();
          CFI FunCall HAL_IncTick
        BL       HAL_IncTick
//  149  // osSystickHandler();
//  150   /* USER CODE BEGIN SysTick_IRQn 1 */
//  151 
//  152   /* USER CODE END SysTick_IRQn 1 */
//  153 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  154 
//  155 /******************************************************************************/
//  156 /* STM32L1xx Peripheral Interrupt Handlers                                    */
//  157 /* Add here the Interrupt Handlers for the used peripherals.                  */
//  158 /* For the available peripheral interrupt handler names,                      */
//  159 /* please refer to the startup file (startup_stm32l1xx.s).                    */
//  160 /******************************************************************************/
//  161 
//  162 /**
//  163 * @brief This function handles USART3 global interrupt.
//  164 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function USART3_IRQHandler
        THUMB
//  165 void USART3_IRQHandler(void)
//  166 {
USART3_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  167   /* USER CODE BEGIN USART3_IRQn 0 */
//  168 
//  169   /* USER CODE END USART3_IRQn 0 */
//  170   HAL_UART_IRQHandler(&huart3);
        LDR.N    R0,??DataTable0
          CFI FunCall HAL_UART_IRQHandler
        BL       HAL_UART_IRQHandler
//  171   /* USER CODE BEGIN USART3_IRQn 1 */
//  172 
//  173   /* USER CODE END USART3_IRQn 1 */
//  174 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     huart3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  175 
//  176 /* USER CODE BEGIN 1 */
//  177 
//  178 /* USER CODE END 1 */
//  179 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 34 bytes in section .text
// 
// 34 bytes of CODE memory
//
//Errors: none
//Warnings: none
