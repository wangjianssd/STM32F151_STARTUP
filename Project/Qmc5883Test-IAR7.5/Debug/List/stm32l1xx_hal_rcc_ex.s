///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_rcc_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GetTick

        PUBLIC HAL_RCCEx_DisableLSECSS
        PUBLIC HAL_RCCEx_EnableLSECSS
        PUBLIC HAL_RCCEx_EnableLSECSS_IT
        PUBLIC HAL_RCCEx_GetPeriphCLKConfig
        PUBLIC HAL_RCCEx_GetPeriphCLKFreq
        PUBWEAK HAL_RCCEx_LSECSS_Callback
        PUBLIC HAL_RCCEx_LSECSS_IRQHandler
        PUBLIC HAL_RCCEx_PeriphCLKConfig
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_rcc_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended RCC HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities RCC extension peripheral:
//   10   *           + Extended Peripheral Control functions
//   11   *
//   12   ******************************************************************************
//   13   * @attention
//   14   *
//   15   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   16   *
//   17   * Redistribution and use in source and binary forms, with or without modification,
//   18   * are permitted provided that the following conditions are met:
//   19   *   1. Redistributions of source code must retain the above copyright notice,
//   20   *      this list of conditions and the following disclaimer.
//   21   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   22   *      this list of conditions and the following disclaimer in the documentation
//   23   *      and/or other materials provided with the distribution.
//   24   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   25   *      may be used to endorse or promote products derived from this software
//   26   *      without specific prior written permission.
//   27   *
//   28   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   29   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   30   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   31   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   32   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   33   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   34   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   35   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   36   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   37   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   38   *
//   39   ******************************************************************************  
//   40   */ 
//   41 
//   42 /* Includes ------------------------------------------------------------------*/
//   43 #include "stm32l1xx_hal.h"
//   44 
//   45 /** @addtogroup STM32L1xx_HAL_Driver
//   46   * @{
//   47   */
//   48 
//   49 #ifdef HAL_RCC_MODULE_ENABLED
//   50 
//   51 /** @defgroup RCCEx RCCEx
//   52   * @brief RCC Extension HAL module driver
//   53   * @{
//   54   */
//   55 
//   56 /* Private typedef -----------------------------------------------------------*/
//   57 /* Private define ------------------------------------------------------------*/
//   58 /** @defgroup RCCEx_Private_Constants RCCEx Private Constants
//   59   * @{
//   60   */
//   61 /**
//   62   * @}
//   63   */
//   64   
//   65 /* Private macro -------------------------------------------------------------*/
//   66 /** @defgroup RCCEx_Private_Macros RCCEx Private Macros
//   67   * @{
//   68   */
//   69 /**
//   70   * @}
//   71   */
//   72 
//   73 /* Private variables ---------------------------------------------------------*/
//   74 /* Private function prototypes -----------------------------------------------*/
//   75 /* Private functions ---------------------------------------------------------*/
//   76 
//   77 /** @defgroup RCCEx_Exported_Functions RCCEx Exported Functions
//   78   * @{
//   79   */
//   80 
//   81 /** @defgroup RCCEx_Exported_Functions_Group1 Extended Peripheral Control functions 
//   82  *  @brief  Extended Peripheral Control functions  
//   83  *
//   84 @verbatim   
//   85  ===============================================================================
//   86                 ##### Extended Peripheral Control functions  #####
//   87  ===============================================================================  
//   88     [..]
//   89     This subsection provides a set of functions allowing to control the RCC Clocks 
//   90     frequencies.
//   91     [..] 
//   92     (@) Important note: Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to
//   93         select the RTC clock source; in this case the Backup domain will be reset in  
//   94         order to modify the RTC Clock source, as consequence RTC registers (including 
//   95         the backup registers) are set to their reset values.
//   96       
//   97 @endverbatim
//   98   * @{
//   99   */
//  100 
//  101 /**
//  102   * @brief  Initializes the RCC extended peripherals clocks according to the specified
//  103   *         parameters in the RCC_PeriphCLKInitTypeDef.
//  104   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
//  105   *         contains the configuration information for the Extended Peripherals clocks(RTC/LCD clock).
//  106   * @retval HAL status
//  107   * @note   If HAL_ERROR returned, first switch-OFF HSE clock oscillator with @ref HAL_RCC_OscConfig()
//  108   *         to possibly update HSE divider.
//  109   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_RCCEx_PeriphCLKConfig
        THUMB
