///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:26
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\CMSIS\Device\ST\STM32L1xx\Source\Templates\system_stm32l1xx.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\CMSIS\Device\ST\STM32L1xx\Source\Templates\system_stm32l1xx.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\system_stm32l1xx.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC AHBPrescTable
        PUBLIC APBPrescTable
        PUBLIC PLLMulTable
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\CMSIS\Device\ST\STM32L1xx\Source\Templates\system_stm32l1xx.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    system_stm32l1xx.c
//    4   * @author  MCD Application Team
//    5   * @version V2.2.0
//    6   * @date    01-July-2016
//    7   * @brief   CMSIS Cortex-M3 Device Peripheral Access Layer System Source File.
//    8   *             
//    9   *   This file provides two functions and one global variable to be called from 
//   10   *   user application:
//   11   *      - SystemInit(): This function is called at startup just after reset and 
//   12   *                      before branch to main program. This call is made inside
//   13   *                      the "startup_stm32l1xx.s" file.
//   14   *                        
//   15   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
//   16   *                                  by the user application to setup the SysTick 
//   17   *                                  timer or configure other parameters.
//   18   *                                     
//   19   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
//   20   *                                 be called whenever the core clock is changed
//   21   *                                 during program execution.   
//   22   *      
//   23   ******************************************************************************
//   24   * @attention
//   25   *
//   26   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   27   *
//   28   * Redistribution and use in source and binary forms, with or without modification,
//   29   * are permitted provided that the following conditions are met:
//   30   *   1. Redistributions of source code must retain the above copyright notice,
//   31   *      this list of conditions and the following disclaimer.
//   32   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   33   *      this list of conditions and the following disclaimer in the documentation
//   34   *      and/or other materials provided with the distribution.
//   35   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   36   *      may be used to endorse or promote products derived from this software
//   37   *      without specific prior written permission.
//   38   *
//   39   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   40   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   41   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   42   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   43   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   44   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   45   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   46   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   47   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   48   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   49   *
//   50   ******************************************************************************
//   51   */
//   52 
//   53 /** @addtogroup CMSIS
//   54   * @{
//   55   */
//   56 
//   57 /** @addtogroup stm32l1xx_system
//   58   * @{
//   59   */  
//   60   
//   61 /** @addtogroup STM32L1xx_System_Private_Includes
//   62   * @{
//   63   */
//   64 
//   65 #include "stm32l1xx.h"
//   66 
//   67 /**
//   68   * @}
//   69   */
//   70 
//   71 /** @addtogroup STM32L1xx_System_Private_TypesDefinitions
//   72   * @{
//   73   */
//   74 
//   75 /**
//   76   * @}
//   77   */
//   78 
//   79 /** @addtogroup STM32L1xx_System_Private_Defines
//   80   * @{
//   81   */
//   82 #if !defined  (HSE_VALUE) 
//   83   #define HSE_VALUE    ((uint32_t)8000000) /*!< Default value of the External oscillator in Hz.
//   84                                                 This value can be provided and adapted by the user application. */
//   85 #endif /* HSE_VALUE */
//   86 
//   87 #if !defined  (HSI_VALUE)
//   88   #define HSI_VALUE    ((uint32_t)8000000) /*!< Default value of the Internal oscillator in Hz.
//   89                                                 This value can be provided and adapted by the user application. */
//   90 #endif /* HSI_VALUE */
//   91 
//   92 /*!< Uncomment the following line if you need to use external SRAM mounted
//   93      on STM32L152D_EVAL board as data memory  */
//   94 /* #define DATA_IN_ExtSRAM */
//   95   
//   96 /*!< Uncomment the following line if you need to relocate your vector Table in
//   97      Internal SRAM. */ 
//   98 /* #define VECT_TAB_SRAM */
//   99 #define VECT_TAB_OFFSET  0x0 /*!< Vector Table base offset field. 
//  100                                   This value must be a multiple of 0x200. */
//  101 /**
//  102   * @}
//  103   */
//  104 
//  105 /** @addtogroup STM32L1xx_System_Private_Macros
//  106   * @{
//  107   */
//  108 
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /** @addtogroup STM32L1xx_System_Private_Variables
//  114   * @{
//  115   */
//  116   /* This variable is updated in three ways:
//  117       1) by calling CMSIS function SystemCoreClockUpdate()
//  118       2) by calling HAL API function HAL_RCC_GetHCLKFreq()
//  119       3) each time HAL_RCC_ClockConfig() is called to configure the system clock frequency
//  120          Note: If you use this function to configure the system clock; then there
//  121                is no need to call the 2 first functions listed above, since SystemCoreClock
//  122                variable is updated automatically.
//  123   */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  124 uint32_t SystemCoreClock        = 2097000;
SystemCoreClock:
        DC32 2097000

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  125 const uint8_t PLLMulTable[9]    = {3, 4, 6, 8, 12, 16, 24, 32, 48};
PLLMulTable:
        DC8 3, 4, 6, 8, 12, 16, 24, 32, 48, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  126 const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
