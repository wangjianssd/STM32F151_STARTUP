///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_adc.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_adc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   This file provides firmware functions to manage the following 
//    8   *          functionalities of the Analog to Digital Convertor (ADC)
//    9   *          peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *             ++ Initialization and Configuration of ADC
//   12   *           + Operation functions
//   13   *             ++ Start, stop, get result of conversions of regular
//   14   *                group, using 3 possible modes: polling, interruption or DMA.
//   15   *           + Control functions
//   16   *             ++ Channels configuration on regular group
//   17   *             ++ Channels configuration on injected group
//   18   *             ++ Analog Watchdog configuration
//   19   *           + State functions
//   20   *             ++ ADC state machine management
//   21   *             ++ Interrupts and flags management
//   22   *          Other functions (extended functions) are available in file 
//   23   *          "stm32l1xx_hal_adc_ex.c".
//   24   *
//   25   @verbatim
//   26   ==============================================================================
//   27                      ##### ADC peripheral features #####
//   28   ==============================================================================
//   29   [..]
//   30   (+) 12-bit, 10-bit, 8-bit or 6-bit configurable resolution
//   31 
//   32   (+) Interrupt generation at the end of regular conversion, end of injected
//   33       conversion, and in case of analog watchdog or overrun events.
//   34   
//   35   (+) Single and continuous conversion modes.
//   36   
//   37   (+) Scan mode for conversion of several channels sequentially.
//   38   
//   39   (+) Data alignment with in-built data coherency.
//   40   
//   41   (+) Programmable sampling time (channel wise)
//   42   
//   43   (+) ADC conversion of regular group and injected group.
//   44   
//   45   (+) External trigger (timer or EXTI) with configurable polarity
//   46       for both regular and injected groups.
//   47   
//   48   (+) DMA request generation for transfer of conversions data of regular group.
//   49   
//   50   (+) ADC offset on injected channels
//   51   
//   52   (+) ADC supply requirements: 2.4 V to 3.6 V at full speed and down to 1.8 V at 
//   53       slower speed.
//   54   
//   55   (+) ADC input range: from Vref- (connected to Vssa) to Vref+ (connected to 
//   56       Vdda or to an external voltage reference).
//   57   
//   58   
//   59                      ##### How to use this driver #####
//   60   ==============================================================================
//   61     [..]
//   62 
//   63      *** Configuration of top level parameters related to ADC ***
//   64      ============================================================
//   65      [..]
//   66 
//   67     (#) Enable the ADC interface
//   68       (++) As prerequisite, ADC clock must be configured at RCC top level.
//   69            Caution: On STM32L1, ADC clock frequency max is 16MHz (refer
//   70                     to device datasheet).
//   71                     Therefore, ADC clock prescaler must be configured in 
//   72                     function of ADC clock source frequency to remain below
//   73                     this maximum frequency.
//   74 
//   75         (++) Two clock settings are mandatory: 
//   76              (+++) ADC clock (core clock).
//   77              (+++) ADC clock (conversions clock).
//   78                    Only one possible clock source: derived from HSI RC 16MHz oscillator
//   79                    (HSI). 
//   80                    ADC is connected directly to HSI RC 16MHz oscillator.
//   81                    Therefore, RCC PLL setting has no impact on ADC.
//   82                    PLL can be disabled (".PLL.PLLState = RCC_PLL_NONE") or 
//   83                    enabled with HSI16 as clock source
//   84                    (".PLL.PLLSource = RCC_PLLSOURCE_HSI") to be used as device 
//   85                    main clock source SYSCLK.
//   86                    The only mandatory setting is ".HSIState = RCC_HSI_ON"
//   87 
//   88              (+++) Example:
//   89                    Into HAL_ADC_MspInit() (recommended code location) or with
//   90                    other device clock parameters configuration:
//   91                (+++) __HAL_RCC_ADC1_CLK_ENABLE();
//   92 
//   93                (+++) HAL_RCC_GetOscConfig(&RCC_OscInitStructure);
//   94                (+++) RCC_OscInitStructure.OscillatorType = (... | RCC_OSCILLATORTYPE_HSI);
//   95                (+++) RCC_OscInitStructure.HSIState = RCC_HSI_ON;
//   96                (+++) RCC_OscInitStructure.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
//   97                (+++) RCC_OscInitStructure.PLL.PLLState = RCC_PLL_NONE;
//   98                (+++) RCC_OscInitStructure.PLL.PLLSource = ...
//   99                (+++) RCC_OscInitStructure.PLL...
//  100                (+++) HAL_RCC_OscConfig(&RCC_OscInitStructure);
//  101 
//  102         (++) ADC clock prescaler is configured at ADC level with
//  103              parameter "ClockPrescaler" using function HAL_ADC_Init().
//  104 
//  105     (#) ADC pins configuration
//  106          (++) Enable the clock for the ADC GPIOs
//  107               using macro __HAL_RCC_GPIOx_CLK_ENABLE()
//  108          (++) Configure these ADC pins in analog mode
//  109               using function HAL_GPIO_Init()
//  110 
//  111     (#) Optionally, in case of usage of ADC with interruptions:
//  112          (++) Configure the NVIC for ADC
//  113               using function HAL_NVIC_EnableIRQ(ADCx_IRQn)
//  114          (++) Insert the ADC interruption handler function HAL_ADC_IRQHandler() 
//  115               into the function of corresponding ADC interruption vector 
//  116               ADCx_IRQHandler().
//  117 
//  118     (#) Optionally, in case of usage of DMA:
//  119          (++) Configure the DMA (DMA channel, mode normal or circular, ...)
//  120               using function HAL_DMA_Init().
//  121          (++) Configure the NVIC for DMA
//  122               using function HAL_NVIC_EnableIRQ(DMAx_Channelx_IRQn)
//  123          (++) Insert the ADC interruption handler function HAL_ADC_IRQHandler() 
//  124               into the function of corresponding DMA interruption vector 
//  125               DMAx_Channelx_IRQHandler().
//  126 
//  127      *** Configuration of ADC, groups regular/injected, channels parameters ***
//  128      ==========================================================================
//  129      [..]
//  130 
//  131     (#) Configure the ADC parameters (resolution, data alignment, ...)
//  132         and regular group parameters (conversion trigger, sequencer, ...)
//  133         using function HAL_ADC_Init().
//  134 
//  135     (#) Configure the channels for regular group parameters (channel number, 
//  136         channel rank into sequencer, ..., into regular group)
//  137         using function HAL_ADC_ConfigChannel().
//  138 
//  139     (#) Optionally, configure the injected group parameters (conversion trigger, 
//  140         sequencer, ..., of injected group)
//  141         and the channels for injected group parameters (channel number, 
//  142         channel rank into sequencer, ..., into injected group)
//  143         using function HAL_ADCEx_InjectedConfigChannel().
//  144 
//  145     (#) Optionally, configure the analog watchdog parameters (channels
//  146         monitored, thresholds, ...)
//  147         using function HAL_ADC_AnalogWDGConfig().
//  148 
//  149     (#) Optionally, for devices with several ADC instances: configure the 
//  150         multimode parameters
//  151         using function HAL_ADCEx_MultiModeConfigChannel().
//  152 
//  153      *** Execution of ADC conversions ***
//  154      ====================================
//  155      [..]
//  156 
//  157     (#) ADC driver can be used among three modes: polling, interruption,
//  158         transfer by DMA.
//  159 
//  160         (++) ADC conversion by polling:
//  161           (+++) Activate the ADC peripheral and start conversions
//  162                 using function HAL_ADC_Start()
//  163           (+++) Wait for ADC conversion completion 
//  164                 using function HAL_ADC_PollForConversion()
//  165                 (or for injected group: HAL_ADCEx_InjectedPollForConversion() )
//  166           (+++) Retrieve conversion results 
//  167                 using function HAL_ADC_GetValue()
//  168                 (or for injected group: HAL_ADCEx_InjectedGetValue() )
//  169           (+++) Stop conversion and disable the ADC peripheral 
//  170                 using function HAL_ADC_Stop()
//  171 
//  172         (++) ADC conversion by interruption: 
//  173           (+++) Activate the ADC peripheral and start conversions
//  174                 using function HAL_ADC_Start_IT()
//  175           (+++) Wait for ADC conversion completion by call of function
//  176                 HAL_ADC_ConvCpltCallback()
//  177                 (this function must be implemented in user program)
//  178                 (or for injected group: HAL_ADCEx_InjectedConvCpltCallback() )
//  179           (+++) Retrieve conversion results 
//  180                 using function HAL_ADC_GetValue()
//  181                 (or for injected group: HAL_ADCEx_InjectedGetValue() )
//  182           (+++) Stop conversion and disable the ADC peripheral 
//  183                 using function HAL_ADC_Stop_IT()
//  184 
//  185         (++) ADC conversion with transfer by DMA:
//  186           (+++) Activate the ADC peripheral and start conversions
//  187                 using function HAL_ADC_Start_DMA()
//  188           (+++) Wait for ADC conversion completion by call of function
//  189                 HAL_ADC_ConvCpltCallback() or HAL_ADC_ConvHalfCpltCallback()
//  190                 (these functions must be implemented in user program)
//  191           (+++) Conversion results are automatically transferred by DMA into
//  192                 destination variable address.
//  193           (+++) Stop conversion and disable the ADC peripheral 
//  194                 using function HAL_ADC_Stop_DMA()
//  195 
//  196         (++) For devices with several ADCs: ADC multimode conversion 
//  197              with transfer by DMA:
//  198           (+++) Activate the ADC peripheral (slave) and start conversions
//  199                 using function HAL_ADC_Start()
//  200           (+++) Activate the ADC peripheral (master) and start conversions
//  201                 using function HAL_ADCEx_MultiModeStart_DMA()
//  202           (+++) Wait for ADC conversion completion by call of function
//  203                 HAL_ADC_ConvCpltCallback() or HAL_ADC_ConvHalfCpltCallback()
//  204                 (these functions must be implemented in user program)
//  205           (+++) Conversion results are automatically transferred by DMA into
//  206                 destination variable address.
//  207           (+++) Stop conversion and disable the ADC peripheral (master)
//  208                 using function HAL_ADCEx_MultiModeStop_DMA()
//  209           (+++) Stop conversion and disable the ADC peripheral (slave)
//  210                 using function HAL_ADC_Stop_IT()
//  211 
//  212      [..]
//  213 
//  214     (@) Callback functions must be implemented in user program:
//  215       (+@) HAL_ADC_ErrorCallback()
//  216       (+@) HAL_ADC_LevelOutOfWindowCallback() (callback of analog watchdog)
//  217       (+@) HAL_ADC_ConvCpltCallback()
//  218       (+@) HAL_ADC_ConvHalfCpltCallback
//  219       (+@) HAL_ADCEx_InjectedConvCpltCallback()
//  220 
//  221      *** Deinitialization of ADC ***
//  222      ============================================================
//  223      [..]
//  224 
//  225     (#) Disable the ADC interface
//  226       (++) ADC clock can be hard reset and disabled at RCC top level.
//  227         (++) Hard reset of ADC peripherals
//  228              using macro __ADCx_FORCE_RESET(), __ADCx_RELEASE_RESET().
//  229         (++) ADC clock disable
//  230              using the equivalent macro/functions as configuration step.
//  231              (+++) Example:
//  232                    Into HAL_ADC_MspDeInit() (recommended code location) or with
//  233                    other device clock parameters configuration:
//  234                (+++) HAL_RCC_GetOscConfig(&RCC_OscInitStructure);
//  235                (+++) RCC_OscInitStructure.OscillatorType = RCC_OSCILLATORTYPE_HSI;
//  236                (+++) RCC_OscInitStructure.HSIState = RCC_HSI_OFF; (if not used for system clock)
//  237                (+++) HAL_RCC_OscConfig(&RCC_OscInitStructure);
//  238 
//  239     (#) ADC pins configuration
//  240          (++) Disable the clock for the ADC GPIOs
//  241               using macro __HAL_RCC_GPIOx_CLK_DISABLE()
//  242 
//  243     (#) Optionally, in case of usage of ADC with interruptions:
//  244          (++) Disable the NVIC for ADC
//  245               using function HAL_NVIC_EnableIRQ(ADCx_IRQn)
//  246 
//  247     (#) Optionally, in case of usage of DMA:
//  248          (++) Deinitialize the DMA
//  249               using function HAL_DMA_Init().
//  250          (++) Disable the NVIC for DMA
//  251               using function HAL_NVIC_EnableIRQ(DMAx_Channelx_IRQn)
//  252 
//  253     [..]
//  254   
//  255     @endverbatim
//  256   ******************************************************************************
//  257   * @attention
//  258   *
//  259   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  260   *
//  261   * Redistribution and use in source and binary forms, with or without modification,
//  262   * are permitted provided that the following conditions are met:
//  263   *   1. Redistributions of source code must retain the above copyright notice,
//  264   *      this list of conditions and the following disclaimer.
//  265   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  266   *      this list of conditions and the following disclaimer in the documentation
//  267   *      and/or other materials provided with the distribution.
//  268   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  269   *      may be used to endorse or promote products derived from this software
//  270   *      without specific prior written permission.
//  271   *
//  272   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  273   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  274   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  275   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  276   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  277   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  278   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  279   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  280   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  281   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  282   *
//  283   ******************************************************************************  
//  284   */
//  285 
//  286 /* Includes ------------------------------------------------------------------*/
//  287 #include "stm32l1xx_hal.h"
//  288 
//  289 /** @addtogroup STM32L1xx_HAL_Driver
//  290   * @{
//  291   */
//  292 
//  293 /** @defgroup ADC ADC
//  294   * @brief ADC HAL module driver
//  295   * @{
//  296   */
//  297 
//  298 #ifdef HAL_ADC_MODULE_ENABLED
//  299 
//  300 /* Private typedef -----------------------------------------------------------*/
//  301 /* Private define ------------------------------------------------------------*/
//  302 /** @defgroup ADC_Private_Constants ADC Private Constants
//  303   * @{
//  304   */
//  305 
//  306   /* Timeout values for ADC enable and disable settling time.                 */
//  307   /* Values defined to be higher than worst cases: low clocks freq,           */
//  308   /* maximum prescaler.                                                       */
//  309   /* Ex of profile low frequency : Clock source at 0.1 MHz, ADC clock         */
//  310   /* prescaler 4, sampling time 7.5 ADC clock cycles, resolution 12 bits.     */
//  311   /* Unit: ms                                                                 */
//  312   #define ADC_ENABLE_TIMEOUT              ((uint32_t) 2)
//  313   #define ADC_DISABLE_TIMEOUT             ((uint32_t) 2)
//  314 
//  315   /* Delay for ADC stabilization time.                                        */
//  316   /* Maximum delay is 1us (refer to device datasheet, parameter tSTAB).       */
//  317   /* Unit: us                                                                 */
//  318   #define ADC_STAB_DELAY_US               ((uint32_t) 3)
//  319 
//  320   /* Delay for temperature sensor stabilization time.                         */
//  321   /* Maximum delay is 10us (refer to device datasheet, parameter tSTART).     */
//  322   /* Unit: us                                                                 */
//  323   #define ADC_TEMPSENSOR_DELAY_US         ((uint32_t) 10)
//  324 
//  325 /**
//  326   * @}
//  327   */
//  328 
//  329 /* Private macro -------------------------------------------------------------*/
//  330 /* Private variables ---------------------------------------------------------*/
//  331 /* Private function prototypes -----------------------------------------------*/
//  332 /** @defgroup ADC_Private_Functions ADC Private Functions
//  333   * @{
//  334   */
//  335 static void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma);
//  336 static void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma);
//  337 static void ADC_DMAError(DMA_HandleTypeDef *hdma);
//  338 /**
//  339   * @}
//  340   */
//  341 
//  342 /* Exported functions --------------------------------------------------------*/
//  343 
//  344 /** @defgroup ADC_Exported_Functions ADC Exported Functions
//  345   * @{
//  346   */
//  347 
//  348 /** @defgroup ADC_Exported_Functions_Group1 ADC Initialization/de-initialization functions 
//  349   * @brief    ADC Initialization and Configuration functions
//  350   *
//  351 @verbatim    
//  352  ===============================================================================
//  353               ##### Initialization and de-initialization functions #####
//  354  ===============================================================================
//  355     [..]  This section provides functions allowing to:
//  356       (+) Initialize and configure the ADC. 
//  357       (+) De-initialize the ADC.
//  358 @endverbatim
//  359   * @{
//  360   */
//  361 
//  362 /**
//  363   * @brief  Initializes the ADC peripheral and regular group according to  
//  364   *         parameters specified in structure "ADC_InitTypeDef".
//  365   * @note   As prerequisite, ADC clock must be configured at RCC top level
//  366   *         (clock source APB2).
//  367   *         See commented example code below that can be copied and uncommented 
//  368   *         into HAL_ADC_MspInit().
//  369   * @note   Possibility to update parameters on the fly:
//  370   *         This function initializes the ADC MSP (HAL_ADC_MspInit()) only when
//  371   *         coming from ADC state reset. Following calls to this function can
//  372   *         be used to reconfigure some parameters of ADC_InitTypeDef  
//  373   *         structure on the fly, without modifying MSP configuration. If ADC  
//  374   *         MSP has to be modified again, HAL_ADC_DeInit() must be called
//  375   *         before HAL_ADC_Init().
//  376   *         The setting of these parameters is conditioned to ADC state.
//  377   *         For parameters constraints, see comments of structure 
//  378   *         "ADC_InitTypeDef".
//  379   * @note   This function configures the ADC within 2 scopes: scope of entire 
//  380   *         ADC and scope of regular group. For parameters details, see comments 
//  381   *         of structure "ADC_InitTypeDef".
//  382   * @param  hadc: ADC handle
//  383   * @retval HAL status
//  384   */
//  385 HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef* hadc)
//  386 {
//  387   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  388   uint32_t tmp_cr1 = 0;
//  389   uint32_t tmp_cr2 = 0;
//  390   
//  391   /* Check ADC handle */
//  392   if(hadc == NULL)
//  393   {
//  394     return HAL_ERROR;
//  395   }
//  396   
//  397   /* Check the parameters */
//  398   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  399   assert_param(IS_ADC_CLOCKPRESCALER(hadc->Init.ClockPrescaler));
//  400   assert_param(IS_ADC_RESOLUTION(hadc->Init.Resolution));
//  401   assert_param(IS_ADC_DATA_ALIGN(hadc->Init.DataAlign)); 
//  402   assert_param(IS_ADC_SCAN_MODE(hadc->Init.ScanConvMode));
//  403   assert_param(IS_ADC_EOC_SELECTION(hadc->Init.EOCSelection));
//  404   assert_param(IS_ADC_AUTOWAIT(hadc->Init.LowPowerAutoWait));
//  405   assert_param(IS_ADC_AUTOPOWEROFF(hadc->Init.LowPowerAutoPowerOff));
//  406   assert_param(IS_ADC_CHANNELSBANK(hadc->Init.ChannelsBank));
//  407   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
//  408   assert_param(IS_ADC_EXTTRIG(hadc->Init.ExternalTrigConv));
//  409   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DMAContinuousRequests));
//  410   
//  411   if(hadc->Init.ScanConvMode != ADC_SCAN_DISABLE)
//  412   {
//  413     assert_param(IS_ADC_REGULAR_NB_CONV(hadc->Init.NbrOfConversion));
//  414     assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DiscontinuousConvMode));
//  415     if(hadc->Init.DiscontinuousConvMode != DISABLE)
//  416     {
//  417       assert_param(IS_ADC_REGULAR_DISCONT_NUMBER(hadc->Init.NbrOfDiscConversion));
//  418     }
//  419   }
//  420       
//  421   if(hadc->Init.ExternalTrigConv != ADC_SOFTWARE_START)
//  422   {
//  423     assert_param(IS_ADC_EXTTRIG_EDGE(hadc->Init.ExternalTrigConvEdge));
//  424   }
//  425   
//  426   
//  427   /* As prerequisite, into HAL_ADC_MspInit(), ADC clock must be configured    */
//  428   /* at RCC top level.                                                        */
//  429   /* Refer to header of this file for more details on clock enabling          */
//  430   /* procedure.                                                               */
//  431 
//  432   /* Actions performed only if ADC is coming from state reset:                */
//  433   /* - Initialization of ADC MSP                                              */
//  434   if (hadc->State == HAL_ADC_STATE_RESET)
//  435   {
//  436     /* Initialize ADC error code */
//  437     ADC_CLEAR_ERRORCODE(hadc);
//  438     
//  439     /* Allocate lock resource and initialize it */
//  440     hadc->Lock = HAL_UNLOCKED;
//  441     
//  442     /* Enable SYSCFG clock to control the routing Interface (RI) */
//  443     __HAL_RCC_SYSCFG_CLK_ENABLE();
//  444     
//  445     /* Init the low level hardware */
//  446     HAL_ADC_MspInit(hadc);
//  447   }
//  448   
//  449   /* Configuration of ADC parameters if previous preliminary actions are      */ 
//  450   /* correctly completed.                                                     */
//  451   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
//  452   {
//  453     /* Set ADC state */
//  454     ADC_STATE_CLR_SET(hadc->State,
//  455                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
//  456                       HAL_ADC_STATE_BUSY_INTERNAL);
//  457     
//  458     /* Set ADC parameters */
//  459     
//  460     /* Configuration of common ADC clock: clock source HSI with selectable    */
//  461     /* prescaler                                                              */
//  462     MODIFY_REG(ADC->CCR                 ,
//  463                ADC_CCR_ADCPRE           ,
//  464                hadc->Init.ClockPrescaler );
//  465 
//  466     /* Configuration of ADC:                                                  */
//  467     /*  - external trigger polarity                                           */
//  468     /*  - End of conversion selection                                         */
//  469     /*  - DMA continuous request                                              */
//  470     /*  - Channels bank (Banks availability depends on devices categories)    */
//  471     /*  - continuous conversion mode                                          */
//  472     tmp_cr2 |= (hadc->Init.DataAlign                                 |
//  473                 hadc->Init.EOCSelection                              |
//  474                 ADC_CR2_DMACONTREQ(hadc->Init.DMAContinuousRequests) |
//  475                 hadc->Init.ChannelsBank                              |
//  476                 ADC_CR2_CONTINUOUS(hadc->Init.ContinuousConvMode)     );
//  477 
//  478     /* Enable external trigger if trigger selection is different of software  */
//  479     /* start.                                                                 */
//  480     /* Note: This configuration keeps the hardware feature of parameter       */
//  481     /*       ExternalTrigConvEdge "trigger edge none" equivalent to           */
//  482     /*       software start.                                                  */
//  483     if (hadc->Init.ExternalTrigConv != ADC_SOFTWARE_START)
//  484     {
//  485       tmp_cr2 |= ( hadc->Init.ExternalTrigConv    |
//  486                   hadc->Init.ExternalTrigConvEdge );
//  487     }
//  488     
//  489     /* Parameters update conditioned to ADC state:                            */
//  490     /* Parameters that can be updated only when ADC is disabled:              */
//  491     /*  - delay selection (LowPowerAutoWait mode)                             */
//  492     /*  - resolution                                                          */
//  493     /*  - auto power off (LowPowerAutoPowerOff mode)                          */
//  494     /*  - scan mode                                                           */
//  495     /*  - discontinuous mode disable/enable                                   */
//  496     /*  - discontinuous mode number of conversions                            */
//  497     if ((ADC_IS_ENABLE(hadc) == RESET))
//  498     {
//  499       tmp_cr2 |= hadc->Init.LowPowerAutoWait;
//  500       
//  501       tmp_cr1 |= (hadc->Init.Resolution                     |
//  502                   hadc->Init.LowPowerAutoPowerOff           |
//  503                   ADC_CR1_SCAN_SET(hadc->Init.ScanConvMode)  );
//  504       
//  505       /* Enable discontinuous mode only if continuous mode is disabled */
//  506       /* Note: If parameter "Init.ScanConvMode" is set to disable, parameter  */
//  507       /*       discontinuous is set anyway, but has no effect on ADC HW.      */
//  508       if (hadc->Init.DiscontinuousConvMode == ENABLE)
//  509       {
//  510         if (hadc->Init.ContinuousConvMode == DISABLE)
//  511         {
//  512           /* Enable the selected ADC regular discontinuous mode */
//  513           /* Set the number of channels to be converted in discontinuous mode */
//  514           SET_BIT(tmp_cr1, ADC_CR1_DISCEN                                            |
//  515                            ADC_CR1_DISCONTINUOUS_NUM(hadc->Init.NbrOfDiscConversion)  );
//  516         }
//  517         else
//  518         {
//  519           /* ADC regular group settings continuous and sequencer discontinuous*/
//  520           /* cannot be enabled simultaneously.                                */
//  521           
//  522           /* Update ADC state machine to error */
//  523           SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  524           
//  525           /* Set ADC error code to ADC IP internal error */
//  526           SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
//  527         }
//  528       }
//  529       
//  530       /* Update ADC configuration register CR1 with previous settings */
//  531         MODIFY_REG(hadc->Instance->CR1,
//  532                    ADC_CR1_RES     |
//  533                    ADC_CR1_PDI     |
//  534                    ADC_CR1_PDD     |
//  535                    ADC_CR1_DISCNUM |
//  536                    ADC_CR1_DISCEN  |
//  537                    ADC_CR1_SCAN     ,
//  538                    tmp_cr1           );
//  539     }
//  540     
//  541     /* Update ADC configuration register CR2 with previous settings */
//  542     MODIFY_REG(hadc->Instance->CR2    ,
//  543                ADC_CR2_MASK_ADCINIT() ,
//  544                tmp_cr2                 );
//  545     
//  546     /* Configuration of regular group sequencer:                              */
//  547     /* - if scan mode is disabled, regular channels sequence length is set to */
//  548     /*   0x00: 1 channel converted (channel on regular rank 1)                */
//  549     /*   Parameter "NbrOfConversion" is discarded.                            */
//  550     /*   Note: Scan mode is present by hardware on this device and, if        */
//  551     /*   disabled, discards automatically nb of conversions. Anyway, nb of    */
//  552     /*   conversions is forced to 0x00 for alignment over all STM32 devices.  */
//  553     /* - if scan mode is enabled, regular channels sequence length is set to  */
//  554     /*   parameter "NbrOfConversion"                                          */
//  555     if (ADC_CR1_SCAN_SET(hadc->Init.ScanConvMode) == ADC_SCAN_ENABLE)
//  556     {
//  557       MODIFY_REG(hadc->Instance->SQR1                         ,
//  558                  ADC_SQR1_L                                   ,
//  559                  ADC_SQR1_L_SHIFT(hadc->Init.NbrOfConversion)  );
//  560     }
//  561     else
//  562     {
//  563       MODIFY_REG(hadc->Instance->SQR1,
//  564                  ADC_SQR1_L          ,
//  565                  0x00000000           );
//  566     }
//  567     
//  568     /* Check back that ADC registers have effectively been configured to      */
//  569     /* ensure of no potential problem of ADC core IP clocking.                */
//  570     /* Check through register CR2 (excluding execution control bits ADON,     */
//  571     /* JSWSTART, SWSTART and injected trigger bits JEXTEN and JEXTSEL).       */
//  572     if ((READ_REG(hadc->Instance->CR2) & ~(ADC_CR2_ADON |
//  573                                            ADC_CR2_SWSTART | ADC_CR2_JSWSTART |
//  574                                            ADC_CR2_JEXTEN  | ADC_CR2_JEXTSEL   ))
//  575          == tmp_cr2)
//  576     {
//  577       /* Set ADC error code to none */
//  578       ADC_CLEAR_ERRORCODE(hadc);
//  579       
//  580       /* Set the ADC state */
//  581       ADC_STATE_CLR_SET(hadc->State,
//  582                         HAL_ADC_STATE_BUSY_INTERNAL,
//  583                         HAL_ADC_STATE_READY);
//  584     }
//  585     else
//  586     {
//  587       /* Update ADC state machine to error */
//  588       ADC_STATE_CLR_SET(hadc->State,
//  589                         HAL_ADC_STATE_BUSY_INTERNAL,
//  590                         HAL_ADC_STATE_ERROR_INTERNAL);
//  591       
//  592       /* Set ADC error code to ADC IP internal error */
//  593       SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
//  594       
//  595       tmp_hal_status = HAL_ERROR;
//  596     }
//  597     
//  598   }
//  599   else
//  600   {
//  601     tmp_hal_status = HAL_ERROR;
//  602   }
//  603   
//  604   /* Return function status */
//  605   return tmp_hal_status;
//  606 }
//  607 
//  608 /**
//  609   * @brief  Deinitialize the ADC peripheral registers to its default reset values.
//  610   * @note   To not impact other ADCs, reset of common ADC registers have been
//  611   *         left commented below.
//  612   *         If needed, the example code can be copied and uncommented into
//  613   *         function HAL_ADC_MspDeInit().
//  614   * @param  hadc: ADC handle
//  615   * @retval HAL status
//  616   */
//  617 HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef* hadc)
//  618 {
//  619   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  620   
//  621   /* Check ADC handle */
//  622   if(hadc == NULL)
//  623   {
//  624     return HAL_ERROR;
//  625   }
//  626   
//  627   /* Check the parameters */
//  628   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  629   
//  630   /* Set ADC state */
//  631   SET_BIT(hadc->State, HAL_ADC_STATE_BUSY_INTERNAL);
//  632   
//  633   /* Stop potential conversion on going, on regular and injected groups */
//  634   /* Disable ADC peripheral */
//  635   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
//  636   
//  637   
//  638   /* Configuration of ADC parameters if previous preliminary actions are      */ 
//  639   /* correctly completed.                                                     */
//  640   if (tmp_hal_status == HAL_OK)
//  641   {
//  642     /* ========== Reset ADC registers ========== */
//  643     /* Reset register SR */
//  644     __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_AWD | ADC_FLAG_JEOC | ADC_FLAG_EOC |
//  645                                 ADC_FLAG_JSTRT | ADC_FLAG_STRT));
//  646                          
//  647     /* Reset register CR1 */
//  648     CLEAR_BIT(hadc->Instance->CR1, (ADC_CR1_OVRIE   | ADC_CR1_RES     | ADC_CR1_AWDEN  |
//  649                                     ADC_CR1_JAWDEN  | ADC_CR1_PDI     | ADC_CR1_PDD    |
//  650                                     ADC_CR1_DISCNUM | ADC_CR1_JDISCEN | ADC_CR1_DISCEN |
//  651                                     ADC_CR1_JAUTO   | ADC_CR1_AWDSGL  | ADC_CR1_SCAN   |
//  652                                     ADC_CR1_JEOCIE  | ADC_CR1_AWDIE   | ADC_CR1_EOCIE  |
//  653                                     ADC_CR1_AWDCH                                       ));
//  654     
//  655     /* Reset register CR2 */
//  656     ADC_CR2_CLEAR(hadc);
//  657     
//  658     /* Reset register SMPR0 */
//  659     ADC_SMPR0_CLEAR(hadc);
//  660     
//  661     /* Reset register SMPR1 */
//  662     ADC_SMPR1_CLEAR(hadc);
//  663     
//  664     /* Reset register SMPR2 */
//  665     CLEAR_BIT(hadc->Instance->SMPR2, (ADC_SMPR2_SMP19 | ADC_SMPR2_SMP18 | ADC_SMPR2_SMP17 | 
//  666                                       ADC_SMPR2_SMP16 | ADC_SMPR2_SMP15 | ADC_SMPR2_SMP14 | 
//  667                                       ADC_SMPR2_SMP13 | ADC_SMPR2_SMP12 | ADC_SMPR2_SMP11 |
//  668                                       ADC_SMPR2_SMP10                                      ));
//  669     
//  670     /* Reset register SMPR3 */
//  671     CLEAR_BIT(hadc->Instance->SMPR3, (ADC_SMPR3_SMP9 | ADC_SMPR3_SMP8 | ADC_SMPR3_SMP7 | 
//  672                                       ADC_SMPR3_SMP6 | ADC_SMPR3_SMP5 | ADC_SMPR3_SMP4 | 
//  673                                       ADC_SMPR3_SMP3 | ADC_SMPR3_SMP2 | ADC_SMPR3_SMP1 |
//  674                                       ADC_SMPR3_SMP0                                    ));
//  675     
//  676     /* Reset register JOFR1 */
//  677     CLEAR_BIT(hadc->Instance->JOFR1, ADC_JOFR1_JOFFSET1);
//  678     /* Reset register JOFR2 */
//  679     CLEAR_BIT(hadc->Instance->JOFR2, ADC_JOFR2_JOFFSET2);
//  680     /* Reset register JOFR3 */
//  681     CLEAR_BIT(hadc->Instance->JOFR3, ADC_JOFR3_JOFFSET3);
//  682     /* Reset register JOFR4 */
//  683     CLEAR_BIT(hadc->Instance->JOFR4, ADC_JOFR4_JOFFSET4);
//  684     
//  685     /* Reset register HTR */
//  686     CLEAR_BIT(hadc->Instance->HTR, ADC_HTR_HT);
//  687     /* Reset register LTR */
//  688     CLEAR_BIT(hadc->Instance->LTR, ADC_LTR_LT);
//  689     
//  690     /* Reset register SQR1 */
//  691     CLEAR_BIT(hadc->Instance->SQR1, (ADC_SQR1_L | __ADC_SQR1_SQXX));
//  692     
//  693     /* Reset register SQR2 */
//  694     CLEAR_BIT(hadc->Instance->SQR2, (ADC_SQR2_SQ24 | ADC_SQR2_SQ23 | ADC_SQR2_SQ22 | 
//  695                                      ADC_SQR2_SQ21 | ADC_SQR2_SQ20 | ADC_SQR2_SQ19  ));
//  696     
//  697     /* Reset register SQR3 */
//  698     CLEAR_BIT(hadc->Instance->SQR3, (ADC_SQR3_SQ18 | ADC_SQR3_SQ17 | ADC_SQR3_SQ16 | 
//  699                                      ADC_SQR3_SQ15 | ADC_SQR3_SQ14 | ADC_SQR3_SQ13  ));
//  700     
//  701     /* Reset register SQR4 */
//  702     CLEAR_BIT(hadc->Instance->SQR4, (ADC_SQR4_SQ12 | ADC_SQR4_SQ11 | ADC_SQR4_SQ10 | 
//  703                                      ADC_SQR4_SQ9  | ADC_SQR4_SQ8  | ADC_SQR4_SQ7   ));
//  704     
//  705     /* Reset register SQR5 */
//  706     CLEAR_BIT(hadc->Instance->SQR5, (ADC_SQR5_SQ6 | ADC_SQR5_SQ5 | ADC_SQR5_SQ4 | 
//  707                                      ADC_SQR5_SQ3 | ADC_SQR5_SQ2 | ADC_SQR5_SQ1  ));
//  708     
//  709     
//  710     /* Reset register JSQR */
//  711     CLEAR_BIT(hadc->Instance->JSQR, (ADC_JSQR_JL |
//  712                                      ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3 | 
//  713                                      ADC_JSQR_JSQ2 | ADC_JSQR_JSQ1  ));
//  714     
//  715     /* Reset register DR */
//  716     /* bits in access mode read only, no direct reset applicable*/
//  717     
//  718     /* Reset registers JDR1, JDR2, JDR3, JDR4 */
//  719     /* bits in access mode read only, no direct reset applicable*/
//  720     
//  721     /* Reset register CCR */
//  722     CLEAR_BIT(ADC->CCR, ADC_CCR_TSVREFE);   
//  723     
//  724     /* ========== Hard reset ADC peripheral ========== */
//  725     /* Performs a global reset of the entire ADC peripheral: ADC state is     */
//  726     /* forced to a similar state after device power-on.                       */
//  727     /* If needed, copy-paste and uncomment the following reset code into      */
//  728     /* function "void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)":              */
//  729     /*                                                                        */
//  730     /*  __HAL_RCC_ADC1_FORCE_RESET()                                          */
//  731     /*  __HAL_RCC_ADC1_RELEASE_RESET()                                        */
//  732     
//  733     /* DeInit the low level hardware */
//  734     HAL_ADC_MspDeInit(hadc);
//  735     
//  736     /* Set ADC error code to none */
//  737     ADC_CLEAR_ERRORCODE(hadc);
//  738     
//  739     /* Set ADC state */
//  740     hadc->State = HAL_ADC_STATE_RESET;
//  741     
//  742   }
//  743   
//  744   /* Process unlocked */
//  745   __HAL_UNLOCK(hadc);
//  746   
//  747   /* Return function status */
//  748   return tmp_hal_status;
//  749 }
//  750 
//  751 /**
//  752   * @brief  Initializes the ADC MSP.
//  753   * @param  hadc: ADC handle
//  754   * @retval None
//  755   */
//  756 __weak void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)
//  757 {
//  758   /* Prevent unused argument(s) compilation warning */
//  759   UNUSED(hadc);
//  760 
//  761   /* NOTE : This function should not be modified. When the callback is needed,
//  762             function HAL_ADC_MspInit must be implemented in the user file.
//  763    */ 
//  764 }
//  765 
//  766 /**
//  767   * @brief  DeInitializes the ADC MSP.
//  768   * @param  hadc: ADC handle
//  769   * @retval None
//  770   */
//  771 __weak void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc)
//  772 {
//  773   /* Prevent unused argument(s) compilation warning */
//  774   UNUSED(hadc);
//  775 
//  776   /* NOTE : This function should not be modified. When the callback is needed,
//  777             function HAL_ADC_MspDeInit must be implemented in the user file.
//  778    */ 
//  779 }
//  780 
//  781 /**
//  782   * @}
//  783   */
//  784 
//  785 /** @defgroup ADC_Exported_Functions_Group2 ADC Input and Output operation functions
//  786  *  @brief    ADC IO operation functions 
//  787  *
//  788 @verbatim   
//  789  ===============================================================================
//  790                       ##### IO operation functions #####
//  791  ===============================================================================
//  792     [..]  This section provides functions allowing to:
//  793       (+) Start conversion of regular group.
//  794       (+) Stop conversion of regular group.
//  795       (+) Poll for conversion complete on regular group.
//  796       (+) Poll for conversion event.
//  797       (+) Get result of regular channel conversion.
//  798       (+) Start conversion of regular group and enable interruptions.
//  799       (+) Stop conversion of regular group and disable interruptions.
//  800       (+) Handle ADC interrupt request
//  801       (+) Start conversion of regular group and enable DMA transfer.
//  802       (+) Stop conversion of regular group and disable ADC DMA transfer.
//  803 @endverbatim
//  804   * @{
//  805   */
//  806 
//  807 /**
//  808   * @brief  Enables ADC, starts conversion of regular group.
//  809   *         Interruptions enabled in this function: None.
//  810   * @param  hadc: ADC handle
//  811   * @retval HAL status
//  812   */
//  813 HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef* hadc)
//  814 {
//  815   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  816   
//  817   /* Check the parameters */
//  818   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  819   
//  820   /* Process locked */
//  821   __HAL_LOCK(hadc);
//  822   
//  823   /* Enable the ADC peripheral */
//  824   tmp_hal_status = ADC_Enable(hadc);
//  825   
//  826   /* Start conversion if ADC is effectively enabled */
//  827   if (tmp_hal_status == HAL_OK)
//  828   {
//  829     /* Set ADC state                                                          */
//  830     /* - Clear state bitfield related to regular group conversion results     */
//  831     /* - Set state bitfield related to regular group operation                */
//  832     ADC_STATE_CLR_SET(hadc->State,
//  833                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
//  834                       HAL_ADC_STATE_REG_BUSY);
//  835     
//  836     /* If conversions on group regular are also triggering group injected,    */
//  837     /* update ADC state.                                                      */
//  838     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
//  839     {
//  840       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
//  841     }
//  842     
//  843     /* State machine update: Check if an injected conversion is ongoing */
//  844     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
//  845     {
//  846       /* Reset ADC error code fields related to conversions on group regular */
//  847       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
//  848     }
//  849     else
//  850     {
//  851       /* Reset ADC all error code fields */
//  852       ADC_CLEAR_ERRORCODE(hadc);
//  853     }
//  854     
//  855     /* Process unlocked */
//  856     /* Unlock before starting ADC conversions: in case of potential           */
//  857     /* interruption, to let the process to ADC IRQ Handler.                   */
//  858     __HAL_UNLOCK(hadc);
//  859     
//  860     /* Clear regular group conversion flag and overrun flag */
//  861     /* (To ensure of no unknown state from potential previous ADC operations) */
//  862     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
//  863     
//  864     /* Enable conversion of regular group.                                    */
//  865     /* If software start has been selected, conversion starts immediately.    */
//  866     /* If external trigger has been selected, conversion will start at next   */
//  867     /* trigger event.                                                         */
//  868     if (ADC_IS_SOFTWARE_START_REGULAR(hadc))
//  869     {
//  870       /* Start ADC conversion on regular group */
//  871       SET_BIT(hadc->Instance->CR2, ADC_CR2_SWSTART);
//  872     }
//  873   }
//  874   
//  875   /* Return function status */
//  876   return tmp_hal_status;
//  877 }
//  878 
//  879 /**
//  880   * @brief  Stop ADC conversion of regular group (and injected channels in 
//  881   *         case of auto_injection mode), disable ADC peripheral.
//  882   * @note:  ADC peripheral disable is forcing stop of potential 
//  883   *         conversion on injected group. If injected group is under use, it
//  884   *         should be preliminarily stopped using HAL_ADCEx_InjectedStop function.
//  885   * @param  hadc: ADC handle
//  886   * @retval HAL status.
//  887   */
//  888 HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef* hadc)
//  889 {
//  890   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  891   
//  892   /* Check the parameters */
//  893   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  894   
//  895   /* Process locked */
//  896   __HAL_LOCK(hadc);
//  897   
//  898   /* Stop potential conversion on going, on regular and injected groups */
//  899   /* Disable ADC peripheral */
//  900   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
//  901   
//  902   /* Check if ADC is effectively disabled */
//  903   if (tmp_hal_status == HAL_OK)
//  904   {
//  905     /* Set ADC state */
//  906     ADC_STATE_CLR_SET(hadc->State,
//  907                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
//  908                       HAL_ADC_STATE_READY);
//  909   }
//  910   
//  911   /* Process unlocked */
//  912   __HAL_UNLOCK(hadc);
//  913   
//  914   /* Return function status */
//  915   return tmp_hal_status;
//  916 }
//  917 
//  918 /**
//  919   * @brief  Wait for regular group conversion to be completed.
//  920   * @note   ADC conversion flags EOS (end of sequence) and EOC (end of
//  921   *         conversion) are cleared by this function, with an exception:
//  922   *         if low power feature "LowPowerAutoWait" is enabled, flags are 
//  923   *         not cleared to not interfere with this feature until data register
//  924   *         is read using function HAL_ADC_GetValue().
//  925   * @note   This function cannot be used in a particular setup: ADC configured 
//  926   *         in DMA mode and polling for end of each conversion (ADC init
//  927   *         parameter "EOCSelection" set to ADC_EOC_SINGLE_CONV).
//  928   *         In this case, DMA resets the flag EOC and polling cannot be
//  929   *         performed on each conversion. Nevertheless, polling can still 
//  930   *         be performed on the complete sequence (ADC init
//  931   *         parameter "EOCSelection" set to ADC_EOC_SEQ_CONV).
//  932   * @param  hadc: ADC handle
//  933   * @param  Timeout: Timeout value in millisecond.
//  934   * @retval HAL status
//  935   */
//  936 HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
//  937 {
//  938   uint32_t tickstart = 0;
//  939  
//  940   /* Check the parameters */
//  941   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  942   
//  943   /* Verification that ADC configuration is compliant with polling for      */
//  944   /* each conversion:                                                       */
//  945   /* Particular case is ADC configured in DMA mode and ADC sequencer with   */
//  946   /* several ranks and polling for end of each conversion.                  */
//  947   /* For code simplicity sake, this particular case is generalized to       */
//  948   /* ADC configured in DMA mode and and polling for end of each conversion. */
//  949   if (HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_EOCS) &&
//  950       HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_DMA)    )
//  951   {
//  952     /* Update ADC state machine to error */
//  953     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  954     
//  955     /* Process unlocked */
//  956     __HAL_UNLOCK(hadc);
//  957     
//  958     return HAL_ERROR;
//  959   }
//  960 
//  961   /* Get tick count */
//  962   tickstart = HAL_GetTick();
//  963   
//  964   /* Wait until End of Conversion flag is raised */
//  965   while(HAL_IS_BIT_CLR(hadc->Instance->SR, ADC_FLAG_EOC))
//  966   {
//  967     /* Check if timeout is disabled (set to infinite wait) */
//  968     if(Timeout != HAL_MAX_DELAY)
//  969     {
//  970       if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
//  971       {
//  972         /* Update ADC state machine to timeout */
//  973         SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
//  974         
//  975         /* Process unlocked */
//  976         __HAL_UNLOCK(hadc);
//  977         
//  978         return HAL_TIMEOUT;
//  979       }
//  980     }
//  981   }
//  982   
//  983   /* Clear end of conversion flag of regular group if low power feature     */
//  984   /* "Auto Wait" is disabled, to not interfere with this feature until data */
//  985   /* register is read using function HAL_ADC_GetValue().                    */
//  986   if (hadc->Init.LowPowerAutoWait == DISABLE)
//  987   {
//  988     /* Clear regular group conversion flag */
//  989     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
//  990   }
//  991   
//  992   /* Update ADC state machine */
//  993   SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
//  994   
//  995   /* Determine whether any further conversion upcoming on group regular       */
//  996   /* by external trigger, continuous mode or scan sequence on going.          */
//  997   /* Note: On STM32L1, there is no independent flag of end of sequence.       */
//  998   /*       The test of scan sequence on going is done either with scan        */
//  999   /*       sequence disabled or with end of conversion flag set to            */
// 1000   /*       of end of sequence.                                                */
// 1001   if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
// 1002      (hadc->Init.ContinuousConvMode == DISABLE)            &&
// 1003      (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) ||
// 1004       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
// 1005   {
// 1006     /* Set ADC state */
// 1007     CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
// 1008     
// 1009     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
// 1010     { 
// 1011       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
// 1012     }
// 1013   }
// 1014   
// 1015   /* Return ADC state */
// 1016   return HAL_OK;
// 1017 }
// 1018 
// 1019 /**
// 1020   * @brief  Poll for conversion event.
// 1021   * @param  hadc: ADC handle
// 1022   * @param  EventType: the ADC event type.
// 1023   *          This parameter can be one of the following values:
// 1024   *            @arg ADC_AWD_EVENT: ADC Analog watchdog event.
// 1025   *            @arg ADC_OVR_EVENT: ADC Overrun event.
// 1026   * @param  Timeout: Timeout value in millisecond.
// 1027   * @retval HAL status
// 1028   */
// 1029 HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeout)
// 1030 {
// 1031   uint32_t tickstart = 0;
// 1032   
// 1033   /* Check the parameters */
// 1034   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1035   assert_param(IS_ADC_EVENT_TYPE(EventType));
// 1036   
// 1037   /* Get tick count */
// 1038   tickstart = HAL_GetTick();
// 1039   
// 1040   /* Check selected event flag */
// 1041   while(__HAL_ADC_GET_FLAG(hadc, EventType) == RESET)
// 1042   {
// 1043     /* Check if timeout is disabled (set to infinite wait) */
// 1044     if(Timeout != HAL_MAX_DELAY)
// 1045     {
// 1046       if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
// 1047       {
// 1048         /* Update ADC state machine to timeout */
// 1049         SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
// 1050         
// 1051         /* Process unlocked */
// 1052         __HAL_UNLOCK(hadc);
// 1053         
// 1054         return HAL_TIMEOUT;
// 1055       }
// 1056     }
// 1057   }
// 1058   
// 1059   switch(EventType)
// 1060   {
// 1061   /* Analog watchdog (level out of window) event */
// 1062   case ADC_AWD_EVENT:
// 1063     /* Set ADC state */
// 1064     SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
// 1065       
// 1066     /* Clear ADC analog watchdog flag */
// 1067     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
// 1068     break;
// 1069   
// 1070   /* Overrun event */
// 1071   default: /* Case ADC_OVR_EVENT */
// 1072     /* Note: On STM32L1, ADC overrun can be set through other parameters      */
// 1073     /*       refer to description of parameter "EOCSelection" for more        */
// 1074     /*       details.                                                         */
// 1075 
// 1076     /* Set ADC state */
// 1077     SET_BIT(hadc->State, HAL_ADC_STATE_REG_OVR);
// 1078     /* Set ADC error code to overrun */
// 1079     SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_OVR);
// 1080     
// 1081     /* Clear ADC overrun flag */
// 1082     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
// 1083     break;
// 1084   }
// 1085   
// 1086   /* Return ADC state */
// 1087   return HAL_OK;
// 1088 }
// 1089 
// 1090 /**
// 1091   * @brief  Enables ADC, starts conversion of regular group with interruption.
// 1092   *         Interruptions enabled in this function:
// 1093   *          - EOC (end of conversion of regular group)
// 1094   *          - overrun
// 1095   *         Each of these interruptions has its dedicated callback function.
// 1096   * @param  hadc: ADC handle
// 1097   * @retval HAL status
// 1098   */
// 1099 HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc)
// 1100 {
// 1101   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
// 1102   
// 1103   /* Check the parameters */
// 1104   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1105   
// 1106   /* Process locked */
// 1107   __HAL_LOCK(hadc);
// 1108   
// 1109   /* Enable the ADC peripheral */
// 1110   tmp_hal_status = ADC_Enable(hadc);
// 1111   
// 1112   /* Start conversion if ADC is effectively enabled */
// 1113   if (tmp_hal_status == HAL_OK)
// 1114   {
// 1115     /* Set ADC state                                                          */
// 1116     /* - Clear state bitfield related to regular group conversion results     */
// 1117     /* - Set state bitfield related to regular group operation                */
// 1118     ADC_STATE_CLR_SET(hadc->State,
// 1119                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
// 1120                       HAL_ADC_STATE_REG_BUSY);
// 1121     
// 1122     /* If conversions on group regular are also triggering group injected,    */
// 1123     /* update ADC state.                                                      */
// 1124     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
// 1125     {
// 1126       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
// 1127     }
// 1128     
// 1129     /* State machine update: Check if an injected conversion is ongoing */
// 1130     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
// 1131     {
// 1132       /* Reset ADC error code fields related to conversions on group regular */
// 1133       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
// 1134     }
// 1135     else
// 1136     {
// 1137       /* Reset ADC all error code fields */
// 1138       ADC_CLEAR_ERRORCODE(hadc);
// 1139     }
// 1140     
// 1141     /* Process unlocked */
// 1142     /* Unlock before starting ADC conversions: in case of potential           */
// 1143     /* interruption, to let the process to ADC IRQ Handler.                   */
// 1144     __HAL_UNLOCK(hadc);
// 1145     
// 1146     /* Clear regular group conversion flag and overrun flag */
// 1147     /* (To ensure of no unknown state from potential previous ADC operations) */
// 1148     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
// 1149     
// 1150     /* Enable end of conversion interrupt for regular group */
// 1151     __HAL_ADC_ENABLE_IT(hadc, (ADC_IT_EOC | ADC_IT_OVR));
// 1152     
// 1153     /* Enable conversion of regular group.                                    */
// 1154     /* If software start has been selected, conversion starts immediately.    */
// 1155     /* If external trigger has been selected, conversion will start at next   */
// 1156     /* trigger event.                                                         */
// 1157     if (ADC_IS_SOFTWARE_START_REGULAR(hadc))
// 1158     {
// 1159       /* Start ADC conversion on regular group */
// 1160       SET_BIT(hadc->Instance->CR2, ADC_CR2_SWSTART);
// 1161     }
// 1162   }
// 1163   
// 1164   /* Return function status */
// 1165   return tmp_hal_status;
// 1166 }
// 1167 
// 1168 /**
// 1169   * @brief  Stop ADC conversion of regular group (and injected group in 
// 1170   *         case of auto_injection mode), disable interrution of 
// 1171   *         end-of-conversion, disable ADC peripheral.
// 1172   * @param  hadc: ADC handle
// 1173   * @retval None
// 1174   */
// 1175 HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc)
// 1176 {
// 1177   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
// 1178   
// 1179   /* Check the parameters */
// 1180   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1181   
// 1182   /* Process locked */
// 1183   __HAL_LOCK(hadc);
// 1184   
// 1185   /* Stop potential conversion on going, on regular and injected groups */
// 1186   /* Disable ADC peripheral */
// 1187   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
// 1188   
// 1189   /* Check if ADC is effectively disabled */
// 1190   if (tmp_hal_status == HAL_OK)
// 1191   {
// 1192     /* Disable ADC end of conversion interrupt for regular group */
// 1193     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
// 1194     
// 1195     /* Set ADC state */
// 1196     ADC_STATE_CLR_SET(hadc->State,
// 1197                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
// 1198                       HAL_ADC_STATE_READY);
// 1199   }
// 1200   
// 1201   /* Process unlocked */
// 1202   __HAL_UNLOCK(hadc);
// 1203   
// 1204   /* Return function status */
// 1205   return tmp_hal_status;
// 1206 }
// 1207 
// 1208 /**
// 1209   * @brief  Enables ADC, starts conversion of regular group and transfers result
// 1210   *         through DMA.
// 1211   *         Interruptions enabled in this function:
// 1212   *          - DMA transfer complete
// 1213   *          - DMA half transfer
// 1214   *          - overrun
// 1215   *         Each of these interruptions has its dedicated callback function.
// 1216   * @param  hadc: ADC handle
// 1217   * @param  pData: The destination Buffer address.
// 1218   * @param  Length: The length of data to be transferred from ADC peripheral to memory.
// 1219   * @retval None
// 1220   */
// 1221 HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length)
// 1222 {
// 1223   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
// 1224   
// 1225   /* Check the parameters */
// 1226   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1227   
// 1228   /* Process locked */
// 1229   __HAL_LOCK(hadc);
// 1230   
// 1231   /* Enable the ADC peripheral */
// 1232   tmp_hal_status = ADC_Enable(hadc);
// 1233   
// 1234   /* Start conversion if ADC is effectively enabled */
// 1235   if (tmp_hal_status == HAL_OK)
// 1236   {
// 1237     /* Set ADC state                                                          */
// 1238     /* - Clear state bitfield related to regular group conversion results     */
// 1239     /* - Set state bitfield related to regular group operation                */
// 1240     ADC_STATE_CLR_SET(hadc->State,
// 1241                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
// 1242                       HAL_ADC_STATE_REG_BUSY);
// 1243     
// 1244     /* If conversions on group regular are also triggering group injected,    */
// 1245     /* update ADC state.                                                      */
// 1246     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
// 1247     {
// 1248       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
// 1249     }
// 1250     
// 1251     /* State machine update: Check if an injected conversion is ongoing */
// 1252     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
// 1253     {
// 1254       /* Reset ADC error code fields related to conversions on group regular */
// 1255       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
// 1256     }
// 1257     else
// 1258     {
// 1259       /* Reset ADC all error code fields */
// 1260       ADC_CLEAR_ERRORCODE(hadc);
// 1261     }
// 1262     
// 1263     /* Process unlocked */
// 1264     /* Unlock before starting ADC conversions: in case of potential           */
// 1265     /* interruption, to let the process to ADC IRQ Handler.                   */
// 1266     __HAL_UNLOCK(hadc);
// 1267 
// 1268     /* Set the DMA transfer complete callback */
// 1269     hadc->DMA_Handle->XferCpltCallback = ADC_DMAConvCplt;
// 1270 
// 1271     /* Set the DMA half transfer complete callback */
// 1272     hadc->DMA_Handle->XferHalfCpltCallback = ADC_DMAHalfConvCplt;
// 1273     
// 1274     /* Set the DMA error callback */
// 1275     hadc->DMA_Handle->XferErrorCallback = ADC_DMAError;
// 1276 
// 1277     
// 1278     /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC     */
// 1279     /* start (in case of SW start):                                           */
// 1280     
// 1281     /* Clear regular group conversion flag and overrun flag */
// 1282     /* (To ensure of no unknown state from potential previous ADC operations) */
// 1283     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
// 1284 
// 1285     /* Enable ADC overrun interrupt */
// 1286     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_OVR);
// 1287     
// 1288     /* Enable ADC DMA mode */
// 1289     hadc->Instance->CR2 |= ADC_CR2_DMA;
// 1290     
// 1291     /* Start the DMA channel */
// 1292     HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&hadc->Instance->DR, (uint32_t)pData, Length);
// 1293     
// 1294     /* Enable conversion of regular group.                                    */
// 1295     /* If software start has been selected, conversion starts immediately.    */
// 1296     /* If external trigger has been selected, conversion will start at next   */
// 1297     /* trigger event.                                                         */
// 1298     /* Note: Alternate trigger for single conversion could be to force an     */
// 1299     /*       additional set of bit ADON "hadc->Instance->CR2 |= ADC_CR2_ADON;"*/
// 1300     if (ADC_IS_SOFTWARE_START_REGULAR(hadc))
// 1301     {
// 1302       /* Start ADC conversion on regular group */
// 1303       SET_BIT(hadc->Instance->CR2, ADC_CR2_SWSTART);
// 1304     }
// 1305   }
// 1306   
// 1307   /* Return function status */
// 1308   return tmp_hal_status;
// 1309 }
// 1310 
// 1311 /**
// 1312   * @brief  Stop ADC conversion of regular group (and injected group in 
// 1313   *         case of auto_injection mode), disable ADC DMA transfer, disable 
// 1314   *         ADC peripheral.
// 1315   * @note:  ADC peripheral disable is forcing stop of potential 
// 1316   *         conversion on injected group. If injected group is under use, it
// 1317   *         should be preliminarily stopped using HAL_ADCEx_InjectedStop function.
// 1318   * @param  hadc: ADC handle
// 1319   * @retval HAL status.
// 1320   */
// 1321 HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc)
// 1322 {
// 1323   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
// 1324   
// 1325   /* Check the parameters */
// 1326   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1327      
// 1328   /* Process locked */
// 1329   __HAL_LOCK(hadc);
// 1330   
// 1331   /* Stop potential conversion on going, on regular and injected groups */
// 1332   /* Disable ADC peripheral */
// 1333   tmp_hal_status = ADC_ConversionStop_Disable(hadc);
// 1334   
// 1335   /* Check if ADC is effectively disabled */
// 1336   if (tmp_hal_status == HAL_OK)
// 1337   {
// 1338     /* Disable ADC DMA mode */
// 1339     hadc->Instance->CR2 &= ~ADC_CR2_DMA;
// 1340     
// 1341     /* Disable the DMA channel (in case of DMA in circular mode or stop while */
// 1342     /* DMA transfer is on going)                                              */
// 1343     tmp_hal_status = HAL_DMA_Abort(hadc->DMA_Handle);
// 1344     
// 1345     /* Check if DMA channel effectively disabled */
// 1346     if (tmp_hal_status == HAL_OK)
// 1347     {
// 1348       /* Set ADC state */
// 1349       ADC_STATE_CLR_SET(hadc->State,
// 1350                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
// 1351                         HAL_ADC_STATE_READY);
// 1352     }
// 1353     else
// 1354     {
// 1355       /* Update ADC state machine to error */
// 1356       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_DMA);
// 1357     }
// 1358     
// 1359     /* Disable ADC overrun interrupt */
// 1360     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_OVR);
// 1361   }
// 1362   
// 1363   /* Process unlocked */
// 1364   __HAL_UNLOCK(hadc);
// 1365   
// 1366   /* Return function status */
// 1367   return tmp_hal_status;
// 1368 }
// 1369 
// 1370 /**
// 1371   * @brief  Get ADC regular group conversion result.
// 1372   * @note   Reading register DR automatically clears ADC flag EOC
// 1373   *         (ADC group regular end of unitary conversion).
// 1374   * @note   This function does not clear ADC flag EOS 
// 1375   *         (ADC group regular end of sequence conversion).
// 1376   *         Occurrence of flag EOS rising:
// 1377   *          - If sequencer is composed of 1 rank, flag EOS is equivalent
// 1378   *            to flag EOC.
// 1379   *          - If sequencer is composed of several ranks, during the scan
// 1380   *            sequence flag EOC only is raised, at the end of the scan sequence
// 1381   *            both flags EOC and EOS are raised.
// 1382   *         To clear this flag, either use function: 
// 1383   *         in programming model IT: @ref HAL_ADC_IRQHandler(), in programming
// 1384   *         model polling: @ref HAL_ADC_PollForConversion() 
// 1385   *         or @ref __HAL_ADC_CLEAR_FLAG(&hadc, ADC_FLAG_EOS).
// 1386   * @param  hadc: ADC handle
// 1387   * @retval ADC group regular conversion data
// 1388   */
// 1389 uint32_t HAL_ADC_GetValue(ADC_HandleTypeDef* hadc)
// 1390 {
// 1391   /* Check the parameters */
// 1392   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1393 
// 1394   /* Note: EOC flag is not cleared here by software because automatically     */
// 1395   /*       cleared by hardware when reading register DR.                      */
// 1396   
// 1397   /* Return ADC converted value */ 
// 1398   return hadc->Instance->DR;
// 1399 }
// 1400 
// 1401 /**
// 1402   * @brief  Handles ADC interrupt request  
// 1403   * @param  hadc: ADC handle
// 1404   * @retval None
// 1405   */
// 1406 void HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc)
// 1407 {
// 1408   /* Check the parameters */
// 1409   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1410   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
// 1411   assert_param(IS_ADC_REGULAR_NB_CONV(hadc->Init.NbrOfConversion));
// 1412 
// 1413   
// 1414   /* ========== Check End of Conversion flag for regular group ========== */
// 1415   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_EOC))
// 1416   {
// 1417     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_EOC) )
// 1418     {
// 1419       /* Update state machine on conversion status if not in error state */
// 1420       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
// 1421       {
// 1422         /* Set ADC state */
// 1423         SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC); 
// 1424       }
// 1425 
// 1426       /* Determine whether any further conversion upcoming on group regular   */
// 1427       /* by external trigger, continuous mode or scan sequence on going.      */
// 1428       /* Note: On STM32L1, there is no independent flag of end of sequence.   */
// 1429       /*       The test of scan sequence on going is done either with scan    */
// 1430       /*       sequence disabled or with end of conversion flag set to        */
// 1431       /*       of end of sequence.                                            */
// 1432       if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
// 1433          (hadc->Init.ContinuousConvMode == DISABLE)            &&
// 1434          (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
// 1435           HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
// 1436       {
// 1437         /* Disable ADC end of single conversion interrupt on group regular */
// 1438         /* Note: Overrun interrupt was enabled with EOC interrupt in          */
// 1439         /* HAL_ADC_Start_IT(), but is not disabled here because can be used   */
// 1440         /* by overrun IRQ process below.                                      */
// 1441         __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
// 1442         
// 1443         /* Set ADC state */
// 1444         CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);
// 1445         
// 1446         if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
// 1447         {
// 1448           SET_BIT(hadc->State, HAL_ADC_STATE_READY);
// 1449         }
// 1450       }
// 1451 
// 1452       /* Conversion complete callback */
// 1453       HAL_ADC_ConvCpltCallback(hadc);
// 1454       
// 1455       /* Clear regular group conversion flag */
// 1456       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
// 1457     }
// 1458   }
// 1459 
// 1460   /* ========== Check End of Conversion flag for injected group ========== */
// 1461   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_JEOC))
// 1462   {
// 1463     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_JEOC))
// 1464     {
// 1465       /* Update state machine on conversion status if not in error state */
// 1466       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
// 1467       {
// 1468         /* Set ADC state */
// 1469         SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
// 1470       }
// 1471 
// 1472       /* Determine whether any further conversion upcoming on group injected  */
// 1473       /* by external trigger, scan sequence on going or by automatic injected */
// 1474       /* conversion from group regular (same conditions as group regular      */
// 1475       /* interruption disabling above).                                       */
// 1476       if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                    &&
// 1477          (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL)  ||
// 1478           HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)    ) &&
// 1479          (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
// 1480           (ADC_IS_SOFTWARE_START_REGULAR(hadc)       &&
// 1481           (hadc->Init.ContinuousConvMode == DISABLE)   )       )   )
// 1482       {
// 1483         /* Disable ADC end of single conversion interrupt on group injected */
// 1484         __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
// 1485         
// 1486         /* Set ADC state */
// 1487         CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);   
// 1488 
// 1489         if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
// 1490         { 
// 1491           SET_BIT(hadc->State, HAL_ADC_STATE_READY);
// 1492         }
// 1493       }
// 1494 
// 1495       /* Conversion complete callback */ 
// 1496       HAL_ADCEx_InjectedConvCpltCallback(hadc);
// 1497       
// 1498       /* Clear injected group conversion flag */
// 1499       __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_JSTRT | ADC_FLAG_JEOC));
// 1500     }
// 1501   }
// 1502    
// 1503   /* ========== Check Analog watchdog flags ========== */
// 1504   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_AWD))
// 1505   {
// 1506     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_AWD))
// 1507     {
// 1508       /* Set ADC state */
// 1509       SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
// 1510       
// 1511       /* Level out of window callback */ 
// 1512       HAL_ADC_LevelOutOfWindowCallback(hadc);
// 1513       
// 1514       /* Clear the ADC analog watchdog flag */
// 1515       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
// 1516     }
// 1517   }
// 1518   
// 1519   /* ========== Check Overrun flag ========== */
// 1520   if(__HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_OVR))
// 1521   {
// 1522     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_OVR))
// 1523     {
// 1524       /* Note: On STM32L1, ADC overrun can be set through other parameters    */
// 1525       /*       refer to description of parameter "EOCSelection" for more      */
// 1526       /*       details.                                                       */
// 1527       
// 1528       /* Set ADC error code to overrun */
// 1529       SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_OVR);
// 1530       
// 1531       /* Clear ADC overrun flag */
// 1532       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
// 1533       
// 1534       /* Error callback */ 
// 1535       HAL_ADC_ErrorCallback(hadc);
// 1536       
// 1537       /* Clear the Overrun flag */
// 1538       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
// 1539     }
// 1540   }
// 1541   
// 1542 }
// 1543 
// 1544 /**
// 1545   * @brief  Conversion complete callback in non blocking mode 
// 1546   * @param  hadc: ADC handle
// 1547   * @retval None
// 1548   */
// 1549 __weak void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
// 1550 {
// 1551   /* Prevent unused argument(s) compilation warning */
// 1552   UNUSED(hadc);
// 1553 
// 1554   /* NOTE : This function should not be modified. When the callback is needed,
// 1555             function HAL_ADC_ConvCpltCallback must be implemented in the user file.
// 1556    */
// 1557 }
// 1558 
// 1559 /**
// 1560   * @brief  Conversion DMA half-transfer callback in non blocking mode 
// 1561   * @param  hadc: ADC handle
// 1562   * @retval None
// 1563   */
// 1564 __weak void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
// 1565 {
// 1566   /* Prevent unused argument(s) compilation warning */
// 1567   UNUSED(hadc);
// 1568 
// 1569   /* NOTE : This function should not be modified. When the callback is needed,
// 1570             function HAL_ADC_ConvHalfCpltCallback must be implemented in the user file.
// 1571   */
// 1572 }
// 1573 
// 1574 /**
// 1575   * @brief  Analog watchdog callback in non blocking mode. 
// 1576   * @param  hadc: ADC handle
// 1577   * @retval None
// 1578   */
// 1579 __weak void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc)
// 1580 {
// 1581   /* Prevent unused argument(s) compilation warning */
// 1582   UNUSED(hadc);
// 1583 
// 1584   /* NOTE : This function should not be modified. When the callback is needed,
// 1585             function HAL_ADC_LevelOutOfWindowCallback must be implemented in the user file.
// 1586   */
// 1587 }
// 1588 
// 1589 /**
// 1590   * @brief  ADC error callback in non blocking mode
// 1591   *         (ADC conversion with interruption or transfer by DMA)
// 1592   * @note   In case of error due to overrun when using ADC with DMA transfer 
// 1593   *         (HAL ADC handle paramater "ErrorCode" to state "HAL_ADC_ERROR_OVR"):
// 1594   *         - Reinitialize the DMA using function "HAL_ADC_Stop_DMA()".
// 1595   *         - If needed, restart a new ADC conversion using function
// 1596   *           "HAL_ADC_Start_DMA()"
// 1597   *           (this function is also clearing overrun flag)
// 1598   * @param  hadc: ADC handle
// 1599   * @retval None
// 1600   */
// 1601 __weak void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc)
// 1602 {
// 1603   /* Prevent unused argument(s) compilation warning */
// 1604   UNUSED(hadc);
// 1605 
// 1606   /* NOTE : This function should not be modified. When the callback is needed,
// 1607             function HAL_ADC_ErrorCallback must be implemented in the user file.
// 1608   */
// 1609 }
// 1610 
// 1611 
// 1612 /**
// 1613   * @}
// 1614   */
// 1615 
// 1616 /** @defgroup ADC_Exported_Functions_Group3 Peripheral Control functions
// 1617  *  @brief    Peripheral Control functions 
// 1618  *
// 1619 @verbatim   
// 1620  ===============================================================================
// 1621              ##### Peripheral Control functions #####
// 1622  ===============================================================================  
// 1623     [..]  This section provides functions allowing to:
// 1624       (+) Configure channels on regular group
// 1625       (+) Configure the analog watchdog
// 1626       
// 1627 @endverbatim
// 1628   * @{
// 1629   */
// 1630 
// 1631 /**
// 1632   * @brief  Configures the the selected channel to be linked to the regular
// 1633   *         group.
// 1634   * @note   In case of usage of internal measurement channels:
// 1635   *         Vbat/VrefInt/TempSensor.
// 1636   *         These internal paths can be be disabled using function 
// 1637   *         HAL_ADC_DeInit().
// 1638   * @note   Possibility to update parameters on the fly:
// 1639   *         This function initializes channel into regular group, following  
// 1640   *         calls to this function can be used to reconfigure some parameters 
// 1641   *         of structure "ADC_ChannelConfTypeDef" on the fly, without reseting 
// 1642   *         the ADC.
// 1643   *         The setting of these parameters is conditioned to ADC state.
// 1644   *         For parameters constraints, see comments of structure 
// 1645   *         "ADC_ChannelConfTypeDef".
// 1646   * @param  hadc: ADC handle
// 1647   * @param  sConfig: Structure of ADC channel for regular group.
// 1648   * @retval HAL status
// 1649   */
// 1650 HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig)
// 1651 {
// 1652   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
// 1653   __IO uint32_t wait_loop_index = 0;
// 1654   
// 1655   /* Check the parameters */
// 1656   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1657   assert_param(IS_ADC_CHANNEL(sConfig->Channel));
// 1658   assert_param(IS_ADC_REGULAR_RANK(sConfig->Rank));
// 1659   assert_param(IS_ADC_SAMPLE_TIME(sConfig->SamplingTime));
// 1660   
// 1661   /* Process locked */
// 1662   __HAL_LOCK(hadc);
// 1663   
// 1664    
// 1665   /* Regular sequence configuration */
// 1666   /* For Rank 1 to 6 */
// 1667   if (sConfig->Rank < 7)
// 1668   {
// 1669     MODIFY_REG(hadc->Instance->SQR5,
// 1670                ADC_SQR5_RK(ADC_SQR5_SQ1, sConfig->Rank),
// 1671                ADC_SQR5_RK(sConfig->Channel, sConfig->Rank) );
// 1672   }
// 1673   /* For Rank 7 to 12 */
// 1674   else if (sConfig->Rank < 13)
// 1675   {
// 1676     MODIFY_REG(hadc->Instance->SQR4,
// 1677                ADC_SQR4_RK(ADC_SQR4_SQ7, sConfig->Rank),
// 1678                ADC_SQR4_RK(sConfig->Channel, sConfig->Rank) );
// 1679   }
// 1680   /* For Rank 13 to 18 */
// 1681   else if (sConfig->Rank < 19)
// 1682   {
// 1683     MODIFY_REG(hadc->Instance->SQR3,
// 1684                ADC_SQR3_RK(ADC_SQR3_SQ13, sConfig->Rank),
// 1685                ADC_SQR3_RK(sConfig->Channel, sConfig->Rank) );
// 1686   }
// 1687   /* For Rank 19 to 24 */
// 1688   else if (sConfig->Rank < 25)
// 1689   {
// 1690     MODIFY_REG(hadc->Instance->SQR2,
// 1691                ADC_SQR2_RK(ADC_SQR2_SQ19, sConfig->Rank),
// 1692                ADC_SQR2_RK(sConfig->Channel, sConfig->Rank) );
// 1693   }
// 1694   /* For Rank 25 to 28 */
// 1695   else
// 1696   {
// 1697     MODIFY_REG(hadc->Instance->SQR1,
// 1698                ADC_SQR1_RK(ADC_SQR1_SQ25, sConfig->Rank),
// 1699                ADC_SQR1_RK(sConfig->Channel, sConfig->Rank) );
// 1700   }
// 1701   
// 1702   
// 1703   /* Channel sampling time configuration */
// 1704   /* For channels 0 to 9 */
// 1705   if (sConfig->Channel < ADC_CHANNEL_10)
// 1706   {
// 1707     MODIFY_REG(hadc->Instance->SMPR3,
// 1708                ADC_SMPR3(ADC_SMPR3_SMP0, sConfig->Channel),
// 1709                ADC_SMPR3(sConfig->SamplingTime, sConfig->Channel) );
// 1710   }
// 1711   /* For channels 10 to 19 */
// 1712   else if (sConfig->Channel < ADC_CHANNEL_20)
// 1713   {
// 1714     MODIFY_REG(hadc->Instance->SMPR2,
// 1715                ADC_SMPR2(ADC_SMPR2_SMP10, sConfig->Channel),
// 1716                ADC_SMPR2(sConfig->SamplingTime, sConfig->Channel) );
// 1717   }
// 1718   /* For channels 20 to 26 for devices Cat.1, Cat.2, Cat.3 */
// 1719   /* For channels 20 to 29 for devices Cat4, Cat.5 */
// 1720   else if (sConfig->Channel <= ADC_SMPR1_CHANNEL_MAX)
// 1721   {
// 1722     MODIFY_REG(hadc->Instance->SMPR1,
// 1723                ADC_SMPR1(ADC_SMPR1_SMP20, sConfig->Channel),
// 1724                ADC_SMPR1(sConfig->SamplingTime, sConfig->Channel) );
// 1725   }
// 1726   /* For channels 30 to 31 for devices Cat4, Cat.5 */
// 1727   else
// 1728   {
// 1729     ADC_SMPR0_CHANNEL_SET(hadc, sConfig->SamplingTime, sConfig->Channel);
// 1730   }
// 1731 
// 1732   /* If ADC1 Channel_16 or Channel_17 is selected, enable Temperature sensor  */
// 1733   /* and VREFINT measurement path.                                            */
// 1734   if ((sConfig->Channel == ADC_CHANNEL_TEMPSENSOR) ||
// 1735       (sConfig->Channel == ADC_CHANNEL_VREFINT)      )
// 1736   {
// 1737       if (READ_BIT(ADC->CCR, ADC_CCR_TSVREFE) == RESET)
// 1738       {
// 1739         SET_BIT(ADC->CCR, ADC_CCR_TSVREFE);
// 1740         
// 1741         if ((sConfig->Channel == ADC_CHANNEL_TEMPSENSOR))
// 1742         {
// 1743           /* Delay for temperature sensor stabilization time */
// 1744           /* Compute number of CPU cycles to wait for */
// 1745           wait_loop_index = (ADC_TEMPSENSOR_DELAY_US * (SystemCoreClock / 1000000));
// 1746           while(wait_loop_index != 0)
// 1747           {
// 1748             wait_loop_index--;
// 1749           }
// 1750         }
// 1751     }
// 1752   }
// 1753   
// 1754   /* Process unlocked */
// 1755   __HAL_UNLOCK(hadc);
// 1756   
// 1757   /* Return function status */
// 1758   return tmp_hal_status;
// 1759 }
// 1760 
// 1761 /**
// 1762   * @brief  Configures the analog watchdog.
// 1763   * @note   Analog watchdog thresholds can be modified while ADC conversion
// 1764   *         is on going.
// 1765   *         In this case, some constraints must be taken into account:
// 1766   *         the programmed threshold values are effective from the next
// 1767   *         ADC EOC (end of unitary conversion).
// 1768   *         Considering that registers write delay may happen due to
// 1769   *         bus activity, this might cause an uncertainty on the
// 1770   *         effective timing of the new programmed threshold values.
// 1771   * @param  hadc: ADC handle
// 1772   * @param  AnalogWDGConfig: Structure of ADC analog watchdog configuration
// 1773   * @retval HAL status
// 1774   */
// 1775 HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* AnalogWDGConfig)
// 1776 {
// 1777   /* Check the parameters */
// 1778   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
// 1779   assert_param(IS_ADC_ANALOG_WATCHDOG_MODE(AnalogWDGConfig->WatchdogMode));
// 1780   assert_param(IS_FUNCTIONAL_STATE(AnalogWDGConfig->ITMode));
// 1781   assert_param(IS_ADC_RANGE(ADC_RESOLUTION_12B, AnalogWDGConfig->HighThreshold));
// 1782   assert_param(IS_ADC_RANGE(ADC_RESOLUTION_12B, AnalogWDGConfig->LowThreshold));
// 1783   
// 1784   if((AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_REG)     ||
// 1785      (AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_INJEC)   ||
// 1786      (AnalogWDGConfig->WatchdogMode == ADC_ANALOGWATCHDOG_SINGLE_REGINJEC)  )
// 1787   {
// 1788     assert_param(IS_ADC_CHANNEL(AnalogWDGConfig->Channel));
// 1789   }
// 1790   
// 1791   /* Process locked */
// 1792   __HAL_LOCK(hadc);
// 1793   
// 1794   /* Analog watchdog configuration */
// 1795 
// 1796   /* Configure ADC Analog watchdog interrupt */
// 1797   if(AnalogWDGConfig->ITMode == ENABLE)
// 1798   {
// 1799     /* Enable the ADC Analog watchdog interrupt */
// 1800     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_AWD);
// 1801   }
// 1802   else
// 1803   {
// 1804     /* Disable the ADC Analog watchdog interrupt */
// 1805     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_AWD);
// 1806   }
// 1807   
// 1808   /* Configuration of analog watchdog:                                        */
// 1809   /*  - Set the analog watchdog enable mode: regular and/or injected groups,  */
// 1810   /*    one or all channels.                                                  */
// 1811   /*  - Set the Analog watchdog channel (is not used if watchdog              */
// 1812   /*    mode "all channels": ADC_CFGR_AWD1SGL=0).                             */
// 1813   hadc->Instance->CR1 &= ~( ADC_CR1_AWDSGL |
// 1814                             ADC_CR1_JAWDEN |
// 1815                             ADC_CR1_AWDEN  |
// 1816                             ADC_CR1_AWDCH   );
// 1817   
// 1818   hadc->Instance->CR1 |= ( AnalogWDGConfig->WatchdogMode |
// 1819                            AnalogWDGConfig->Channel       );
// 1820       
// 1821   /* Set the high threshold */
// 1822   hadc->Instance->HTR = AnalogWDGConfig->HighThreshold;
// 1823   
// 1824   /* Set the low threshold */
// 1825   hadc->Instance->LTR = AnalogWDGConfig->LowThreshold;
// 1826 
// 1827   /* Process unlocked */
// 1828   __HAL_UNLOCK(hadc);
// 1829   
// 1830   /* Return function status */
// 1831   return HAL_OK;
// 1832 }
// 1833 
// 1834 
// 1835 /**
// 1836   * @}
// 1837   */
// 1838 
// 1839 
// 1840 /** @defgroup ADC_Exported_Functions_Group4 Peripheral State functions
// 1841  *  @brief    Peripheral State functions
// 1842  *
// 1843 @verbatim
// 1844  ===============================================================================
// 1845             ##### Peripheral State and Errors functions #####
// 1846  ===============================================================================  
// 1847     [..]
// 1848     This subsection provides functions to get in run-time the status of the  
// 1849     peripheral.
// 1850       (+) Check the ADC state
// 1851       (+) Check the ADC error code
// 1852 
// 1853 @endverbatim
// 1854   * @{
// 1855   */
// 1856 
// 1857 /**
// 1858   * @brief  return the ADC state
// 1859   * @param  hadc: ADC handle
// 1860   * @retval HAL state
// 1861   */
// 1862 uint32_t HAL_ADC_GetState(ADC_HandleTypeDef* hadc)
// 1863 {
// 1864   /* Return ADC state */
// 1865   return hadc->State;
// 1866 }
// 1867 
// 1868 /**
// 1869   * @brief  Return the ADC error code
// 1870   * @param  hadc: ADC handle
// 1871   * @retval ADC Error Code
// 1872   */
// 1873 uint32_t HAL_ADC_GetError(ADC_HandleTypeDef *hadc)
// 1874 {
// 1875   return hadc->ErrorCode;
// 1876 }
// 1877 
// 1878 /**
// 1879   * @}
// 1880   */
// 1881 
// 1882 /**
// 1883   * @}
// 1884   */
// 1885 
// 1886 /** @defgroup ADC_Private_Functions ADC Private Functions
// 1887   * @{
// 1888   */
// 1889 
// 1890 /**
// 1891   * @brief  Enable the selected ADC.
// 1892   * @note   Prerequisite condition to use this function: ADC must be disabled
// 1893   *         and voltage regulator must be enabled (done into HAL_ADC_Init()).
// 1894   * @note   If low power mode AutoPowerOff is enabled, power-on/off phases are
// 1895   *         performed automatically by hardware.
// 1896   *         In this mode, this function is useless and must not be called because 
// 1897   *         flag ADC_FLAG_RDY is not usable.
// 1898   *         Therefore, this function must be called under condition of
// 1899   *         "if (hadc->Init.LowPowerAutoPowerOff != ENABLE)".
// 1900   * @param  hadc: ADC handle
// 1901   * @retval HAL status.
// 1902   */
// 1903 HAL_StatusTypeDef ADC_Enable(ADC_HandleTypeDef* hadc)
// 1904 {
// 1905   uint32_t tickstart = 0;
// 1906   __IO uint32_t wait_loop_index = 0;
// 1907   
// 1908   /* ADC enable and wait for ADC ready (in case of ADC is disabled or         */
// 1909   /* enabling phase not yet completed: flag ADC ready not yet set).           */
// 1910   /* Timeout implemented to not be stuck if ADC cannot be enabled (possible   */
// 1911   /* causes: ADC clock not running, ...).                                     */
// 1912   if (ADC_IS_ENABLE(hadc) == RESET)
// 1913   {
// 1914     /* Enable the Peripheral */
// 1915     __HAL_ADC_ENABLE(hadc);
// 1916     
// 1917     /* Delay for ADC stabilization time */
// 1918     /* Compute number of CPU cycles to wait for */
// 1919     wait_loop_index = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
// 1920     while(wait_loop_index != 0)
// 1921     {
// 1922       wait_loop_index--;
// 1923     }
// 1924     
// 1925     /* Get tick count */
// 1926     tickstart = HAL_GetTick();    
// 1927 
// 1928     /* Wait for ADC effectively enabled */
// 1929     while(ADC_IS_ENABLE(hadc) == RESET)
// 1930     {
// 1931       if((HAL_GetTick() - tickstart ) > ADC_ENABLE_TIMEOUT)
// 1932       {
// 1933         /* Update ADC state machine to error */
// 1934         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
// 1935       
// 1936         /* Set ADC error code to ADC IP internal error */
// 1937         SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
// 1938         
// 1939         /* Process unlocked */
// 1940         __HAL_UNLOCK(hadc);
// 1941       
// 1942         return HAL_ERROR;
// 1943       }
// 1944     }
// 1945   }
// 1946    
// 1947   /* Return HAL status */
// 1948   return HAL_OK;
// 1949 }
// 1950 
// 1951 /**
// 1952   * @brief  Stop ADC conversion and disable the selected ADC
// 1953   * @note   Prerequisite condition to use this function: ADC conversions must be
// 1954   *         stopped to disable the ADC.
// 1955   * @param  hadc: ADC handle
// 1956   * @retval HAL status.
// 1957   */
// 1958 HAL_StatusTypeDef ADC_ConversionStop_Disable(ADC_HandleTypeDef* hadc)
// 1959 {
// 1960   uint32_t tickstart = 0;
// 1961   
// 1962   /* Verification if ADC is not already disabled */
// 1963   if (ADC_IS_ENABLE(hadc) != RESET)
// 1964   {
// 1965     /* Disable the ADC peripheral */
// 1966     __HAL_ADC_DISABLE(hadc);
// 1967      
// 1968     /* Get tick count */
// 1969     tickstart = HAL_GetTick();
// 1970     
// 1971     /* Wait for ADC effectively disabled */    
// 1972     while(ADC_IS_ENABLE(hadc) != RESET)
// 1973     {
// 1974       if((HAL_GetTick() - tickstart ) > ADC_DISABLE_TIMEOUT)
// 1975       {
// 1976         /* Update ADC state machine to error */
// 1977         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL);
// 1978       
// 1979         /* Set ADC error code to ADC IP internal error */
// 1980         SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_INTERNAL);
// 1981         
// 1982         return HAL_ERROR;
// 1983       }
// 1984     }
// 1985   }
// 1986   
// 1987   /* Return HAL status */
// 1988   return HAL_OK;
// 1989 }
// 1990 
// 1991 /**
// 1992   * @brief  DMA transfer complete callback. 
// 1993   * @param  hdma: pointer to DMA handle.
// 1994   * @retval None
// 1995   */
// 1996 static void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma)
// 1997 {
// 1998   /* Retrieve ADC handle corresponding to current DMA handle */
// 1999   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2000   
// 2001   /* Update state machine on conversion status if not in error state */
// 2002   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL | HAL_ADC_STATE_ERROR_DMA))
// 2003   {
// 2004     /* Update ADC state machine */
// 2005     SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
// 2006     
// 2007     /* Determine whether any further conversion upcoming on group regular   */
// 2008     /* by external trigger, continuous mode or scan sequence on going.      */
// 2009     /* Note: On STM32L1, there is no independent flag of end of sequence.   */
// 2010     /*       The test of scan sequence on going is done either with scan    */
// 2011     /*       sequence disabled or with end of conversion flag set to        */
// 2012     /*       of end of sequence.                                            */
// 2013     if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
// 2014        (hadc->Init.ContinuousConvMode == DISABLE)            &&
// 2015        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
// 2016         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
// 2017     {
// 2018       /* Disable ADC end of single conversion interrupt on group regular */
// 2019       /* Note: Overrun interrupt was enabled with EOC interrupt in          */
// 2020       /* HAL_ADC_Start_IT(), but is not disabled here because can be used   */
// 2021       /* by overrun IRQ process below.                                      */
// 2022       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
// 2023       
// 2024       /* Set ADC state */
// 2025       CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
// 2026       
// 2027       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
// 2028       {
// 2029         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
// 2030       }
// 2031     }
// 2032     
// 2033     /* Conversion complete callback */
// 2034     HAL_ADC_ConvCpltCallback(hadc);
// 2035   }
// 2036   else
// 2037   {
// 2038     /* Call DMA error callback */
// 2039     hadc->DMA_Handle->XferErrorCallback(hdma);
// 2040   }
// 2041 }
// 2042 
// 2043 /**
// 2044   * @brief  DMA half transfer complete callback. 
// 2045   * @param  hdma: pointer to DMA handle.
// 2046   * @retval None
// 2047   */
// 2048 static void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma)   
// 2049 {
// 2050   /* Retrieve ADC handle corresponding to current DMA handle */
// 2051   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2052   
// 2053   /* Half conversion callback */
// 2054   HAL_ADC_ConvHalfCpltCallback(hadc); 
// 2055 }
// 2056 
// 2057 /**
// 2058   * @brief  DMA error callback 
// 2059   * @param  hdma: pointer to DMA handle.
// 2060   * @retval None
// 2061   */
// 2062 static void ADC_DMAError(DMA_HandleTypeDef *hdma)   
// 2063 {
// 2064   /* Retrieve ADC handle corresponding to current DMA handle */
// 2065   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2066   
// 2067   /* Set ADC state */
// 2068   SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_DMA);
// 2069   
// 2070   /* Set ADC error code to DMA error */
// 2071   SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_DMA);
// 2072   
// 2073   /* Error callback */
// 2074   HAL_ADC_ErrorCallback(hadc); 
// 2075 }
// 2076 
// 2077 /**
// 2078   * @}
// 2079   */
// 2080 
// 2081 #endif /* HAL_ADC_MODULE_ENABLED */
// 2082 /**
// 2083   * @}
// 2084   */
// 2085 
// 2086 /**
// 2087   * @}
// 2088   */
// 2089 
// 2090 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