//  110 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
//  111 {
HAL_RCCEx_PeriphCLKConfig:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVS     R4,R0
//  112   uint32_t tickstart = 0U;
        MOVS     R6,#+0
//  113   uint32_t temp_reg = 0U;
        MOVS     R0,#+0
//  114   
//  115   /* Check the parameters */
//  116   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
//  117   
//  118   /*------------------------------- RTC/LCD Configuration ------------------------*/ 
//  119   if ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC) 
//  120 #if defined(LCD)
//  121    || (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LCD) == RCC_PERIPHCLK_LCD)
//  122 #endif /* LCD */
//  123      )
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCCEx_PeriphCLKConfig_0
//  124   {
//  125     /* check for RTC Parameters used to output RTCCLK */
//  126     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC)
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
//  127     {
//  128       assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
//  129     }
//  130 
//  131 #if defined(LCD)
//  132     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LCD) == RCC_PERIPHCLK_LCD)
//  133     {
//  134       assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->LCDClockSelection));
//  135     }
//  136 #endif /* LCD */
//  137 
//  138     FlagStatus       pwrclkchanged = RESET;
??HAL_RCCEx_PeriphCLKConfig_1:
        MOVS     R5,#+0
//  139 
//  140     /* As soon as function is called to change RTC clock source, activation of the 
//  141        power domain is done. */
//  142     /* Requires to enable write access to Backup Domain of necessary */
//  143     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
        LDR.N    R0,??DataTable6  ;; 0x40023824
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_2
//  144     {
//  145       __HAL_RCC_PWR_CLK_ENABLE();
        LDR.N    R0,??DataTable6  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable6  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  146       pwrclkchanged = SET;
        MOVS     R5,#+1
//  147     }
//  148     
//  149     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCCEx_PeriphCLKConfig_2:
        LDR.N    R0,??DataTable6_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_3
