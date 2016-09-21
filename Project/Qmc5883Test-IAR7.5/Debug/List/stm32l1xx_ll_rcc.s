///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rcc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rcc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_rcc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rcc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_rcc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   RCC LL module driver.
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
//   37 #if defined(USE_FULL_LL_DRIVER)
//   38 
//   39 /* Includes ------------------------------------------------------------------*/
//   40 #include "stm32l1xx_ll_rcc.h"
//   41 /** @addtogroup STM32L1xx_LL_Driver
//   42   * @{
//   43   */
//   44 
//   45 #if defined(RCC)
//   46 
//   47 /** @defgroup RCC_LL RCC
//   48   * @{
//   49   */
//   50 
//   51 /* Private types -------------------------------------------------------------*/
//   52 /* Private variables ---------------------------------------------------------*/
//   53 
//   54 /* Private constants ---------------------------------------------------------*/
//   55 /* Private macros ------------------------------------------------------------*/
//   56 /* Private function prototypes -----------------------------------------------*/
//   57 /** @defgroup RCC_LL_Private_Functions RCC Private functions
//   58   * @{
//   59   */
//   60 uint32_t RCC_GetSystemClockFreq(void);
//   61 uint32_t RCC_GetHCLKClockFreq(uint32_t SYSCLK_Frequency);
//   62 uint32_t RCC_GetPCLK1ClockFreq(uint32_t HCLK_Frequency);
//   63 uint32_t RCC_GetPCLK2ClockFreq(uint32_t HCLK_Frequency);
//   64 uint32_t RCC_PLL_GetFreqDomain_SYS(void);
//   65 /**
//   66   * @}
//   67   */
//   68 
//   69 
//   70 /* Exported functions --------------------------------------------------------*/
//   71 /** @addtogroup RCC_LL_Exported_Functions
//   72   * @{
//   73   */
//   74 
//   75 /** @addtogroup RCC_LL_EF_Init
//   76   * @{
//   77   */
//   78 
//   79 /**
//   80   * @brief  Reset the RCC clock configuration to the default reset state.
//   81   * @note   The default reset state of the clock configuration is given below:
//   82   *         - MSI  ON and used as system clock source
//   83   *         - HSE, HSI and PLL OFF
//   84   *         - AHB, APB1 and APB2 prescaler set to 1.
//   85   *         - CSS, MCO OFF
//   86   *         - All interrupts disabled
//   87   * @note   This function doesn't modify the configuration of the
//   88   *         - Peripheral clocks
//   89   *         - LSI, LSE and RTC clocks
//   90   * @retval An ErrorStatus enumeration value:
//   91   *          - SUCCESS: RCC registers are de-initialized
//   92   *          - ERROR: not applicable
//   93   */
//   94 ErrorStatus LL_RCC_DeInit(void)
//   95 {
//   96   uint32_t vl_mask = 0U;
//   97 
//   98   /* Set MSION bit */
//   99   LL_RCC_MSI_Enable();
//  100 
//  101   /* Insure MSIRDY bit is set before writing default MSIRANGE value */
//  102   while (LL_RCC_MSI_IsReady() == 0U)
//  103   {
//  104     __NOP();
//  105   }
//  106 
//  107   /* Set MSIRANGE default value */
//  108   LL_RCC_MSI_SetRange(LL_RCC_MSIRANGE_5);
//  109   /* Set MSITRIM bits to the reset value*/
//  110   LL_RCC_MSI_SetCalibTrimming(0U);
//  111 
//  112   /* Set HSITRIM bits to the reset value*/
//  113   LL_RCC_HSI_SetCalibTrimming(0x10U);
//  114 
//  115   /* Reset SW, HPRE, PPRE and MCOSEL bits */
//  116   vl_mask = 0xFFFFFFFFU;
//  117   CLEAR_BIT(vl_mask, (RCC_CFGR_SW | RCC_CFGR_HPRE | RCC_CFGR_PPRE1 | RCC_CFGR_PPRE2 | RCC_CFGR_MCOSEL));
//  118   LL_RCC_WriteReg(CFGR, vl_mask);
//  119 
//  120   /* Reset HSION, HSEON, CSSON, PLLON bits */
//  121   vl_mask = 0xFFFFFFFFU;
//  122   CLEAR_BIT(vl_mask, (RCC_CR_PLLON | RCC_CR_CSSON | RCC_CR_HSEON | RCC_CR_HSION));
//  123   LL_RCC_WriteReg(CR, vl_mask);
//  124 
//  125   /* Reset HSEBYP bit */
//  126   LL_RCC_HSE_DisableBypass();
//  127  
//  128   /* Reset CFGR register */
//  129   LL_RCC_WriteReg(CFGR, 0x00000000U);
//  130 
//  131 
//  132   /* Clear pending flags */
//  133 #if defined(RCC_LSECSS_SUPPORT)
//  134   vl_mask = (LL_RCC_CIR_LSIRDYC | LL_RCC_CIR_LSERDYC | LL_RCC_CIR_HSIRDYC | LL_RCC_CIR_HSERDYC | LL_RCC_CIR_PLLRDYC | LL_RCC_CIR_MSIRDYC | LL_RCC_CIR_LSECSSC | LL_RCC_CIR_CSSC);
//  135 #else
//  136   vl_mask = (LL_RCC_CIR_LSIRDYC | LL_RCC_CIR_LSERDYC | LL_RCC_CIR_HSIRDYC | LL_RCC_CIR_HSERDYC | LL_RCC_CIR_PLLRDYC | LL_RCC_CIR_MSIRDYC | LL_RCC_CIR_CSSC);
//  137 #endif /* RCC_LSECSS_SUPPORT */
//  138   SET_BIT(RCC->CIR, vl_mask);
//  139 
//  140   /* Disable all interrupts */
//  141   LL_RCC_WriteReg(CIR, 0x00000000U);
//  142 
//  143   return SUCCESS;
//  144 }
//  145 
//  146 /**
//  147   * @}
//  148   */
//  149 
//  150 /** @addtogroup RCC_LL_EF_Get_Freq
//  151   * @brief  Return the frequencies of different on chip clocks;  System, AHB, APB1 and APB2 buses clocks
//  152   *         and different peripheral clocks available on the device.
//  153   * @note   If SYSCLK source is MSI, function returns values based on MSI clock(*)
//  154   * @note   If SYSCLK source is HSI, function returns values based on HSI_VALUE(**)
//  155   * @note   If SYSCLK source is HSE, function returns values based on HSE_VALUE(***)
//  156   * @note   If SYSCLK source is PLL, function returns values based on 
//  157   *         HSI_VALUE(**) or HSE_VALUE(***) multiplied/divided by the PLL factors.
//  158   * @note   (*) MSI clock depends on the selected MSI range but the real value
//  159   *             may vary depending on the variations in voltage and temperature. 
//  160   * @note   (**) HSI_VALUE is a defined constant but the real value may vary 
//  161   *              depending on the variations in voltage and temperature.
//  162   * @note   (***) HSE_VALUE is a defined constant, user has to ensure that
//  163   *               HSE_VALUE is same as the real frequency of the crystal used.
//  164   *               Otherwise, this function may have wrong result.
//  165   * @note   The result of this function could be incorrect when using fractional
//  166   *         value for HSE crystal.
//  167   * @note   This function can be used by the user application to compute the
//  168   *         baud-rate for the communication peripherals or configure other parameters.
//  169   * @{
//  170   */
//  171 
//  172 /**
//  173   * @brief  Return the frequencies of different on chip clocks;  System, AHB, APB1 and APB2 buses clocks
//  174   * @note   Each time SYSCLK, HCLK, PCLK1 and/or PCLK2 clock changes, this function
//  175   *         must be called to update structure fields. Otherwise, any
//  176   *         configuration based on this function will be incorrect.
//  177   * @param  RCC_Clocks pointer to a @ref LL_RCC_ClocksTypeDef structure which will hold the clocks frequencies
//  178   * @retval None
//  179   */
//  180 void LL_RCC_GetSystemClocksFreq(LL_RCC_ClocksTypeDef *RCC_Clocks)
//  181 {
//  182   /* Get SYSCLK frequency */
//  183   RCC_Clocks->SYSCLK_Frequency = RCC_GetSystemClockFreq();
//  184 
//  185   /* HCLK clock frequency */
//  186   RCC_Clocks->HCLK_Frequency   = RCC_GetHCLKClockFreq(RCC_Clocks->SYSCLK_Frequency);
//  187 
//  188   /* PCLK1 clock frequency */
//  189   RCC_Clocks->PCLK1_Frequency  = RCC_GetPCLK1ClockFreq(RCC_Clocks->HCLK_Frequency);
//  190 
//  191   /* PCLK2 clock frequency */
//  192   RCC_Clocks->PCLK2_Frequency  = RCC_GetPCLK2ClockFreq(RCC_Clocks->HCLK_Frequency);
//  193 }
//  194 
//  195 /**
//  196   * @}
//  197   */
//  198 
//  199 /**
//  200   * @}
//  201   */
//  202 
//  203 /** @addtogroup RCC_LL_Private_Functions
//  204   * @{
//  205   */
//  206 
//  207 /**
//  208   * @brief  Return SYSTEM clock frequency
//  209   * @retval SYSTEM clock frequency (in Hz)
//  210   */
//  211 uint32_t RCC_GetSystemClockFreq(void)
//  212 {
//  213   uint32_t frequency = 0U;
//  214 
//  215   /* Get SYSCLK source -------------------------------------------------------*/
//  216   switch (LL_RCC_GetSysClkSource())
//  217   {
//  218     case LL_RCC_SYS_CLKSOURCE_STATUS_MSI:  /* MSI used as system clock source */
//  219       frequency = __LL_RCC_CALC_MSI_FREQ(LL_RCC_MSI_GetRange());
//  220       break;
//  221 
//  222     case LL_RCC_SYS_CLKSOURCE_STATUS_HSI:  /* HSI used as system clock  source */
//  223       frequency = HSI_VALUE;
//  224       break;
//  225 
//  226     case LL_RCC_SYS_CLKSOURCE_STATUS_HSE:  /* HSE used as system clock  source */
//  227       frequency = HSE_VALUE;
//  228       break;
//  229 
//  230     case LL_RCC_SYS_CLKSOURCE_STATUS_PLL:  /* PLL used as system clock  source */
//  231       frequency = RCC_PLL_GetFreqDomain_SYS();
//  232       break;
//  233 
//  234     default:
//  235       frequency = __LL_RCC_CALC_MSI_FREQ(LL_RCC_MSI_GetRange());
//  236       break;
//  237   }
//  238 
//  239   return frequency;
//  240 }
//  241 
//  242 /**
//  243   * @brief  Return HCLK clock frequency
//  244   * @param  SYSCLK_Frequency SYSCLK clock frequency
//  245   * @retval HCLK clock frequency (in Hz)
//  246   */
//  247 uint32_t RCC_GetHCLKClockFreq(uint32_t SYSCLK_Frequency)
//  248 {
//  249   /* HCLK clock frequency */
//  250   return __LL_RCC_CALC_HCLK_FREQ(SYSCLK_Frequency, LL_RCC_GetAHBPrescaler());
//  251 }
//  252 
//  253 /**
//  254   * @brief  Return PCLK1 clock frequency
//  255   * @param  HCLK_Frequency HCLK clock frequency
//  256   * @retval PCLK1 clock frequency (in Hz)
//  257   */
//  258 uint32_t RCC_GetPCLK1ClockFreq(uint32_t HCLK_Frequency)
//  259 {
//  260   /* PCLK1 clock frequency */
//  261   return __LL_RCC_CALC_PCLK1_FREQ(HCLK_Frequency, LL_RCC_GetAPB1Prescaler());
//  262 }
//  263 
//  264 /**
//  265   * @brief  Return PCLK2 clock frequency
//  266   * @param  HCLK_Frequency HCLK clock frequency
//  267   * @retval PCLK2 clock frequency (in Hz)
//  268   */
//  269 uint32_t RCC_GetPCLK2ClockFreq(uint32_t HCLK_Frequency)
//  270 {
//  271   /* PCLK2 clock frequency */
//  272   return __LL_RCC_CALC_PCLK2_FREQ(HCLK_Frequency, LL_RCC_GetAPB2Prescaler());
//  273 }
//  274 
//  275 /**
//  276   * @brief  Return PLL clock frequency used for system domain
//  277   * @retval PLL clock frequency (in Hz)
//  278   */
//  279 uint32_t RCC_PLL_GetFreqDomain_SYS(void)
//  280 {
//  281   uint32_t pllinputfreq = 0U, pllsource = 0U;
//  282 
//  283   /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL divider) * PLL Multiplicator */
//  284 
//  285   /* Get PLL source */
//  286   pllsource = LL_RCC_PLL_GetMainSource();
//  287 
//  288   switch (pllsource)
//  289   {
//  290     case LL_RCC_PLLSOURCE_HSI:       /* HSI used as PLL clock source */
//  291       pllinputfreq = HSI_VALUE;
//  292       break;
//  293 
//  294     case LL_RCC_PLLSOURCE_HSE:       /* HSE used as PLL clock source */
//  295       pllinputfreq = HSE_VALUE;
//  296       break;
//  297 
//  298     default:
//  299       pllinputfreq = HSI_VALUE;
//  300       break;
//  301   }
//  302   return __LL_RCC_CALC_PLLCLK_FREQ(pllinputfreq, LL_RCC_PLL_GetMultiplicator(), LL_RCC_PLL_GetDivider());
//  303 }
//  304 /**
//  305   * @}
//  306   */
//  307 
//  308 /**
//  309   * @}
//  310   */
//  311 
//  312 #endif /* defined(RCC) */
//  313 
//  314 /**
//  315   * @}
//  316   */
//  317 
//  318 #endif /* USE_FULL_LL_DRIVER */
//  319 
//  320 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
