///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_adc_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_adc_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_adc_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   This file provides firmware functions to manage the following 
//    8   *          functionalities of the Analog to Digital Convertor (ADC)
//    9   *          peripheral:
//   10   *           + Operation functions
//   11   *             ++ Start, stop, get result of conversions of injected
//   12   *                group, using 2 possible modes: polling, interruption.
//   13   *             ++ Calibration (ADC automatic self-calibration)
//   14   *           + Control functions
//   15   *             ++ Channels configuration on injected group
//   16   *          Other functions (generic functions) are available in file 
//   17   *          "stm32l1xx_hal_adc.c".
//   18   *
//   19   @verbatim
//   20   [..] 
//   21   (@) Sections "ADC peripheral features" and "How to use this driver" are
//   22       available in file of generic functions "stm32l1xx_hal_adc.c".
//   23   [..]
//   24   @endverbatim
//   25   ******************************************************************************
//   26   * @attention
//   27   *
//   28   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   29   *
//   30   * Redistribution and use in source and binary forms, with or without modification,
//   31   * are permitted provided that the following conditions are met:
//   32   *   1. Redistributions of source code must retain the above copyright notice,
//   33   *      this list of conditions and the following disclaimer.
//   34   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   35   *      this list of conditions and the following disclaimer in the documentation
//   36   *      and/or other materials provided with the distribution.
//   37   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   38   *      may be used to endorse or promote products derived from this software
//   39   *      without specific prior written permission.
//   40   *
//   41   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   42   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   43   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   44   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   45   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   46   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   47   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   48   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   49   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   50   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   51   *
//   52   ******************************************************************************
//   53   */
//   54 
//   55 /* Includes ------------------------------------------------------------------*/
//   56 #include "stm32l1xx_hal.h"
//   57 
//   58 /** @addtogroup STM32L1xx_HAL_Driver
//   59   * @{
//   60   */
//   61 
//   62 /** @defgroup ADCEx ADCEx
//   63   * @brief ADC Extension HAL module driver
//   64   * @{
//   65   */
//   66 
//   67 #ifdef HAL_ADC_MODULE_ENABLED
//   68 
//   69 /* Private typedef -----------------------------------------------------------*/
//   70 /* Private define ------------------------------------------------------------*/
//   71 /** @defgroup ADCEx_Private_Constants ADCEx Private Constants
//   72   * @{
//   73   */
//   74 
//   75   /* ADC conversion cycles (unit: ADC clock cycles)                           */
//   76   /* (selected sampling time + conversion time of 12 ADC clock cycles, with   */
//   77   /* resolution 12 bits)                                                      */
//   78   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_4CYCLE5   ((uint32_t) 16)
//   79   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_9CYCLES   ((uint32_t) 21)
//   80   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_16CYCLES  ((uint32_t) 28)
//   81   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_24CYCLES  ((uint32_t) 36)
//   82   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_48CYCLES  ((uint32_t) 60)
//   83   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_96CYCLES  ((uint32_t)108)
//   84   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_192CYCLES ((uint32_t)204)
//   85   #define ADC_CONVERSIONCLOCKCYCLES_SAMPLETIME_384CYCLES ((uint32_t)396)
//   86 
//   87   /* Delay for temperature sensor stabilization time.                         */
//   88   /* Maximum delay is 10us (refer to device datasheet, parameter tSTART).     */
//   89   /* Unit: us                                                                 */
//   90   #define ADC_TEMPSENSOR_DELAY_US         ((uint32_t) 10)
//   91 
//   92 /**
//   93   * @}
//   94   */
//   95 
//   96 /* Private macro -------------------------------------------------------------*/
//   97 /* Private variables ---------------------------------------------------------*/
//   98 /* Private function prototypes -----------------------------------------------*/
//   99 /* Private functions ---------------------------------------------------------*/
//  100 
//  101 /** @defgroup ADCEx_Exported_Functions ADCEx Exported Functions
//  102   * @{
//  103   */
//  104 
//  105 /** @defgroup ADCEx_Exported_Functions_Group1 ADC Extended IO operation functions
//  106  *  @brief    ADC Extended Input and Output operation functions
//  107  *
//  108 @verbatim
//  109  ===============================================================================
//  110                       ##### IO operation functions #####
//  111  ===============================================================================
//  112     [..]  This section provides functions allowing to:
//  113       (+) Start conversion of injected group.
//  114       (+) Stop conversion of injected group.
//  115       (+) Poll for conversion complete on injected group.
//  116       (+) Get result of injected channel conversion.
//  117       (+) Start conversion of injected group and enable interruptions.
//  118       (+) Stop conversion of injected group and disable interruptions.
//  119       
//  120 @endverbatim
//  121   * @{
//  122   */
//  123 
//  124 /**
//  125   * @brief  Enables ADC, starts conversion of injected group.
//  126   *         Interruptions enabled in this function: None.
//  127   * @param  hadc: ADC handle
//  128   * @retval HAL status
//  129   */
//  130 HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc)
//  131 {
//  132   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  133   
//  134   /* Check the parameters */
//  135   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  136   
//  137   /* Process locked */
//  138   __HAL_LOCK(hadc);
//  139     
//  140   /* Enable the ADC peripheral */
//  141   tmp_hal_status = ADC_Enable(hadc);
//  142   
//  143   /* Start conversion if ADC is effectively enabled */
//  144   if (tmp_hal_status == HAL_OK)
//  145   {
//  146     /* Set ADC state                                                          */
//  147     /* - Clear state bitfield related to injected group conversion results    */
//  148     /* - Set state bitfield related to injected operation                     */
//  149     ADC_STATE_CLR_SET(hadc->State,
//  150                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
//  151                       HAL_ADC_STATE_INJ_BUSY);
//  152     
//  153     /* Check if a regular conversion is ongoing */
//  154     /* Note: On this device, there is no ADC error code fields related to     */
//  155     /*       conversions on group injected only. In case of conversion on     */
//  156     /*       going on group regular, no error code is reset.                  */
//  157     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
//  158     {
//  159       /* Reset ADC all error code fields */
//  160       ADC_CLEAR_ERRORCODE(hadc);
//  161     }
//  162     
//  163     /* Process unlocked */
//  164     /* Unlock before starting ADC conversions: in case of potential           */
//  165     /* interruption, to let the process to ADC IRQ Handler.                   */
//  166     __HAL_UNLOCK(hadc);
//  167     
//  168     /* Clear injected group conversion flag */
//  169     /* (To ensure of no unknown state from potential previous ADC operations) */
//  170     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
//  171     
//  172     /* Enable conversion of injected group.                                   */
//  173     /* If software start has been selected, conversion starts immediately.    */
//  174     /* If external trigger has been selected, conversion will start at next   */
//  175     /* trigger event.                                                         */
//  176     /* If automatic injected conversion is enabled, conversion will start     */
//  177     /* after next regular group conversion.                                   */
//  178     if (ADC_IS_SOFTWARE_START_INJECTED(hadc)              && 
//  179         HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)  )
//  180     {
//  181       /* Enable ADC software conversion for injected channels */
//  182       SET_BIT(hadc->Instance->CR2, ADC_CR2_JSWSTART);
//  183     }
//  184   }
//  185   
//  186   /* Return function status */
//  187   return tmp_hal_status;
//  188 }
//  189 
//  190 /**
//  191   * @brief  Stop conversion of injected channels. Disable ADC peripheral if
//  192   *         no regular conversion is on going.
//  193   * @note   If ADC must be disabled and if conversion is on going on 
//  194   *         regular group, function HAL_ADC_Stop must be used to stop both
//  195   *         injected and regular groups, and disable the ADC.
//  196   * @note   If injected group mode auto-injection is enabled,
//  197   *         function HAL_ADC_Stop must be used.
//  198   * @note   In case of auto-injection mode, HAL_ADC_Stop must be used.
//  199   * @param  hadc: ADC handle
//  200   * @retval None
//  201   */
//  202 HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc)
//  203 {
//  204   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  205   
//  206   /* Check the parameters */
//  207   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  208 
//  209   /* Process locked */
//  210   __HAL_LOCK(hadc);
//  211     
//  212   /* Stop potential conversion and disable ADC peripheral                     */
//  213   /* Conditioned to:                                                          */
//  214   /* - No conversion on the other group (regular group) is intended to        */
//  215   /*   continue (injected and regular groups stop conversion and ADC disable  */
//  216   /*   are common)                                                            */
//  217   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */
//  218   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
//  219      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
//  220   {
//  221     /* Stop potential conversion on going, on regular and injected groups */
//  222     /* Disable ADC peripheral */
//  223     tmp_hal_status = ADC_ConversionStop_Disable(hadc);
//  224     
//  225     /* Check if ADC is effectively disabled */
//  226     if (tmp_hal_status == HAL_OK)
//  227     {
//  228       /* Set ADC state */
//  229       ADC_STATE_CLR_SET(hadc->State,
//  230                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
//  231                         HAL_ADC_STATE_READY);
//  232     }
//  233   }
//  234   else
//  235   {
//  236     /* Update ADC state machine to error */
//  237     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  238       
//  239     tmp_hal_status = HAL_ERROR;
//  240   }
//  241   
//  242   /* Process unlocked */
//  243   __HAL_UNLOCK(hadc);
//  244   
//  245   /* Return function status */
//  246   return tmp_hal_status;
//  247 }
//  248 
//  249 /**
//  250   * @brief  Wait for injected group conversion to be completed.
//  251   * @param  hadc: ADC handle
//  252   * @param  Timeout: Timeout value in millisecond.
//  253   * @retval HAL status
//  254   */
//  255 HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
//  256 {
//  257   uint32_t tickstart;
//  258 
//  259   /* Variables for polling in case of scan mode enabled and polling for each  */
//  260   /* conversion.                                                              */
//  261   /* Note: Variable "conversion_timeout_cpu_cycles" set to offset 28 CPU      */
//  262   /* cycles to compensate number of CPU cycles for processing of variable     */
//  263   /* "conversion_timeout_cpu_cycles_max"                                      */
//  264   uint32_t conversion_timeout_cpu_cycles = 28;
//  265   uint32_t conversion_timeout_cpu_cycles_max = 0;
//  266   
//  267   /* Check the parameters */
//  268   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  269   
//  270   /* Get timeout */
//  271   tickstart = HAL_GetTick();  
//  272      
//  273   /* Polling for end of conversion: differentiation if single/sequence        */
//  274   /* conversion.                                                              */
//  275   /* For injected group, flag JEOC is set only at the end of the sequence,    */
//  276   /* not for each conversion within the sequence.                             */
//  277   /* If setting "EOCSelection" is set to poll for each single conversion,     */
//  278   /* management of polling depends on setting of injected group sequencer:    */ 
//  279   /*  - If single conversion for injected group (scan mode disabled or        */
//  280   /*    InjectedNbrOfConversion ==1), flag JEOC is used to determine the      */
//  281   /*    conversion completion.                                                */
//  282   /*  - If sequence conversion for injected group (scan mode enabled and      */
//  283   /*    InjectedNbrOfConversion >=2), flag JEOC is set only at the end of the */
//  284   /*    sequence.                                                             */
//  285   /*    To poll for each conversion, the maximum conversion time is computed  */
//  286   /*    from ADC conversion time (selected sampling time + conversion time of */
//  287   /*    12 ADC clock cycles) and APB2/ADC clock prescalers (depending on      */
//  288   /*    settings, conversion time range can vary from 8 to several thousands  */
//  289   /*    of CPU cycles).                                                       */
//  290 
//  291   /* Note: On STM32L1, setting "EOCSelection" is related to regular group     */
//  292   /*       only, by hardware. For compatibility with other STM32 devices,     */
//  293   /*       this setting is related also to injected group by software.        */
//  294   if (((hadc->Instance->JSQR & ADC_JSQR_JL) == RESET)  ||
//  295       (hadc->Init.EOCSelection != ADC_EOC_SINGLE_CONV)   )
//  296   {
//  297     /* Wait until End of Conversion flag is raised */
//  298     while(HAL_IS_BIT_CLR(hadc->Instance->SR, ADC_FLAG_JEOC))
//  299     {
//  300       /* Check if timeout is disabled (set to infinite wait) */
//  301       if(Timeout != HAL_MAX_DELAY)
//  302       {
//  303         if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
//  304         {
//  305           /* Update ADC state machine to timeout */
//  306           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
//  307           
//  308           /* Process unlocked */
//  309           __HAL_UNLOCK(hadc);
//  310           
//  311           return HAL_TIMEOUT;
//  312         }
//  313       }
//  314     }
//  315   }
//  316   else
//  317   {
//  318     /* Computation of CPU cycles corresponding to ADC conversion cycles.      */
//  319     /* Retrieve ADC clock prescaler and ADC maximum conversion cycles on all  */
//  320     /* channels.                                                              */
//  321     conversion_timeout_cpu_cycles_max = ADC_GET_CLOCK_PRESCALER_DECIMAL(hadc);
//  322     conversion_timeout_cpu_cycles_max *= ADC_CONVCYCLES_MAX_RANGE(hadc);
//  323 
//  324     /* Poll with maximum conversion time */
//  325     while(conversion_timeout_cpu_cycles < conversion_timeout_cpu_cycles_max)
//  326     {
//  327       /* Check if timeout is disabled (set to infinite wait) */
//  328       if(Timeout != HAL_MAX_DELAY)
//  329       {
//  330         if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
//  331         {
//  332           /* Update ADC state machine to timeout */
//  333           SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
//  334 
//  335           /* Process unlocked */
//  336           __HAL_UNLOCK(hadc);
//  337           
//  338           return HAL_TIMEOUT;
//  339         }
//  340       }
//  341       conversion_timeout_cpu_cycles ++;
//  342     }
//  343   }
//  344   
//  345   /* Clear end of conversion flag of injected group if low power feature      */
//  346   /* "Auto Wait" is disabled, to not interfere with this feature until data   */
//  347   /* register is read using function HAL_ADCEx_InjectedGetValue().            */
//  348   if (hadc->Init.LowPowerAutoWait == DISABLE)
//  349   {
//  350     /* Clear injected group conversion flag */
//  351     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JSTRT | ADC_FLAG_JEOC);
//  352   }
//  353   
//  354   /* Update ADC state machine */
//  355   SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
//  356   
//  357   /* Determine whether any further conversion upcoming on group injected      */
//  358   /* by external trigger, continuous mode or scan sequence on going.          */
//  359   /* Note: On STM32L1, there is no independent flag of end of sequence.       */
//  360   /*       The test of scan sequence on going is done either with scan        */
//  361   /*       sequence disabled or with end of conversion flag set to            */
//  362   /*       of end of sequence.                                                */
//  363   if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                    &&
//  364      (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL)  ||
//  365       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)    ) &&
//  366      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
//  367       (ADC_IS_SOFTWARE_START_REGULAR(hadc)       &&
//  368       (hadc->Init.ContinuousConvMode == DISABLE)   )       )   )
//  369   {
//  370     /* Set ADC state */
//  371     CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);
//  372     
//  373     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
//  374     { 
//  375       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
//  376     }
//  377   }
//  378   
//  379   /* Return ADC state */
//  380   return HAL_OK;
//  381 }
//  382 
//  383 /**
//  384   * @brief  Enables ADC, starts conversion of injected group with interruption.
//  385   *          - JEOC (end of conversion of injected group)
//  386   *         Each of these interruptions has its dedicated callback function.
//  387   * @param  hadc: ADC handle
//  388   * @retval HAL status.
//  389   */
//  390 HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc)
//  391 {
//  392   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  393   
//  394   /* Check the parameters */
//  395   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  396   
//  397   /* Process locked */
//  398   __HAL_LOCK(hadc);
//  399     
//  400   /* Enable the ADC peripheral */
//  401   tmp_hal_status = ADC_Enable(hadc);
//  402   
//  403   /* Start conversion if ADC is effectively enabled */
//  404   if (tmp_hal_status == HAL_OK)
//  405   {
//  406     /* Set ADC state                                                          */
//  407     /* - Clear state bitfield related to injected group conversion results    */
//  408     /* - Set state bitfield related to injected operation                     */
//  409     ADC_STATE_CLR_SET(hadc->State,
//  410                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
//  411                       HAL_ADC_STATE_INJ_BUSY);
//  412     
//  413     /* Check if a regular conversion is ongoing */
//  414     /* Note: On this device, there is no ADC error code fields related to     */
//  415     /*       conversions on group injected only. In case of conversion on     */
//  416     /*       going on group regular, no error code is reset.                  */
//  417     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
//  418     {
//  419       /* Reset ADC all error code fields */
//  420       ADC_CLEAR_ERRORCODE(hadc);
//  421     }
//  422     
//  423     /* Process unlocked */
//  424     /* Unlock before starting ADC conversions: in case of potential           */
//  425     /* interruption, to let the process to ADC IRQ Handler.                   */
//  426     __HAL_UNLOCK(hadc);
//  427     
//  428     /* Clear injected group conversion flag */
//  429     /* (To ensure of no unknown state from potential previous ADC operations) */
//  430     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
//  431     
//  432     /* Enable end of conversion interrupt for injected channels */
//  433     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_JEOC);
//  434     
//  435     /* Enable conversion of injected group.                                   */
//  436     /* If software start has been selected, conversion starts immediately.    */
//  437     /* If external trigger has been selected, conversion will start at next   */
//  438     /* trigger event.                                                         */
//  439     /* If automatic injected conversion is enabled, conversion will start     */
//  440     /* after next regular group conversion.                                   */
//  441     if (ADC_IS_SOFTWARE_START_INJECTED(hadc)              && 
//  442         HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)  )
//  443     {
//  444       /* Enable ADC software conversion for injected channels */
//  445       SET_BIT(hadc->Instance->CR2, ADC_CR2_JSWSTART);
//  446     }
//  447   }
//  448   
//  449   /* Return function status */
//  450   return tmp_hal_status;
//  451 }
//  452 
//  453 /**
//  454   * @brief  Stop conversion of injected channels, disable interruption of 
//  455   *         end-of-conversion. Disable ADC peripheral if no regular conversion
//  456   *         is on going.
//  457   * @note   If ADC must be disabled and if conversion is on going on 
//  458   *         regular group, function HAL_ADC_Stop must be used to stop both
//  459   *         injected and regular groups, and disable the ADC.
//  460   * @note   If injected group mode auto-injection is enabled,
//  461   *         function HAL_ADC_Stop must be used.
//  462   * @param  hadc: ADC handle
//  463   * @retval None
//  464   */
//  465 HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc)
//  466 {
//  467   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  468   
//  469   /* Check the parameters */
//  470   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  471 
//  472   /* Process locked */
//  473   __HAL_LOCK(hadc);
//  474     
//  475   /* Stop potential conversion and disable ADC peripheral                     */
//  476   /* Conditioned to:                                                          */
//  477   /* - No conversion on the other group (regular group) is intended to        */
//  478   /*   continue (injected and regular groups stop conversion and ADC disable  */
//  479   /*   are common)                                                            */
//  480   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */ 
//  481   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
//  482      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
//  483   {
//  484     /* Stop potential conversion on going, on regular and injected groups */
//  485     /* Disable ADC peripheral */
//  486     tmp_hal_status = ADC_ConversionStop_Disable(hadc);
//  487     
//  488     /* Check if ADC is effectively disabled */
//  489     if (tmp_hal_status == HAL_OK)
//  490     {
//  491       /* Disable ADC end of conversion interrupt for injected channels */
//  492       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
//  493       
//  494       /* Set ADC state */
//  495       ADC_STATE_CLR_SET(hadc->State,
//  496                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
//  497                         HAL_ADC_STATE_READY);
//  498     }
//  499   }
//  500   else
//  501   {
//  502     /* Update ADC state machine to error */
//  503     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  504       
//  505     tmp_hal_status = HAL_ERROR;
//  506   }
//  507   
//  508   /* Process unlocked */
//  509   __HAL_UNLOCK(hadc);
//  510   
//  511   /* Return function status */
//  512   return tmp_hal_status;
//  513 }
//  514 
//  515 /**
//  516   * @brief  Get ADC injected group conversion result.
//  517   * @note   Reading register JDRx automatically clears ADC flag JEOC
//  518   *         (ADC group injected end of unitary conversion).
//  519   * @note   This function does not clear ADC flag JEOS 
//  520   *         (ADC group injected end of sequence conversion)
//  521   *         Occurrence of flag JEOS rising:
//  522   *          - If sequencer is composed of 1 rank, flag JEOS is equivalent
//  523   *            to flag JEOC.
//  524   *          - If sequencer is composed of several ranks, during the scan
//  525   *            sequence flag JEOC only is raised, at the end of the scan sequence
//  526   *            both flags JEOC and EOS are raised.
//  527   *         Flag JEOS must not be cleared by this function because
//  528   *         it would not be compliant with low power features
//  529   *         (feature low power auto-wait, not available on all STM32 families).
//  530   *         To clear this flag, either use function: 
//  531   *         in programming model IT: @ref HAL_ADC_IRQHandler(), in programming
//  532   *         model polling: @ref HAL_ADCEx_InjectedPollForConversion() 
//  533   *         or @ref __HAL_ADC_CLEAR_FLAG(&hadc, ADC_FLAG_JEOS).
//  534   * @param  hadc: ADC handle
//  535   * @param  InjectedRank: the converted ADC injected rank.
//  536   *          This parameter can be one of the following values:
//  537   *            @arg ADC_INJECTED_RANK_1: Injected Channel1 selected
//  538   *            @arg ADC_INJECTED_RANK_2: Injected Channel2 selected
//  539   *            @arg ADC_INJECTED_RANK_3: Injected Channel3 selected
//  540   *            @arg ADC_INJECTED_RANK_4: Injected Channel4 selected
//  541   * @retval ADC group injected conversion data
//  542   */
//  543 uint32_t HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank)
//  544 {
//  545   uint32_t tmp_jdr = 0;
//  546   
//  547   /* Check the parameters */
//  548   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  549   assert_param(IS_ADC_INJECTED_RANK(InjectedRank));
//  550   
//  551   /* Get ADC converted value */
//  552   switch(InjectedRank)
//  553   {  
//  554     case ADC_INJECTED_RANK_4:
//  555       tmp_jdr = hadc->Instance->JDR4;
//  556       break;
//  557     case ADC_INJECTED_RANK_3: 
//  558       tmp_jdr = hadc->Instance->JDR3;
//  559       break;
//  560     case ADC_INJECTED_RANK_2: 
//  561       tmp_jdr = hadc->Instance->JDR2;
//  562       break;
//  563     case ADC_INJECTED_RANK_1:
//  564     default:
//  565       tmp_jdr = hadc->Instance->JDR1;
//  566       break;
//  567   }
//  568   
//  569   /* Return ADC converted value */ 
//  570   return tmp_jdr;
//  571 }
//  572 
//  573 /**
//  574   * @brief  Injected conversion complete callback in non blocking mode 
//  575   * @param  hadc: ADC handle
//  576   * @retval None
//  577   */
//  578 __weak void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc)
//  579 {
//  580   /* Prevent unused argument(s) compilation warning */
//  581   UNUSED(hadc);
//  582 
//  583   /* NOTE : This function Should not be modified, when the callback is needed,
//  584             the HAL_ADCEx_InjectedConvCpltCallback could be implemented in the user file
//  585   */
//  586 }
//  587 
//  588 /**
//  589   * @}
//  590   */
//  591 
//  592 /** @defgroup ADCEx_Exported_Functions_Group2 ADC Extended Peripheral Control functions
//  593   * @brief    ADC Extended Peripheral Control functions
//  594   *
//  595 @verbatim   
//  596  ===============================================================================
//  597              ##### Peripheral Control functions #####
//  598  ===============================================================================  
//  599     [..]  This section provides functions allowing to:
//  600       (+) Configure channels on injected group
//  601       
//  602 @endverbatim
//  603   * @{
//  604   */
//  605 
//  606 /**
//  607   * @brief  Configures the ADC injected group and the selected channel to be
//  608   *         linked to the injected group.
//  609   * @note   Possibility to update parameters on the fly:
//  610   *         This function initializes injected group, following calls to this 
//  611   *         function can be used to reconfigure some parameters of structure
//  612   *         "ADC_InjectionConfTypeDef" on the fly, without reseting the ADC.
//  613   *         The setting of these parameters is conditioned to ADC state: 
//  614   *         this function must be called when ADC is not under conversion.
//  615   * @param  hadc: ADC handle
//  616   * @param  sConfigInjected: Structure of ADC injected group and ADC channel for
//  617   *         injected group.
//  618   * @retval None
//  619   */
//  620 HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc, ADC_InjectionConfTypeDef* sConfigInjected)
//  621 {   
//  622   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
//  623   __IO uint32_t wait_loop_index = 0;
//  624   
//  625   /* Check the parameters */
//  626   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
//  627   assert_param(IS_ADC_CHANNEL(sConfigInjected->InjectedChannel));
//  628   assert_param(IS_ADC_SAMPLE_TIME(sConfigInjected->InjectedSamplingTime));
//  629   assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->AutoInjectedConv));
//  630   assert_param(IS_ADC_EXTTRIGINJEC(sConfigInjected->ExternalTrigInjecConv));
//  631   assert_param(IS_ADC_RANGE(ADC_RESOLUTION_12B, sConfigInjected->InjectedOffset));
//  632   
//  633   if(hadc->Init.ScanConvMode != ADC_SCAN_DISABLE)
//  634   {
//  635     assert_param(IS_ADC_INJECTED_RANK(sConfigInjected->InjectedRank));
//  636     assert_param(IS_ADC_INJECTED_NB_CONV(sConfigInjected->InjectedNbrOfConversion));
//  637     assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->InjectedDiscontinuousConvMode));
//  638   }
//  639   
//  640   if(sConfigInjected->ExternalTrigInjecConv != ADC_INJECTED_SOFTWARE_START)
//  641   {
//  642     assert_param(IS_ADC_EXTTRIGINJEC_EDGE(sConfigInjected->ExternalTrigInjecConvEdge));
//  643   }
//  644   
//  645   /* Process locked */
//  646   __HAL_LOCK(hadc);
//  647   
//  648   /* Configuration of injected group sequencer:                               */
//  649   /* - if scan mode is disabled, injected channels sequence length is set to  */
//  650   /*   0x00: 1 channel converted (channel on regular rank 1)                  */
//  651   /*   Parameter "InjectedNbrOfConversion" is discarded.                      */
//  652   /*   Note: Scan mode is present by hardware on this device and, if          */
//  653   /*   disabled, discards automatically nb of conversions. Anyway, nb of      */
//  654   /*   conversions is forced to 0x00 for alignment over all STM32 devices.    */
//  655   /* - if scan mode is enabled, injected channels sequence length is set to   */
//  656   /*   parameter ""InjectedNbrOfConversion".                                  */
//  657   if (hadc->Init.ScanConvMode == ADC_SCAN_DISABLE)
//  658   {
//  659     if (sConfigInjected->InjectedRank == ADC_INJECTED_RANK_1)
//  660     {
//  661       /* Clear the old SQx bits for all injected ranks */
//  662         MODIFY_REG(hadc->Instance->JSQR                              ,
//  663                    ADC_JSQR_JL   |
//  664                    ADC_JSQR_JSQ4 |
//  665                    ADC_JSQR_JSQ3 |
//  666                    ADC_JSQR_JSQ2 |
//  667                    ADC_JSQR_JSQ1                                     ,
//  668                    ADC_JSQR_RK_JL(sConfigInjected->InjectedChannel,
//  669                                     ADC_INJECTED_RANK_1,
//  670                                     0x01)                             );
//  671     }
//  672     /* If another injected rank than rank1 was intended to be set, and could  */
//  673     /* not due to ScanConvMode disabled, error is reported.                   */
//  674     else
//  675     {
//  676       /* Update ADC state machine to error */
//  677       SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  678         
//  679       tmp_hal_status = HAL_ERROR;
//  680     }
//  681   }
//  682   else
//  683   {   
//  684     /* Since injected channels rank conv. order depends on total number of   */
//  685     /* injected conversions, selected rank must be below or equal to total   */
//  686     /* number of injected conversions to be updated.                         */
//  687     if (sConfigInjected->InjectedRank <= sConfigInjected->InjectedNbrOfConversion)
//  688     {
//  689       /* Clear the old SQx bits for the selected rank */
//  690       /* Set the SQx bits for the selected rank */
//  691       MODIFY_REG(hadc->Instance->JSQR                                                     ,
//  692                  
//  693                  ADC_JSQR_JL                                               |
//  694                  ADC_JSQR_RK_JL(ADC_JSQR_JSQ1,                         
//  695                                   sConfigInjected->InjectedRank,         
//  696                                   sConfigInjected->InjectedNbrOfConversion)               ,
//  697                  
//  698                  ADC_JSQR_JL_SHIFT(sConfigInjected->InjectedNbrOfConversion)             |
//  699                  ADC_JSQR_RK_JL(sConfigInjected->InjectedChannel,      
//  700                                                 sConfigInjected->InjectedRank,         
//  701                                                 sConfigInjected->InjectedNbrOfConversion)  );
//  702     }
//  703     else
//  704     {
//  705       /* Clear the old SQx bits for the selected rank */
//  706       MODIFY_REG(hadc->Instance->JSQR                                       ,
//  707                  
//  708                  ADC_JSQR_JL                                               |
//  709                  ADC_JSQR_RK_JL(ADC_JSQR_JSQ1,                         
//  710                                   sConfigInjected->InjectedRank,         
//  711                                   sConfigInjected->InjectedNbrOfConversion) ,
//  712                  
//  713                  0x00000000                                                  );
//  714     }
//  715   } 
//  716     
//  717   /* Enable external trigger if trigger selection is different of software    */
//  718   /* start.                                                                   */
//  719   /* Note: This configuration keeps the hardware feature of parameter         */
//  720   /*       ExternalTrigConvEdge "trigger edge none" equivalent to             */
//  721   /*       software start.                                                    */
//  722   
//  723   if (sConfigInjected->ExternalTrigInjecConv != ADC_INJECTED_SOFTWARE_START)
//  724   {    
//  725     MODIFY_REG(hadc->Instance->CR2                        ,
//  726                ADC_CR2_JEXTEN  |
//  727                ADC_CR2_JEXTSEL                            ,
//  728                sConfigInjected->ExternalTrigInjecConv    |
//  729                sConfigInjected->ExternalTrigInjecConvEdge  );
//  730   }
//  731   else
//  732   {
//  733     MODIFY_REG(hadc->Instance->CR2,
//  734                ADC_CR2_JEXTEN  |
//  735                ADC_CR2_JEXTSEL    ,
//  736                0x00000000          );
//  737   }
//  738 
//  739   /* Configuration of injected group                                          */
//  740   /* Parameters update conditioned to ADC state:                              */
//  741   /* Parameters that can be updated only when ADC is disabled:                */
//  742   /*  - Automatic injected conversion                                         */
//  743   /*  - Injected discontinuous mode                                           */
//  744   if ((ADC_IS_ENABLE(hadc) == RESET))
//  745   {
//  746     hadc->Instance->CR1 &= ~(ADC_CR1_JAUTO   |
//  747                              ADC_CR1_JDISCEN  );
//  748     
//  749     /* Automatic injected conversion can be enabled if injected group         */
//  750     /* external triggers are disabled.                                        */
//  751     if (sConfigInjected->AutoInjectedConv == ENABLE)
//  752     {
//  753       if (sConfigInjected->ExternalTrigInjecConv == ADC_INJECTED_SOFTWARE_START)
//  754       {
//  755         SET_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO);
//  756       }
//  757       else
//  758       {
//  759         /* Update ADC state machine to error */
//  760         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  761         
//  762         tmp_hal_status = HAL_ERROR;
//  763       }
//  764     }
//  765     
//  766     /* Injected discontinuous can be enabled only if auto-injected mode is    */
//  767     /* disabled.                                                              */  
//  768     if (sConfigInjected->InjectedDiscontinuousConvMode == ENABLE)
//  769     {
//  770       if (sConfigInjected->AutoInjectedConv == DISABLE)
//  771       {
//  772         SET_BIT(hadc->Instance->CR1, ADC_CR1_JDISCEN);
//  773       } 
//  774       else
//  775       {
//  776         /* Update ADC state machine to error */
//  777         SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
//  778         
//  779         tmp_hal_status = HAL_ERROR;
//  780       }
//  781     }
//  782   }
//  783 
//  784   /* Channel sampling time configuration */
//  785   /* For InjectedChannels 0 to 9 */
//  786   if (sConfigInjected->InjectedChannel < ADC_CHANNEL_10)
//  787   {
//  788     MODIFY_REG(hadc->Instance->SMPR3,
//  789                ADC_SMPR3(ADC_SMPR3_SMP0, sConfigInjected->InjectedChannel),
//  790                ADC_SMPR3(sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel) );
//  791   }
//  792   /* For InjectedChannels 10 to 19 */
//  793   else if (sConfigInjected->InjectedChannel < ADC_CHANNEL_20)
//  794   {
//  795     MODIFY_REG(hadc->Instance->SMPR2,
//  796                ADC_SMPR2(ADC_SMPR2_SMP10, sConfigInjected->InjectedChannel),
//  797                ADC_SMPR2(sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel) );
//  798   }
//  799   /* For InjectedChannels 20 to 26 for devices Cat.1, Cat.2, Cat.3 */
//  800   /* For InjectedChannels 20 to 29 for devices Cat4, Cat.5 */
//  801   else if (sConfigInjected->InjectedChannel <= ADC_SMPR1_CHANNEL_MAX)
//  802   {   
//  803     MODIFY_REG(hadc->Instance->SMPR1,
//  804                ADC_SMPR1(ADC_SMPR1_SMP20, sConfigInjected->InjectedChannel),
//  805                ADC_SMPR1(sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel) );
//  806   }
//  807   /* For InjectedChannels 30 to 31 for devices Cat4, Cat.5 */
//  808   else
//  809   {
//  810     ADC_SMPR0_CHANNEL_SET(hadc, sConfigInjected->InjectedSamplingTime, sConfigInjected->InjectedChannel);
//  811   }
//  812   
//  813   
//  814   /* Configure the offset: offset enable/disable, InjectedChannel, offset value */
//  815   switch(sConfigInjected->InjectedRank)
//  816   {
//  817     case 1:
//  818       /* Set injected channel 1 offset */
//  819       MODIFY_REG(hadc->Instance->JOFR1,
//  820                  ADC_JOFR1_JOFFSET1,
//  821                  sConfigInjected->InjectedOffset);
//  822       break;
//  823     case 2:
//  824       /* Set injected channel 2 offset */
//  825       MODIFY_REG(hadc->Instance->JOFR2,
//  826                  ADC_JOFR2_JOFFSET2,
//  827                  sConfigInjected->InjectedOffset);
//  828       break;
//  829     case 3:
//  830       /* Set injected channel 3 offset */
//  831       MODIFY_REG(hadc->Instance->JOFR3,
//  832                  ADC_JOFR3_JOFFSET3,
//  833                  sConfigInjected->InjectedOffset);
//  834       break;
//  835     case 4:
//  836     default:
//  837       MODIFY_REG(hadc->Instance->JOFR4,
//  838                  ADC_JOFR4_JOFFSET4,
//  839                  sConfigInjected->InjectedOffset);
//  840       break;
//  841   }
//  842   
//  843   /* If ADC1 Channel_16 or Channel_17 is selected, enable Temperature sensor  */
//  844   /* and VREFINT measurement path.                                            */
//  845   if ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR) ||
//  846       (sConfigInjected->InjectedChannel == ADC_CHANNEL_VREFINT)      )
//  847   {
//  848     SET_BIT(ADC->CCR, ADC_CCR_TSVREFE);
//  849     
//  850     if ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR))
//  851     {
//  852       /* Delay for temperature sensor stabilization time */
//  853       /* Compute number of CPU cycles to wait for */
//  854       wait_loop_index = (ADC_TEMPSENSOR_DELAY_US * (SystemCoreClock / 1000000));
//  855       while(wait_loop_index != 0)
//  856       {
//  857         wait_loop_index--;
//  858       }
//  859     }
//  860   }
//  861   
//  862   /* Process unlocked */
//  863   __HAL_UNLOCK(hadc);
//  864   
//  865   /* Return function status */
//  866   return tmp_hal_status;
//  867 }
//  868 
//  869 /**
//  870   * @}
//  871   */  
//  872 
//  873 /**
//  874   * @}
//  875   */
//  876 
//  877 #endif /* HAL_ADC_MODULE_ENABLED */
//  878 /**
//  879   * @}
//  880   */
//  881 
//  882 /**
//  883   * @}
//  884   */
//  885 
//  886 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
