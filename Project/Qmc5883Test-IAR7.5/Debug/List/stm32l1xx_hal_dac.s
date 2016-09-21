///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_dac.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_dac.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   DAC HAL module driver.
//    8   *         This file provides firmware functions to manage the following 
//    9   *         functionalities of the Digital to Analog Converter (DAC) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral Control functions
//   13   *           + Peripheral State and Errors functions      
//   14   *     
//   15   *
//   16   @verbatim      
//   17   ==============================================================================
//   18                       ##### DAC Peripheral features #####
//   19   ==============================================================================
//   20     [..]        
//   21       *** DAC Channels ***
//   22       ====================  
//   23     [..]  
//   24     The device integrates two 12-bit Digital Analog Converters that can 
//   25     be used independently or simultaneously (dual mode):
//   26       (#) DAC channel1 with DAC_OUT1 (PA4) as output
//   27       (#) DAC channel2 with DAC_OUT2 (PA5) as output
//   28       
//   29       *** DAC Triggers ***
//   30       ====================
//   31     [..]
//   32     Digital to Analog conversion can be non-triggered using DAC_TRIGGER_NONE
//   33     and DAC_OUT1/DAC_OUT2 is available once writing to DHRx register. 
//   34     [..] 
//   35     Digital to Analog conversion can be triggered by:
//   36       (#) External event: EXTI Line 9 (any GPIOx_PIN_9) using DAC_TRIGGER_EXT_IT9.
//   37           The used pin (GPIOx_PIN_9) must be configured in input mode.
//   38   
//   39       (#) Timers TRGO: TIM2, TIM4, TIM6, TIM7, TIM9
//   40           (DAC_Trigger_T2_TRGO, DAC_Trigger_T4_TRGO...)
//   41   
//   42       (#) Software using DAC_TRIGGER_SOFTWARE
//   43   
//   44       *** DAC Buffer mode feature ***
//   45       =============================== 
//   46       [..] 
//   47       Each DAC channel integrates an output buffer that can be used to 
//   48       reduce the output impedance, and to drive external loads directly
//   49       without having to add an external operational amplifier.
//   50       To enable, the output buffer use  
//   51       sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
//   52       [..]           
//   53       (@) Refer to the device datasheet for more details about output 
//   54           impedance value with and without output buffer.
//   55 
//   56       *** DAC connect feature ***
//   57       =============================== 
//   58       [..] 
//   59       Each DAC channel can be connected internally. 
//   60       To connect, use
//   61       sConfig.DAC_ConnectOnChipPeripheral = DAC_CHIPCONNECT_ENABLE;
//   62                                                
//   63       *** GPIO configurations guidelines ***
//   64       =====================
//   65       [..] 
//   66       When a DAC channel is used (ex channel1 on PA4) and the other is not 
//   67       (ex channel1 on PA5 is configured in Analog and disabled).
//   68       Channel1 may disturb channel2 as coupling effect.
//   69       Note that there is no coupling on channel2 as soon as channel2 is turned on.
//   70       Coupling on adjacent channel could be avoided as follows:
//   71       when unused PA5 is configured as INPUT PULL-UP or DOWN. 
//   72       PA5 is configured in ANALOG just before it is turned on.     
//   73                                                
//   74        *** DAC wave generation feature ***
//   75        =================================== 
//   76        [..]     
//   77        Both DAC channels can be used to generate
//   78          (#) Noise wave using HAL_DACEx_NoiseWaveGenerate()
//   79          (#) Triangle wave using HAL_DACEx_TriangleWaveGenerate()
//   80             
//   81        *** DAC data format ***
//   82        =======================
//   83        [..]   
//   84        The DAC data format can be:
//   85          (#) 8-bit right alignment using DAC_ALIGN_8B_R
//   86          (#) 12-bit left alignment using DAC_ALIGN_12B_L
//   87          (#) 12-bit right alignment using DAC_ALIGN_12B_R
//   88   
//   89        *** DAC data value to voltage correspondance ***  
//   90        ================================================ 
//   91        [..] 
//   92        The analog output voltage on each DAC channel pin is determined
//   93        by the following equation:
//   94        [..]
//   95        DAC_OUTx = VREF+ * DOR / 4095
//   96        (+) with  DOR is the Data Output Register
//   97        [..]
//   98           VEF+ is the input voltage reference (refer to the device datasheet)
//   99        [..]
//  100         e.g. To set DAC_OUT1 to 0.7V, use
//  101        (+) Assuming that VREF+ = 3.3V, DAC_OUT1 = (3.3 * 868) / 4095 = 0.7V
//  102 
//  103        *** DMA requests  ***
//  104        =====================
//  105        [..]    
//  106        A DMA1 request can be generated when an external trigger (but not
//  107        a software trigger) occurs if DMA1 requests are enabled using
//  108        HAL_DAC_Start_DMA()
//  109        [..]
//  110        DMA1 requests are mapped as following:
//  111          (#) DAC channel1 :
//  112              mapped on DMA1 channel2 which must be 
//  113              already configured
//  114          (#) DAC channel2 :
//  115              mapped on DMA1 channel3 which must be 
//  116              already configured
//  117        
//  118     -@- For Dual mode and specific signal (Triangle and noise) generation please 
//  119         refer to Extension Features Driver description        
//  120   
//  121       
//  122                       ##### How to use this driver #####
//  123   ==============================================================================
//  124     [..]          
//  125       (+) DAC APB clock must be enabled to get write access to DAC
//  126           registers using HAL_DAC_Init()
//  127       (+) Configure DAC_OUTx (DAC_OUT1: PA4, DAC_OUT2: PA5) in analog mode.
//  128       (+) Configure the DAC channel using HAL_DAC_ConfigChannel() function.
//  129       (+) Enable the DAC channel using HAL_DAC_Start() or HAL_DAC_Start_DMA functions
//  130 
//  131      *** Polling mode IO operation ***
//  132      =================================
//  133      [..]    
//  134        (+) Start the DAC peripheral using HAL_DAC_Start() 
//  135        (+) To read the DAC last data output value, use the HAL_DAC_GetValue() function.
//  136        (+) Stop the DAC peripheral using HAL_DAC_Stop()
//  137        
//  138      *** DMA mode IO operation ***    
//  139      ==============================
//  140      [..]    
//  141        (+) Start the DAC peripheral using HAL_DAC_Start_DMA(), at this stage the user specify the length 
//  142            of data to be transferred at each end of conversion
//  143        (+) At the middle of data transfer HAL_DACEx_ConvHalfCpltCallbackCh1()or HAL_DACEx_ConvHalfCpltCallbackCh2()  
//  144            function is executed and user can add his own code by customization of function pointer 
//  145            HAL_DAC_ConvHalfCpltCallbackCh1 or HAL_DAC_ConvHalfCpltCallbackCh2
//  146        (+) At The end of data transfer HAL_DAC_ConvCpltCallbackCh1()or HAL_DAC_ConvCpltCallbackCh2()  
//  147            function is executed and user can add his own code by customization of function pointer 
//  148            HAL_DAC_ConvCpltCallbackCh1 or HAL_DAC_ConvCpltCallbackCh2
//  149        (+) In case of transfer Error, HAL_DAC_ErrorCallbackCh1() or HAL_DACEx_ErrorCallbackCh2() function is executed and user can 
//  150            add his own code by customization of function pointer HAL_DAC_ErrorCallbackCh1 or HAL_DACEx_ErrorCallbackCh2
//  151        (+) For STM32F100x devices with specific feature: DMA underrun.             
//  152            In case of DMA underrun, DAC interruption triggers and execute internal function HAL_DAC_IRQHandler.
//  153            HAL_DAC_DMAUnderrunCallbackCh1()or HAL_DACEx_DMAUnderrunCallbackCh2()  
//  154            function is executed and user can add his own code by customization of function pointer 
//  155            HAL_DAC_DMAUnderrunCallbackCh1 or HAL_DACEx_DMAUnderrunCallbackCh2
//  156            add his own code by customization of function pointer HAL_DAC_ErrorCallbackCh1
//  157        (+) Stop the DAC peripheral using HAL_DAC_Stop_DMA()
//  158                     
//  159      *** DAC HAL driver macros list ***
//  160      ============================================= 
//  161      [..]
//  162        Below the list of most used macros in DAC HAL driver.
//  163        
//  164       (+) __HAL_DAC_ENABLE : Enable the DAC peripheral
//  165       (+) __HAL_DAC_DISABLE : Disable the DAC peripheral
//  166       (+) __HAL_DAC_CLEAR_FLAG: Clear the DAC's pending flags
//  167       (+) __HAL_DAC_GET_FLAG: Get the selected DAC's flag status
//  168       
//  169      [..]
//  170       (@) You can refer to the DAC HAL driver header file for more useful macros  
//  171    
//  172  @endverbatim    
//  173   ******************************************************************************
//  174   * @attention
//  175   *
//  176   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  177   *
//  178   * Redistribution and use in source and binary forms, with or without modification,
//  179   * are permitted provided that the following conditions are met:
//  180   *   1. Redistributions of source code must retain the above copyright notice,
//  181   *      this list of conditions and the following disclaimer.
//  182   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  183   *      this list of conditions and the following disclaimer in the documentation
//  184   *      and/or other materials provided with the distribution.
//  185   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  186   *      may be used to endorse or promote products derived from this software
//  187   *      without specific prior written permission.
//  188   *
//  189   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  190   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  191   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  192   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  193   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  194   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  195   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  196   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  197   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  198   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  199   *
//  200   ******************************************************************************
//  201   */ 
//  202 
//  203 
//  204 /* Includes ------------------------------------------------------------------*/
//  205 #include "stm32l1xx_hal.h"
//  206 
//  207 /** @addtogroup STM32L1xx_HAL_Driver
//  208   * @{
//  209   */
//  210 
//  211 /** @defgroup DAC DAC
//  212   * @brief DAC driver modules
//  213   * @{
//  214   */ 
//  215 
//  216 #ifdef HAL_DAC_MODULE_ENABLED
//  217 
//  218 /* Private typedef -----------------------------------------------------------*/
//  219 /* Private define ------------------------------------------------------------*/
//  220 /* Private macro -------------------------------------------------------------*/
//  221 /* Private variables ---------------------------------------------------------*/
//  222 /* Private function prototypes -----------------------------------------------*/
//  223 /** @defgroup DAC_Private_Functions DAC Private Functions
//  224   * @{
//  225   */
//  226 static void DAC_DMAConvCpltCh1(DMA_HandleTypeDef *hdma);
//  227 static void DAC_DMAErrorCh1(DMA_HandleTypeDef *hdma);
//  228 static void DAC_DMAHalfConvCpltCh1(DMA_HandleTypeDef *hdma); 
//  229 
//  230 /**
//  231   * @}
//  232   */
//  233 /* Private functions ---------------------------------------------------------*/
//  234 
//  235 /** @defgroup DAC_Exported_Functions DAC Exported Functions
//  236   * @{
//  237   */
//  238 
//  239 /** @defgroup DAC_Exported_Functions_Group1 Initialization and de-initialization functions 
//  240  *  @brief    Initialization and Configuration functions 
//  241  *
//  242 @verbatim    
//  243   ==============================================================================
//  244               ##### Initialization and de-initialization functions #####
//  245   ==============================================================================
//  246     [..]  This section provides functions allowing to:
//  247       (+) Initialize and configure the DAC. 
//  248       (+) De-initialize the DAC. 
//  249          
//  250 @endverbatim
//  251   * @{
//  252   */
//  253 
//  254 /**
//  255   * @brief  Initializes the DAC peripheral according to the specified parameters
//  256   *         in the DAC_InitStruct.
//  257   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  258   *         the configuration information for the specified DAC.
//  259   * @retval HAL status
//  260   */
//  261 HAL_StatusTypeDef HAL_DAC_Init(DAC_HandleTypeDef* hdac)
//  262 { 
//  263   /* Check DAC handle */
//  264   if(hdac == NULL)
//  265   {
//  266      return HAL_ERROR;
//  267   }
//  268   /* Check the parameters */
//  269   assert_param(IS_DAC_ALL_INSTANCE(hdac->Instance));
//  270   
//  271   if(hdac->State == HAL_DAC_STATE_RESET)
//  272   {  
//  273     /* Allocate lock resource and initialize it */
//  274     hdac->Lock = HAL_UNLOCKED;
//  275     
//  276     /* Init the low level hardware */
//  277     HAL_DAC_MspInit(hdac);
//  278   }
//  279   
//  280   /* Initialize the DAC state*/
//  281   hdac->State = HAL_DAC_STATE_BUSY;
//  282   
//  283   /* Set DAC error code to none */
//  284   hdac->ErrorCode = HAL_DAC_ERROR_NONE;
//  285   
//  286   /* Initialize the DAC state*/
//  287   hdac->State = HAL_DAC_STATE_READY;
//  288   
//  289   /* Return function status */
//  290   return HAL_OK;
//  291 }
//  292 
//  293 /**
//  294   * @brief  Deinitializes the DAC peripheral registers to their default reset values.
//  295   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  296   *         the configuration information for the specified DAC.
//  297   * @retval HAL status
//  298   */
//  299 HAL_StatusTypeDef HAL_DAC_DeInit(DAC_HandleTypeDef* hdac)
//  300 {
//  301   /* Check DAC handle */
//  302   if(hdac == NULL)
//  303   {
//  304      return HAL_ERROR;
//  305   }
//  306 
//  307   /* Check the parameters */
//  308   assert_param(IS_DAC_ALL_INSTANCE(hdac->Instance));
//  309 
//  310   /* Change DAC state */
//  311   hdac->State = HAL_DAC_STATE_BUSY;
//  312 
//  313   /* DeInit the low level hardware */
//  314   HAL_DAC_MspDeInit(hdac);
//  315 
//  316   /* Set DAC error code to none */
//  317   hdac->ErrorCode = HAL_DAC_ERROR_NONE;
//  318 
//  319   /* Change DAC state */
//  320   hdac->State = HAL_DAC_STATE_RESET;
//  321 
//  322   /* Release Lock */
//  323   __HAL_UNLOCK(hdac);
//  324 
//  325   /* Return function status */
//  326   return HAL_OK;
//  327 }
//  328 
//  329 /**
//  330   * @brief  Initializes the DAC MSP.
//  331   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  332   *         the configuration information for the specified DAC.
//  333   * @retval None
//  334   */
//  335 __weak void HAL_DAC_MspInit(DAC_HandleTypeDef* hdac)
//  336 {
//  337   /* Prevent unused argument(s) compilation warning */
//  338   UNUSED(hdac);
//  339 
//  340   /* NOTE : This function Should not be modified, when the callback is needed,
//  341             the HAL_DAC_MspInit could be implemented in the user file
//  342    */ 
//  343 }
//  344 
//  345 /**
//  346   * @brief  DeInitializes the DAC MSP.
//  347   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  348   *         the configuration information for the specified DAC.  
//  349   * @retval None
//  350   */
//  351 __weak void HAL_DAC_MspDeInit(DAC_HandleTypeDef* hdac)
//  352 {
//  353   /* Prevent unused argument(s) compilation warning */
//  354   UNUSED(hdac);
//  355 
//  356   /* NOTE : This function Should not be modified, when the callback is needed,
//  357             the HAL_DAC_MspDeInit could be implemented in the user file
//  358    */ 
//  359 }
//  360 
//  361 /**
//  362   * @}
//  363   */
//  364 
//  365 /** @defgroup DAC_Exported_Functions_Group2 IO operation functions
//  366  *  @brief    IO operation functions 
//  367  *
//  368 @verbatim   
//  369   ==============================================================================
//  370              ##### IO operation functions #####
//  371   ==============================================================================  
//  372     [..]  This section provides functions allowing to:
//  373       (+) Start conversion.
//  374       (+) Stop conversion.
//  375       (+) Start conversion and enable DMA transfer.
//  376       (+) Stop conversion and disable DMA transfer.
//  377       (+) Get result of conversion.
//  378                      
//  379 @endverbatim
//  380   * @{
//  381   */
//  382 
//  383 /**
//  384   * @brief  Enables DAC and starts conversion of channel.
//  385   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  386   *         the configuration information for the specified DAC.
//  387   * @param  Channel: The selected DAC channel. 
//  388   *          This parameter can be one of the following values:
//  389   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  390   *            @arg DAC_CHANNEL_2: DAC Channel2 selected
//  391   * @retval HAL status
//  392   */
//  393 HAL_StatusTypeDef HAL_DAC_Start(DAC_HandleTypeDef* hdac, uint32_t Channel)
//  394 {
//  395   /* Check the parameters */
//  396   assert_param(IS_DAC_CHANNEL(Channel));
//  397   
//  398   /* Process locked */
//  399   __HAL_LOCK(hdac);
//  400   
//  401   /* Change DAC state */
//  402   hdac->State = HAL_DAC_STATE_BUSY;
//  403   
//  404   /* Enable the Peripharal */
//  405   __HAL_DAC_ENABLE(hdac, Channel);
//  406   
//  407   if(Channel == DAC_CHANNEL_1)
//  408   {
//  409     /* Check if software trigger enabled */
//  410     if((hdac->Instance->CR & (DAC_CR_TEN1 | DAC_CR_TSEL1)) == (DAC_CR_TEN1 | DAC_CR_TSEL1))
//  411     {
//  412       /* Enable the selected DAC software conversion */
//  413       SET_BIT(hdac->Instance->SWTRIGR, DAC_SWTRIGR_SWTRIG1);
//  414     }
//  415   }
//  416   else
//  417   {
//  418     /* Check if software trigger enabled */
//  419     if((hdac->Instance->CR & (DAC_CR_TEN2 | DAC_CR_TSEL2)) == (DAC_CR_TEN2 | DAC_CR_TSEL2))
//  420     {
//  421       /* Enable the selected DAC software conversion*/
//  422       SET_BIT(hdac->Instance->SWTRIGR, DAC_SWTRIGR_SWTRIG2);
//  423     }
//  424   }
//  425   
//  426   /* Change DAC state */
//  427   hdac->State = HAL_DAC_STATE_READY;
//  428   
//  429   /* Process unlocked */
//  430   __HAL_UNLOCK(hdac);
//  431   
//  432   /* Return function status */
//  433   return HAL_OK;
//  434 }
//  435 
//  436 /**
//  437   * @brief  Disables DAC and stop conversion of channel.
//  438   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  439   *         the configuration information for the specified DAC.
//  440   * @param  Channel: The selected DAC channel. 
//  441   *          This parameter can be one of the following values:
//  442   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  443   *            @arg DAC_CHANNEL_2: DAC Channel2 selected  
//  444   * @retval HAL status
//  445   */
//  446 HAL_StatusTypeDef HAL_DAC_Stop(DAC_HandleTypeDef* hdac, uint32_t Channel)
//  447 {
//  448   /* Check the parameters */
//  449   assert_param(IS_DAC_CHANNEL(Channel));
//  450   
//  451   /* Disable the Peripheral */
//  452   __HAL_DAC_DISABLE(hdac, Channel);
//  453   
//  454   /* Change DAC state */
//  455   hdac->State = HAL_DAC_STATE_READY;
//  456   
//  457   /* Return function status */
//  458   return HAL_OK;
//  459 }
//  460 
//  461 /**
//  462   * @brief  Enables DAC and starts conversion of channel.
//  463   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  464   *         the configuration information for the specified DAC.
//  465   * @param  Channel: The selected DAC channel. 
//  466   *          This parameter can be one of the following values:
//  467   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  468   *            @arg DAC_CHANNEL_2: DAC Channel2 selected
//  469   * @param  pData: The destination peripheral Buffer address.
//  470   * @param  Length: The length of data to be transferred from memory to DAC peripheral
//  471   * @param  Alignment: Specifies the data alignment for DAC channel.
//  472   *          This parameter can be one of the following values:
//  473   *            @arg DAC_ALIGN_8B_R: 8bit right data alignment selected
//  474   *            @arg DAC_ALIGN_12B_L: 12bit left data alignment selected
//  475   *            @arg DAC_ALIGN_12B_R: 12bit right data alignment selected
//  476   * @retval HAL status
//  477   */
//  478 HAL_StatusTypeDef HAL_DAC_Start_DMA(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t* pData, uint32_t Length, uint32_t Alignment)
//  479 {
//  480   uint32_t tmpreg = 0;
//  481   
//  482   /* Check the parameters */
//  483   assert_param(IS_DAC_CHANNEL(Channel));
//  484   assert_param(IS_DAC_ALIGN(Alignment));
//  485   
//  486   /* Process locked */
//  487   __HAL_LOCK(hdac);
//  488   
//  489   /* Change DAC state */
//  490   hdac->State = HAL_DAC_STATE_BUSY;
//  491   
//  492   if(Channel == DAC_CHANNEL_1)
//  493   {
//  494     /* Set the DMA transfer complete callback for channel1 */
//  495     hdac->DMA_Handle1->XferCpltCallback = DAC_DMAConvCpltCh1;
//  496     
//  497     /* Set the DMA half transfer complete callback for channel1 */
//  498     hdac->DMA_Handle1->XferHalfCpltCallback = DAC_DMAHalfConvCpltCh1;
//  499        
//  500     /* Set the DMA error callback for channel1 */
//  501     hdac->DMA_Handle1->XferErrorCallback = DAC_DMAErrorCh1;
//  502     
//  503     /* Enable the selected DAC channel1 DMA request */
//  504     SET_BIT(hdac->Instance->CR, DAC_CR_DMAEN1);
//  505     
//  506     /* Case of use of channel 1 */
//  507     switch(Alignment)
//  508     {
//  509       case DAC_ALIGN_12B_R:
//  510         /* Get DHR12R1 address */
//  511         tmpreg = (uint32_t)&hdac->Instance->DHR12R1;
//  512         break;
//  513       case DAC_ALIGN_12B_L:
//  514         /* Get DHR12L1 address */
//  515         tmpreg = (uint32_t)&hdac->Instance->DHR12L1;
//  516         break;
//  517       case DAC_ALIGN_8B_R:
//  518         /* Get DHR8R1 address */
//  519         tmpreg = (uint32_t)&hdac->Instance->DHR8R1;
//  520         break;
//  521       default:
//  522         break;
//  523     }
//  524   }
//  525   else
//  526   {
//  527     /* Set the DMA transfer complete callback for channel2 */
//  528     hdac->DMA_Handle2->XferCpltCallback = DAC_DMAConvCpltCh2;
//  529     
//  530     /* Set the DMA half transfer complete callback for channel2 */
//  531     hdac->DMA_Handle2->XferHalfCpltCallback = DAC_DMAHalfConvCpltCh2;
//  532     
//  533     /* Set the DMA error callback for channel2 */
//  534     hdac->DMA_Handle2->XferErrorCallback = DAC_DMAErrorCh2;
//  535     
//  536     /* Enable the selected DAC channel2 DMA request */
//  537     SET_BIT(hdac->Instance->CR, DAC_CR_DMAEN2);
//  538     
//  539     /* Case of use of channel 2 */
//  540     switch(Alignment)
//  541     {
//  542       case DAC_ALIGN_12B_R:
//  543         /* Get DHR12R2 address */
//  544         tmpreg = (uint32_t)&hdac->Instance->DHR12R2;
//  545         break;
//  546       case DAC_ALIGN_12B_L:
//  547         /* Get DHR12L2 address */
//  548         tmpreg = (uint32_t)&hdac->Instance->DHR12L2;
//  549         break;
//  550       case DAC_ALIGN_8B_R:
//  551         /* Get DHR8R2 address */
//  552         tmpreg = (uint32_t)&hdac->Instance->DHR8R2;
//  553         break;
//  554       default:
//  555         break;
//  556     }
//  557   }
//  558   
//  559   /* Enable the DMA channel */
//  560   if(Channel == DAC_CHANNEL_1)
//  561   {
//  562     /* Enable the DAC DMA underrun interrupt */
//  563     __HAL_DAC_ENABLE_IT(hdac, DAC_IT_DMAUDR1);
//  564     
//  565     /* Enable the DMA channel */
//  566     HAL_DMA_Start_IT(hdac->DMA_Handle1, (uint32_t)pData, tmpreg, Length);
//  567   } 
//  568   else
//  569   {
//  570     /* Enable the DAC DMA underrun interrupt */
//  571     __HAL_DAC_ENABLE_IT(hdac, DAC_IT_DMAUDR2);
//  572     
//  573     /* Enable the DMA channel */
//  574     HAL_DMA_Start_IT(hdac->DMA_Handle2, (uint32_t)pData, tmpreg, Length);
//  575   }
//  576   
//  577   /* Process Unlocked */
//  578   __HAL_UNLOCK(hdac);
//  579   
//  580   /* Enable the Peripharal */
//  581   __HAL_DAC_ENABLE(hdac, Channel);
//  582   
//  583   /* Return function status */
//  584   return HAL_OK;
//  585 }
//  586  
//  587 /**
//  588   * @brief  Disables DAC and stop conversion of channel.
//  589   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  590   *         the configuration information for the specified DAC.
//  591   * @param  Channel: The selected DAC channel. 
//  592   *          This parameter can be one of the following values:
//  593   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  594   *            @arg DAC_CHANNEL_2: DAC Channel2 selected   
//  595   * @retval HAL status
//  596   */
//  597 HAL_StatusTypeDef HAL_DAC_Stop_DMA(DAC_HandleTypeDef* hdac, uint32_t Channel)
//  598 {
//  599   HAL_StatusTypeDef status = HAL_OK;
//  600 
//  601   /* Check the parameters */
//  602   assert_param(IS_DAC_CHANNEL(Channel));
//  603   
//  604   /* Disable the selected DAC channel DMA request */
//  605   CLEAR_BIT(hdac->Instance->CR, DAC_CR_DMAEN1 << Channel);
//  606     
//  607   /* Disable the Peripharal */
//  608   __HAL_DAC_DISABLE(hdac, Channel);
//  609   
//  610   /* Disable the DMA Channel */
//  611   /* Channel1 is used */
//  612   if (Channel == DAC_CHANNEL_1)
//  613   {
//  614     status = HAL_DMA_Abort(hdac->DMA_Handle1);
//  615   }
//  616   else /* Channel2 is used for */
//  617   {
//  618     status = HAL_DMA_Abort(hdac->DMA_Handle2);
//  619   }
//  620   
//  621   /* Check if DMA Channel effectively disabled */
//  622   if (status != HAL_OK)
//  623   {
//  624     /* Update ADC state machine to error */
//  625     hdac->State = HAL_DAC_STATE_ERROR;      
//  626   }
//  627   else
//  628   {
//  629     /* Change DAC state */
//  630     hdac->State = HAL_DAC_STATE_READY;
//  631   }
//  632   
//  633   /* Return function status */
//  634   return status;
//  635 }
//  636 
//  637 /**
//  638   * @brief  Returns the last data output value of the selected DAC channel.
//  639   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  640   *         the configuration information for the specified DAC.
//  641   * @param  Channel: The selected DAC channel. 
//  642   *          This parameter can be one of the following values:
//  643   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  644   *            @arg DAC_CHANNEL_2: DAC Channel2 selected
//  645   * @retval The selected DAC channel data output value.
//  646   */
//  647 uint32_t HAL_DAC_GetValue(DAC_HandleTypeDef* hdac, uint32_t Channel)
//  648 {
//  649   /* Check the parameters */
//  650   assert_param(IS_DAC_CHANNEL(Channel));
//  651   
//  652   /* Returns the DAC channel data output register value */
//  653   if(Channel == DAC_CHANNEL_1)
//  654   {
//  655     return hdac->Instance->DOR1;
//  656   }
//  657   else
//  658   {
//  659     return hdac->Instance->DOR2;
//  660   }
//  661 }
//  662 
//  663 /**
//  664   * @brief  Handles DAC interrupt request  
//  665   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  666   *         the configuration information for the specified DAC.
//  667   * @retval None
//  668   */
//  669 void HAL_DAC_IRQHandler(DAC_HandleTypeDef* hdac)
//  670 {
//  671   /* Check underrun flag of DAC channel 1 */
//  672   if(__HAL_DAC_GET_FLAG(hdac, DAC_FLAG_DMAUDR1))
//  673   {
//  674     /* Change DAC state to error state */
//  675     hdac->State = HAL_DAC_STATE_ERROR;
//  676     
//  677     /* Set DAC error code to chanel1 DMA underrun error */
//  678     hdac->ErrorCode |= HAL_DAC_ERROR_DMAUNDERRUNCH1;
//  679     
//  680     /* Clear the underrun flag */
//  681     __HAL_DAC_CLEAR_FLAG(hdac,DAC_FLAG_DMAUDR1);
//  682     
//  683     /* Disable the selected DAC channel1 DMA request */
//  684     hdac->Instance->CR &= ~DAC_CR_DMAEN1;
//  685     
//  686     /* Error callback */ 
//  687     HAL_DAC_DMAUnderrunCallbackCh1(hdac);
//  688   }
//  689   
//  690   /* Check underrun flag of DAC channel 2 */
//  691   if(__HAL_DAC_GET_FLAG(hdac, DAC_FLAG_DMAUDR2))
//  692   {
//  693     /* Change DAC state to error state */
//  694     hdac->State = HAL_DAC_STATE_ERROR;
//  695     
//  696     /* Set DAC error code to channel2 DMA underrun error */
//  697     hdac->ErrorCode |= HAL_DAC_ERROR_DMAUNDERRUNCH2;
//  698     
//  699     /* Clear the underrun flag */
//  700     __HAL_DAC_CLEAR_FLAG(hdac,DAC_FLAG_DMAUDR2);
//  701     
//  702     /* Disable the selected DAC channel1 DMA request */
//  703     hdac->Instance->CR &= ~DAC_CR_DMAEN2;
//  704     
//  705     /* Error callback */ 
//  706     HAL_DACEx_DMAUnderrunCallbackCh2(hdac);
//  707   }  
//  708 }
//  709 
//  710 /**
//  711   * @brief  Conversion complete callback in non blocking mode for Channel1 
//  712   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  713   *         the configuration information for the specified DAC.
//  714   * @retval None
//  715   */
//  716 __weak void HAL_DAC_ConvCpltCallbackCh1(DAC_HandleTypeDef* hdac)
//  717 {
//  718   /* Prevent unused argument(s) compilation warning */
//  719   UNUSED(hdac);
//  720 
//  721   /* NOTE : This function Should not be modified, when the callback is needed,
//  722             the HAL_DAC_ConvCpltCallbackCh1 could be implemented in the user file
//  723    */
//  724 }
//  725 
//  726 /**
//  727   * @brief  Conversion half DMA transfer callback in non blocking mode for Channel1 
//  728   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  729   *         the configuration information for the specified DAC.
//  730   * @retval None
//  731   */
//  732 __weak void HAL_DAC_ConvHalfCpltCallbackCh1(DAC_HandleTypeDef* hdac)
//  733 {
//  734   /* Prevent unused argument(s) compilation warning */
//  735   UNUSED(hdac);
//  736 
//  737   /* NOTE : This function Should not be modified, when the callback is needed,
//  738             the HAL_DAC_ConvHalfCpltCallbackCh1 could be implemented in the user file
//  739    */
//  740 }
//  741 
//  742 /**
//  743   * @brief  Error DAC callback for Channel1.
//  744   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  745   *         the configuration information for the specified DAC.
//  746   * @retval None
//  747   */
//  748 __weak void HAL_DAC_ErrorCallbackCh1(DAC_HandleTypeDef *hdac)
//  749 {
//  750   /* Prevent unused argument(s) compilation warning */
//  751   UNUSED(hdac);
//  752 
//  753   /* NOTE : This function Should not be modified, when the callback is needed,
//  754             the HAL_DAC_ErrorCallbackCh1 could be implemented in the user file
//  755    */
//  756 }
//  757 
//  758 /**
//  759   * @brief  DMA underrun DAC callback for channel1.
//  760   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  761   *         the configuration information for the specified DAC.
//  762   * @retval None
//  763   */
//  764 __weak void HAL_DAC_DMAUnderrunCallbackCh1(DAC_HandleTypeDef *hdac)
//  765 {
//  766   /* Prevent unused argument(s) compilation warning */
//  767   UNUSED(hdac);
//  768 
//  769   /* NOTE : This function Should not be modified, when the callback is needed,
//  770             the HAL_DAC_DMAUnderrunCallbackCh1 could be implemented in the user file
//  771    */
//  772 }
//  773 
//  774 /**
//  775   * @}
//  776   */
//  777   
//  778 /** @defgroup DAC_Exported_Functions_Group3 Peripheral Control functions
//  779  *  @brief    Peripheral Control functions 
//  780  *
//  781 @verbatim   
//  782   ==============================================================================
//  783              ##### Peripheral Control functions #####
//  784   ==============================================================================  
//  785     [..]  This section provides functions allowing to:
//  786       (+) Configure channels. 
//  787       (+) Set the specified data holding register value for DAC channel.
//  788       
//  789 @endverbatim
//  790   * @{
//  791   */
//  792 
//  793 /**
//  794   * @brief  Configures the selected DAC channel.
//  795   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  796   *         the configuration information for the specified DAC.
//  797   * @param  sConfig: DAC configuration structure.
//  798   * @param  Channel: The selected DAC channel. 
//  799   *          This parameter can be one of the following values:
//  800   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  801   *            @arg DAC_CHANNEL_2: DAC Channel2 selected
//  802   * @retval HAL status
//  803   */
//  804 HAL_StatusTypeDef HAL_DAC_ConfigChannel(DAC_HandleTypeDef* hdac, DAC_ChannelConfTypeDef* sConfig, uint32_t Channel)
//  805 {
//  806   uint32_t tmpreg1 = 0;
//  807 
//  808   /* Check the DAC parameters */
//  809   assert_param(IS_DAC_TRIGGER(sConfig->DAC_Trigger));
//  810   assert_param(IS_DAC_OUTPUT_BUFFER_STATE(sConfig->DAC_OutputBuffer));
//  811   assert_param(IS_DAC_CHANNEL(Channel));
//  812   
//  813   /* Process locked */
//  814   __HAL_LOCK(hdac);
//  815   
//  816   /* Change DAC state */
//  817   hdac->State = HAL_DAC_STATE_BUSY;
//  818   
//  819   /* Configure for the selected DAC channel: buffer output, trigger */
//  820   /* Set TSELx and TENx bits according to DAC_Trigger value */
//  821   /* Set BOFFx bit according to DAC_OutputBuffer value */   
//  822   SET_BIT(tmpreg1, (sConfig->DAC_Trigger | sConfig->DAC_OutputBuffer));
//  823   
//  824   /* Clear BOFFx, TENx, TSELx, WAVEx and MAMPx bits */  
//  825   /* Calculate CR register value depending on DAC_Channel */
//  826   MODIFY_REG(hdac->Instance->CR,
//  827              ((uint32_t)(DAC_CR_MAMP1 | DAC_CR_WAVE1 | DAC_CR_TSEL1 | DAC_CR_TEN1 | DAC_CR_BOFF1)) << Channel,
//  828              tmpreg1 << Channel);
//  829 
//  830   /* Disable wave generation */
//  831   hdac->Instance->CR &= ~(DAC_CR_WAVE1 << Channel);
//  832   
//  833   /* Change DAC state */
//  834   hdac->State = HAL_DAC_STATE_READY;
//  835   
//  836   /* Process unlocked */
//  837   __HAL_UNLOCK(hdac);
//  838   
//  839   /* Return function status */
//  840   return HAL_OK;
//  841 }
//  842 
//  843 /**
//  844   * @brief  Set the specified data holding register value for DAC channel.
//  845   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  846   *         the configuration information for the specified DAC.
//  847   * @param  Channel: The selected DAC channel. 
//  848   *          This parameter can be one of the following values:
//  849   *            @arg DAC_CHANNEL_1: DAC Channel1 selected
//  850   *            @arg DAC_CHANNEL_2: DAC Channel2 selected  
//  851   * @param  Alignment: Specifies the data alignment.
//  852   *          This parameter can be one of the following values:
//  853   *            @arg DAC_ALIGN_8B_R: 8bit right data alignment selected
//  854   *            @arg DAC_ALIGN_12B_L: 12bit left data alignment selected
//  855   *            @arg DAC_ALIGN_12B_R: 12bit right data alignment selected
//  856   * @param  Data: Data to be loaded in the selected data holding register.
//  857   * @retval HAL status
//  858   */
//  859 HAL_StatusTypeDef HAL_DAC_SetValue(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Alignment, uint32_t Data)
//  860 {  
//  861   __IO uint32_t tmp = 0;
//  862   
//  863   /* Check the parameters */
//  864   assert_param(IS_DAC_CHANNEL(Channel));
//  865   assert_param(IS_DAC_ALIGN(Alignment));
//  866   assert_param(IS_DAC_DATA(Data));
//  867   
//  868   tmp = (uint32_t)hdac->Instance; 
//  869   if(Channel == DAC_CHANNEL_1)
//  870   {
//  871     tmp += DAC_DHR12R1_ALIGNMENT(Alignment);
//  872   }
//  873   else
//  874   {
//  875     tmp += DAC_DHR12R2_ALIGNMENT(Alignment);
//  876   }
//  877 
//  878   /* Set the DAC channel selected data holding register */
//  879   *(__IO uint32_t *) tmp = Data;
//  880   
//  881   /* Return function status */
//  882   return HAL_OK;
//  883 }
//  884 
//  885 /**
//  886   * @}
//  887   */
//  888 
//  889 /** @defgroup DAC_Exported_Functions_Group4 Peripheral State and Errors functions
//  890  *  @brief   Peripheral State and Errors functions 
//  891  *
//  892 @verbatim   
//  893   ==============================================================================
//  894             ##### Peripheral State and Errors functions #####
//  895   ==============================================================================  
//  896     [..]
//  897     This subsection provides functions allowing to
//  898       (+) Check the DAC state.
//  899       (+) Check the DAC Errors.
//  900         
//  901 @endverbatim
//  902   * @{
//  903   */
//  904 
//  905 /**
//  906   * @brief  return the DAC state
//  907   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  908   *         the configuration information for the specified DAC.
//  909   * @retval HAL state
//  910   */
//  911 HAL_DAC_StateTypeDef HAL_DAC_GetState(DAC_HandleTypeDef* hdac)
//  912 {
//  913   /* Return DAC state */
//  914   return hdac->State;
//  915 }
//  916 
//  917 
//  918 /**
//  919   * @brief  Return the DAC error code
//  920   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  921   *         the configuration information for the specified DAC.
//  922   * @retval DAC Error Code
//  923   */
//  924 uint32_t HAL_DAC_GetError(DAC_HandleTypeDef *hdac)
//  925 {
//  926   return hdac->ErrorCode;
//  927 }
//  928 
//  929 /**
//  930   * @}
//  931   */
//  932   
//  933 /**
//  934   * @}
//  935   */
//  936 
//  937 /** @addtogroup DAC_Private_Functions
//  938   * @{
//  939   */
//  940 
//  941 /**
//  942   * @brief  DMA conversion complete callback. 
//  943   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  944   *                the configuration information for the specified DMA module.
//  945   * @retval None
//  946   */
//  947 static void DAC_DMAConvCpltCh1(DMA_HandleTypeDef *hdma)   
//  948 {
//  949   DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  950   
//  951   HAL_DAC_ConvCpltCallbackCh1(hdac); 
//  952   
//  953   hdac->State = HAL_DAC_STATE_READY;
//  954 }
//  955 
//  956 /**
//  957   * @brief  DMA half transfer complete callback. 
//  958   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  959   *                the configuration information for the specified DMA module.
//  960   * @retval None
//  961   */
//  962 static void DAC_DMAHalfConvCpltCh1(DMA_HandleTypeDef *hdma)   
//  963 {
//  964     DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  965     /* Conversion complete callback */
//  966     HAL_DAC_ConvHalfCpltCallbackCh1(hdac); 
//  967 }
//  968 
//  969 /**
//  970   * @brief  DMA error callback 
//  971   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  972   *                the configuration information for the specified DMA module.
//  973   * @retval None
//  974   */
//  975 static void DAC_DMAErrorCh1(DMA_HandleTypeDef *hdma)   
//  976 {
//  977   DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  978     
//  979   /* Set DAC error code to DMA error */
//  980   hdac->ErrorCode |= HAL_DAC_ERROR_DMA;
//  981     
//  982   HAL_DAC_ErrorCallbackCh1(hdac); 
//  983     
//  984   hdac->State = HAL_DAC_STATE_READY;
//  985 }
//  986 
//  987 /**
//  988   * @}
//  989   */
//  990 
//  991 #endif /* HAL_DAC_MODULE_ENABLED */
//  992 
//  993 /**
//  994   * @}
//  995   */
//  996 
//  997 /**
//  998   * @}
//  999   */
// 1000 
// 1001 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
