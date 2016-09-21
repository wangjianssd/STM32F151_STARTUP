///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_rcc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN AHBPrescTable
        EXTERN APBPrescTable
        EXTERN HAL_GPIO_Init
        EXTERN HAL_GetTick
        EXTERN HAL_InitTick
        EXTERN HAL_PWREx_GetVoltageRange
        EXTERN PLLMulTable
        EXTERN SystemCoreClock
        EXTERN __aeabi_memclr4

        PUBWEAK HAL_RCC_CSSCallback
        PUBLIC HAL_RCC_ClockConfig
        PUBLIC HAL_RCC_DeInit
        PUBLIC HAL_RCC_DisableCSS
        PUBLIC HAL_RCC_EnableCSS
        PUBLIC HAL_RCC_GetClockConfig
        PUBLIC HAL_RCC_GetHCLKFreq
        PUBLIC HAL_RCC_GetOscConfig
        PUBLIC HAL_RCC_GetPCLK1Freq
        PUBLIC HAL_RCC_GetPCLK2Freq
        PUBLIC HAL_RCC_GetSysClockFreq
        PUBLIC HAL_RCC_MCOConfig
        PUBLIC HAL_RCC_NMI_IRQHandler
        PUBLIC HAL_RCC_OscConfig
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rcc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_rcc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   RCC HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Reset and Clock Control (RCC) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + Peripheral Control functions
//   12   *       
//   13   @verbatim                
//   14   ==============================================================================
//   15                       ##### RCC specific features #####
//   16   ==============================================================================
//   17     [..]  
//   18       After reset the device is running from multispeed internal oscillator clock 
//   19       (MSI 2.097MHz) with Flash 0 wait state and Flash prefetch buffer is disabled, 
//   20       and all peripherals are off except internal SRAM, Flash and JTAG.
//   21       (+) There is no prescaler on High speed (AHB) and Low speed (APB) buses;
//   22           all peripherals mapped on these buses are running at MSI speed.
//   23       (+) The clock for all peripherals is switched off, except the SRAM and FLASH.
//   24       (+) All GPIOs are in input floating state, except the JTAG pins which
//   25           are assigned to be used for debug purpose.
//   26     [..] Once the device started from reset, the user application has to:
//   27       (+) Configure the clock source to be used to drive the System clock
//   28           (if the application needs higher frequency/performance)
//   29       (+) Configure the System clock frequency and Flash settings  
//   30       (+) Configure the AHB and APB buses prescalers
//   31       (+) Enable the clock for the peripheral(s) to be used
//   32       (+) Configure the clock source(s) for peripherals whose clocks are not
//   33           derived from the System clock (I2S, RTC, ADC, USB OTG FS/SDIO/RNG) 
//   34           (*) SDIO only for STM32L1xxxD devices
//   35 
//   36                       ##### RCC Limitations #####
//   37   ==============================================================================
//   38     [..]  
//   39       A delay between an RCC peripheral clock enable and the effective peripheral 
//   40       enabling should be taken into account in order to manage the peripheral read/write 
//   41       from/to registers.
//   42       (+) This delay depends on the peripheral mapping.
//   43         (++) AHB & APB peripherals, 1 dummy read is necessary
//   44 
//   45     [..]  
//   46       Workarounds:
//   47       (#) For AHB & APB peripherals, a dummy read to the peripheral register has been
//   48           inserted in each __HAL_RCC_PPP_CLK_ENABLE() macro.
//   49 
//   50   @endverbatim
//   51   ******************************************************************************
//   52   * @attention
//   53   *
//   54   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   55   *
//   56   * Redistribution and use in source and binary forms, with or without modification,
//   57   * are permitted provided that the following conditions are met:
//   58   *   1. Redistributions of source code must retain the above copyright notice,
//   59   *      this list of conditions and the following disclaimer.
//   60   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   61   *      this list of conditions and the following disclaimer in the documentation
//   62   *      and/or other materials provided with the distribution.
//   63   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   64   *      may be used to endorse or promote products derived from this software
//   65   *      without specific prior written permission.
//   66   *
//   67   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   68   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   69   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   70   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   71   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   72   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   73   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   74   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   75   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   76   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   77   *
//   78   ******************************************************************************  
//   79 */
//   80 
//   81 /* Includes ------------------------------------------------------------------*/
//   82 #include "stm32l1xx_hal.h"
//   83 
//   84 /** @addtogroup STM32L1xx_HAL_Driver
//   85   * @{
//   86   */
//   87 
//   88 /** @defgroup RCC RCC
//   89 * @brief RCC HAL module driver
//   90   * @{
//   91   */
//   92 
//   93 #ifdef HAL_RCC_MODULE_ENABLED
//   94 
//   95 /* Private typedef -----------------------------------------------------------*/
//   96 /* Private define ------------------------------------------------------------*/
//   97 /** @defgroup RCC_Private_Constants RCC Private Constants
//   98  * @{
//   99  */
//  100 /* Bits position in  in the CFGR register */
//  101 #define RCC_CFGR_PLLMUL_BITNUMBER         POSITION_VAL(RCC_CFGR_PLLMUL)
//  102 #define RCC_CFGR_PLLDIV_BITNUMBER         POSITION_VAL(RCC_CFGR_PLLDIV)
//  103 #define RCC_CFGR_HPRE_BITNUMBER           POSITION_VAL(RCC_CFGR_HPRE)
//  104 #define RCC_CFGR_PPRE1_BITNUMBER          POSITION_VAL(RCC_CFGR_PPRE1)
//  105 #define RCC_CFGR_PPRE2_BITNUMBER          POSITION_VAL(RCC_CFGR_PPRE2)
//  106 /* Bits position in  in the ICSCR register */
//  107 #define RCC_ICSCR_MSIRANGE_BITNUMBER      POSITION_VAL(RCC_ICSCR_MSIRANGE)
//  108 #define RCC_ICSCR_MSITRIM_BITNUMBER       POSITION_VAL(RCC_ICSCR_MSITRIM)
//  109 /**
//  110   * @}
//  111   */
//  112 /* Private macro -------------------------------------------------------------*/
//  113 /** @defgroup RCC_Private_Macros RCC Private Macros
//  114   * @{
//  115   */
//  116 
//  117 #define MCO1_CLK_ENABLE()     __HAL_RCC_GPIOA_CLK_ENABLE()
//  118 #define MCO1_GPIO_PORT        GPIOA
//  119 #define MCO1_PIN              GPIO_PIN_8
//  120 
//  121 /**
//  122   * @}
//  123   */
//  124 
//  125 /* Private variables ---------------------------------------------------------*/
//  126 /** @defgroup RCC_Private_Variables RCC Private Variables
//  127   * @{
//  128   */
//  129 extern const uint8_t PLLMulTable[];          /* Defined in CMSIS (system_stm32l0xx.c)*/
//  130 /**
//  131   * @}
//  132   */
//  133 
//  134 /* Private function prototypes -----------------------------------------------*/
//  135 /** @defgroup RCC_Private_Functions RCC Private Functions
//  136   * @{
//  137   */
//  138 static HAL_StatusTypeDef RCC_SetFlashLatencyFromMSIRange(uint32_t MSIrange);
//  139 /**
//  140   * @}
//  141   */
//  142 
//  143 /* Exported functions ---------------------------------------------------------*/
//  144 
//  145 /** @defgroup RCC_Exported_Functions RCC Exported Functions
//  146   * @{
//  147   */
//  148 
//  149 /** @defgroup RCC_Exported_Functions_Group1 Initialization and de-initialization functions 
//  150   *  @brief    Initialization and Configuration functions 
//  151   *
//  152   @verbatim    
//  153   ===============================================================================
//  154            ##### Initialization and de-initialization functions #####
//  155   ===============================================================================
//  156     [..]
//  157       This section provides functions allowing to configure the internal/external oscillators
//  158       (MSI, HSE, HSI, LSE, LSI, PLL, CSS and MCO) and the System buses clocks (SYSCLK, AHB, APB1 
//  159       and APB2).
//  160 
//  161     [..] Internal/external clock and PLL configuration
//  162       (#) MSI (Multispeed internal), Seven frequency ranges are available: 65.536 kHz, 
//  163           131.072 kHz, 262.144 kHz, 524.288 kHz, 1.048 MHz, 2.097 MHz (default value) and 4.194 MHz.
//  164 
//  165       (#) HSI (high-speed internal), 16 MHz factory-trimmed RC used directly or through
//  166           the PLL as System clock source.
//  167       (#) LSI (low-speed internal), ~37 KHz low consumption RC used as IWDG and/or RTC
//  168           clock source.
//  169 
//  170       (#) HSE (high-speed external), 1 to 24 MHz crystal oscillator used directly or
//  171           through the PLL as System clock source. Can be used also as RTC clock source.
//  172 
//  173       (#) LSE (low-speed external), 32 KHz oscillator used as RTC clock source.   
//  174 
//  175       (#) PLL (clocked by HSI or HSE), featuring different output clocks:
//  176         (++) The first output is used to generate the high speed system clock (up to 32 MHz)
//  177         (++) The second output is used to generate the clock for the USB OTG FS (48 MHz)
//  178 
//  179       (#) CSS (Clock security system), once enable using the macro __HAL_RCC_CSS_ENABLE()
//  180           and if a HSE clock failure occurs(HSE used directly or through PLL as System 
//  181           clock source), the System clocks automatically switched to MSI and an interrupt
//  182           is generated if enabled. The interrupt is linked to the Cortex-M3 NMI 
//  183           (Non-Maskable Interrupt) exception vector.   
//  184 
//  185       (#) MCO1 (microcontroller clock output), used to output SYSCLK, HSI, LSI, MSI, LSE, 
//  186           HSE or PLL clock (through a configurable prescaler) on PA8 pin.
//  187 
//  188     [..] System, AHB and APB buses clocks configuration
//  189       (#) Several clock sources can be used to drive the System clock (SYSCLK): MSI, HSI,
//  190           HSE and PLL.
//  191           The AHB clock (HCLK) is derived from System clock through configurable
//  192           prescaler and used to clock the CPU, memory and peripherals mapped
//  193           on AHB bus (DMA, GPIO...). APB1 (PCLK1) and APB2 (PCLK2) clocks are derived
//  194           from AHB clock through configurable prescalers and used to clock
//  195           the peripherals mapped on these buses. You can use
//  196           "@ref HAL_RCC_GetSysClockFreq()" function to retrieve the frequencies of these clocks.
//  197 
//  198       -@- All the peripheral clocks are derived from the System clock (SYSCLK) except:
//  199           (+@) RTC: RTC clock can be derived either from the LSI, LSE or HSE clock
//  200               divided by 2 to 16. You have to use @ref __HAL_RCC_RTC_CONFIG() and @ref __HAL_RCC_RTC_ENABLE()
//  201               macros to configure this clock. 
//  202           (+@) LCD: LCD clock can be derived either from the LSI, LSE or HSE clock
//  203               divided by 2 to 16. You have to use @ref __HAL_RCC_LCD_CONFIG()
//  204               macros to configure this clock. 
//  205           (+@) USB OTG FS: USB OTG FS require a frequency equal to 48 MHz
//  206               to work correctly. This clock is derived of the main PLL through PLL Multiplier.
//  207 
//  208           (+@) IWDG clock which is always the LSI clock.
//  209 
//  210       (#) The maximum frequency of the SYSCLK and HCLK is 32 MHz, PCLK2 32 MHz 
//  211           and PCLK1 32 MHz. Depending on the device voltage range, the maximum 
//  212           frequency should be adapted accordingly.
//  213   @endverbatim
//  214   * @{
//  215   */
//  216   
//  217 /*
//  218   Additional consideration on the HCLK based on Latency settings:
//  219   +----------------------------------------------------------------------+     
//  220   | Latency       |                HCLK clock frequency (MHz)            |
//  221   |               |------------------------------------------------------|     
//  222   |               | voltage range 1  | voltage range 2 | voltage range 3 |
//  223   |               |      1.8 V       |     1.5 V       |      1.2 V      |
//  224   |---------------|------------------|-----------------|-----------------|              
//  225   |0WS(1CPU cycle)| 0 < HCLK <= 16   | 0 < HCLK <= 8   | 0 < HCLK <= 2   |
//  226   |---------------|------------------|-----------------|-----------------| 
//  227   |1WS(2CPU cycle)| 16 < HCLK <= 32  | 8 < HCLK <= 16  | 2 < HCLK <= 4   | 
//  228   +----------------------------------------------------------------------+     
//  229 
//  230   The following table gives the different clock source frequencies depending on the product
//  231   voltage range:
//  232   +------------------------------------------------------------------------------------------+     
//  233   | Product voltage |                    Clock frequency                                     |
//  234   |                 |------------------|-----------------------------|-----------------------|              
//  235   |      range      |   MSI   |   HSI  |              HSE            |          PLL          |
//  236   |-----------------|---------|--------|-----------------------------|-----------------------|              
//  237   | Range 1 (1.8 V) | 4.2 MHz | 16 MHz | HSE 32 MHz (external clock) |         32 MHz        |
//  238   |                 |         |        |      or 24 MHz (crystal)    | (PLLVCO max = 96 MHz) |
//  239   |-----------------|---------|--------|-----------------------------|-----------------------|              
//  240   | Range 2 (1.5 V) | 4.2 MHz | 16 MHz |         16 MHz              |         16 MHz        |
//  241   |                 |         |        |                             | (PLLVCO max = 48 MHz) |
//  242   |-----------------|---------|--------|-----------------------------|-----------------------|              
//  243   | Range 3 (1.2 V) | 4.2 MHz |   NA   |         8 MHz               |           4 MHz       |
//  244   |                 |         |        |                             | (PLLVCO max = 24 MHz) |
//  245   +------------------------------------------------------------------------------------------+     
//  246   */
//  247 
//  248 /**
//  249   * @brief  Resets the RCC clock configuration to the default reset state.
//  250   * @note   The default reset state of the clock configuration is given below:
//  251   *            - MSI ON and used as system clock source
//  252   *            - HSI, HSE and PLL  OFF
//  253   *            - AHB, APB1 and APB2 prescaler set to 1.
//  254   *            - CSS and MCO1 OFF
//  255   *            - All interrupts disabled
//  256   * @note   This function does not modify the configuration of the
//  257   *            - Peripheral clocks
//  258   *            - LSI, LSE and RTC clocks
//  259   * @retval None
//  260   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_RCC_DeInit
          CFI NoCalls
        THUMB
