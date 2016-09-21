///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cortex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cortex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_cortex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_MPU_ConfigRegion
        PUBLIC HAL_NVIC_ClearPendingIRQ
        PUBLIC HAL_NVIC_DisableIRQ
        PUBLIC HAL_NVIC_EnableIRQ
        PUBLIC HAL_NVIC_GetActive
        PUBLIC HAL_NVIC_GetPendingIRQ
        PUBLIC HAL_NVIC_GetPriority
        PUBLIC HAL_NVIC_GetPriorityGrouping
        PUBLIC HAL_NVIC_SetPendingIRQ
        PUBLIC HAL_NVIC_SetPriority
        PUBLIC HAL_NVIC_SetPriorityGrouping
        PUBLIC HAL_NVIC_SystemReset
        PUBLIC HAL_SYSTICK_CLKSourceConfig
        PUBWEAK HAL_SYSTICK_Callback
        PUBLIC HAL_SYSTICK_Config
        PUBLIC HAL_SYSTICK_IRQHandler
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cortex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_cortex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   CORTEX HAL module driver.
//    8   *
//    9   *          This file provides firmware functions to manage the following
//   10   *          functionalities of the CORTEX:
//   11   *           + Initialization and de-initialization functions
//   12   *           + Peripheral Control functions
//   13   *          
//   14   *  @verbatim    
//   15   ==============================================================================
//   16                         ##### How to use this driver #####
//   17   ==============================================================================
//   18 
//   19     [..]  
//   20     *** How to configure Interrupts using Cortex HAL driver ***
//   21     ===========================================================
//   22     [..]     
//   23     This section provide functions allowing to configure the NVIC interrupts (IRQ).
//   24     The Cortex-M3 exceptions are managed by CMSIS functions.
//   25    
//   26     (#) Configure the NVIC Priority Grouping using HAL_NVIC_SetPriorityGrouping()
//   27         function according to the following table.
//   28 
//   29      The table below gives the allowed values of the pre-emption priority and subpriority according
//   30      to the Priority Grouping configuration performed by HAL_NVIC_SetPriorityGrouping() function.
//   31        ==========================================================================================================================
//   32          NVIC_PriorityGroup   | NVIC_IRQChannelPreemptionPriority | NVIC_IRQChannelSubPriority  |       Description
//   33        ==========================================================================================================================
//   34         NVIC_PRIORITYGROUP_0  |                0                  |            0-15             | 0 bits for pre-emption priority
//   35                               |                                   |                             | 4 bits for subpriority
//   36        --------------------------------------------------------------------------------------------------------------------------
//   37         NVIC_PRIORITYGROUP_1  |                0-1                |            0-7              | 1 bits for pre-emption priority
//   38                               |                                   |                             | 3 bits for subpriority
//   39        --------------------------------------------------------------------------------------------------------------------------    
//   40         NVIC_PRIORITYGROUP_2  |                0-3                |            0-3              | 2 bits for pre-emption priority
//   41                               |                                   |                             | 2 bits for subpriority
//   42        --------------------------------------------------------------------------------------------------------------------------    
//   43         NVIC_PRIORITYGROUP_3  |                0-7                |            0-1              | 3 bits for pre-emption priority
//   44                               |                                   |                             | 1 bits for subpriority
//   45        --------------------------------------------------------------------------------------------------------------------------    
//   46         NVIC_PRIORITYGROUP_4  |                0-15               |            0                | 4 bits for pre-emption priority
//   47                               |                                   |                             | 0 bits for subpriority                       
//   48        ==========================================================================================================================
//   49      (#)  Configure the priority of the selected IRQ Channels using HAL_NVIC_SetPriority() 
//   50 
//   51      (#)  Enable the selected IRQ Channels using HAL_NVIC_EnableIRQ() 
//   52       
//   53 
//   54      -@- When the NVIC_PRIORITYGROUP_0 is selected, IRQ pre-emption is no more possible. 
//   55          The pending IRQ priority will be managed only by the sub priority.
//   56    
//   57      -@- IRQ priority order (sorted by highest to lowest priority):
//   58         (+@) Lowest pre-emption priority
//   59         (+@) Lowest sub priority
//   60         (+@) Lowest hardware priority (IRQ number)
//   61  
//   62     [..]  
//   63     *** How to configure Systick using Cortex HAL driver ***
//   64     ========================================================
//   65     [..]
//   66     Setup SysTick Timer for 1 msec interrupts.
//   67            
//   68    (+) The HAL_SYSTICK_Config()function calls the SysTick_Config() function which
//   69        is a CMSIS function that:
//   70         (++) Configures the SysTick Reload register with value passed as function parameter.
//   71         (++) Configures the SysTick IRQ priority to the lowest value (0x0F).
//   72         (++) Resets the SysTick Counter register.
//   73         (++) Configures the SysTick Counter clock source to be Core Clock Source (HCLK).
//   74         (++) Enables the SysTick Interrupt.
//   75         (++) Starts the SysTick Counter.
//   76     
//   77    (+) You can change the SysTick Clock source to be HCLK_Div8 by calling the macro
//   78        __HAL_CORTEX_SYSTICKCLK_CONFIG(SYSTICK_CLKSOURCE_HCLK_DIV8) just after the
//   79        HAL_SYSTICK_Config() function call. The __HAL_CORTEX_SYSTICKCLK_CONFIG() macro is defined
//   80        inside the stm32l1xx_hal_cortex.h file.
//   81 
//   82    (+) You can change the SysTick IRQ priority by calling the
//   83        HAL_NVIC_SetPriority(SysTick_IRQn,...) function just after the HAL_SYSTICK_Config() function 
//   84        call. The HAL_NVIC_SetPriority() call the NVIC_SetPriority() function which is a CMSIS function.
//   85 
//   86    (+) To adjust the SysTick time base, use the following formula:
//   87                             
//   88        Reload Value = SysTick Counter Clock (Hz) x  Desired Time base (s)
//   89        (++) Reload Value is the parameter to be passed for HAL_SYSTICK_Config() function
//   90        (++) Reload Value should not exceed 0xFFFFFF
//   91    
//   92   @endverbatim
//   93   ******************************************************************************
//   94   * @attention
//   95   *
//   96   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   97   *
//   98   * Redistribution and use in source and binary forms, with or without modification,
//   99   * are permitted provided that the following conditions are met:
//  100   *   1. Redistributions of source code must retain the above copyright notice,
//  101   *      this list of conditions and the following disclaimer.
//  102   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  103   *      this list of conditions and the following disclaimer in the documentation
//  104   *      and/or other materials provided with the distribution.
//  105   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  106   *      may be used to endorse or promote products derived from this software
//  107   *      without specific prior written permission.
//  108   *
//  109   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  110   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  111   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  112   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  113   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  114   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  115   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  116   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  117   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  118   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  119   *
//  120   ******************************************************************************
//  121   */
//  122 
//  123 /* Includes ------------------------------------------------------------------*/
//  124 #include "stm32l1xx_hal.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_SetPriorityGrouping
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SetPriorityGrouping(uint32_t)
NVIC_SetPriorityGrouping:
        ANDS     R1,R0,#0x7
        LDR.N    R0,??DataTable13  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        MOVW     R2,#+63743
        ANDS     R0,R2,R0
        LDR.N    R2,??DataTable13_1  ;; 0x5fa0000
        ORRS     R1,R2,R1, LSL #+8
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable13  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function NVIC_GetPriorityGrouping
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_GetPriorityGrouping(void)
NVIC_GetPriorityGrouping:
        LDR.N    R0,??DataTable13  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+8,#+3
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable13_2  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function NVIC_DisableIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable13_3  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function NVIC_GetPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_GetPendingIRQ(IRQn_Type)
NVIC_GetPendingIRQ:
        LDR.N    R1,??DataTable13_4  ;; 0xe000e200
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R2,R0,#+5
        LDR      R1,[R1, R2, LSL #+2]
        ANDS     R0,R0,#0x1F
        LSRS     R1,R1,R0
        ANDS     R0,R1,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function NVIC_SetPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SetPendingIRQ(IRQn_Type)
NVIC_SetPendingIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable13_4  ;; 0xe000e200
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function NVIC_ClearPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_ClearPendingIRQ(IRQn_Type)
NVIC_ClearPendingIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable13_5  ;; 0xe000e280
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function NVIC_GetActive
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_GetActive(IRQn_Type)
NVIC_GetActive:
        LDR.N    R1,??DataTable13_6  ;; 0xe000e300
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R2,R0,#+5
        LDR      R1,[R1, R2, LSL #+2]
        ANDS     R0,R0,#0x1F
        LSRS     R1,R1,R0
        ANDS     R0,R1,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function NVIC_SetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable13_7  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        ADDS     R0,R0,R2
        STRB     R1,[R0, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable13_8  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R1,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function NVIC_GetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_GetPriority(IRQn_Type)
NVIC_GetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_GetPriority_0
        LDR.N    R1,??DataTable13_7  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #-4]
        LSRS     R0,R0,#+4
        B.N      ??NVIC_GetPriority_1
??NVIC_GetPriority_0:
        LDR.N    R1,??DataTable13_8  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDRB     R0,[R0, R1]
        LSRS     R0,R0,#+4
??NVIC_GetPriority_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function NVIC_EncodePriority
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        ANDS     R0,R0,#0x7
        RSBS     R3,R0,#+7
        CMP      R3,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R3,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R3,R0,#+7
??NVIC_EncodePriority_1:
        ADDS     R4,R0,#+4
        CMP      R4,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R0,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R0,R0,#+3
??NVIC_EncodePriority_3:
        MOVS     R4,#+1
        LSLS     R3,R4,R3
        SUBS     R3,R3,#+1
        ANDS     R1,R3,R1
        LSLS     R1,R1,R0
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        SUBS     R0,R0,#+1
        ANDS     R0,R0,R2
        ORRS     R0,R0,R1
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function NVIC_DecodePriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_DecodePriority(uint32_t, uint32_t, uint32_t *const, uint32_t *const)
NVIC_DecodePriority:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        ANDS     R1,R1,#0x7
        RSBS     R4,R1,#+7
        CMP      R4,#+5
        BCC.N    ??NVIC_DecodePriority_0
        MOVS     R4,#+4
        B.N      ??NVIC_DecodePriority_1
??NVIC_DecodePriority_0:
        RSBS     R4,R1,#+7
??NVIC_DecodePriority_1:
        ADDS     R5,R1,#+4
        CMP      R5,#+7
        BCS.N    ??NVIC_DecodePriority_2
        MOVS     R1,#+0
        B.N      ??NVIC_DecodePriority_3
??NVIC_DecodePriority_2:
        SUBS     R1,R1,#+3
??NVIC_DecodePriority_3:
        MOVS     R5,R0
        LSRS     R5,R5,R1
        MOVS     R6,#+1
        LSLS     R4,R6,R4
        SUBS     R4,R4,#+1
        ANDS     R4,R4,R5
        STR      R4,[R2, #+0]
        MOVS     R2,#+1
        LSLS     R1,R2,R1
        SUBS     R1,R1,#+1
        ANDS     R0,R1,R0
        STR      R0,[R3, #+0]
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function NVIC_SystemReset
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SystemReset(void)
NVIC_SystemReset:
        DSB      
        LDR.N    R0,??DataTable13  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        LDR.N    R1,??DataTable13_9  ;; 0x5fa0004
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable13  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        DSB      
??NVIC_SystemReset_0:
        Nop      
        B.N      ??NVIC_SystemReset_0
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function SysTick_Config
        THUMB
// static __interwork __softfp uint32_t SysTick_Config(uint32_t)
SysTick_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUBS     R1,R0,#+1
        CMP      R1,#+16777216
        BCC.N    ??SysTick_Config_0
        MOVS     R0,#+1
        B.N      ??SysTick_Config_1
??SysTick_Config_0:
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable13_10  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_11  ;; 0xe000e018
        STR      R0,[R1, #+0]
        MOVS     R0,#+7
        LDR.N    R1,??DataTable13_12  ;; 0xe000e010
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
??SysTick_Config_1:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock13
//  125 
//  126 /** @addtogroup STM32L1xx_HAL_Driver
//  127   * @{
//  128   */
//  129 
//  130 /** @defgroup CORTEX CORTEX
//  131   * @brief CORTEX HAL module driver
//  132   * @{
//  133   */
//  134 
//  135 #ifdef HAL_CORTEX_MODULE_ENABLED
//  136 
//  137 /* Private typedef -----------------------------------------------------------*/
//  138 /* Private define ------------------------------------------------------------*/
//  139 /* Private macro -------------------------------------------------------------*/
//  140 /* Private variables ---------------------------------------------------------*/
//  141 /* Private function prototypes -----------------------------------------------*/
//  142 /* Private functions ---------------------------------------------------------*/
//  143 
//  144 /** @defgroup CORTEX_Exported_Functions CORTEX Exported Functions
//  145   * @{
//  146   */
//  147 
//  148 
//  149 /** @defgroup CORTEX_Exported_Functions_Group1 Initialization and de-initialization functions
//  150  *  @brief    Initialization and Configuration functions 
//  151  *
//  152 @verbatim    
//  153   ==============================================================================
//  154               ##### Initialization and de-initialization functions #####
//  155   ==============================================================================
//  156     [..]
//  157       This section provide the Cortex HAL driver functions allowing to configure Interrupts
//  158       Systick functionalities 
//  159 
//  160 @endverbatim
//  161   * @{
//  162   */
//  163 
//  164 
//  165 /**
//  166   * @brief  Sets the priority grouping field (pre-emption priority and subpriority)
//  167   *         using the required unlock sequence.
//  168   * @param  PriorityGroup: The priority grouping bits length. 
//  169   *         This parameter can be one of the following values:
//  170   *         @arg NVIC_PRIORITYGROUP_0: 0 bits for pre-emption priority
//  171   *                                    4 bits for subpriority
//  172   *         @arg NVIC_PRIORITYGROUP_1: 1 bits for pre-emption priority
//  173   *                                    3 bits for subpriority
//  174   *         @arg NVIC_PRIORITYGROUP_2: 2 bits for pre-emption priority
//  175   *                                    2 bits for subpriority
//  176   *         @arg NVIC_PRIORITYGROUP_3: 3 bits for pre-emption priority
//  177   *                                    1 bits for subpriority
//  178   *         @arg NVIC_PRIORITYGROUP_4: 4 bits for pre-emption priority
//  179   *                                    0 bits for subpriority
//  180   * @note   When the NVIC_PriorityGroup_0 is selected, IRQ pre-emption is no more possible. 
//  181   *         The pending IRQ priority will be managed only by the subpriority. 
//  182   * @retval None
//  183   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_NVIC_SetPriorityGrouping
        THUMB
//  184 void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
//  185 {
HAL_NVIC_SetPriorityGrouping:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  186   /* Check the parameters */
//  187   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
//  188   
//  189   /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
//  190   NVIC_SetPriorityGrouping(PriorityGroup);
          CFI FunCall NVIC_SetPriorityGrouping
        BL       NVIC_SetPriorityGrouping
//  191 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock14
//  192 
//  193 /**
//  194   * @brief  Sets the priority of an interrupt.
//  195   * @param  IRQn: External interrupt number
//  196   *         This parameter can be an enumerator of IRQn_Type enumeration
//  197   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xx.h))
//  198   * @param  PreemptPriority: The pre-emption priority for the IRQn channel.
//  199   *         This parameter can be a value between 0 and 15
//  200   *         A lower priority value indicates a higher priority 
//  201   * @param  SubPriority: the subpriority level for the IRQ channel.
//  202   *         This parameter can be a value between 0 and 15
//  203   *         A lower priority value indicates a higher priority.          
//  204   * @retval None
//  205   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_NVIC_SetPriority
        THUMB
//  206 void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
//  207 {
HAL_NVIC_SetPriority:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  208   uint32_t prioritygroup = 0x00;
        MOVS     R0,#+0
//  209   
//  210   /* Check the parameters */
//  211   assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
//  212   assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
//  213   
//  214   prioritygroup = NVIC_GetPriorityGrouping();
          CFI FunCall NVIC_GetPriorityGrouping
        BL       NVIC_GetPriorityGrouping
//  215   
//  216   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
        MOVS     R2,R6
        MOVS     R1,R5
          CFI FunCall NVIC_EncodePriority
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//  217 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock15
//  218 
//  219 /**
//  220   * @brief  Enables a device specific interrupt in the NVIC interrupt controller.
//  221   * @note   To configure interrupts priority correctly, the NVIC_PriorityGroupConfig()
//  222   *         function should be called before. 
//  223   * @param  IRQn External interrupt number
//  224   *         This parameter can be an enumerator of IRQn_Type enumeration
//  225   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xx.h))
//  226   * @retval None
//  227   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_NVIC_EnableIRQ
        THUMB
//  228 void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
//  229 {
HAL_NVIC_EnableIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  230   /* Check the parameters */
//  231   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  232   
//  233   /* Enable interrupt */
//  234   NVIC_EnableIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  235 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock16
//  236 
//  237 /**
//  238   * @brief  Disables a device specific interrupt in the NVIC interrupt controller.
//  239   * @param  IRQn External interrupt number
//  240   *         This parameter can be an enumerator of IRQn_Type enumeration
//  241   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))  
//  242   * @retval None
//  243   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function HAL_NVIC_DisableIRQ
        THUMB
//  244 void HAL_NVIC_DisableIRQ(IRQn_Type IRQn)
//  245 {
HAL_NVIC_DisableIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  246   /* Check the parameters */
//  247   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  248   
//  249   /* Disable interrupt */
//  250   NVIC_DisableIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  251 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock17
//  252 
//  253 /**
//  254   * @brief  Initiates a system reset request to reset the MCU.
//  255   * @retval None
//  256   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function HAL_NVIC_SystemReset
        THUMB
//  257 void HAL_NVIC_SystemReset(void)
//  258 {
HAL_NVIC_SystemReset:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  259   /* System Reset */
//  260   NVIC_SystemReset();
          CFI FunCall NVIC_SystemReset
        BL       NVIC_SystemReset
//  261 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18
//  262 
//  263 /**
//  264   * @brief  Initializes the System Timer and its interrupt, and starts the System Tick Timer.
//  265   *         Counter is in free running mode to generate periodic interrupts.
//  266   * @param  TicksNumb: Specifies the ticks Number of ticks between two interrupts.
//  267   * @retval status:  - 0  Function succeeded.
//  268   *                  - 1  Function failed.
//  269   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function HAL_SYSTICK_Config
        THUMB
//  270 uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
//  271 {
HAL_SYSTICK_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  272    return SysTick_Config(TicksNumb);
          CFI FunCall SysTick_Config
        BL       SysTick_Config
        POP      {R1,PC}          ;; return
//  273 }
          CFI EndBlock cfiBlock19
//  274 /**
//  275   * @}
//  276   */
//  277 
//  278 /** @defgroup CORTEX_Exported_Functions_Group2 Peripheral Control functions
//  279  *  @brief    Cortex control functions 
//  280  *
//  281 @verbatim   
//  282   ==============================================================================
//  283                       ##### Peripheral Control functions #####
//  284   ==============================================================================
//  285     [..]
//  286       This subsection provides a set of functions allowing to control the CORTEX
//  287       (NVIC, SYSTICK, MPU) functionalities. 
//  288  
//  289       
//  290 @endverbatim
//  291   * @{
//  292   */
//  293 
//  294 #if (__MPU_PRESENT == 1)
//  295 /**
//  296   * @brief  Initializes and configures the Region and the memory to be protected.
//  297   * @param  MPU_Init: Pointer to a MPU_Region_InitTypeDef structure that contains
//  298   *                the initialization and configuration information.
//  299   * @retval None
//  300   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function HAL_MPU_ConfigRegion
          CFI NoCalls
        THUMB
//  301 void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init)
//  302 {
//  303   /* Check the parameters */
//  304   assert_param(IS_MPU_REGION_NUMBER(MPU_Init->Number));
//  305   assert_param(IS_MPU_REGION_ENABLE(MPU_Init->Enable));
//  306 
//  307   /* Set the Region number */
//  308   MPU->RNR = MPU_Init->Number;
HAL_MPU_ConfigRegion:
        LDRB     R1,[R0, #+1]
        LDR.N    R2,??DataTable13_13  ;; 0xe000ed98
        STR      R1,[R2, #+0]
//  309 
//  310   if ((MPU_Init->Enable) != RESET)
        LDRB     R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??HAL_MPU_ConfigRegion_0
//  311   {
//  312     /* Check the parameters */
//  313     assert_param(IS_MPU_INSTRUCTION_ACCESS(MPU_Init->DisableExec));
//  314     assert_param(IS_MPU_REGION_PERMISSION_ATTRIBUTE(MPU_Init->AccessPermission));
//  315     assert_param(IS_MPU_TEX_LEVEL(MPU_Init->TypeExtField));
//  316     assert_param(IS_MPU_ACCESS_SHAREABLE(MPU_Init->IsShareable));
//  317     assert_param(IS_MPU_ACCESS_CACHEABLE(MPU_Init->IsCacheable));
//  318     assert_param(IS_MPU_ACCESS_BUFFERABLE(MPU_Init->IsBufferable));
//  319     assert_param(IS_MPU_SUB_REGION_DISABLE(MPU_Init->SubRegionDisable));
//  320     assert_param(IS_MPU_REGION_SIZE(MPU_Init->Size));
//  321     
//  322     MPU->RBAR = MPU_Init->BaseAddress;
        LDR      R1,[R0, #+4]
        LDR.N    R2,??DataTable13_14  ;; 0xe000ed9c
        STR      R1,[R2, #+0]
//  323     MPU->RASR = ((uint32_t)MPU_Init->DisableExec             << MPU_RASR_XN_Pos)   |
//  324                 ((uint32_t)MPU_Init->AccessPermission        << MPU_RASR_AP_Pos)   |
//  325                 ((uint32_t)MPU_Init->TypeExtField            << MPU_RASR_TEX_Pos)  |
//  326                 ((uint32_t)MPU_Init->IsShareable             << MPU_RASR_S_Pos)    |
//  327                 ((uint32_t)MPU_Init->IsCacheable             << MPU_RASR_C_Pos)    |
//  328                 ((uint32_t)MPU_Init->IsBufferable            << MPU_RASR_B_Pos)    |
//  329                 ((uint32_t)MPU_Init->SubRegionDisable        << MPU_RASR_SRD_Pos)  |
//  330                 ((uint32_t)MPU_Init->Size                    << MPU_RASR_SIZE_Pos) |
//  331                 ((uint32_t)MPU_Init->Enable                  << MPU_RASR_ENABLE_Pos);
        LDRB     R1,[R0, #+12]
        LDRB     R2,[R0, #+11]
        LSLS     R2,R2,#+24
        ORRS     R1,R2,R1, LSL #+28
        LDRB     R2,[R0, #+10]
        ORRS     R1,R1,R2, LSL #+19
        LDRB     R2,[R0, #+13]
        ORRS     R1,R1,R2, LSL #+18
        LDRB     R2,[R0, #+14]
        ORRS     R1,R1,R2, LSL #+17
        LDRB     R2,[R0, #+15]
        ORRS     R1,R1,R2, LSL #+16
        LDRB     R2,[R0, #+9]
        ORRS     R1,R1,R2, LSL #+8
        LDRB     R2,[R0, #+8]
        ORRS     R1,R1,R2, LSL #+1
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable13_15  ;; 0xe000eda0
        STR      R0,[R1, #+0]
        B.N      ??HAL_MPU_ConfigRegion_1
//  332   }
//  333   else
//  334   {
//  335     MPU->RBAR = 0x00;
??HAL_MPU_ConfigRegion_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_14  ;; 0xe000ed9c
        STR      R0,[R1, #+0]
//  336     MPU->RASR = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_15  ;; 0xe000eda0
        STR      R0,[R1, #+0]
//  337   }
//  338 }
??HAL_MPU_ConfigRegion_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  339 #endif /* __MPU_PRESENT */
//  340 
//  341 /**
//  342   * @brief  Gets the priority grouping field from the NVIC Interrupt Controller.
//  343   * @retval Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field)
//  344   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function HAL_NVIC_GetPriorityGrouping
        THUMB
//  345 uint32_t HAL_NVIC_GetPriorityGrouping(void)
//  346 {
HAL_NVIC_GetPriorityGrouping:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  347   /* Get the PRIGROUP[10:8] field value */
//  348   return NVIC_GetPriorityGrouping();
          CFI FunCall NVIC_GetPriorityGrouping
        BL       NVIC_GetPriorityGrouping
        POP      {R1,PC}          ;; return
//  349 }
          CFI EndBlock cfiBlock21
//  350 
//  351 /**
//  352   * @brief  Gets the priority of an interrupt.
//  353   * @param  IRQn: External interrupt number
//  354   *         This parameter can be an enumerator of IRQn_Type enumeration
//  355   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))
//  356   * @param   PriorityGroup: the priority grouping bits length.
//  357   *         This parameter can be one of the following values:
//  358   *           @arg NVIC_PRIORITYGROUP_0: 0 bits for pre-emption priority
//  359   *                                      4 bits for subpriority
//  360   *           @arg NVIC_PRIORITYGROUP_1: 1 bits for pre-emption priority
//  361   *                                      3 bits for subpriority
//  362   *           @arg NVIC_PRIORITYGROUP_2: 2 bits for pre-emption priority
//  363   *                                      2 bits for subpriority
//  364   *           @arg NVIC_PRIORITYGROUP_3: 3 bits for pre-emption priority
//  365   *                                      1 bits for subpriority
//  366   *           @arg NVIC_PRIORITYGROUP_4: 4 bits for pre-emption priority
//  367   *                                      0 bits for subpriority
//  368   * @param  pPreemptPriority: Pointer on the Preemptive priority value (starting from 0).
//  369   * @param  pSubPriority: Pointer on the Subpriority value (starting from 0).
//  370   * @retval None
//  371   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function HAL_NVIC_GetPriority
        THUMB
//  372 void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
//  373 {
HAL_NVIC_GetPriority:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  374   /* Check the parameters */
//  375   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
//  376  /* Get priority for Cortex-M system or device specific interrupts */
//  377   NVIC_DecodePriority(NVIC_GetPriority(IRQn), PriorityGroup, pPreemptPriority, pSubPriority);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_GetPriority
        BL       NVIC_GetPriority
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
          CFI FunCall NVIC_DecodePriority
        BL       NVIC_DecodePriority
//  378 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock22
//  379 
//  380 /**
//  381   * @brief  Sets Pending bit of an external interrupt.
//  382   * @param  IRQn External interrupt number
//  383   *         This parameter can be an enumerator of IRQn_Type enumeration
//  384   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))  
//  385   * @retval None
//  386   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function HAL_NVIC_SetPendingIRQ
        THUMB
//  387 void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn)
//  388 { 
HAL_NVIC_SetPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  389   /* Set interrupt pending */
//  390   NVIC_SetPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_SetPendingIRQ
        BL       NVIC_SetPendingIRQ
//  391 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock23
//  392 
//  393 /**
//  394   * @brief Gets Pending Interrupt (reads the pending register in the NVIC 
//  395   *         and returns the pending bit for the specified interrupt).
//  396   * @param IRQn External interrupt number
//  397   *         This parameter can be an enumerator of IRQn_Type enumeration
//  398   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))  
//  399   * @retval status: - 0  Interrupt status is not pending.
//  400   *                 - 1  Interrupt status is pending.
//  401   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function HAL_NVIC_GetPendingIRQ
        THUMB
//  402 uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn)
//  403 { 
HAL_NVIC_GetPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  404   /* Return 1 if pending else 0 */
//  405   return NVIC_GetPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_GetPendingIRQ
        BL       NVIC_GetPendingIRQ
        POP      {R1,PC}          ;; return
//  406 }
          CFI EndBlock cfiBlock24
//  407 
//  408 /**
//  409   * @brief Clears the pending bit of an external interrupt.
//  410   * @param IRQn External interrupt number
//  411   *         This parameter can be an enumerator of IRQn_Type enumeration
//  412   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))  
//  413   * @retval None
//  414   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function HAL_NVIC_ClearPendingIRQ
        THUMB
//  415 void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn)
//  416 { 
HAL_NVIC_ClearPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  417   /* Clear pending interrupt */
//  418   NVIC_ClearPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_ClearPendingIRQ
        BL       NVIC_ClearPendingIRQ
//  419 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock25
//  420 
//  421 /**
//  422   * @brief Gets active interrupt ( reads the active register in NVIC and returns the active bit).
//  423   * @param IRQn External interrupt number
//  424   *         This parameter can be an enumerator of IRQn_Type enumeration
//  425   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l1xxxx.h))  
//  426   * @retval status: - 0  Interrupt status is not pending.
//  427   *                 - 1  Interrupt status is pending.
//  428   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function HAL_NVIC_GetActive
        THUMB
//  429 uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn)
//  430 { 
HAL_NVIC_GetActive:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  431   /* Return 1 if active else 0 */
//  432   return NVIC_GetActive(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_GetActive
        BL       NVIC_GetActive
        POP      {R1,PC}          ;; return
//  433 }
          CFI EndBlock cfiBlock26
//  434 
//  435 /**
//  436   * @brief  Configures the SysTick clock source.
//  437   * @param  CLKSource: specifies the SysTick clock source.
//  438   *         This parameter can be one of the following values:
//  439   *             @arg SYSTICK_CLKSOURCE_HCLK_DIV8: AHB clock divided by 8 selected as SysTick clock source.
//  440   *             @arg SYSTICK_CLKSOURCE_HCLK: AHB clock selected as SysTick clock source.
//  441   * @retval None
//  442   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function HAL_SYSTICK_CLKSourceConfig
          CFI NoCalls
        THUMB
//  443 void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource)
//  444 {
//  445   /* Check the parameters */
//  446   assert_param(IS_SYSTICK_CLK_SOURCE(CLKSource));
//  447   if (CLKSource == SYSTICK_CLKSOURCE_HCLK)
HAL_SYSTICK_CLKSourceConfig:
        CMP      R0,#+4
        BNE.N    ??HAL_SYSTICK_CLKSourceConfig_0
//  448   {
//  449     SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
        LDR.N    R0,??DataTable13_12  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_12  ;; 0xe000e010
        STR      R0,[R1, #+0]
        B.N      ??HAL_SYSTICK_CLKSourceConfig_1
//  450   }
//  451   else
//  452   {
//  453     SysTick->CTRL &= ~SYSTICK_CLKSOURCE_HCLK;
??HAL_SYSTICK_CLKSourceConfig_0:
        LDR.N    R0,??DataTable13_12  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_12  ;; 0xe000e010
        STR      R0,[R1, #+0]
//  454   }
//  455 }
??HAL_SYSTICK_CLKSourceConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0xe000e200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0xe000e300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x5fa0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     0xe000ed98

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     0xe000ed9c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     0xe000eda0
//  456 
//  457 /**
//  458   * @brief  This function handles SYSTICK interrupt request.
//  459   * @retval None
//  460   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function HAL_SYSTICK_IRQHandler
        THUMB
//  461 void HAL_SYSTICK_IRQHandler(void)
//  462 {
HAL_SYSTICK_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  463   HAL_SYSTICK_Callback();
          CFI FunCall HAL_SYSTICK_Callback
        BL       HAL_SYSTICK_Callback
//  464 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock28
//  465 
//  466 /**
//  467   * @brief  SYSTICK callback.
//  468   * @retval None
//  469   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function HAL_SYSTICK_Callback
          CFI NoCalls
        THUMB
//  470 __weak void HAL_SYSTICK_Callback(void)
//  471 {
//  472   /* NOTE : This function Should not be modified, when the callback is needed,
//  473             the HAL_SYSTICK_Callback could be implemented in the user file
//  474    */
//  475 }
HAL_SYSTICK_Callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock29

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  476 
//  477 /**
//  478   * @}
//  479   */
//  480 
//  481 /**
//  482   * @}
//  483   */
//  484 
//  485 #endif /* HAL_CORTEX_MODULE_ENABLED */
//  486 /**
//  487   * @}
//  488   */
//  489 
//  490 /**
//  491   * @}
//  492   */
//  493 
//  494 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 778 bytes in section .text
// 
// 778 bytes of CODE memory
//
//Errors: none
//Warnings: none