AHBPrescTable:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  127 const uint8_t APBPrescTable[8]  = {0, 0, 0, 0, 1, 2, 3, 4};
APBPrescTable:
        DC8 0, 0, 0, 0, 1, 2, 3, 4
//  128 
//  129 /**
//  130   * @}
//  131   */
//  132 
//  133 /** @addtogroup STM32L1xx_System_Private_FunctionPrototypes
//  134   * @{
//  135   */
//  136 
//  137 #if defined (STM32L151xD) || defined (STM32L152xD) || defined (STM32L162xD)
//  138 #ifdef DATA_IN_ExtSRAM
//  139   static void SystemInit_ExtMemCtl(void); 
//  140 #endif /* DATA_IN_ExtSRAM */
//  141 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
//  142 
//  143 /**
//  144   * @}
//  145   */
//  146 
//  147 /** @addtogroup STM32L1xx_System_Private_Functions
//  148   * @{
//  149   */
//  150 
//  151 /**
//  152   * @brief  Setup the microcontroller system.
//  153   *         Initialize the Embedded Flash Interface, the PLL and update the 
//  154   *         SystemCoreClock variable.
//  155   * @param  None
//  156   * @retval None
//  157   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SystemInit
          CFI NoCalls
        THUMB
//  158 void SystemInit (void)
//  159 {
//  160   /*!< Set MSION bit */
//  161   RCC->CR |= (uint32_t)0x00000100;
SystemInit:
        LDR.N    R0,??DataTable1  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable1  ;; 0x40023800
        STR      R0,[R1, #+0]
//  162 
//  163   /*!< Reset SW[1:0], HPRE[3:0], PPRE1[2:0], PPRE2[2:0], MCOSEL[2:0] and MCOPRE[2:0] bits */
//  164   RCC->CFGR &= (uint32_t)0x88FFC00C;
        LDR.N    R0,??DataTable1_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x88ffc00c
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_1  ;; 0x40023808
        STR      R0,[R1, #+0]
//  165   
//  166   /*!< Reset HSION, HSEON, CSSON and PLLON bits */
//  167   RCC->CR &= (uint32_t)0xEEFEFFFE;
        LDR.N    R0,??DataTable1  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0xeefefffe
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1  ;; 0x40023800
        STR      R0,[R1, #+0]
//  168 
//  169   /*!< Reset HSEBYP bit */
//  170   RCC->CR &= (uint32_t)0xFFFBFFFF;
        LDR.N    R0,??DataTable1  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable1  ;; 0x40023800
        STR      R0,[R1, #+0]
//  171 
//  172   /*!< Reset PLLSRC, PLLMUL[3:0] and PLLDIV[1:0] bits */
//  173   RCC->CFGR &= (uint32_t)0xFF02FFFF;
        LDR.N    R0,??DataTable1_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xFD0000
        LDR.N    R1,??DataTable1_1  ;; 0x40023808
        STR      R0,[R1, #+0]
//  174 
//  175   /*!< Disable all interrupts */
//  176   RCC->CIR = 0x00000000;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4  ;; 0x4002380c
        STR      R0,[R1, #+0]
//  177 
//  178 #ifdef DATA_IN_ExtSRAM
//  179   SystemInit_ExtMemCtl(); 
//  180 #endif /* DATA_IN_ExtSRAM */
//  181     
//  182 #ifdef VECT_TAB_SRAM
//  183   SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
//  184 #else
//  185   SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */
        MOVS     R0,#+134217728
        LDR.N    R1,??DataTable1_5  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//  186 #endif
//  187 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  188 
//  189 /**
//  190   * @brief  Update SystemCoreClock according to Clock Register Values
//  191   *         The SystemCoreClock variable contains the core clock (HCLK), it can
//  192   *         be used by the user application to setup the SysTick timer or configure
//  193   *         other parameters.
//  194   *           
//  195   * @note   Each time the core clock (HCLK) changes, this function must be called
//  196   *         to update SystemCoreClock variable value. Otherwise, any configuration
//  197   *         based on this variable will be incorrect.         
//  198   *     
//  199   * @note   - The system frequency computed by this function is not the real 
//  200   *           frequency in the chip. It is calculated based on the predefined 
//  201   *           constant and the selected clock source:
//  202   *             
//  203   *           - If SYSCLK source is MSI, SystemCoreClock will contain the MSI 
//  204   *             value as defined by the MSI range.
//  205   *                                   
//  206   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
//  207   *                                              
//  208   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
//  209   *                          
//  210   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**)
//  211   *             or HSI_VALUE(*) multiplied/divided by the PLL factors.
//  212   *         
//  213   *         (*) HSI_VALUE is a constant defined in stm32l1xx.h file (default value
//  214   *             16 MHz) but the real value may vary depending on the variations
//  215   *             in voltage and temperature.   
//  216   *    
//  217   *         (**) HSE_VALUE is a constant defined in stm32l1xx.h file (default value
//  218   *              8 MHz), user has to ensure that HSE_VALUE is same as the real
//  219   *              frequency of the crystal used. Otherwise, this function may
//  220   *              have wrong result.
//  221   *                
//  222   *         - The result of this function could be not correct when using fractional
//  223   *           value for HSE crystal.
//  224   * @param  None
//  225   * @retval None
//  226   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SystemCoreClockUpdate
          CFI NoCalls
        THUMB
//  227 void SystemCoreClockUpdate (void)
//  228 {
//  229   uint32_t tmp = 0, pllmul = 0, plldiv = 0, pllsource = 0, msirange = 0;
SystemCoreClockUpdate:
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R0,#+0
//  230 
//  231   /* Get SYSCLK source -------------------------------------------------------*/
//  232   tmp = RCC->CFGR & RCC_CFGR_SWS;
        LDR.N    R0,??DataTable1_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
//  233   
//  234   switch (tmp)
        CMP      R0,#+0
        BEQ.N    ??SystemCoreClockUpdate_0
        CMP      R0,#+4
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R0,#+8
        BEQ.N    ??SystemCoreClockUpdate_2
        CMP      R0,#+12
        BEQ.N    ??SystemCoreClockUpdate_3
        B.N      ??SystemCoreClockUpdate_4
//  235   {
//  236     case 0x00:  /* MSI used as system clock */
//  237       msirange = (RCC->ICSCR & RCC_ICSCR_MSIRANGE) >> 13;
??SystemCoreClockUpdate_0:
        LDR.N    R0,??DataTable1_6  ;; 0x40023804
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+13,#+3
//  238       SystemCoreClock = (32768 * (1 << (msirange + 1)));
        MOVS     R1,#+1
        ADDS     R0,R0,#+1
        LSLS     R0,R1,R0
        MOV      R1,#+32768
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  239       break;
        B.N      ??SystemCoreClockUpdate_5
//  240     case 0x04:  /* HSI used as system clock */
//  241       SystemCoreClock = HSI_VALUE;
??SystemCoreClockUpdate_1:
        LDR.N    R0,??DataTable1_8  ;; 0xf42400
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  242       break;
        B.N      ??SystemCoreClockUpdate_5
//  243     case 0x08:  /* HSE used as system clock */
//  244       SystemCoreClock = HSE_VALUE;
??SystemCoreClockUpdate_2:
        LDR.N    R0,??DataTable1_9  ;; 0x16e3600
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  245       break;
        B.N      ??SystemCoreClockUpdate_5
//  246     case 0x0C:  /* PLL used as system clock */
//  247       /* Get PLL clock source and multiplication factor ----------------------*/
//  248       pllmul = RCC->CFGR & RCC_CFGR_PLLMUL;
??SystemCoreClockUpdate_3:
        LDR.N    R0,??DataTable1_1  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3C0000
//  249       plldiv = RCC->CFGR & RCC_CFGR_PLLDIV;
        LDR.N    R1,??DataTable1_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0xC00000
//  250       pllmul = PLLMulTable[(pllmul >> 18)];
        LDR.N    R2,??DataTable1_10
        LSRS     R0,R0,#+18
        LDRB     R0,[R0, R2]
//  251       plldiv = (plldiv >> 22) + 1;
        LSRS     R1,R1,#+22
        ADDS     R1,R1,#+1
//  252       
//  253       pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
        LDR.N    R2,??DataTable1_1  ;; 0x40023808
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x10000
//  254 
//  255       if (pllsource == 0x00)
        CMP      R2,#+0
        BNE.N    ??SystemCoreClockUpdate_6
//  256       {
//  257         /* HSI oscillator clock selected as PLL clock entry */
//  258         SystemCoreClock = (((HSI_VALUE) * pllmul) / plldiv);
        LDR.N    R2,??DataTable1_8  ;; 0xf42400
        MULS     R0,R2,R0
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
        B.N      ??SystemCoreClockUpdate_7
//  259       }
//  260       else
//  261       {
//  262         /* HSE selected as PLL clock entry */
//  263         SystemCoreClock = (((HSE_VALUE) * pllmul) / plldiv);
??SystemCoreClockUpdate_6:
        LDR.N    R2,??DataTable1_9  ;; 0x16e3600
        MULS     R0,R2,R0
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  264       }
//  265       break;
??SystemCoreClockUpdate_7:
        B.N      ??SystemCoreClockUpdate_5
//  266     default: /* MSI used as system clock */
//  267       msirange = (RCC->ICSCR & RCC_ICSCR_MSIRANGE) >> 13;
??SystemCoreClockUpdate_4:
        LDR.N    R0,??DataTable1_6  ;; 0x40023804
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+13,#+3
//  268       SystemCoreClock = (32768 * (1 << (msirange + 1)));
        MOVS     R1,#+1
        ADDS     R0,R0,#+1
        LSLS     R0,R1,R0
        MOV      R1,#+32768
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+0]
//  269       break;
//  270   }
//  271   /* Compute HCLK clock frequency --------------------------------------------*/
//  272   /* Get HCLK prescaler */
//  273   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
??SystemCoreClockUpdate_5:
        LDR.N    R0,??DataTable1_11
        LDR.N    R1,??DataTable1_1  ;; 0x40023808
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+4,#+4
        LDRB     R0,[R1, R0]
//  274   /* HCLK clock frequency */
//  275   SystemCoreClock >>= tmp;
        LDR.N    R1,??DataTable1_7
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,R0
        LDR.N    R0,??DataTable1_7
        STR      R1,[R0, #+0]
//  276 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x88ffc00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xeefefffe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x16e3600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     PLLMulTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
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
//  277 
//  278 #if defined (STM32L151xD) || defined (STM32L152xD) || defined (STM32L162xD)
//  279 #ifdef DATA_IN_ExtSRAM
//  280 /**
//  281   * @brief  Setup the external memory controller.
//  282   *         Called in SystemInit() function before jump to main.
//  283   *         This function configures the external SRAM mounted on STM32L152D_EVAL board
//  284   *         This SRAM will be used as program data memory (including heap and stack).
//  285   * @param  None
//  286   * @retval None
//  287   */
//  288 void SystemInit_ExtMemCtl(void)
//  289 {
//  290   __IO uint32_t tmpreg = 0;
//  291 
//  292   /* Flash 1 wait state */
//  293   FLASH->ACR |= FLASH_ACR_LATENCY;
//  294   
//  295   /* Power enable */
//  296   RCC->APB1ENR |= RCC_APB1ENR_PWREN;
//  297   
//  298   /* Delay after an RCC peripheral clock enabling */
//  299   tmpreg = READ_BIT(RCC->APB1ENR, RCC_APB1ENR_PWREN);
//  300 
//  301   /* Select the Voltage Range 1 (1.8 V) */
//  302   PWR->CR = PWR_CR_VOS_0;
//  303   
//  304   /* Wait Until the Voltage Regulator is ready */
//  305   while((PWR->CSR & PWR_CSR_VOSF) != RESET)
//  306   {
//  307   }
//  308   
//  309 /*-- GPIOs Configuration -----------------------------------------------------*/
//  310 /*
//  311  +-------------------+--------------------+------------------+------------------+
//  312  +                       SRAM pins assignment                                   +
//  313  +-------------------+--------------------+------------------+------------------+
//  314  | PD0  <-> FSMC_D2  | PE0  <-> FSMC_NBL0 | PF0  <-> FSMC_A0 | PG0 <-> FSMC_A10 |
//  315  | PD1  <-> FSMC_D3  | PE1  <-> FSMC_NBL1 | PF1  <-> FSMC_A1 | PG1 <-> FSMC_A11 |
//  316  | PD4  <-> FSMC_NOE | PE7  <-> FSMC_D4   | PF2  <-> FSMC_A2 | PG2 <-> FSMC_A12 |
//  317  | PD5  <-> FSMC_NWE | PE8  <-> FSMC_D5   | PF3  <-> FSMC_A3 | PG3 <-> FSMC_A13 |
//  318  | PD8  <-> FSMC_D13 | PE9  <-> FSMC_D6   | PF4  <-> FSMC_A4 | PG4 <-> FSMC_A14 |
//  319  | PD9  <-> FSMC_D14 | PE10 <-> FSMC_D7   | PF5  <-> FSMC_A5 | PG5 <-> FSMC_A15 |
//  320  | PD10 <-> FSMC_D15 | PE11 <-> FSMC_D8   | PF12 <-> FSMC_A6 | PG10<-> FSMC_NE2 |
//  321  | PD11 <-> FSMC_A16 | PE12 <-> FSMC_D9   | PF13 <-> FSMC_A7 |------------------+
//  322  | PD12 <-> FSMC_A17 | PE13 <-> FSMC_D10  | PF14 <-> FSMC_A8 | 
//  323  | PD13 <-> FSMC_A18 | PE14 <-> FSMC_D11  | PF15 <-> FSMC_A9 | 
//  324  | PD14 <-> FSMC_D0  | PE15 <-> FSMC_D12  |------------------+
//  325  | PD15 <-> FSMC_D1  |--------------------+ 
//  326  +-------------------+
//  327 */
//  328 
//  329   /* Enable GPIOD, GPIOE, GPIOF and GPIOG interface clock */
//  330   RCC->AHBENR   = 0x000080D8;
//  331   
//  332   /* Delay after an RCC peripheral clock enabling */
//  333   tmpreg = READ_BIT(RCC->AHBENR, RCC_AHBENR_GPIODEN);
//  334   
//  335   /* Connect PDx pins to FSMC Alternate function */
//  336   GPIOD->AFR[0]  = 0x00CC00CC;
//  337   GPIOD->AFR[1]  = 0xCCCCCCCC;
//  338   /* Configure PDx pins in Alternate function mode */  
//  339   GPIOD->MODER   = 0xAAAA0A0A;
//  340   /* Configure PDx pins speed to 40 MHz */  
//  341   GPIOD->OSPEEDR = 0xFFFF0F0F;
//  342   /* Configure PDx pins Output type to push-pull */  
//  343   GPIOD->OTYPER  = 0x00000000;
//  344   /* No pull-up, pull-down for PDx pins */ 
//  345   GPIOD->PUPDR   = 0x00000000;
//  346 
//  347   /* Connect PEx pins to FSMC Alternate function */
//  348   GPIOE->AFR[0]  = 0xC00000CC;
//  349   GPIOE->AFR[1]  = 0xCCCCCCCC;
//  350   /* Configure PEx pins in Alternate function mode */ 
//  351   GPIOE->MODER   = 0xAAAA800A;
//  352   /* Configure PEx pins speed to 40 MHz */ 
//  353   GPIOE->OSPEEDR = 0xFFFFC00F;
//  354   /* Configure PEx pins Output type to push-pull */  
//  355   GPIOE->OTYPER  = 0x00000000;
//  356   /* No pull-up, pull-down for PEx pins */ 
//  357   GPIOE->PUPDR   = 0x00000000;
//  358 
//  359   /* Connect PFx pins to FSMC Alternate function */
//  360   GPIOF->AFR[0]  = 0x00CCCCCC;
//  361   GPIOF->AFR[1]  = 0xCCCC0000;
//  362   /* Configure PFx pins in Alternate function mode */   
//  363   GPIOF->MODER   = 0xAA000AAA;
//  364   /* Configure PFx pins speed to 40 MHz */ 
//  365   GPIOF->OSPEEDR = 0xFF000FFF;
//  366   /* Configure PFx pins Output type to push-pull */  
//  367   GPIOF->OTYPER  = 0x00000000;
//  368   /* No pull-up, pull-down for PFx pins */ 
//  369   GPIOF->PUPDR   = 0x00000000;
//  370 
//  371   /* Connect PGx pins to FSMC Alternate function */
//  372   GPIOG->AFR[0]  = 0x00CCCCCC;
//  373   GPIOG->AFR[1]  = 0x00000C00;
//  374   /* Configure PGx pins in Alternate function mode */ 
//  375   GPIOG->MODER   = 0x00200AAA;
//  376   /* Configure PGx pins speed to 40 MHz */ 
//  377   GPIOG->OSPEEDR = 0x00300FFF;
//  378   /* Configure PGx pins Output type to push-pull */  
//  379   GPIOG->OTYPER  = 0x00000000;
//  380   /* No pull-up, pull-down for PGx pins */ 
//  381   GPIOG->PUPDR   = 0x00000000;
//  382   
//  383 /*-- FSMC Configuration ------------------------------------------------------*/
//  384   /* Enable the FSMC interface clock */
//  385   RCC->AHBENR    = 0x400080D8;
//  386 
//  387   /* Delay after an RCC peripheral clock enabling */
//  388   tmpreg = READ_BIT(RCC->AHBENR, RCC_AHBENR_FSMCEN);
//  389   
//  390   (void)(tmpreg);
//  391   
//  392   /* Configure and enable Bank1_SRAM3 */
//  393   FSMC_Bank1->BTCR[4]  = 0x00001011;
//  394   FSMC_Bank1->BTCR[5]  = 0x00000300;
//  395   FSMC_Bank1E->BWTR[4] = 0x0FFFFFFF;
//  396 /*
//  397   Bank1_SRAM3 is configured as follow:
//  398 
//  399   p.FSMC_AddressSetupTime = 0;
//  400   p.FSMC_AddressHoldTime = 0;
//  401   p.FSMC_DataSetupTime = 3;
//  402   p.FSMC_BusTurnAroundDuration = 0;
//  403   p.FSMC_CLKDivision = 0;
//  404   p.FSMC_DataLatency = 0;
//  405   p.FSMC_AccessMode = FSMC_AccessMode_A;
//  406 
//  407   FSMC_NORSRAMInitStructure.FSMC_Bank = FSMC_Bank1_NORSRAM3;
//  408   FSMC_NORSRAMInitStructure.FSMC_DataAddressMux = FSMC_DataAddressMux_Disable;
//  409   FSMC_NORSRAMInitStructure.FSMC_MemoryType = FSMC_MemoryType_SRAM;
//  410   FSMC_NORSRAMInitStructure.FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_16b;
//  411   FSMC_NORSRAMInitStructure.FSMC_BurstAccessMode = FSMC_BurstAccessMode_Disable;
//  412   FSMC_NORSRAMInitStructure.FSMC_AsynchronousWait = FSMC_AsynchronousWait_Disable;
//  413   FSMC_NORSRAMInitStructure.FSMC_WaitSignalPolarity = FSMC_WaitSignalPolarity_Low;
//  414   FSMC_NORSRAMInitStructure.FSMC_WrapMode = FSMC_WrapMode_Disable;
//  415   FSMC_NORSRAMInitStructure.FSMC_WaitSignalActive = FSMC_WaitSignalActive_BeforeWaitState;
//  416   FSMC_NORSRAMInitStructure.FSMC_WriteOperation = FSMC_WriteOperation_Enable;
//  417   FSMC_NORSRAMInitStructure.FSMC_WaitSignal = FSMC_WaitSignal_Disable;
//  418   FSMC_NORSRAMInitStructure.FSMC_ExtendedMode = FSMC_ExtendedMode_Disable;
//  419   FSMC_NORSRAMInitStructure.FSMC_WriteBurst = FSMC_WriteBurst_Disable;
//  420   FSMC_NORSRAMInitStructure.FSMC_ReadWriteTimingStruct = &p;
//  421   FSMC_NORSRAMInitStructure.FSMC_WriteTimingStruct = &p;
//  422 
//  423   FSMC_NORSRAMInit(&FSMC_NORSRAMInitStructure); 
//  424 
//  425   FSMC_NORSRAMCmd(FSMC_Bank1_NORSRAM3, ENABLE);
//  426 */
//  427   
//  428 }
//  429 #endif /* DATA_IN_ExtSRAM */
//  430 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
//  431 
//  432 /**
//  433   * @}
//  434   */
//  435 
//  436 /**
//  437   * @}
//  438   */
//  439 
//  440 /**
//  441   * @}
//  442   */
//  443 
//  444 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//   4 bytes in section .data
//  36 bytes in section .rodata
// 320 bytes in section .text
// 
// 320 bytes of CODE  memory
//  36 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