//  261 void HAL_RCC_DeInit(void)
//  262 {
//  263   /* Set MSION bit */
//  264   SET_BIT(RCC->CR, RCC_CR_MSION);
HAL_RCC_DeInit:
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
//  265   
//  266   /* Switch SYSCLK to MSI*/
//  267   CLEAR_BIT(RCC->CFGR, RCC_CFGR_SW);
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.W    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  268 
//  269   /* Reset HSION, HSEON, CSSON, HSEBYP & PLLON bits */
//  270   CLEAR_BIT(RCC->CR, RCC_CR_HSION | RCC_CR_HSEON | RCC_CR_CSSON | RCC_CR_PLLON | RCC_CR_HSEBYP);
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_1  ;; 0xeefafffe
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
//  271   /* Reset CFGR register */
//  272   CLEAR_REG(RCC->CFGR);
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  273   
//  274   /* Set MSIClockRange & MSITRIM[4:0] bits to the reset value */
//  275   MODIFY_REG(RCC->ICSCR, (RCC_ICSCR_MSIRANGE | RCC_ICSCR_MSITRIM), (((uint32_t)0 << RCC_ICSCR_MSITRIM_BITNUMBER) | RCC_ICSCR_MSIRANGE_5));
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        CLZ      R1,R1
        LDR.W    R1,??DataTable9_3  ;; 0xff1fff
        ANDS     R0,R1,R0
        ORRS     R0,R0,#0xA000
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
//  276   
//  277   /* Set HSITRIM bits to the reset value */
//  278   MODIFY_REG(RCC->ICSCR, RCC_ICSCR_HSITRIM, ((uint32_t)0x10 << POSITION_VAL(RCC_ICSCR_HSITRIM)));
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1F00
        MOVS     R1,#+16
        MOVS     R2,#+16252928
        CLZ      R2,R2
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
//  279   
//  280   /* Disable all interrupts */
//  281   CLEAR_REG(RCC->CIR);
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_4  ;; 0x4002380c
        STR      R0,[R1, #+0]
//  282 
//  283   /* Update the SystemCoreClock global variable */
//  284   SystemCoreClock = MSI_VALUE;
        LDR.W    R0,??DataTable9_5  ;; 0xf42400
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  285 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  286 
//  287 /**
//  288   * @brief  Initializes the RCC Oscillators according to the specified parameters in the
//  289   *         RCC_OscInitTypeDef.
//  290   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that
//  291   *         contains the configuration information for the RCC Oscillators.
//  292   * @note   The PLL is not disabled when used as system clock.
//  293   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
//  294   *         supported by this macro. User should request a transition to LSE Off
//  295   *         first and then LSE On or LSE Bypass.
//  296   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
//  297   *         supported by this macro. User should request a transition to HSE Off
//  298   *         first and then HSE On or HSE Bypass.
//  299   * @retval HAL status
//  300   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_RCC_OscConfig
        THUMB
//  301 HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
//  302 {
HAL_RCC_OscConfig:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVS     R4,R0
//  303    uint32_t tickstart = 0U;
        MOVS     R5,#+0
//  304   
//  305   /* Check the parameters */
//  306   assert_param(RCC_OscInitStruct != NULL);
//  307   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
//  308 
//  309   /*------------------------------- HSE Configuration ------------------------*/ 
//  310   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCC_OscConfig_0
//  311   {
//  312     /* Check the parameters */
//  313     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
//  314 
//  315     /* When the HSE is used as system clock or clock source for PLL in these cases it is not allowed to be disabled */
//  316     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE) 
//  317        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSE)))
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BEQ.N    ??HAL_RCC_OscConfig_1
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+12
        BNE.N    ??HAL_RCC_OscConfig_2
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??HAL_RCC_OscConfig_2
//  318     {
//  319       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
??HAL_RCC_OscConfig_1:
        MOV      R0,#+16384
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_3
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_4
??HAL_RCC_OscConfig_3:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_4:
        MOV      R1,#+16384
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCC_OscConfig_0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.W    ??HAL_RCC_OscConfig_0
//  320       {
//  321         return HAL_ERROR;
        MOVS     R0,#+1
        B.W      ??HAL_RCC_OscConfig_5
//  322       }
//  323     }
//  324     else
//  325     {
//  326       /* Set the new HSE configuration ---------------------------------------*/
//  327       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
??HAL_RCC_OscConfig_2:
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_6
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_7
??HAL_RCC_OscConfig_6:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??HAL_RCC_OscConfig_8
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_7
??HAL_RCC_OscConfig_8:
        LDR      R0,[R4, #+4]
        CMP      R0,#+5
        BNE.N    ??HAL_RCC_OscConfig_9
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_7
??HAL_RCC_OscConfig_9:
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable8  ;; 0x40023800
        STR      R0,[R1, #+0]
//  328       
//  329 
//  330        /* Check the HSE State */
//  331       if(RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
??HAL_RCC_OscConfig_7:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_10
//  332       {
//  333         /* Get Start Tick */
//  334         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  335         
//  336         /* Wait till HSE is ready */
//  337         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
??HAL_RCC_OscConfig_11:
        MOV      R0,#+16384
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_12
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_13
??HAL_RCC_OscConfig_12:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_13:
        MOV      R1,#+16384
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_OscConfig_0
//  338         {
//  339           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_OscConfig_11
//  340           {
//  341             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  342           }
//  343         }
//  344       }
//  345       else
//  346       {
//  347         /* Get Start Tick */
//  348         tickstart = HAL_GetTick();
??HAL_RCC_OscConfig_10:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  349         
//  350         /* Wait till HSE is disabled */
//  351         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
??HAL_RCC_OscConfig_14:
        MOV      R0,#+16384
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_15
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_16
??HAL_RCC_OscConfig_15:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_16:
        MOV      R1,#+16384
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_0
//  352         {
//  353            if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_OscConfig_14
//  354           {
//  355             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  356           }
//  357         }
//  358       }
//  359     }
//  360   }
//  361   /*----------------------------- HSI Configuration --------------------------*/ 
//  362   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
??HAL_RCC_OscConfig_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_OscConfig_17
//  363   {
//  364     /* Check the parameters */
//  365     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
//  366     assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
//  367     
//  368     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */ 
//  369     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSI) 
//  370        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_HSI)))
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+4
        BEQ.N    ??HAL_RCC_OscConfig_18
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+12
        BNE.N    ??HAL_RCC_OscConfig_19
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BMI.N    ??HAL_RCC_OscConfig_19
//  371     {
//  372       /* When HSI is used as system clock it will not disabled */
//  373       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
??HAL_RCC_OscConfig_18:
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_20
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_21
??HAL_RCC_OscConfig_20:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_21:
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_22
        LDR      R0,[R4, #+12]
        CMP      R0,#+1
        BEQ.N    ??HAL_RCC_OscConfig_22
//  374       {
//  375         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_5
//  376       }
//  377       /* Otherwise, just the calibration is allowed */
//  378       else
//  379       {
//  380         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
//  381         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
??HAL_RCC_OscConfig_22:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16252928
        CLZ      R1,R1
        BICS     R0,R0,#0x1F00
        LDR      R2,[R4, #+16]
        LSLS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
//  382       }
//  383     }
//  384     else
//  385     {
//  386       /* Check the HSI State */
//  387       if(RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
//  388       {
//  389        /* Enable the Internal High Speed oscillator (HSI). */
//  390         __HAL_RCC_HSI_ENABLE();
//  391         
//  392         /* Get Start Tick */
//  393         tickstart = HAL_GetTick();
//  394         
//  395         /* Wait till HSI is ready */
//  396         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
//  397         {
//  398           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
//  399           {
//  400             return HAL_TIMEOUT;
//  401           }
//  402         }
//  403                 
//  404         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
//  405         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
//  406       }
//  407       else
//  408       {
//  409         /* Disable the Internal High Speed oscillator (HSI). */
//  410         __HAL_RCC_HSI_DISABLE();
//  411         
//  412         /* Get Start Tick */
//  413         tickstart = HAL_GetTick();
//  414         
//  415         /* Wait till HSI is disabled */
//  416         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
//  417         {
//  418           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
//  419           {
//  420             return HAL_TIMEOUT;
//  421           }
//  422         }
//  423       }
//  424     }
//  425   }
//  426   /*----------------------------- MSI Configuration --------------------------*/ 
//  427   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_MSI) == RCC_OSCILLATORTYPE_MSI)
??HAL_RCC_OscConfig_17:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+27
        BPL.W    ??HAL_RCC_OscConfig_23
//  428   {
//  429     /* When the MSI is used as system clock it will not be disabled */
//  430     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_MSI) )
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        TST      R0,#0xC
        BNE.W    ??HAL_RCC_OscConfig_24
//  431     {
//  432       if((__HAL_RCC_GET_FLAG(RCC_FLAG_MSIRDY) != RESET) && (RCC_OscInitStruct->MSIState == RCC_MSI_OFF))
        MOVS     R0,#+4194304
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_25
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_26
??HAL_RCC_OscConfig_19:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_27
        MOVS     R0,#+1
        MOVS     R1,#-2147483648
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_28:
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_29
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_30
??HAL_RCC_OscConfig_29:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_30:
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_OscConfig_31
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_28
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
??HAL_RCC_OscConfig_31:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16252928
        CLZ      R1,R1
        BICS     R0,R0,#0x1F00
        LDR      R2,[R4, #+16]
        LSLS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_17
??HAL_RCC_OscConfig_27:
        MOVS     R0,#+0
        MOVS     R1,#-2147483648
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_32:
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_33
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_34
??HAL_RCC_OscConfig_33:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_34:
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCC_OscConfig_17
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_32
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
??HAL_RCC_OscConfig_25:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_26:
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_35
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??HAL_RCC_OscConfig_35
//  433       {
//  434         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_5
//  435       }
//  436       /* Otherwise, just the calibration and MSI range change are allowed */
//  437       else
//  438       {
//  439        /* Check MSICalibrationValue and MSIClockRange input parameters */
//  440         assert_param(IS_RCC_MSICALIBRATION_VALUE(RCC_OscInitStruct->MSICalibrationValue));
//  441         assert_param(IS_RCC_MSI_CLOCK_RANGE(RCC_OscInitStruct->MSIClockRange));
//  442 
//  443         /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
//  444            must be correctly programmed according to the frequency of the CPU clock
//  445            (HCLK) and the supply voltage of the device. */
//  446         if(RCC_OscInitStruct->MSIClockRange > __HAL_RCC_GET_MSI_RANGE())
??HAL_RCC_OscConfig_35:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xE000
        LDR      R1,[R4, #+32]
        CMP      R0,R1
        BCS.N    ??HAL_RCC_OscConfig_36
//  447         {
//  448           /* First increase number of wait states update if necessary */
//  449           if(RCC_SetFlashLatencyFromMSIRange(RCC_OscInitStruct->MSIClockRange) != HAL_OK)
        LDR      R0,[R4, #+32]
          CFI FunCall RCC_SetFlashLatencyFromMSIRange
        BL       RCC_SetFlashLatencyFromMSIRange
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_37
//  450           {
//  451             return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_5
//  452           }
//  453 
//  454           /* Selects the Multiple Speed oscillator (MSI) clock range .*/
//  455           __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
??HAL_RCC_OscConfig_37:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xE000
        LDR      R1,[R4, #+32]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
//  456           /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
//  457           __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        CLZ      R1,R1
        LSLS     R0,R0,#+8        ;; ZeroExtS R0,R0,#+8,#+8
        LSRS     R0,R0,#+8
        LDR      R2,[R4, #+28]
        LSLS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
//  458         }
//  459         else
//  460         {
//  461           /* Else, keep current flash latency while decreasing applies */
//  462           /* Selects the Multiple Speed oscillator (MSI) clock range .*/
//  463           __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
//  464           /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
//  465           __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
//  466 
//  467           /* Decrease number of wait states update if necessary */
//  468           if(RCC_SetFlashLatencyFromMSIRange(RCC_OscInitStruct->MSIClockRange) != HAL_OK)
//  469           {
//  470             return HAL_ERROR;
//  471           }          
//  472         }
//  473 
//  474         /* Update the SystemCoreClock global variable */
//  475         SystemCoreClock =  (32768U * (1U << ((RCC_OscInitStruct->MSIClockRange >> RCC_ICSCR_MSIRANGE_BITNUMBER) + 1U))) 
//  476                            >> AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> RCC_CFGR_HPRE_BITNUMBER)];
??HAL_RCC_OscConfig_38:
        MOVS     R0,#+458752
        CLZ      R0,R0
        LDR.W    R1,??DataTable9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        MOVS     R2,#+251658240
        CLZ      R2,R2
        MOVS     R3,#+1
        LDR      R5,[R4, #+32]
        LSRS     R5,R5,R0
        ADDS     R0,R5,#+1
        LSLS     R0,R3,R0
        MOV      R3,#+32768
        MULS     R0,R3,R0
        LDR.W    R3,??DataTable13_1
        ANDS     R1,R1,#0xF0
        LSRS     R1,R1,R2
        LDRB     R1,[R1, R3]
        LSRS     R0,R0,R1
        LDR.W    R1,??DataTable10
        STR      R0,[R1, #+0]
//  477 
//  478         /* Configure the source of time base considering new system clocks settings*/
//  479         HAL_InitTick (TICK_INT_PRIORITY);
        MOVS     R0,#+15
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
//  480       }
//  481     }
//  482     else
//  483     {
//  484       /* Check MSI State */
//  485       assert_param(IS_RCC_MSI(RCC_OscInitStruct->MSIState));
//  486 
//  487       /* Check the MSI State */
//  488       if(RCC_OscInitStruct->MSIState != RCC_MSI_OFF)
//  489       {
//  490         /* Enable the Multi Speed oscillator (MSI). */
//  491         __HAL_RCC_MSI_ENABLE();
//  492 
//  493         /* Get Start Tick */
//  494         tickstart = HAL_GetTick();
//  495 
//  496         /* Wait till MSI is ready */
//  497         while(__HAL_RCC_GET_FLAG(RCC_FLAG_MSIRDY) == RESET)
//  498         {
//  499           if((HAL_GetTick() - tickstart) > MSI_TIMEOUT_VALUE)
//  500           {
//  501             return HAL_TIMEOUT;
//  502           }
//  503         }
//  504         /* Check MSICalibrationValue and MSIClockRange input parameters */
//  505         assert_param(IS_RCC_MSICALIBRATION_VALUE(RCC_OscInitStruct->MSICalibrationValue));
//  506         assert_param(IS_RCC_MSI_CLOCK_RANGE(RCC_OscInitStruct->MSIClockRange));
//  507 
//  508         /* Selects the Multiple Speed oscillator (MSI) clock range .*/
//  509         __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
//  510          /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
//  511         __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
//  512 
//  513       }
//  514       else
//  515       {
//  516         /* Disable the Multi Speed oscillator (MSI). */
//  517         __HAL_RCC_MSI_DISABLE();
//  518 
//  519         /* Get Start Tick */
//  520         tickstart = HAL_GetTick();
//  521 
//  522         /* Wait till MSI is ready */
//  523         while(__HAL_RCC_GET_FLAG(RCC_FLAG_MSIRDY) != RESET)
//  524         {
//  525           if((HAL_GetTick() - tickstart) > MSI_TIMEOUT_VALUE)
//  526           {
//  527             return HAL_TIMEOUT;
//  528           }
//  529         }
//  530       }
//  531     }
//  532   }  
//  533   /*------------------------------ LSI Configuration -------------------------*/ 
//  534   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
??HAL_RCC_OscConfig_23:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.W    ??HAL_RCC_OscConfig_39
//  535   {
//  536     /* Check the parameters */
//  537     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
//  538     
//  539     /* Check the LSI State */
//  540     if(RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.W    ??HAL_RCC_OscConfig_40
//  541     {
//  542       /* Enable the Internal Low Speed oscillator (LSI). */
//  543       __HAL_RCC_LSI_ENABLE();
        MOVS     R0,#+1
        MOVS     R1,#-2147483648
        CLZ      R1,R1
        LDR.W    R2,??DataTable13_2  ;; 0x42470680
        STR      R0,[R2, R1, LSL #+2]
//  544       
//  545       /* Get Start Tick */
//  546       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  547       
//  548       /* Wait till LSI is ready */  
//  549       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
??HAL_RCC_OscConfig_41:
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.W    ??HAL_RCC_OscConfig_39
//  550       {
//  551         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_41
//  552         {
//  553           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  554         }
//  555       }
//  556     }
??HAL_RCC_OscConfig_36:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xE000
        LDR      R1,[R4, #+32]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        CLZ      R1,R1
        LSLS     R0,R0,#+8        ;; ZeroExtS R0,R0,#+8,#+8
        LSRS     R0,R0,#+8
        LDR      R2,[R4, #+28]
        LSLS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+32]
          CFI FunCall RCC_SetFlashLatencyFromMSIRange
        BL       RCC_SetFlashLatencyFromMSIRange
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_38
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_5
??HAL_RCC_OscConfig_24:
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_42
        MOVS     R0,#+1
        MOVS     R1,#+8388608
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_43:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_44
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_45
??HAL_RCC_OscConfig_44:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_45:
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_OscConfig_46
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_43
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
??HAL_RCC_OscConfig_46:
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xE000
        LDR      R1,[R4, #+32]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_2  ;; 0x40023804
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        CLZ      R1,R1
        LSLS     R0,R0,#+8        ;; ZeroExtS R0,R0,#+8,#+8
        LSRS     R0,R0,#+8
        LDR      R2,[R4, #+28]
        LSLS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9_2  ;; 0x40023804
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_23
??HAL_RCC_OscConfig_42:
        MOVS     R0,#+0
        MOVS     R1,#+8388608
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_47:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_48
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_49
??HAL_RCC_OscConfig_48:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_49:
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCC_OscConfig_23
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_47
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  557     else
//  558     {
//  559       /* Disable the Internal Low Speed oscillator (LSI). */
//  560       __HAL_RCC_LSI_DISABLE();
??HAL_RCC_OscConfig_40:
        MOVS     R0,#+0
        MOVS     R1,#-2147483648
        CLZ      R1,R1
        LDR.W    R2,??DataTable13_2  ;; 0x42470680
        STR      R0,[R2, R1, LSL #+2]
//  561       
//  562       /* Get Start Tick */
//  563       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  564       
//  565       /* Wait till LSI is disabled */  
//  566       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
??HAL_RCC_OscConfig_50:
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_39
//  567       {
//  568         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_50
//  569         {
//  570           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  571         }
//  572       }
//  573     }
//  574   }
//  575   /*------------------------------ LSE Configuration -------------------------*/ 
//  576   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
??HAL_RCC_OscConfig_39:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.W    ??HAL_RCC_OscConfig_51
//  577   {
//  578     FlagStatus       pwrclkchanged = RESET;
        MOVS     R6,#+0
//  579     
//  580     /* Check the parameters */
//  581     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
//  582 
//  583     /* Update LSE configuration in Backup Domain control register    */
//  584     /* Requires to enable write access to Backup Domain of necessary */
//  585     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
        LDR.W    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BMI.N    ??HAL_RCC_OscConfig_52
//  586     {
//  587       __HAL_RCC_PWR_CLK_ENABLE();
        LDR.W    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable13_3  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  588       pwrclkchanged = SET;
        MOVS     R6,#+1
//  589     }
//  590     
//  591     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCC_OscConfig_52:
        LDR.W    R0,??DataTable13_4  ;; 0x40007000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCC_OscConfig_53
//  592     {
//  593       /* Enable write access to Backup domain */
//  594       SET_BIT(PWR->CR, PWR_CR_DBP);
        LDR.W    R0,??DataTable13_4  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable13_4  ;; 0x40007000
        STR      R0,[R1, #+0]
//  595       
//  596       /* Wait for Backup domain Write protection disable */
//  597       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  598 
//  599       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCC_OscConfig_54:
        LDR.W    R0,??DataTable13_4  ;; 0x40007000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCC_OscConfig_53
//  600       {
//  601         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_OscConfig_54
//  602         {
//  603           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  604         }
//  605       }
//  606     }
//  607 
//  608     /* Set the new LSE configuration -----------------------------------------*/
//  609     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
??HAL_RCC_OscConfig_53:
        LDR      R0,[R4, #+8]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_55
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_56
??HAL_RCC_OscConfig_55:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??HAL_RCC_OscConfig_57
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_56
??HAL_RCC_OscConfig_57:
        LDR      R0,[R4, #+8]
        CMP      R0,#+5
        BNE.N    ??HAL_RCC_OscConfig_58
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        B.N      ??HAL_RCC_OscConfig_56
??HAL_RCC_OscConfig_58:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable12  ;; 0x40023834
        STR      R0,[R1, #+0]
//  610     /* Check the LSE State */
//  611     if(RCC_OscInitStruct->LSEState != RCC_LSE_OFF)
??HAL_RCC_OscConfig_56:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_59
//  612     {
//  613       /* Get Start Tick */
//  614       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  615       
//  616       /* Wait till LSE is ready */  
//  617       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
??HAL_RCC_OscConfig_60:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_OscConfig_61
//  618       {
//  619         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_OscConfig_60
//  620         {
//  621           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  622         }
//  623       }
//  624     }
//  625     else
//  626     {
//  627       /* Get Start Tick */
//  628       tickstart = HAL_GetTick();
??HAL_RCC_OscConfig_59:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  629       
//  630       /* Wait till LSE is disabled */  
//  631       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
??HAL_RCC_OscConfig_62:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_61
//  632       {
//  633         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_OscConfig_62
//  634         {
//  635           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  636         }
//  637       }
//  638     }
//  639 
//  640     /* Require to disable power clock if necessary */
//  641     if(pwrclkchanged == SET)
??HAL_RCC_OscConfig_61:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??HAL_RCC_OscConfig_51
//  642     {
//  643       __HAL_RCC_PWR_CLK_DISABLE();
        LDR.W    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable13_3  ;; 0x40023824
        STR      R0,[R1, #+0]
//  644     }
//  645   }
//  646 
//  647   /*-------------------------------- PLL Configuration -----------------------*/
//  648   /* Check the parameters */
//  649   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
//  650   if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
??HAL_RCC_OscConfig_51:
        LDR      R0,[R4, #+36]
        CMP      R0,#+0
        BEQ.W    ??HAL_RCC_OscConfig_63
//  651   {
//  652     /* Check if the PLL is used as system clock or not */
//  653     if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+12
        BEQ.W    ??HAL_RCC_OscConfig_64
//  654     { 
//  655       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
        LDR      R0,[R4, #+36]
        CMP      R0,#+2
        BNE.N    ??HAL_RCC_OscConfig_65
//  656       {
//  657         /* Check the parameters */
//  658         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
//  659         assert_param(IS_RCC_PLL_MUL(RCC_OscInitStruct->PLL.PLLMUL));
//  660         assert_param(IS_RCC_PLL_DIV(RCC_OscInitStruct->PLL.PLLDIV));
//  661   
//  662         /* Disable the main PLL. */
//  663         __HAL_RCC_PLL_DISABLE();
        MOVS     R0,#+0
        MOVS     R1,#+128
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
//  664         
//  665         /* Get Start Tick */
//  666         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  667         
//  668         /* Wait till PLL is disabled */
//  669         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
??HAL_RCC_OscConfig_66:
        MOVS     R0,#+64
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_67
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_68
??HAL_RCC_OscConfig_67:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_68:
        MOVS     R1,#+64
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_69
//  670         {
//  671           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_66
//  672           {
//  673             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  674           }
//  675         }
//  676 
//  677         /* Configure the main PLL clock source, multiplication and division factors. */
//  678         __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
//  679                              RCC_OscInitStruct->PLL.PLLMUL,
//  680                              RCC_OscInitStruct->PLL.PLLDIV);
??HAL_RCC_OscConfig_69:
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xFD0000
        LDR      R1,[R4, #+40]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+44]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+48]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  681         /* Enable the main PLL. */
//  682         __HAL_RCC_PLL_ENABLE();
        MOVS     R0,#+1
        MOVS     R1,#+128
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
//  683         
//  684         /* Get Start Tick */
//  685         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  686         
//  687         /* Wait till PLL is ready */
//  688         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  == RESET)
??HAL_RCC_OscConfig_70:
        MOVS     R0,#+64
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_71
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_72
??HAL_RCC_OscConfig_71:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_72:
        MOVS     R1,#+64
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_OscConfig_63
//  689         {
//  690           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_70
//  691           {
//  692             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  693           }
//  694         }
//  695       }
//  696       else
//  697       {
//  698         /* Disable the main PLL. */
//  699         __HAL_RCC_PLL_DISABLE();
??HAL_RCC_OscConfig_65:
        MOVS     R0,#+0
        MOVS     R1,#+128
        CLZ      R1,R1
        LDR.W    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
//  700  
//  701         /* Get Start Tick */
//  702         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  703         
//  704         /* Wait till PLL is disabled */  
//  705         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY)  != RESET)
??HAL_RCC_OscConfig_73:
        MOVS     R0,#+64
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_74
        LDR.W    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_75
??HAL_RCC_OscConfig_74:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_OscConfig_75:
        MOVS     R1,#+64
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_63
//  706         {
//  707           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_73
//  708           {
//  709             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_5
//  710           }
//  711         }
//  712       }
//  713     }
//  714     else
//  715     {
//  716       return HAL_ERROR;
??HAL_RCC_OscConfig_64:
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_5
//  717     }
//  718   }
//  719   
//  720   return HAL_OK;
??HAL_RCC_OscConfig_63:
        MOVS     R0,#+0
??HAL_RCC_OscConfig_5:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  721 }
          CFI EndBlock cfiBlock1
//  722 
//  723 /**
//  724   * @brief  Initializes the CPU, AHB and APB buses clocks according to the specified 
//  725   *         parameters in the RCC_ClkInitStruct.
//  726   * @param  RCC_ClkInitStruct pointer to an RCC_OscInitTypeDef structure that
//  727   *         contains the configuration information for the RCC peripheral.
//  728   * @param  FLatency FLASH Latency                   
//  729   *          The value of this parameter depend on device used within the same series
//  730   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency 
//  731   *         and updated by @ref HAL_RCC_GetHCLKFreq() function called within this function
//  732   *
//  733   * @note   The MSI is used (enabled by hardware) as system clock source after
//  734   *         start-up from Reset, wake-up from STOP and STANDBY mode, or in case
//  735   *         of failure of the HSE used directly or indirectly as system clock
//  736   *         (if the Clock Security System CSS is enabled).
//  737   *           
//  738   * @note   A switch from one clock source to another occurs only if the target
//  739   *         clock source is ready (clock stable after start-up delay or PLL locked). 
//  740   *         If a clock source which is not yet ready is selected, the switch will
//  741   *         occur when the clock source will be ready. 
//  742   *         You can use @ref HAL_RCC_GetClockConfig() function to know which clock is
//  743   *         currently used as system clock source.
//  744   * @note   Depending on the device voltage range, the software has to set correctly
//  745   *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
//  746   *         (for more details refer to section above "Initialization/de-initialization functions")
//  747   * @retval HAL status
//  748   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_RCC_ClockConfig
        THUMB
//  749 HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
//  750 {
HAL_RCC_ClockConfig:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  751   uint32_t tickstart = 0U;
        MOVS     R6,#+0
//  752   
//  753   /* Check the parameters */
//  754   assert_param(RCC_ClkInitStruct != NULL);
//  755   assert_param(IS_RCC_CLOCKTYPE(RCC_ClkInitStruct->ClockType));
//  756   assert_param(IS_FLASH_LATENCY(FLatency));
//  757 
//  758   /* To correctly read data from FLASH memory, the number of wait states (LATENCY) 
//  759   must be correctly programmed according to the frequency of the CPU clock 
//  760   (HCLK) and the supply voltage of the device. */
//  761 
//  762   /* Increasing the number of wait states because of higher CPU frequency */
//  763   if(FLatency > (FLASH->ACR & FLASH_ACR_LATENCY))
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        CMP      R0,R5
        BCS.N    ??HAL_RCC_ClockConfig_0
//  764   {    
//  765     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
//  766     __HAL_FLASH_SET_LATENCY(FLatency);
        CMP      R5,#+1
        BNE.N    ??HAL_RCC_ClockConfig_1
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
??HAL_RCC_ClockConfig_1:
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
//  767     
//  768     /* Check that the new number of wait states is taken into account to access the Flash
//  769     memory by reading the FLASH_ACR register */
//  770     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        CMP      R0,R5
        BEQ.N    ??HAL_RCC_ClockConfig_0
//  771     {
//  772       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  773     }
//  774   }
//  775 
//  776   /*-------------------------- HCLK Configuration --------------------------*/
//  777   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
??HAL_RCC_ClockConfig_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_ClockConfig_3
//  778   {
//  779     assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
//  780     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
        LDR.W    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF0
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  781   }
//  782 
//  783   /*------------------------- SYSCLK Configuration ---------------------------*/ 
//  784   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
??HAL_RCC_ClockConfig_3:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.W    ??HAL_RCC_ClockConfig_4
//  785   {    
//  786     assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));
//  787     
//  788     /* HSE is selected as System Clock Source */
//  789     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
        LDR      R0,[R4, #+4]
        CMP      R0,#+2
        BNE.N    ??HAL_RCC_ClockConfig_5
//  790     {
//  791       /* Check the HSE ready flag */  
//  792       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
        MOV      R0,#+16384
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_6
        LDR.N    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_ClockConfig_7
??HAL_RCC_ClockConfig_6:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_ClockConfig_7:
        MOV      R1,#+16384
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_ClockConfig_8
//  793       {
//  794         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  795       }
//  796     }
//  797     /* PLL is selected as System Clock Source */
//  798     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
??HAL_RCC_ClockConfig_5:
        LDR      R0,[R4, #+4]
        CMP      R0,#+3
        BNE.N    ??HAL_RCC_ClockConfig_9
//  799     {
//  800       /* Check the PLL ready flag */  
//  801       if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
        MOVS     R0,#+64
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_10
        LDR.N    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_ClockConfig_11
??HAL_RCC_ClockConfig_10:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_ClockConfig_11:
        MOVS     R1,#+64
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_ClockConfig_8
//  802       {
//  803         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  804       }
//  805     }
//  806     /* HSI is selected as System Clock Source */
//  807     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSI)
??HAL_RCC_ClockConfig_9:
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_12
//  808     {
//  809       /* Check the HSI ready flag */  
//  810       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
        MOVS     R0,#+1073741824
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_13
        LDR.N    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_ClockConfig_14
??HAL_RCC_ClockConfig_13:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_ClockConfig_14:
        MOVS     R1,#+1073741824
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_ClockConfig_8
//  811       {
//  812         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  813       }
//  814     }
//  815     /* MSI is selected as System Clock Source */
//  816     else
//  817     {
//  818       /* Check the MSI ready flag */  
//  819       if(__HAL_RCC_GET_FLAG(RCC_FLAG_MSIRDY) == RESET)
??HAL_RCC_ClockConfig_12:
        MOVS     R0,#+4194304
        CLZ      R0,R0
        ORRS     R0,R0,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_15
        LDR.N    R0,??DataTable8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        B.N      ??HAL_RCC_ClockConfig_16
??HAL_RCC_ClockConfig_15:
        LDR.W    R0,??DataTable12  ;; 0x40023834
        LDR      R0,[R0, #+0]
??HAL_RCC_ClockConfig_16:
        MOVS     R1,#+4194304
        CLZ      R1,R1
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_RCC_ClockConfig_8
//  820       {
//  821         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  822       }
//  823     }
//  824     __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
??HAL_RCC_ClockConfig_8:
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR      R1,[R4, #+4]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  825 
//  826     /* Get Start Tick */
//  827     tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  828     
//  829     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
        LDR      R0,[R4, #+4]
        CMP      R0,#+2
        BNE.N    ??HAL_RCC_ClockConfig_17
//  830     {
//  831       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSE)
??HAL_RCC_ClockConfig_18:
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BEQ.N    ??HAL_RCC_ClockConfig_4
//  832       {
//  833         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_ClockConfig_18
//  834         {
//  835           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_ClockConfig_2
//  836         }
//  837       }
//  838     }
//  839     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
??HAL_RCC_ClockConfig_17:
        LDR      R0,[R4, #+4]
        CMP      R0,#+3
        BNE.N    ??HAL_RCC_ClockConfig_19
//  840     {
//  841       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
??HAL_RCC_ClockConfig_20:
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+12
        BEQ.N    ??HAL_RCC_ClockConfig_4
//  842       {
//  843         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_ClockConfig_20
//  844         {
//  845           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_ClockConfig_2
//  846         }
//  847       }
//  848     }
//  849     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSI)
??HAL_RCC_ClockConfig_19:
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_21
//  850     {
//  851       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSI)
??HAL_RCC_ClockConfig_22:
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+4
        BEQ.N    ??HAL_RCC_ClockConfig_4
//  852       {
//  853         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_ClockConfig_22
//  854         {
//  855           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_ClockConfig_2
//  856         }
//  857       }
//  858     }      
//  859     else
//  860     {
//  861       while(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_MSI)
??HAL_RCC_ClockConfig_21:
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        TST      R0,#0xC
        BEQ.N    ??HAL_RCC_ClockConfig_4
//  862       {
//  863         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_ClockConfig_21
//  864         {
//  865           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_ClockConfig_2
//  866         }
//  867       }
//  868     }
//  869   }    
//  870   /* Decreasing the number of wait states because of lower CPU frequency */
//  871   if(FLatency < (FLASH->ACR & FLASH_ACR_LATENCY))
??HAL_RCC_ClockConfig_4:
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        CMP      R5,R0
        BCS.N    ??HAL_RCC_ClockConfig_23
//  872   {    
//  873     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
//  874     __HAL_FLASH_SET_LATENCY(FLatency);
        CMP      R5,#+1
        BNE.N    ??HAL_RCC_ClockConfig_24
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
??HAL_RCC_ClockConfig_24:
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
//  875     
//  876     /* Check that the new number of wait states is taken into account to access the Flash
//  877     memory by reading the FLASH_ACR register */
//  878     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
        LDR.W    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        CMP      R0,R5
        BEQ.N    ??HAL_RCC_ClockConfig_23
//  879     {
//  880       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_2
//  881     }
//  882   }    
//  883 
//  884   /*-------------------------- PCLK1 Configuration ---------------------------*/ 
//  885   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
??HAL_RCC_ClockConfig_23:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_RCC_ClockConfig_25
//  886   {
//  887     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
//  888     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  889   }
//  890   
//  891   /*-------------------------- PCLK2 Configuration ---------------------------*/ 
//  892   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
??HAL_RCC_ClockConfig_25:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_RCC_ClockConfig_26
//  893   {
//  894     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
//  895     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3));
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x3800
        LDR      R1,[R4, #+16]
        ORRS     R0,R0,R1, LSL #+3
        LDR.N    R1,??DataTable9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  896   }
//  897  
//  898   /* Update the SystemCoreClock global variable */
//  899   SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_BITNUMBER];
??HAL_RCC_ClockConfig_26:
          CFI FunCall HAL_RCC_GetSysClockFreq
        BL       HAL_RCC_GetSysClockFreq
        LDR.N    R1,??DataTable9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        MOVS     R2,#+251658240
        CLZ      R2,R2
        LDR.W    R3,??DataTable13_1
        ANDS     R1,R1,#0xF0
        LSRS     R1,R1,R2
        LDRB     R1,[R1, R3]
        LSRS     R0,R0,R1
        LDR.W    R1,??DataTable13_6
        STR      R0,[R1, #+0]
//  900 
//  901   /* Configure the source of time base considering new system clocks settings*/
//  902   HAL_InitTick (TICK_INT_PRIORITY);
        MOVS     R0,#+15
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
//  903   
//  904   return HAL_OK;
        MOVS     R0,#+0
??HAL_RCC_ClockConfig_2:
        POP      {R4-R6,PC}       ;; return
//  905 }
          CFI EndBlock cfiBlock2
//  906 
//  907 /**
//  908   * @}
//  909   */
//  910 
//  911 /** @defgroup RCC_Exported_Functions_Group2 Peripheral Control functions
//  912   *  @brief   RCC clocks control functions
//  913   *
//  914   @verbatim   
//  915   ===============================================================================
//  916                   ##### Peripheral Control functions #####
//  917   ===============================================================================  
//  918     [..]
//  919     This subsection provides a set of functions allowing to control the RCC Clocks 
//  920     frequencies.
//  921 
//  922   @endverbatim
//  923   * @{
//  924   */
//  925 
//  926 /**
//  927   * @brief  Selects the clock source to output on MCO pin.
//  928   * @note   MCO pin should be configured in alternate function mode.
//  929   * @param  RCC_MCOx specifies the output direction for the clock source.
//  930   *          This parameter can be one of the following values:
//  931   *            @arg @ref RCC_MCO1 Clock source to output on MCO1 pin(PA8).
//  932   * @param  RCC_MCOSource specifies the clock source to output.
//  933   *          This parameter can be one of the following values:
//  934   *            @arg @ref RCC_MCO1SOURCE_NOCLOCK     No clock selected as MCO clock
//  935   *            @arg @ref RCC_MCO1SOURCE_SYSCLK      System clock selected as MCO clock
//  936   *            @arg @ref RCC_MCO1SOURCE_HSI         HSI selected as MCO clock
//  937   *            @arg @ref RCC_MCO1SOURCE_HSE         HSE selected as MCO clock
//  938   *            @arg @ref RCC_MCO1SOURCE_MSI         MSI oscillator clock selected as MCO clock 
//  939   *            @arg @ref RCC_MCO1SOURCE_PLLCLK      PLL clock selected as MCO clock
//  940   *            @arg @ref RCC_MCO1SOURCE_LSI         LSI clock selected as MCO clock
//  941   *            @arg @ref RCC_MCO1SOURCE_LSE         LSE clock selected as MCO clock
//  942   * @param  RCC_MCODiv specifies the MCO DIV.
//  943   *          This parameter can be one of the following values:
//  944   *            @arg @ref RCC_MCODIV_1 no division applied to MCO clock
//  945   *            @arg @ref RCC_MCODIV_2  division by 2 applied to MCO clock
//  946   *            @arg @ref RCC_MCODIV_4  division by 4 applied to MCO clock
//  947   *            @arg @ref RCC_MCODIV_8  division by 8 applied to MCO clock
//  948   *            @arg @ref RCC_MCODIV_16 division by 16 applied to MCO clock
//  949   * @retval None
//  950   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_RCC_MCOConfig
        THUMB
//  951 void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv)
//  952 {
HAL_RCC_MCOConfig:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+28
          CFI CFA R13+40
        MOVS     R4,R1
        MOVS     R5,R2
//  953   GPIO_InitTypeDef gpio = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  954 
//  955   /* Check the parameters */
//  956   assert_param(IS_RCC_MCO(RCC_MCOx));
//  957   assert_param(IS_RCC_MCODIV(RCC_MCODiv));
//  958   assert_param(IS_RCC_MCO1SOURCE(RCC_MCOSource));
//  959   
//  960   /* Configure the MCO1 pin in alternate function mode */
//  961   gpio.Mode      = GPIO_MODE_AF_PP;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  962   gpio.Speed     = GPIO_SPEED_FREQ_HIGH;
        MOVS     R0,#+2
        STR      R0,[SP, #+16]
//  963   gpio.Pull      = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  964   gpio.Pin       = MCO1_PIN;
        MOV      R0,#+256
        STR      R0,[SP, #+4]
//  965   gpio.Alternate = GPIO_AF0_MCO;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  966 
//  967   /* MCO1 Clock Enable */
//  968   MCO1_CLK_ENABLE();
        LDR.N    R0,??DataTable13_7  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable13_7  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable13_7  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  969   
//  970   HAL_GPIO_Init(MCO1_GPIO_PORT, &gpio);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable13_8  ;; 0x40020000
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//  971   
//  972   /* Configure the MCO clock source */
//  973   __HAL_RCC_MCO1_CONFIG(RCC_MCOSource, RCC_MCODiv);
        LDR.N    R0,??DataTable13_9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x77000000
        ORRS     R0,R4,R0
        ORRS     R0,R5,R0
        LDR.N    R1,??DataTable13_9  ;; 0x40023808
        STR      R0,[R1, #+0]
//  974 }
        ADD      SP,SP,#+28
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock3
//  975 
//  976 /**
//  977   * @brief  Enables the Clock Security System.
//  978   * @note   If a failure is detected on the HSE oscillator clock, this oscillator
//  979   *         is automatically disabled and an interrupt is generated to inform the
//  980   *         software about the failure (Clock Security System Interrupt, CSSI),
//  981   *         allowing the MCU to perform rescue operations. The CSSI is linked to 
//  982   *         the Cortex-M3 NMI (Non-Maskable Interrupt) exception vector.  
//  983   * @retval None
//  984   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_RCC_EnableCSS
          CFI NoCalls
        THUMB
//  985 void HAL_RCC_EnableCSS(void)
//  986 {
//  987   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)ENABLE;
HAL_RCC_EnableCSS:
        MOVS     R0,#+1
        MOVS     R1,#+8
        CLZ      R1,R1
        LDR.N    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
//  988 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  989 
//  990 /**
//  991   * @brief  Disables the Clock Security System.
//  992   * @retval None
//  993   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_RCC_DisableCSS
          CFI NoCalls
        THUMB
//  994 void HAL_RCC_DisableCSS(void)
//  995 {
//  996   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)DISABLE;
HAL_RCC_DisableCSS:
        MOVS     R0,#+0
        MOVS     R1,#+8
        CLZ      R1,R1
        LDR.N    R2,??DataTable13  ;; 0x42470000
        STR      R0,[R2, R1, LSL #+2]
//  997 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  998 
//  999 /**
// 1000   * @brief  Returns the SYSCLK frequency     
// 1001   * @note   The system frequency computed by this function is not the real 
// 1002   *         frequency in the chip. It is calculated based on the predefined 
// 1003   *         constant and the selected clock source:
// 1004   * @note     If SYSCLK source is MSI, function returns a value based on MSI
// 1005   *             Value as defined by the MSI range.
// 1006   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
// 1007   * @note     If SYSCLK source is HSE, function returns a value based on HSE_VALUE(**)
// 1008   * @note     If SYSCLK source is PLL, function returns a value based on HSE_VALUE(**) 
// 1009   *           or HSI_VALUE(*) multiplied/divided by the PLL factors.         
// 1010   * @note     (*) HSI_VALUE is a constant defined in stm32l1xx_hal_conf.h file (default value
// 1011   *               16 MHz) but the real value may vary depending on the variations
// 1012   *               in voltage and temperature.
// 1013   * @note     (**) HSE_VALUE is a constant defined in stm32l1xx_hal_conf.h file (default value
// 1014   *                8 MHz), user has to ensure that HSE_VALUE is same as the real
// 1015   *                frequency of the crystal used. Otherwise, this function may
// 1016   *                have wrong result.
// 1017   *                  
// 1018   * @note   The result of this function could be not correct when using fractional
// 1019   *         value for HSE crystal.
// 1020   *           
// 1021   * @note   This function can be used by the user application to compute the 
// 1022   *         baud-rate for the communication peripherals or configure other parameters.
// 1023   *           
// 1024   * @note   Each time SYSCLK changes, this function must be called to update the
// 1025   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorrect.
// 1026   *         
// 1027   * @retval SYSCLK frequency
// 1028   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_RCC_GetSysClockFreq
          CFI NoCalls
        THUMB
// 1029 uint32_t HAL_RCC_GetSysClockFreq(void)
// 1030 {
// 1031   uint32_t tmpreg = 0, pllm = 0, plld = 0, pllvco = 0, msiclkrange = 0;
HAL_RCC_GetSysClockFreq:
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R0,#+0
// 1032   uint32_t sysclockfreq = 0;
        MOVS     R0,#+0
// 1033   
// 1034   tmpreg = RCC->CFGR;
        LDR.N    R0,??DataTable9  ;; 0x40023808
        LDR      R0,[R0, #+0]
// 1035   
// 1036   /* Get SYSCLK source -------------------------------------------------------*/
// 1037   switch (tmpreg & RCC_CFGR_SWS)
        ANDS     R1,R0,#0xC
        CMP      R1,#+4
        BEQ.N    ??HAL_RCC_GetSysClockFreq_0
        CMP      R1,#+8
        BEQ.N    ??HAL_RCC_GetSysClockFreq_1
        CMP      R1,#+12
        BEQ.N    ??HAL_RCC_GetSysClockFreq_2
        B.N      ??HAL_RCC_GetSysClockFreq_3
// 1038   {
// 1039     case RCC_SYSCLKSOURCE_STATUS_HSI:  /* HSI used as system clock source */
// 1040     {
// 1041       sysclockfreq = HSI_VALUE;
??HAL_RCC_GetSysClockFreq_0:
        LDR.N    R0,??DataTable9_5  ;; 0xf42400
// 1042       break;
        B.N      ??HAL_RCC_GetSysClockFreq_4
// 1043     }
// 1044     case RCC_SYSCLKSOURCE_STATUS_HSE:  /* HSE used as system clock */
// 1045     {
// 1046       sysclockfreq = HSE_VALUE;
??HAL_RCC_GetSysClockFreq_1:
        LDR.N    R0,??DataTable13_10  ;; 0x16e3600
// 1047       break;
        B.N      ??HAL_RCC_GetSysClockFreq_4
// 1048     }
// 1049     case RCC_SYSCLKSOURCE_STATUS_PLLCLK:  /* PLL used as system clock */
// 1050     {
// 1051       pllm = PLLMulTable[(uint32_t)(tmpreg & RCC_CFGR_PLLMUL) >> RCC_CFGR_PLLMUL_BITNUMBER];
??HAL_RCC_GetSysClockFreq_2:
        MOV      R1,#+15360
        CLZ      R1,R1
        LDR.N    R2,??DataTable13_11
        ANDS     R3,R0,#0x3C0000
        LSRS     R3,R3,R1
        LDRB     R1,[R3, R2]
// 1052       plld = ((uint32_t)(tmpreg & RCC_CFGR_PLLDIV) >> RCC_CFGR_PLLDIV_BITNUMBER) + 1;
        ANDS     R0,R0,#0xC00000
        MOV      R2,#+768
        CLZ      R2,R2
        LSRS     R0,R0,R2
        ADDS     R0,R0,#+1
// 1053       if (__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
        LDR.N    R2,??DataTable9  ;; 0x40023808
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+15
        BPL.N    ??HAL_RCC_GetSysClockFreq_5
// 1054       {
// 1055         /* HSE used as PLL clock source */
// 1056         pllvco = (HSE_VALUE * pllm) / plld;
        LDR.N    R2,??DataTable13_10  ;; 0x16e3600
        MULS     R1,R2,R1
        UDIV     R0,R1,R0
        B.N      ??HAL_RCC_GetSysClockFreq_6
// 1057       }
// 1058       else
// 1059       {
// 1060         /* HSI used as PLL clock source */
// 1061         pllvco = (HSI_VALUE * pllm) / plld;
??HAL_RCC_GetSysClockFreq_5:
        LDR.N    R2,??DataTable9_5  ;; 0xf42400
        MULS     R1,R2,R1
        UDIV     R0,R1,R0
// 1062       }
// 1063       sysclockfreq = pllvco;
// 1064       break;
??HAL_RCC_GetSysClockFreq_6:
        B.N      ??HAL_RCC_GetSysClockFreq_4
// 1065     }
// 1066     case RCC_SYSCLKSOURCE_STATUS_MSI:  /* MSI used as system clock source */
// 1067     default: /* MSI used as system clock */
// 1068     {
// 1069       msiclkrange = (RCC->ICSCR & RCC_ICSCR_MSIRANGE ) >> RCC_ICSCR_MSIRANGE_BITNUMBER;
??HAL_RCC_GetSysClockFreq_3:
        LDR.N    R0,??DataTable13_12  ;; 0x40023804
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xE000
        MOVS     R1,#+458752
        CLZ      R1,R1
        LSRS     R0,R0,R1
// 1070       sysclockfreq = (32768 * (1 << (msiclkrange + 1)));
        MOVS     R1,#+1
        ADDS     R0,R0,#+1
        LSLS     R0,R1,R0
        MOV      R1,#+32768
        MULS     R0,R1,R0
// 1071       break;
// 1072     }
// 1073   }
// 1074   return sysclockfreq;
??HAL_RCC_GetSysClockFreq_4:
        BX       LR               ;; return
// 1075 }
          CFI EndBlock cfiBlock6
// 1076 
// 1077 /**
// 1078   * @brief  Returns the HCLK frequency     
// 1079   * @note   Each time HCLK changes, this function must be called to update the
// 1080   *         right HCLK value. Otherwise, any configuration based on this function will be incorrect.
// 1081   * 
// 1082   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency 
// 1083   *         and updated within this function
// 1084   * @retval HCLK frequency
// 1085   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_RCC_GetHCLKFreq
          CFI NoCalls
        THUMB
// 1086 uint32_t HAL_RCC_GetHCLKFreq(void)
// 1087 {
// 1088   return SystemCoreClock;
HAL_RCC_GetHCLKFreq:
        LDR.N    R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
// 1089 }
          CFI EndBlock cfiBlock7
// 1090 
// 1091 /**
// 1092   * @brief  Returns the PCLK1 frequency     
// 1093   * @note   Each time PCLK1 changes, this function must be called to update the
// 1094   *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
// 1095   * @retval PCLK1 frequency
// 1096   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_RCC_GetPCLK1Freq
        THUMB
// 1097 uint32_t HAL_RCC_GetPCLK1Freq(void)
// 1098 {
HAL_RCC_GetPCLK1Freq:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1099   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
// 1100   return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_BITNUMBER]);
          CFI FunCall HAL_RCC_GetHCLKFreq
        BL       HAL_RCC_GetHCLKFreq
        LDR.N    R1,??DataTable9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        MOVS     R2,#+14680064
        CLZ      R2,R2
        LDR.N    R3,??DataTable13_13
        ANDS     R1,R1,#0x700
        LSRS     R1,R1,R2
        LDRB     R1,[R1, R3]
        LSRS     R0,R0,R1
        POP      {R1,PC}          ;; return
// 1101 }    
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40023800
// 1102 
// 1103 /**
// 1104   * @brief  Returns the PCLK2 frequency     
// 1105   * @note   Each time PCLK2 changes, this function must be called to update the
// 1106   *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
// 1107   * @retval PCLK2 frequency
// 1108   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_RCC_GetPCLK2Freq
        THUMB
// 1109 uint32_t HAL_RCC_GetPCLK2Freq(void)
// 1110 {
HAL_RCC_GetPCLK2Freq:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1111   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
// 1112   return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_BITNUMBER]);
          CFI FunCall HAL_RCC_GetHCLKFreq
        BL       HAL_RCC_GetHCLKFreq
        LDR.N    R1,??DataTable9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1835008
        CLZ      R2,R2
        LDR.N    R3,??DataTable13_13
        ANDS     R1,R1,#0x3800
        LSRS     R1,R1,R2
        LDRB     R1,[R1, R3]
        LSRS     R0,R0,R1
        POP      {R1,PC}          ;; return
// 1113 } 
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0xeefafffe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0xff1fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0xf42400
// 1114 
// 1115 /**
// 1116   * @brief  Configures the RCC_OscInitStruct according to the internal 
// 1117   * RCC configuration registers.
// 1118   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that 
// 1119   * will be configured.
// 1120   * @retval None
// 1121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_RCC_GetOscConfig
          CFI NoCalls
        THUMB
// 1122 void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
// 1123 {
// 1124   /* Check the parameters */
// 1125   assert_param(RCC_OscInitStruct != NULL);
// 1126 
// 1127   /* Set all possible values for the Oscillator type parameter ---------------*/
// 1128   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI  \ 
// 1129                   | RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI | RCC_OSCILLATORTYPE_MSI;
HAL_RCC_GetOscConfig:
        MOVS     R1,#+31
        STR      R1,[R0, #+0]
// 1130 
// 1131 
// 1132   /* Get the HSE configuration -----------------------------------------------*/
// 1133   if((RCC->CR &RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
        LDR.N    R1,??DataTable13_14  ;; 0x40023800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+13
        BPL.N    ??HAL_RCC_GetOscConfig_0
// 1134   {
// 1135     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
        MOVS     R1,#+5
        STR      R1,[R0, #+4]
        B.N      ??HAL_RCC_GetOscConfig_1
// 1136   }
// 1137   else if((RCC->CR &RCC_CR_HSEON) == RCC_CR_HSEON)
??HAL_RCC_GetOscConfig_0:
        LDR.N    R1,??DataTable13_14  ;; 0x40023800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+15
        BPL.N    ??HAL_RCC_GetOscConfig_2
// 1138   {
// 1139     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
        MOVS     R1,#+1
        STR      R1,[R0, #+4]
        B.N      ??HAL_RCC_GetOscConfig_1
// 1140   }
// 1141   else
// 1142   {
// 1143     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
??HAL_RCC_GetOscConfig_2:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
// 1144   }
// 1145 
// 1146   /* Get the HSI configuration -----------------------------------------------*/
// 1147   if((RCC->CR &RCC_CR_HSION) == RCC_CR_HSION)
??HAL_RCC_GetOscConfig_1:
        LDR.N    R1,??DataTable13_14  ;; 0x40023800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??HAL_RCC_GetOscConfig_3
// 1148   {
// 1149     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
        MOVS     R1,#+1
        STR      R1,[R0, #+12]
        B.N      ??HAL_RCC_GetOscConfig_4
// 1150   }
// 1151   else
// 1152   {
// 1153     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
??HAL_RCC_GetOscConfig_3:
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
// 1154   }
// 1155   
// 1156   RCC_OscInitStruct->HSICalibrationValue = (uint32_t)((RCC->ICSCR & RCC_ICSCR_HSITRIM) >> POSITION_VAL(RCC_ICSCR_HSITRIM));
??HAL_RCC_GetOscConfig_4:
        LDR.N    R1,??DataTable13_12  ;; 0x40023804
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x1F00
        MOVS     R2,#+16252928
        CLZ      R2,R2
        LSRS     R1,R1,R2
        STR      R1,[R0, #+16]
// 1157   
// 1158   /* Get the MSI configuration -----------------------------------------------*/
// 1159   if((RCC->CR &RCC_CR_MSION) == RCC_CR_MSION)
        LDR.N    R1,??DataTable13_14  ;; 0x40023800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+23
        BPL.N    ??HAL_RCC_GetOscConfig_5
// 1160   {
// 1161     RCC_OscInitStruct->MSIState = RCC_MSI_ON;
        MOVS     R1,#+1
        STR      R1,[R0, #+24]
        B.N      ??HAL_RCC_GetOscConfig_6
// 1162   }
// 1163   else
// 1164   {
// 1165     RCC_OscInitStruct->MSIState = RCC_MSI_OFF;
??HAL_RCC_GetOscConfig_5:
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1166   }
// 1167   
// 1168   RCC_OscInitStruct->MSICalibrationValue = (uint32_t)((RCC->ICSCR & RCC_ICSCR_MSITRIM) >> RCC_ICSCR_MSITRIM_BITNUMBER);
??HAL_RCC_GetOscConfig_6:
        LDR.N    R1,??DataTable13_12  ;; 0x40023804
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0xFF000000
        MOVS     R2,#+255
        CLZ      R2,R2
        LSRS     R1,R1,R2
        STR      R1,[R0, #+28]
// 1169   RCC_OscInitStruct->MSIClockRange = (uint32_t)((RCC->ICSCR & RCC_ICSCR_MSIRANGE));
        LDR.N    R1,??DataTable13_12  ;; 0x40023804
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0xE000
        STR      R1,[R0, #+32]
// 1170   
// 1171   /* Get the LSE configuration -----------------------------------------------*/
// 1172   if((RCC->CSR &RCC_CSR_LSEBYP) == RCC_CSR_LSEBYP)
        LDR.N    R1,??DataTable12  ;; 0x40023834
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+21
        BPL.N    ??HAL_RCC_GetOscConfig_7
// 1173   {
// 1174     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
        MOVS     R1,#+5
        STR      R1,[R0, #+8]
        B.N      ??HAL_RCC_GetOscConfig_8
// 1175   }
// 1176   else if((RCC->CSR &RCC_CSR_LSEON) == RCC_CSR_LSEON)
??HAL_RCC_GetOscConfig_7:
        LDR.N    R1,??DataTable12  ;; 0x40023834
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+23
        BPL.N    ??HAL_RCC_GetOscConfig_9
// 1177   {
// 1178     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
        MOVS     R1,#+1
        STR      R1,[R0, #+8]
        B.N      ??HAL_RCC_GetOscConfig_8
// 1179   }
// 1180   else
// 1181   {
// 1182     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
??HAL_RCC_GetOscConfig_9:
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
// 1183   }
// 1184   
// 1185   /* Get the LSI configuration -----------------------------------------------*/
// 1186   if((RCC->CSR &RCC_CSR_LSION) == RCC_CSR_LSION)
??HAL_RCC_GetOscConfig_8:
        LDR.N    R1,??DataTable12  ;; 0x40023834
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??HAL_RCC_GetOscConfig_10
// 1187   {
// 1188     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
        MOVS     R1,#+1
        STR      R1,[R0, #+20]
        B.N      ??HAL_RCC_GetOscConfig_11
// 1189   }
// 1190   else
// 1191   {
// 1192     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
??HAL_RCC_GetOscConfig_10:
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
// 1193   }
// 1194   
// 1195 
// 1196   /* Get the PLL configuration -----------------------------------------------*/
// 1197   if((RCC->CR &RCC_CR_PLLON) == RCC_CR_PLLON)
??HAL_RCC_GetOscConfig_11:
        LDR.N    R1,??DataTable13_14  ;; 0x40023800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+7
        BPL.N    ??HAL_RCC_GetOscConfig_12
// 1198   {
// 1199     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
        MOVS     R1,#+2
        STR      R1,[R0, #+36]
        B.N      ??HAL_RCC_GetOscConfig_13
// 1200   }
// 1201   else
// 1202   {
// 1203     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
??HAL_RCC_GetOscConfig_12:
        MOVS     R1,#+1
        STR      R1,[R0, #+36]
// 1204   }
// 1205   RCC_OscInitStruct->PLL.PLLSource = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLSRC);
??HAL_RCC_GetOscConfig_13:
        LDR.N    R1,??DataTable13_9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x10000
        STR      R1,[R0, #+40]
// 1206   RCC_OscInitStruct->PLL.PLLMUL = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLMUL);
        LDR.N    R1,??DataTable13_9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x3C0000
        STR      R1,[R0, #+44]
// 1207   RCC_OscInitStruct->PLL.PLLDIV = (uint32_t)(RCC->CFGR & RCC_CFGR_PLLDIV);
        LDR.N    R1,??DataTable13_9  ;; 0x40023808
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0xC00000
        STR      R1,[R0, #+48]
// 1208 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     SystemCoreClock
// 1209 
// 1210 /**
// 1211   * @brief  Get the RCC_ClkInitStruct according to the internal 
// 1212   * RCC configuration registers.
// 1213   * @param  RCC_ClkInitStruct pointer to an RCC_ClkInitTypeDef structure that 
// 1214   * contains the current clock configuration.
// 1215   * @param  pFLatency Pointer on the Flash Latency.
// 1216   * @retval None
// 1217   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_RCC_GetClockConfig
          CFI NoCalls
        THUMB
// 1218 void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency)
// 1219 {
// 1220   /* Check the parameters */
// 1221   assert_param(RCC_ClkInitStruct != NULL);
// 1222   assert_param(pFLatency != NULL);
// 1223 
// 1224   /* Set all possible values for the Clock type parameter --------------------*/
// 1225   RCC_ClkInitStruct->ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
HAL_RCC_GetClockConfig:
        MOVS     R2,#+15
        STR      R2,[R0, #+0]
// 1226   
// 1227   /* Get the SYSCLK configuration --------------------------------------------*/ 
// 1228   RCC_ClkInitStruct->SYSCLKSource = (uint32_t)(RCC->CFGR & RCC_CFGR_SW);
        LDR.N    R2,??DataTable13_9  ;; 0x40023808
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x3
        STR      R2,[R0, #+4]
// 1229   
// 1230   /* Get the HCLK configuration ----------------------------------------------*/ 
// 1231   RCC_ClkInitStruct->AHBCLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_HPRE); 
        LDR.N    R2,??DataTable13_9  ;; 0x40023808
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0xF0
        STR      R2,[R0, #+8]
// 1232   
// 1233   /* Get the APB1 configuration ----------------------------------------------*/ 
// 1234   RCC_ClkInitStruct->APB1CLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_PPRE1);   
        LDR.N    R2,??DataTable13_9  ;; 0x40023808
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x700
        STR      R2,[R0, #+12]
// 1235   
// 1236   /* Get the APB2 configuration ----------------------------------------------*/ 
// 1237   RCC_ClkInitStruct->APB2CLKDivider = (uint32_t)((RCC->CFGR & RCC_CFGR_PPRE2) >> 3);
        LDR.N    R2,??DataTable13_9  ;; 0x40023808
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+3
        ANDS     R2,R2,#0x700
        STR      R2,[R0, #+16]
// 1238   
// 1239   /* Get the Flash Wait State (Latency) configuration ------------------------*/   
// 1240   *pFLatency = (uint32_t)(FLASH->ACR & FLASH_ACR_LATENCY); 
        LDR.N    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        STR      R0,[R1, #+0]
// 1241 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
// 1242 
// 1243 /**
// 1244   * @brief This function handles the RCC CSS interrupt request.
// 1245   * @note This API should be called under the NMI_Handler().
// 1246   * @retval None
// 1247   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_RCC_NMI_IRQHandler
        THUMB
// 1248 void HAL_RCC_NMI_IRQHandler(void)
// 1249 {
HAL_RCC_NMI_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1250   /* Check RCC CSSF flag  */
// 1251   if(__HAL_RCC_GET_IT(RCC_IT_CSS))
        LDR.N    R0,??DataTable13_15  ;; 0x4002380c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??HAL_RCC_NMI_IRQHandler_0
// 1252   {
// 1253     /* RCC Clock Security System interrupt user callback */
// 1254     HAL_RCC_CSSCallback();
          CFI FunCall HAL_RCC_CSSCallback
        BL       HAL_RCC_CSSCallback
// 1255     
// 1256     /* Clear RCC CSS pending bit */
// 1257     __HAL_RCC_CLEAR_IT(RCC_IT_CSS);
        MOVS     R0,#+128
        LDR.N    R1,??DataTable13_16  ;; 0x4002380e
        STRB     R0,[R1, #+0]
// 1258   }
// 1259 }
??HAL_RCC_NMI_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40023834
// 1260 
// 1261 /**
// 1262   * @brief  RCC Clock Security System interrupt callback
// 1263   * @retval none
// 1264   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_RCC_CSSCallback
          CFI NoCalls
        THUMB
// 1265 __weak void HAL_RCC_CSSCallback(void)
// 1266 {
// 1267   /* NOTE : This function Should not be modified, when the callback is needed,
// 1268     the HAL_RCC_CSSCallback could be implemented in the user file
// 1269     */ 
// 1270 }
HAL_RCC_CSSCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
// 1271 
// 1272 /**
// 1273   * @}
// 1274   */
// 1275 
// 1276 /**
// 1277   * @}
// 1278   */
// 1279 
// 1280 /* Private function prototypes -----------------------------------------------*/
// 1281 /** @addtogroup RCC_Private_Functions
// 1282   * @{
// 1283   */
// 1284 /**
// 1285   * @brief  Update number of Flash wait states in line with MSI range and current 
// 1286             voltage range
// 1287   * @param  MSIrange  MSI range value from RCC_MSIRANGE_0 to RCC_MSIRANGE_6
// 1288   * @retval HAL status
// 1289   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function RCC_SetFlashLatencyFromMSIRange
        THUMB
// 1290 static HAL_StatusTypeDef RCC_SetFlashLatencyFromMSIRange(uint32_t MSIrange)
// 1291 {
RCC_SetFlashLatencyFromMSIRange:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
// 1292   uint32_t vos = 0;
        MOVS     R0,#+0
// 1293   uint32_t latency = FLASH_LATENCY_0;  /* default value 0WS */
        MOVS     R5,#+0
// 1294 
// 1295   /* HCLK can reach 4 MHz only if AHB prescaler = 1 */
// 1296   if (READ_BIT(RCC->CFGR, RCC_CFGR_HPRE) == RCC_SYSCLK_DIV1)
        LDR.N    R0,??DataTable13_9  ;; 0x40023808
        LDR      R0,[R0, #+0]
        TST      R0,#0xF0
        BNE.N    ??RCC_SetFlashLatencyFromMSIRange_0
// 1297   {
// 1298     if(__HAL_RCC_PWR_IS_CLK_ENABLED())
        LDR.N    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??RCC_SetFlashLatencyFromMSIRange_1
// 1299     {
// 1300       vos = HAL_PWREx_GetVoltageRange();
          CFI FunCall HAL_PWREx_GetVoltageRange
        BL       HAL_PWREx_GetVoltageRange
        B.N      ??RCC_SetFlashLatencyFromMSIRange_2
// 1301     }
// 1302     else
// 1303     {
// 1304       __HAL_RCC_PWR_CLK_ENABLE();
??RCC_SetFlashLatencyFromMSIRange_1:
        LDR.N    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable13_3  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 1305       vos = HAL_PWREx_GetVoltageRange();
          CFI FunCall HAL_PWREx_GetVoltageRange
        BL       HAL_PWREx_GetVoltageRange
// 1306       __HAL_RCC_PWR_CLK_DISABLE();
        LDR.N    R1,??DataTable13_3  ;; 0x40023824
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10000000
        LDR.N    R2,??DataTable13_3  ;; 0x40023824
        STR      R1,[R2, #+0]
// 1307     }
// 1308     
// 1309     /* Check if need to set latency 1 only for Range 3 & HCLK = 4MHz */
// 1310     if((vos == PWR_REGULATOR_VOLTAGE_SCALE3) && (MSIrange == RCC_MSIRANGE_6))
??RCC_SetFlashLatencyFromMSIRange_2:
        CMP      R0,#+6144
        BNE.N    ??RCC_SetFlashLatencyFromMSIRange_0
        CMP      R4,#+49152
        BNE.N    ??RCC_SetFlashLatencyFromMSIRange_0
// 1311     {
// 1312       latency = FLASH_LATENCY_1; /* 1WS */
        MOVS     R5,#+1
// 1313     }
// 1314   }
// 1315   
// 1316   __HAL_FLASH_SET_LATENCY(latency);
??RCC_SetFlashLatencyFromMSIRange_0:
        CMP      R5,#+1
        BNE.N    ??RCC_SetFlashLatencyFromMSIRange_3
        LDR.N    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
??RCC_SetFlashLatencyFromMSIRange_3:
        LDR.N    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        ORRS     R0,R5,R0
        LDR.N    R1,??DataTable13_5  ;; 0x40023c00
        STR      R0,[R1, #+0]
// 1317   
// 1318   /* Check that the new number of wait states is taken into account to access the Flash
// 1319      memory by reading the FLASH_ACR register */
// 1320   if((FLASH->ACR & FLASH_ACR_LATENCY) != latency)
        LDR.N    R0,??DataTable13_5  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        CMP      R0,R5
        BEQ.N    ??RCC_SetFlashLatencyFromMSIRange_4
// 1321   {
// 1322     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??RCC_SetFlashLatencyFromMSIRange_5
// 1323   }
// 1324   
// 1325   return HAL_OK;
??RCC_SetFlashLatencyFromMSIRange_4:
        MOVS     R0,#+0
??RCC_SetFlashLatencyFromMSIRange_5:
        POP      {R1,R4,R5,PC}    ;; return
// 1326 }
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x42470000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     AHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x42470680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x40023824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x40023c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x4002381c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0x16e3600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     PLLMulTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     APBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     0x4002380e

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0

        END
// 1327 
// 1328 /**
// 1329   * @}
// 1330   */
// 1331   
// 1332 #endif /* HAL_RCC_MODULE_ENABLED */
// 1333 /**
// 1334   * @}
// 1335   */
// 1336 
// 1337 /**
// 1338   * @}
// 1339   */
// 1340 
// 1341 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//    20 bytes in section .rodata
// 3 864 bytes in section .text
// 
// 3 864 bytes of CODE  memory
//    20 bytes of CONST memory
//
//Errors: none
//Warnings: none