//  150     {
//  151       /* Enable write access to Backup domain */
//  152       SET_BIT(PWR->CR, PWR_CR_DBP);
        LDR.N    R0,??DataTable6_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable6_1  ;; 0x40007000
        STR      R0,[R1, #+0]
//  153       
//  154       /* Wait for Backup domain Write protection disable */
//  155       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  156 
//  157       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCCEx_PeriphCLKConfig_4:
        LDR.N    R0,??DataTable6_1  ;; 0x40007000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_3
//  158       {
//  159         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R0,#+101
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_4
//  160         {
//  161           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_5
//  162         }
//  163       }
//  164     }
//  165 
//  166     /* Check if user wants to change HSE RTC prescaler whereas HSE is enabled */ 
//  167     temp_reg = (RCC->CR & RCC_CR_RTCPRE);
??HAL_RCCEx_PeriphCLKConfig_3:
        LDR.N    R0,??DataTable6_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x60000000
//  168     if ((temp_reg != (PeriphClkInit->RTCClockSelection & RCC_CR_RTCPRE))
//  169 #if defined (LCD)
//  170      || (temp_reg != (PeriphClkInit->LCDClockSelection & RCC_CR_RTCPRE))
//  171 #endif /* LCD */
//  172        )
        LDR      R1,[R4, #+4]
        ANDS     R1,R1,#0x60000000
        CMP      R0,R1
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_6
//  173     { /* Check HSE State */
//  174       if (((PeriphClkInit->RTCClockSelection & RCC_CSR_RTCSEL) == RCC_CSR_RTCSEL_HSE) && HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSERDY))
        LDR      R0,[R4, #+4]
        ANDS     R0,R0,#0x30000
        CMP      R0,#+196608
        BNE.N    ??HAL_RCCEx_PeriphCLKConfig_6
        LDR.N    R0,??DataTable6_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_6
//  175       {
//  176         /* To update HSE divider, first switch-OFF HSE clock oscillator*/
//  177         return HAL_ERROR; 
        MOVS     R0,#+1
        B.N      ??HAL_RCCEx_PeriphCLKConfig_5
//  178       }
//  179     }
//  180     
//  181     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */ 
//  182     temp_reg = (RCC->CSR & RCC_CSR_RTCSEL);
??HAL_RCCEx_PeriphCLKConfig_6:
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x30000
//  183     
//  184     if((temp_reg != 0x00000000U) && (((temp_reg != (PeriphClkInit->RTCClockSelection & RCC_CSR_RTCSEL)) \ 
//  185       && (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC))
//  186 #if defined(LCD)
//  187       || ((temp_reg != (PeriphClkInit->LCDClockSelection & RCC_CSR_RTCSEL)) \ 
//  188        && (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LCD) == RCC_PERIPHCLK_LCD))
//  189 #endif /* LCD */
//  190      ))
        CMP      R0,#+0
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_7
        LDR      R1,[R4, #+4]
        ANDS     R1,R1,#0x30000
        CMP      R0,R1
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_7
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_7
//  191     {
//  192       /* Store the content of CSR register before the reset of Backup Domain */
//  193       temp_reg = (RCC->CSR & ~(RCC_CSR_RTCSEL));
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x30000
//  194       
//  195       /* RTC Clock selection can be changed only if the Backup Domain is reset */
//  196       __HAL_RCC_BACKUPRESET_FORCE();
        MOVS     R1,#+1
        MOV      R2,#+256
        CLZ      R2,R2
        LDR.N    R3,??DataTable6_4  ;; 0x42470680
        STR      R1,[R3, R2, LSL #+2]
//  197       __HAL_RCC_BACKUPRESET_RELEASE();
        MOVS     R1,#+0
        MOV      R2,#+256
        CLZ      R2,R2
        LDR.N    R3,??DataTable6_4  ;; 0x42470680
        STR      R1,[R3, R2, LSL #+2]
//  198       
//  199       /* Restore the Content of CSR register */
//  200       RCC->CSR = temp_reg;
        LDR.N    R1,??DataTable6_3  ;; 0x40023834
        STR      R0,[R1, #+0]
//  201       
//  202        /* Wait for LSERDY if LSE was enabled */
//  203       if (HAL_IS_BIT_SET(temp_reg, RCC_CSR_LSEON))
        LSLS     R0,R0,#+23
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_7
//  204       {
//  205         /* Get Start Tick */
//  206         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  207         
//  208         /* Wait till LSE is ready */  
//  209         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
??HAL_RCCEx_PeriphCLKConfig_8:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_7
//  210         {
//  211           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_8
//  212           {
//  213             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_5
//  214           }
//  215         }
//  216       }
//  217     }
//  218     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
??HAL_RCCEx_PeriphCLKConfig_7:
        LDR      R0,[R4, #+4]
        ANDS     R0,R0,#0x30000
        CMP      R0,#+196608
        BNE.N    ??HAL_RCCEx_PeriphCLKConfig_9
        LDR.N    R0,??DataTable6_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x60000000
        LDR      R1,[R4, #+4]
        ANDS     R1,R1,#0x60000000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_2  ;; 0x40023800
        STR      R0,[R1, #+0]
??HAL_RCCEx_PeriphCLKConfig_9:
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+4]
        ANDS     R1,R1,#0x30000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_3  ;; 0x40023834
        STR      R0,[R1, #+0]
//  219 
//  220     /* Require to disable power clock if necessary */
//  221     if(pwrclkchanged == SET)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??HAL_RCCEx_PeriphCLKConfig_0
//  222     {
//  223       __HAL_RCC_PWR_CLK_DISABLE();
        LDR.N    R0,??DataTable6  ;; 0x40023824
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable6  ;; 0x40023824
        STR      R0,[R1, #+0]
//  224     }
//  225   }
//  226   
//  227   return HAL_OK;
??HAL_RCCEx_PeriphCLKConfig_0:
        MOVS     R0,#+0
??HAL_RCCEx_PeriphCLKConfig_5:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  228 }
          CFI EndBlock cfiBlock0
//  229 
//  230 /**
//  231   * @brief  Get the PeriphClkInit according to the internal RCC configuration registers.
//  232   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that 
//  233   *         returns the configuration information for the Extended Peripherals clocks(RTC/LCD clocks).
//  234   * @retval None
//  235   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_RCCEx_GetPeriphCLKConfig
          CFI NoCalls
        THUMB
//  236 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
//  237 {
//  238   uint32_t srcclk = 0;
HAL_RCCEx_GetPeriphCLKConfig:
        MOVS     R1,#+0
//  239   
//  240   /* Set all possible values for the extended clock type parameter------------*/
//  241   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_RTC;
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  242 #if defined(LCD)   
//  243   PeriphClkInit->PeriphClockSelection |= RCC_PERIPHCLK_LCD;
//  244 #endif /* LCD */
//  245 
//  246   /* Get the RTC/LCD configuration -----------------------------------------------*/
//  247   srcclk = __HAL_RCC_GET_RTC_SOURCE();
        LDR.N    R1,??DataTable6_3  ;; 0x40023834
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x30000
//  248   if (srcclk != RCC_RTCCLKSOURCE_HSE_DIV2)
        CMP      R1,#+196608
        BEQ.N    ??HAL_RCCEx_GetPeriphCLKConfig_0
//  249   {
//  250     /* Source clock is LSE or LSI*/
//  251     PeriphClkInit->RTCClockSelection = srcclk;
        STR      R1,[R0, #+4]
        B.N      ??HAL_RCCEx_GetPeriphCLKConfig_1
//  252   }
//  253   else
//  254   {
//  255     /* Source clock is HSE. Need to get the prescaler value*/
//  256     PeriphClkInit->RTCClockSelection = srcclk | (READ_BIT(RCC->CR, RCC_CR_RTCPRE));
??HAL_RCCEx_GetPeriphCLKConfig_0:
        LDR.N    R2,??DataTable6_2  ;; 0x40023800
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x60000000
        ORRS     R1,R2,R1
        STR      R1,[R0, #+4]
//  257   }
//  258 #if defined(LCD)
//  259   PeriphClkInit->LCDClockSelection = PeriphClkInit->RTCClockSelection;
//  260 #endif /* LCD */
//  261 }
??HAL_RCCEx_GetPeriphCLKConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  262 
//  263 /**
//  264   * @brief  Return the peripheral clock frequency
//  265   * @note   Return 0 if peripheral clock is unknown
//  266   * @param  PeriphClk Peripheral clock identifier
//  267   *         This parameter can be one of the following values:
//  268   *            @arg @ref RCC_PERIPHCLK_RTC      RTC peripheral clock
//  269   *            @arg @ref RCC_PERIPHCLK_LCD      LCD peripheral clock (*)
//  270   * @note   (*) means that this peripheral is not present on all the devices
//  271   * @retval Frequency in Hz (0: means that no available frequency for the peripheral)
//  272   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_RCCEx_GetPeriphCLKFreq
          CFI NoCalls
        THUMB
//  273 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
//  274 {
//  275   uint32_t temp_reg = 0U, clkprediv = 0U, frequency = 0U;
HAL_RCCEx_GetPeriphCLKFreq:
        MOVS     R1,#+0
        MOVS     R1,#+0
        MOVS     R1,#+0
//  276   uint32_t srcclk = 0U;
        MOVS     R2,#+0
//  277 
//  278   /* Check the parameters */
//  279   assert_param(IS_RCC_PERIPHCLOCK(PeriphClk));
//  280   
//  281   switch (PeriphClk)
        CMP      R0,#+1
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_0
//  282   {
//  283   case RCC_PERIPHCLK_RTC:
//  284 #if defined(LCD)
//  285   case RCC_PERIPHCLK_LCD:
//  286 #endif /* LCD */
//  287     {
//  288       /* Get RCC CSR configuration ------------------------------------------------------*/
//  289       temp_reg = RCC->CSR;
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R1,[R0, #+0]
//  290 
//  291       /* Get the current RTC source */
//  292       srcclk = __HAL_RCC_GET_RTC_SOURCE();
        LDR.N    R0,??DataTable6_3  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ANDS     R2,R0,#0x30000
//  293 
//  294       /* Check if LSE is ready if RTC clock selection is LSE */
//  295       if ((srcclk == RCC_RTCCLKSOURCE_LSE) && (HAL_IS_BIT_SET(temp_reg, RCC_CSR_LSERDY)))
        CMP      R2,#+65536
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_1
        LSLS     R0,R1,#+22
        BPL.N    ??HAL_RCCEx_GetPeriphCLKFreq_1
//  296       {
//  297         frequency = LSE_VALUE;
        MOV      R1,#+32768
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  298       }
//  299       /* Check if LSI is ready if RTC clock selection is LSI */
//  300       else if ((srcclk == RCC_RTCCLKSOURCE_LSI) && (HAL_IS_BIT_SET(temp_reg, RCC_CSR_LSIRDY)))
??HAL_RCCEx_GetPeriphCLKFreq_1:
        CMP      R2,#+131072
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_3
        LSLS     R0,R1,#+30
        BPL.N    ??HAL_RCCEx_GetPeriphCLKFreq_3
//  301       {
//  302         frequency = LSI_VALUE;
        MOVW     R1,#+37000
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  303       }
//  304       /* Check if HSE is ready and if RTC clock selection is HSE */
//  305       else if ((srcclk == RCC_RTCCLKSOURCE_HSE_DIVX) && (HAL_IS_BIT_SET(RCC->CR, RCC_CR_HSERDY)))
??HAL_RCCEx_GetPeriphCLKFreq_3:
        CMP      R2,#+196608
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_4
        LDR.N    R0,??DataTable6_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??HAL_RCCEx_GetPeriphCLKFreq_4
//  306       {
//  307         /* Get the current HSE clock divider */
//  308         clkprediv = __HAL_RCC_GET_RTC_HSE_PRESCALER();
        LDR.N    R0,??DataTable6_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ANDS     R1,R0,#0x60000000
//  309 
//  310         switch (clkprediv)
        CMP      R1,#+536870912
        BEQ.N    ??HAL_RCCEx_GetPeriphCLKFreq_5
        CMP      R1,#+1073741824
        BEQ.N    ??HAL_RCCEx_GetPeriphCLKFreq_6
        CMP      R1,#+1610612736
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_7
//  311         {
//  312           case RCC_RTC_HSE_DIV_16:  /* HSE DIV16 has been selected */
//  313           {
//  314             frequency = HSE_VALUE / 16U;
??HAL_RCCEx_GetPeriphCLKFreq_8:
        LDR.N    R1,??DataTable6_5  ;; 0x16e360
//  315             break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  316           }
//  317           case RCC_RTC_HSE_DIV_8:   /* HSE DIV8 has been selected  */
//  318           {
//  319             frequency = HSE_VALUE / 8U;
??HAL_RCCEx_GetPeriphCLKFreq_6:
        LDR.N    R1,??DataTable6_6  ;; 0x2dc6c0
//  320             break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  321           }
//  322           case RCC_RTC_HSE_DIV_4:   /* HSE DIV4 has been selected  */
//  323           {
//  324             frequency = HSE_VALUE / 4U;
??HAL_RCCEx_GetPeriphCLKFreq_5:
        LDR.N    R1,??DataTable6_7  ;; 0x5b8d80
//  325             break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  326           }
//  327           default:                  /* HSE DIV2 has been selected  */
//  328           {
//  329             frequency = HSE_VALUE / 2U;
??HAL_RCCEx_GetPeriphCLKFreq_7:
        LDR.N    R1,??DataTable6_8  ;; 0xb71b00
//  330             break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_2
//  331           }
//  332         }
//  333       }
//  334       /* Clock not enabled for RTC */
//  335       else
//  336       {
//  337         frequency = 0U;
??HAL_RCCEx_GetPeriphCLKFreq_4:
        MOVS     R1,#+0
//  338       }
//  339       break;
??HAL_RCCEx_GetPeriphCLKFreq_2:
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_9
//  340     }
//  341   default: 
//  342     {
//  343       break;
//  344     }
//  345   }
//  346   return(frequency);
??HAL_RCCEx_GetPeriphCLKFreq_0:
??HAL_RCCEx_GetPeriphCLKFreq_9:
        MOVS     R0,R1
        BX       LR               ;; return
//  347 }
          CFI EndBlock cfiBlock2
//  348 
//  349 #if defined(RCC_LSECSS_SUPPORT)
//  350 /**
//  351   * @brief  Enables the LSE Clock Security System.
//  352   * @note   If a failure is detected on the external 32 kHz oscillator, the LSE clock is no longer supplied
//  353   *         to the RTC but no hardware action is made to the registers.
//  354   *         In Standby mode a wakeup is generated. In other modes an interrupt can be sent to wakeup
//  355   *         the software (see Section 5.3.4: Clock interrupt register (RCC_CIR) on page 104).
//  356   *         The software MUST then disable the LSECSSON bit, stop the defective 32 kHz oscillator
//  357   *         (disabling LSEON), and can change the RTC clock source (no clock or LSI or HSE, with
//  358   *         RTCSEL), or take any required action to secure the application.  
//  359   * @note   LSE CSS available only for high density and medium+ devices
//  360   * @retval None
//  361   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_RCCEx_EnableLSECSS
          CFI NoCalls
        THUMB
//  362 void HAL_RCCEx_EnableLSECSS(void)
//  363 {
//  364   *(__IO uint32_t *) CSR_LSECSSON_BB = (uint32_t)ENABLE;
HAL_RCCEx_EnableLSECSS:
        MOVS     R0,#+1
        MOVS     R1,#+1048576
        CLZ      R1,R1
        LDR.N    R2,??DataTable6_4  ;; 0x42470680
        STR      R0,[R2, R1, LSL #+2]
//  365 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  366 
//  367 /**
//  368   * @brief  Disables the LSE Clock Security System.
//  369   * @note   Once enabled this bit cannot be disabled, except after an LSE failure detection 
//  370   *         (LSECSSD=1). In that case the software MUST disable the LSECSSON bit.
//  371   *         Reset by power on reset and RTC software reset (RTCRST bit).
//  372   * @note   LSE CSS available only for high density and medium+ devices
//  373   * @retval None
//  374   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_RCCEx_DisableLSECSS
          CFI NoCalls
        THUMB
//  375 void HAL_RCCEx_DisableLSECSS(void)
//  376 {
//  377   /* Disable LSE CSS */
//  378   *(__IO uint32_t *) CSR_LSECSSON_BB = (uint32_t)DISABLE;
HAL_RCCEx_DisableLSECSS:
        MOVS     R0,#+0
        MOVS     R1,#+1048576
        CLZ      R1,R1
        LDR.N    R2,??DataTable6_4  ;; 0x42470680
        STR      R0,[R2, R1, LSL #+2]
//  379 
//  380   /* Disable LSE CSS IT */
//  381   __HAL_RCC_DISABLE_IT(RCC_IT_LSECSS);
        LDR.N    R0,??DataTable6_9  ;; 0x4002380d
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xBF
        LDR.N    R1,??DataTable6_9  ;; 0x4002380d
        STRB     R0,[R1, #+0]
//  382 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  383 
//  384 /**
//  385   * @brief  Enable the LSE Clock Security System IT & corresponding EXTI line.
//  386   * @note   LSE Clock Security System IT is mapped on RTC EXTI line 19
//  387   * @retval None
//  388   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_RCCEx_EnableLSECSS_IT
          CFI NoCalls
        THUMB
//  389 void HAL_RCCEx_EnableLSECSS_IT(void)
//  390 {
//  391   /* Enable LSE CSS */
//  392   *(__IO uint32_t *) CSR_LSECSSON_BB = (uint32_t)ENABLE;
HAL_RCCEx_EnableLSECSS_IT:
        MOVS     R0,#+1
        MOVS     R1,#+1048576
        CLZ      R1,R1
        LDR.N    R2,??DataTable6_4  ;; 0x42470680
        STR      R0,[R2, R1, LSL #+2]
//  393 
//  394   /* Enable LSE CSS IT */
//  395   __HAL_RCC_ENABLE_IT(RCC_IT_LSECSS);
        LDR.N    R0,??DataTable6_9  ;; 0x4002380d
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable6_9  ;; 0x4002380d
        STRB     R0,[R1, #+0]
//  396   
//  397   /* Enable IT on EXTI Line 19 */
//  398   __HAL_RCC_LSECSS_EXTI_ENABLE_IT();
        LDR.N    R0,??DataTable6_10  ;; 0x40010400
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable6_10  ;; 0x40010400
        STR      R0,[R1, #+0]
//  399   __HAL_RCC_LSECSS_EXTI_ENABLE_RISING_EDGE();
        LDR.N    R0,??DataTable6_11  ;; 0x40010408
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable6_11  ;; 0x40010408
        STR      R0,[R1, #+0]
//  400 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  401 
//  402 /**
//  403   * @brief Handle the RCC LSE Clock Security System interrupt request.
//  404   * @retval None
//  405   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_RCCEx_LSECSS_IRQHandler
        THUMB
//  406 void HAL_RCCEx_LSECSS_IRQHandler(void)
//  407 {
HAL_RCCEx_LSECSS_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  408   /* Check RCC LSE CSSF flag  */
//  409   if(__HAL_RCC_GET_IT(RCC_IT_LSECSS))
        LDR.N    R0,??DataTable6_12  ;; 0x4002380c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??HAL_RCCEx_LSECSS_IRQHandler_0
//  410   {
//  411     /* RCC LSE Clock Security System interrupt user callback */
//  412     HAL_RCCEx_LSECSS_Callback();
          CFI FunCall HAL_RCCEx_LSECSS_Callback
        BL       HAL_RCCEx_LSECSS_Callback
//  413 
//  414     /* Clear RCC LSE CSS pending bit */
//  415     __HAL_RCC_CLEAR_IT(RCC_IT_LSECSS);
        MOVS     R0,#+64
        LDR.N    R1,??DataTable6_13  ;; 0x4002380e
        STRB     R0,[R1, #+0]
//  416   }
//  417 }                                                                            
??HAL_RCCEx_LSECSS_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40023824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40023834

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x42470680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x16e360

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x2dc6c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x5b8d80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0xb71b00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x4002380d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x40010408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x4002380e
//  418 
//  419 /**
//  420   * @brief  RCCEx LSE Clock Security System interrupt callback.
//  421   * @retval none
//  422   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_RCCEx_LSECSS_Callback
          CFI NoCalls
        THUMB
//  423 __weak void HAL_RCCEx_LSECSS_Callback(void)
//  424 {
//  425   /* NOTE : This function should not be modified, when the callback is needed,
//  426             the @ref HAL_RCCEx_LSECSS_Callback should be implemented in the user file
//  427    */
//  428 }
HAL_RCCEx_LSECSS_Callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  429 #endif /* RCC_LSECSS_SUPPORT */
//  430   
//  431 /**
//  432   * @}
//  433   */
//  434 
//  435 /**
//  436   * @}
//  437   */
//  438 
//  439 /**
//  440   * @}
//  441   */
//  442 
//  443 /**
//  444   * @}
//  445   */
//  446 
//  447 #endif /* HAL_RCC_MODULE_ENABLED */
//  448 /**
//  449   * @}
//  450   */
//  451 
//  452 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 688 bytes in section .text
// 
// 688 bytes of CODE memory
//
//Errors: none
//Warnings: none
