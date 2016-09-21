///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_tim.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_tim.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   TIM HAL module driver
//    8   *          This file provides firmware functions to manage the following
//    9   *          functionalities of the Timer (TIM) peripheral:
//   10   *           + Time Base Initialization
//   11   *           + Time Base Start
//   12   *           + Time Base Start Interruption
//   13   *           + Time Base Start DMA
//   14   *           + Time Output Compare/PWM Initialization
//   15   *           + Time Output Compare/PWM Channel Configuration
//   16   *           + Time Output Compare/PWM Start
//   17   *           + Time Output Compare/PWM Start Interruption
//   18   *           + Time Output Compare/PWM Start DMA
//   19   *           + Time Input Capture Initialization
//   20   *           + Time Input Capture Channel Configuration
//   21   *           + Time Input Capture Start
//   22   *           + Time Input Capture Start Interruption
//   23   *           + Time Input Capture Start DMA
//   24   *           + Time One Pulse Initialization
//   25   *           + Time One Pulse Channel Configuration
//   26   *           + Time One Pulse Start
//   27   *           + Time Encoder Interface Initialization
//   28   *           + Time Encoder Interface Start
//   29   *           + Time Encoder Interface Start Interruption
//   30   *           + Time Encoder Interface Start DMA
//   31   *           + Commutation Event configuration with Interruption and DMA
//   32   *           + Time OCRef clear configuration
//   33   *           + Time External Clock configuration
//   34   *           + Time Master and Slave synchronization configuration
//   35   @verbatim
//   36   ==============================================================================
//   37                       ##### TIMER Generic features #####
//   38   ==============================================================================
//   39   [..] The Timer features include:
//   40        (#) 16-bit up, down, up/down auto-reload counter.
//   41        (#) 16-bit programmable prescaler allowing dividing (also on the fly) the
//   42            counter clock frequency either by any factor between 1 and 65536.
//   43        (#) Up to 4 independent channels for:
//   44            (++) Input Capture
//   45            (++) Output Compare
//   46            (++) PWM generation (Edge and Center-aligned Mode)
//   47            (++) One-pulse mode output
//   48        (#) Synchronization circuit to control the timer with external signals and to interconnect
//   49            several timers together.
//   50        (#) Supports incremental (quadrature) encoder
//   51 
//   52             ##### How to use this driver #####
//   53 ================================================================================
//   54     [..]
//   55      (#) Initialize the TIM low level resources by implementing the following functions
//   56          depending from feature used :
//   57            (++) Time Base : HAL_TIM_Base_MspInit()
//   58            (++) Input Capture : HAL_TIM_IC_MspInit()
//   59            (++) Output Compare : HAL_TIM_OC_MspInit()
//   60            (++) PWM generation : HAL_TIM_PWM_MspInit()
//   61            (++) One-pulse mode output : HAL_TIM_OnePulse_MspInit()
//   62            (++) Encoder mode output : HAL_TIM_Encoder_MspInit()
//   63 
//   64      (#) Initialize the TIM low level resources :
//   65         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
//   66         (##) TIM pins configuration
//   67             (+++) Enable the clock for the TIM GPIOs using the following function:
//   68              __HAL_RCC_GPIOx_CLK_ENABLE();
//   69             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
//   70 
//   71      (#) The external Clock can be configured, if needed (the default clock is the
//   72          internal clock from the APBx), using the following function:
//   73          HAL_TIM_ConfigClockSource, the clock configuration should be done before
//   74          any start function.
//   75 
//   76      (#) Configure the TIM in the desired functioning mode using one of the
//   77        Initialization function of this driver:
//   78        (++) HAL_TIM_Base_Init: to use the Timer to generate a simple time base
//   79        (++) HAL_TIM_OC_Init and HAL_TIM_OC_ConfigChannel: to use the Timer to generate an
//   80             Output Compare signal.
//   81        (++) HAL_TIM_PWM_Init and HAL_TIM_PWM_ConfigChannel: to use the Timer to generate a
//   82             PWM signal.
//   83        (++) HAL_TIM_IC_Init and HAL_TIM_IC_ConfigChannel: to use the Timer to measure an
//   84             external signal.
//   85        (++) HAL_TIM_OnePulse_Init and HAL_TIM_OnePulse_ConfigChannel: to use the Timer
//   86             in One Pulse Mode.
//   87        (++) HAL_TIM_Encoder_Init: to use the Timer Encoder Interface.
//   88 
//   89      (#) Activate the TIM peripheral using one of the start functions depending from the feature used:
//   90            (++) Time Base : HAL_TIM_Base_Start(), HAL_TIM_Base_Start_DMA(), HAL_TIM_Base_Start_IT()
//   91            (++) Input Capture :  HAL_TIM_IC_Start(), HAL_TIM_IC_Start_DMA(), HAL_TIM_IC_Start_IT()
//   92            (++) Output Compare : HAL_TIM_OC_Start(), HAL_TIM_OC_Start_DMA(), HAL_TIM_OC_Start_IT()
//   93            (++) PWM generation : HAL_TIM_PWM_Start(), HAL_TIM_PWM_Start_DMA(), HAL_TIM_PWM_Start_IT()
//   94            (++) One-pulse mode output : HAL_TIM_OnePulse_Start(), HAL_TIM_OnePulse_Start_IT()
//   95            (++) Encoder mode output : HAL_TIM_Encoder_Start(), HAL_TIM_Encoder_Start_DMA(), HAL_TIM_Encoder_Start_IT().
//   96 
//   97      (#) The DMA Burst is managed with the two following functions:
//   98          HAL_TIM_DMABurst_WriteStart()
//   99          HAL_TIM_DMABurst_ReadStart()
//  100 
//  101   @endverbatim
//  102   ******************************************************************************
//  103   * @attention
//  104   *
//  105   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  106   *
//  107   * Redistribution and use in source and binary forms, with or without modification,
//  108   * are permitted provided that the following conditions are met:
//  109   *   1. Redistributions of source code must retain the above copyright notice,
//  110   *      this list of conditions and the following disclaimer.
//  111   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  112   *      this list of conditions and the following disclaimer in the documentation
//  113   *      and/or other materials provided with the distribution.
//  114   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  115   *      may be used to endorse or promote products derived from this software
//  116   *      without specific prior written permission.
//  117   *
//  118   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  119   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  120   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  121   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  122   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  123   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  124   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  125   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  126   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  127   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  128   *
//  129   ******************************************************************************
//  130   */
//  131 
//  132 /* Includes ------------------------------------------------------------------*/
//  133 #include "stm32l1xx_hal.h"
//  134 
//  135 /** @addtogroup STM32L1xx_HAL_Driver
//  136   * @{
//  137   */
//  138 
//  139 /** @defgroup TIM TIM
//  140   * @brief TIM HAL module driver
//  141   * @{
//  142   */
//  143 
//  144 #ifdef HAL_TIM_MODULE_ENABLED
//  145 
//  146 /* Private typedef -----------------------------------------------------------*/
//  147 /* Private define ------------------------------------------------------------*/
//  148 /* Private macro -------------------------------------------------------------*/
//  149 /* Private variables ---------------------------------------------------------*/
//  150 /* Private function prototypes -----------------------------------------------*/
//  151 /** @defgroup TIM_Private_Functions TIM Private Functions
//  152   * @{
//  153   */
//  154 static void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure);
//  155 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  156 static void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  157 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  158 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
//  159 static void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
//  160 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  161 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
//  162 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  163 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
//  164 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
//  165 static void TIM_ETR_SetConfig(TIM_TypeDef* TIMx, uint32_t TIM_ExtTRGPrescaler, uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter);
//  166 static void TIM_ITRx_SetConfig(TIM_TypeDef* TIMx, uint16_t InputTriggerSource);
//  167 static void TIM_CCxChannelCmd(TIM_TypeDef* TIMx, uint32_t Channel, uint32_t ChannelState);
//  168 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma);
//  169 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma);
//  170 static void TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef * sSlaveConfig);
//  171 
//  172 /**
//  173     * @}
//  174   */
//  175 
//  176 /* Exported functions ---------------------------------------------------------*/
//  177 
//  178 /** @defgroup TIM_Exported_Functions TIM Exported Functions
//  179   * @{
//  180   */
//  181 
//  182 /** @defgroup TIM_Exported_Functions_Group1 Time Base functions
//  183  *  @brief    Time Base functions
//  184  *
//  185 @verbatim
//  186   ==============================================================================
//  187               ##### Time Base functions #####
//  188   ==============================================================================
//  189   [..]
//  190     This section provides functions allowing to:
//  191     (+) Initialize and configure the TIM base.
//  192     (+) De-initialize the TIM base.
//  193     (+) Start the Time Base.
//  194     (+) Stop the Time Base.
//  195     (+) Start the Time Base and enable interrupt.
//  196     (+) Stop the Time Base and disable interrupt.
//  197     (+) Start the Time Base and enable DMA transfer.
//  198     (+) Stop the Time Base and disable DMA transfer.
//  199 
//  200 @endverbatim
//  201   * @{
//  202   */
//  203 /**
//  204   * @brief  Initializes the TIM Time base Unit according to the specified
//  205   *         parameters in the TIM_HandleTypeDef and create the associated handle.
//  206   * @param  htim: TIM Base handle
//  207   * @retval HAL status
//  208   */
//  209 HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim)
//  210 {
//  211   /* Check the TIM handle allocation */
//  212   if(htim == NULL)
//  213   {
//  214     return HAL_ERROR;
//  215   }
//  216 
//  217   /* Check the parameters */
//  218   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  219   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  220   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  221 
//  222   if(htim->State == HAL_TIM_STATE_RESET)
//  223   {
//  224     /* Allocate lock resource and initialize it */
//  225     htim->Lock = HAL_UNLOCKED;
//  226 
//  227     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  228     HAL_TIM_Base_MspInit(htim);
//  229   }
//  230 
//  231   /* Set the TIM state */
//  232   htim->State= HAL_TIM_STATE_BUSY;
//  233 
//  234   /* Set the Time Base configuration */
//  235   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  236 
//  237   /* Initialize the TIM state*/
//  238   htim->State= HAL_TIM_STATE_READY;
//  239 
//  240   return HAL_OK;
//  241 }
//  242 
//  243 /**
//  244   * @brief  DeInitializes the TIM Base peripheral
//  245   * @param  htim: TIM Base handle
//  246   * @retval HAL status
//  247   */
//  248 HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim)
//  249 {
//  250   /* Check the parameters */
//  251   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  252 
//  253   htim->State = HAL_TIM_STATE_BUSY;
//  254 
//  255   /* Disable the TIM Peripheral Clock */
//  256   __HAL_TIM_DISABLE(htim);
//  257 
//  258   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  259   HAL_TIM_Base_MspDeInit(htim);
//  260 
//  261   /* Change TIM state */
//  262   htim->State = HAL_TIM_STATE_RESET;
//  263 
//  264   /* Release Lock */
//  265   __HAL_UNLOCK(htim);
//  266 
//  267   return HAL_OK;
//  268 }
//  269 
//  270 /**
//  271   * @brief  Initializes the TIM Base MSP.
//  272   * @param  htim: TIM handle
//  273   * @retval None
//  274   */
//  275 __weak void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim)
//  276 {
//  277   /* Prevent unused argument(s) compilation warning */
//  278   UNUSED(htim);
//  279 
//  280   /* NOTE : This function Should not be modified, when the callback is needed,
//  281             the HAL_TIM_Base_MspInit could be implemented in the user file
//  282    */
//  283 }
//  284 
//  285 /**
//  286   * @brief  DeInitializes TIM Base MSP.
//  287   * @param  htim: TIM handle
//  288   * @retval None
//  289   */
//  290 __weak void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim)
//  291 {
//  292   /* Prevent unused argument(s) compilation warning */
//  293   UNUSED(htim);
//  294 
//  295   /* NOTE : This function Should not be modified, when the callback is needed,
//  296             the HAL_TIM_Base_MspDeInit could be implemented in the user file
//  297    */
//  298 }
//  299 
//  300 
//  301 /**
//  302   * @brief  Starts the TIM Base generation.
//  303   * @param  htim : TIM handle
//  304   * @retval HAL status
//  305 */
//  306 HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim)
//  307 {
//  308   /* Check the parameters */
//  309   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  310 
//  311   /* Set the TIM state */
//  312   htim->State= HAL_TIM_STATE_BUSY;
//  313 
//  314   /* Enable the Peripheral */
//  315   __HAL_TIM_ENABLE(htim);
//  316 
//  317   /* Change the TIM state*/
//  318   htim->State= HAL_TIM_STATE_READY;
//  319 
//  320   /* Return function status */
//  321   return HAL_OK;
//  322 }
//  323 
//  324 /**
//  325   * @brief  Stops the TIM Base generation.
//  326   * @param  htim : TIM handle
//  327   * @retval HAL status
//  328 */
//  329 HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim)
//  330 {
//  331   /* Check the parameters */
//  332   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  333 
//  334   /* Set the TIM state */
//  335   htim->State= HAL_TIM_STATE_BUSY;
//  336 
//  337   /* Disable the Peripheral */
//  338   __HAL_TIM_DISABLE(htim);
//  339 
//  340   /* Change the TIM state*/
//  341   htim->State= HAL_TIM_STATE_READY;
//  342 
//  343   /* Return function status */
//  344   return HAL_OK;
//  345 }
//  346 
//  347 /**
//  348   * @brief  Starts the TIM Base generation in interrupt mode.
//  349   * @param  htim : TIM handle
//  350   * @retval HAL status
//  351 */
//  352 HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim)
//  353 {
//  354   /* Check the parameters */
//  355   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  356 
//  357    /* Enable the TIM Update interrupt */
//  358    __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
//  359 
//  360    /* Enable the Peripheral */
//  361   __HAL_TIM_ENABLE(htim);
//  362 
//  363   /* Return function status */
//  364   return HAL_OK;
//  365 }
//  366 
//  367 /**
//  368   * @brief  Stops the TIM Base generation in interrupt mode.
//  369   * @param  htim : TIM handle
//  370   * @retval HAL status
//  371 */
//  372 HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim)
//  373 {
//  374   /* Check the parameters */
//  375   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  376   /* Disable the TIM Update interrupt */
//  377   __HAL_TIM_DISABLE_IT(htim, TIM_IT_UPDATE);
//  378 
//  379   /* Disable the Peripheral */
//  380   __HAL_TIM_DISABLE(htim);
//  381 
//  382   /* Return function status */
//  383   return HAL_OK;
//  384 }
//  385 
//  386 /**
//  387   * @brief  Starts the TIM Base generation in DMA mode.
//  388   * @param  htim : TIM handle
//  389   * @param  pData: The source Buffer address.
//  390   * @param  Length: The length of data to be transferred from memory to peripheral.
//  391   * @retval HAL status
//  392 */
//  393 HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length)
//  394 {
//  395   /* Check the parameters */
//  396   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  397 
//  398   if((htim->State == HAL_TIM_STATE_BUSY))
//  399   {
//  400      return HAL_BUSY;
//  401   }
//  402   else if((htim->State == HAL_TIM_STATE_READY))
//  403   {
//  404     if((pData == 0 ) && (Length > 0))
//  405     {
//  406       return HAL_ERROR;
//  407     }
//  408     else
//  409     {
//  410       htim->State = HAL_TIM_STATE_BUSY;
//  411     }
//  412   }
//  413   else
//  414   {
//  415     return HAL_ERROR;
//  416   }
//  417 
//  418   /* Set the DMA Period elapsed callback */
//  419   htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
//  420 
//  421   /* Set the DMA error callback */
//  422   htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
//  423 
//  424   /* Enable the DMA channel */
//  425   HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)pData, (uint32_t)&htim->Instance->ARR, Length);
//  426 
//  427   /* Enable the TIM Update DMA request */
//  428   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_UPDATE);
//  429 
//  430   /* Enable the Peripheral */
//  431   __HAL_TIM_ENABLE(htim);
//  432 
//  433   /* Return function status */
//  434   return HAL_OK;
//  435 }
//  436 
//  437 /**
//  438   * @brief  Stops the TIM Base generation in DMA mode.
//  439   * @param  htim : TIM handle
//  440   * @retval HAL status
//  441 */
//  442 HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim)
//  443 {
//  444   /* Check the parameters */
//  445   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  446 
//  447   /* Disable the TIM Update DMA request */
//  448   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_UPDATE);
//  449 
//  450   /* Disable the Peripheral */
//  451   __HAL_TIM_DISABLE(htim);
//  452 
//  453   /* Change the htim state */
//  454   htim->State = HAL_TIM_STATE_READY;
//  455 
//  456   /* Return function status */
//  457   return HAL_OK;
//  458 }
//  459 
//  460 /**
//  461   * @}
//  462   */
//  463 
//  464 /** @defgroup TIM_Exported_Functions_Group2 Time Output Compare functions
//  465  *  @brief    Time Output Compare functions
//  466  *
//  467 @verbatim
//  468   ==============================================================================
//  469                   ##### Time Output Compare functions #####
//  470   ==============================================================================
//  471   [..]
//  472     This section provides functions allowing to:
//  473     (+) Initialize and configure the TIM Output Compare.
//  474     (+) De-initialize the TIM Output Compare.
//  475     (+) Start the Time Output Compare.
//  476     (+) Stop the Time Output Compare.
//  477     (+) Start the Time Output Compare and enable interrupt.
//  478     (+) Stop the Time Output Compare and disable interrupt.
//  479     (+) Start the Time Output Compare and enable DMA transfer.
//  480     (+) Stop the Time Output Compare and disable DMA transfer.
//  481 
//  482 @endverbatim
//  483   * @{
//  484   */
//  485 /**
//  486   * @brief  Initializes the TIM Output Compare according to the specified
//  487   *         parameters in the TIM_HandleTypeDef and create the associated handle.
//  488   * @param  htim: TIM Output Compare handle
//  489   * @retval HAL status
//  490   */
//  491 HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef* htim)
//  492 {
//  493   /* Check the TIM handle allocation */
//  494   if(htim == NULL)
//  495   {
//  496     return HAL_ERROR;
//  497   }
//  498 
//  499   /* Check the parameters */
//  500   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  501   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  502   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  503 
//  504   if(htim->State == HAL_TIM_STATE_RESET)
//  505   {
//  506     /* Allocate lock resource and initialize it */
//  507     htim->Lock = HAL_UNLOCKED;
//  508 
//  509     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  510     HAL_TIM_OC_MspInit(htim);
//  511   }
//  512 
//  513   /* Set the TIM state */
//  514   htim->State= HAL_TIM_STATE_BUSY;
//  515 
//  516   /* Init the base time for the Output Compare */
//  517   TIM_Base_SetConfig(htim->Instance,  &htim->Init);
//  518 
//  519   /* Initialize the TIM state*/
//  520   htim->State= HAL_TIM_STATE_READY;
//  521 
//  522   return HAL_OK;
//  523 }
//  524 
//  525 /**
//  526   * @brief  DeInitializes the TIM peripheral
//  527   * @param  htim: TIM Output Compare handle
//  528   * @retval HAL status
//  529   */
//  530 HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim)
//  531 {
//  532   /* Check the parameters */
//  533   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  534 
//  535    htim->State = HAL_TIM_STATE_BUSY;
//  536 
//  537   /* Disable the TIM Peripheral Clock */
//  538   __HAL_TIM_DISABLE(htim);
//  539 
//  540   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
//  541   HAL_TIM_OC_MspDeInit(htim);
//  542 
//  543   /* Change TIM state */
//  544   htim->State = HAL_TIM_STATE_RESET;
//  545 
//  546   /* Release Lock */
//  547   __HAL_UNLOCK(htim);
//  548 
//  549   return HAL_OK;
//  550 }
//  551 
//  552 /**
//  553   * @brief  Initializes the TIM Output Compare MSP.
//  554   * @param  htim: TIM handle
//  555   * @retval None
//  556   */
//  557 __weak void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim)
//  558 {
//  559   /* Prevent unused argument(s) compilation warning */
//  560   UNUSED(htim);
//  561 
//  562   /* NOTE : This function Should not be modified, when the callback is needed,
//  563             the HAL_TIM_OC_MspInit could be implemented in the user file
//  564    */
//  565 }
//  566 
//  567 /**
//  568   * @brief  DeInitializes TIM Output Compare MSP.
//  569   * @param  htim: TIM handle
//  570   * @retval None
//  571   */
//  572 __weak void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim)
//  573 {
//  574   /* Prevent unused argument(s) compilation warning */
//  575   UNUSED(htim);
//  576 
//  577   /* NOTE : This function Should not be modified, when the callback is needed,
//  578             the HAL_TIM_OC_MspDeInit could be implemented in the user file
//  579    */
//  580 }
//  581 
//  582 /**
//  583   * @brief  Starts the TIM Output Compare signal generation.
//  584   * @param  htim : TIM Output Compare handle
//  585   * @param  Channel : TIM Channel to be enabled
//  586   *          This parameter can be one of the following values:
//  587   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  588   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  589   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  590   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  591   * @retval HAL status
//  592 */
//  593 HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  594 {
//  595   /* Check the parameters */
//  596   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  597 
//  598   /* Enable the Output compare channel */
//  599   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  600 
//  601   /* Enable the Peripheral */
//  602   __HAL_TIM_ENABLE(htim);
//  603 
//  604   /* Return function status */
//  605   return HAL_OK;
//  606 }
//  607 
//  608 /**
//  609   * @brief  Stops the TIM Output Compare signal generation.
//  610   * @param  htim : TIM handle
//  611   * @param  Channel : TIM Channel to be disabled
//  612   *          This parameter can be one of the following values:
//  613   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  614   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  615   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  616   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  617   * @retval HAL status
//  618 */
//  619 HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  620 {
//  621   /* Check the parameters */
//  622   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  623 
//  624   /* Disable the Output compare channel */
//  625   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  626 
//  627   /* Disable the Peripheral */
//  628   __HAL_TIM_DISABLE(htim);
//  629 
//  630   /* Return function status */
//  631   return HAL_OK;
//  632 }
//  633 
//  634 /**
//  635   * @brief  Starts the TIM Output Compare signal generation in interrupt mode.
//  636   * @param  htim : TIM OC handle
//  637   * @param  Channel : TIM Channel to be enabled
//  638   *          This parameter can be one of the following values:
//  639   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  640   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  641   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  642   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  643   * @retval HAL status
//  644 */
//  645 HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  646 {
//  647   /* Check the parameters */
//  648   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  649 
//  650   switch (Channel)
//  651   {
//  652     case TIM_CHANNEL_1:
//  653     {
//  654       /* Enable the TIM Capture/Compare 1 interrupt */
//  655       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  656     }
//  657     break;
//  658 
//  659     case TIM_CHANNEL_2:
//  660     {
//  661       /* Enable the TIM Capture/Compare 2 interrupt */
//  662       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
//  663     }
//  664     break;
//  665 
//  666     case TIM_CHANNEL_3:
//  667     {
//  668       /* Enable the TIM Capture/Compare 3 interrupt */
//  669       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
//  670     }
//  671     break;
//  672 
//  673     case TIM_CHANNEL_4:
//  674     {
//  675       /* Enable the TIM Capture/Compare 4 interrupt */
//  676       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
//  677     }
//  678     break;
//  679 
//  680     default:
//  681     break;
//  682   }
//  683 
//  684   /* Enable the Output compare channel */
//  685   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  686 
//  687   /* Enable the Peripheral */
//  688   __HAL_TIM_ENABLE(htim);
//  689 
//  690   /* Return function status */
//  691   return HAL_OK;
//  692 }
//  693 
//  694 /**
//  695   * @brief  Stops the TIM Output Compare signal generation in interrupt mode.
//  696   * @param  htim : TIM Output Compare handle
//  697   * @param  Channel : TIM Channel to be disabled
//  698   *          This parameter can be one of the following values:
//  699   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  700   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  701   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  702   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  703   * @retval HAL status
//  704 */
//  705 HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  706 {
//  707   /* Check the parameters */
//  708   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  709 
//  710   switch (Channel)
//  711   {
//  712     case TIM_CHANNEL_1:
//  713     {
//  714       /* Disable the TIM Capture/Compare 1 interrupt */
//  715       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  716     }
//  717     break;
//  718 
//  719     case TIM_CHANNEL_2:
//  720     {
//  721       /* Disable the TIM Capture/Compare 2 interrupt */
//  722       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
//  723     }
//  724     break;
//  725 
//  726     case TIM_CHANNEL_3:
//  727     {
//  728       /* Disable the TIM Capture/Compare 3 interrupt */
//  729       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
//  730     }
//  731     break;
//  732 
//  733     case TIM_CHANNEL_4:
//  734     {
//  735       /* Disable the TIM Capture/Compare 4 interrupt */
//  736       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
//  737     }
//  738     break;
//  739 
//  740     default:
//  741     break;
//  742   }
//  743 
//  744   /* Disable the Output compare channel */
//  745   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  746 
//  747   /* Disable the Peripheral */
//  748   __HAL_TIM_DISABLE(htim);
//  749 
//  750   /* Return function status */
//  751   return HAL_OK;
//  752 }
//  753 
//  754 /**
//  755   * @brief  Starts the TIM Output Compare signal generation in DMA mode.
//  756   * @param  htim : TIM Output Compare handle
//  757   * @param  Channel : TIM Channel to be enabled
//  758   *          This parameter can be one of the following values:
//  759   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  760   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  761   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  762   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  763   * @param  pData: The source Buffer address.
//  764   * @param  Length: The length of data to be transferred from memory to TIM peripheral
//  765   * @retval HAL status
//  766 */
//  767 HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
//  768 {
//  769   /* Check the parameters */
//  770   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  771 
//  772   if((htim->State == HAL_TIM_STATE_BUSY))
//  773   {
//  774      return HAL_BUSY;
//  775   }
//  776   else if((htim->State == HAL_TIM_STATE_READY))
//  777   {
//  778     if(((uint32_t)pData == 0 ) && (Length > 0))
//  779     {
//  780       return HAL_ERROR;
//  781     }
//  782     else
//  783     {
//  784       htim->State = HAL_TIM_STATE_BUSY;
//  785     }
//  786   }
//  787   else
//  788   {
//  789     return HAL_ERROR;
//  790   }
//  791 
//  792   switch (Channel)
//  793   {
//  794     case TIM_CHANNEL_1:
//  795     {
//  796       /* Set the DMA Period elapsed callback */
//  797       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  798 
//  799       /* Set the DMA error callback */
//  800       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
//  801 
//  802       /* Enable the DMA channel */
//  803       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length);
//  804 
//  805       /* Enable the TIM Capture/Compare 1 DMA request */
//  806       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  807     }
//  808     break;
//  809 
//  810     case TIM_CHANNEL_2:
//  811     {
//  812       /* Set the DMA Period elapsed callback */
//  813       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  814 
//  815       /* Set the DMA error callback */
//  816       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
//  817 
//  818       /* Enable the DMA channel */
//  819       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length);
//  820 
//  821       /* Enable the TIM Capture/Compare 2 DMA request */
//  822       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
//  823     }
//  824     break;
//  825 
//  826     case TIM_CHANNEL_3:
//  827     {
//  828       /* Set the DMA Period elapsed callback */
//  829       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  830 
//  831       /* Set the DMA error callback */
//  832       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
//  833 
//  834       /* Enable the DMA channel */
//  835       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,Length);
//  836 
//  837       /* Enable the TIM Capture/Compare 3 DMA request */
//  838       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
//  839     }
//  840     break;
//  841 
//  842     case TIM_CHANNEL_4:
//  843     {
//  844      /* Set the DMA Period elapsed callback */
//  845       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
//  846 
//  847       /* Set the DMA error callback */
//  848       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
//  849 
//  850       /* Enable the DMA channel */
//  851       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4, Length);
//  852 
//  853       /* Enable the TIM Capture/Compare 4 DMA request */
//  854       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
//  855     }
//  856     break;
//  857 
//  858     default:
//  859     break;
//  860   }
//  861 
//  862   /* Enable the Output compare channel */
//  863   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  864 
//  865   /* Enable the Peripheral */
//  866   __HAL_TIM_ENABLE(htim);
//  867 
//  868   /* Return function status */
//  869   return HAL_OK;
//  870 }
//  871 
//  872 /**
//  873   * @brief  Stops the TIM Output Compare signal generation in DMA mode.
//  874   * @param  htim : TIM Output Compare handle
//  875   * @param  Channel : TIM Channel to be disabled
//  876   *          This parameter can be one of the following values:
//  877   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  878   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  879   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  880   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  881   * @retval HAL status
//  882 */
//  883 HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
//  884 {
//  885   /* Check the parameters */
//  886   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  887 
//  888   switch (Channel)
//  889   {
//  890     case TIM_CHANNEL_1:
//  891     {
//  892       /* Disable the TIM Capture/Compare 1 DMA request */
//  893       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
//  894     }
//  895     break;
//  896 
//  897     case TIM_CHANNEL_2:
//  898     {
//  899       /* Disable the TIM Capture/Compare 2 DMA request */
//  900       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
//  901     }
//  902     break;
//  903 
//  904     case TIM_CHANNEL_3:
//  905     {
//  906       /* Disable the TIM Capture/Compare 3 DMA request */
//  907       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
//  908     }
//  909     break;
//  910 
//  911     case TIM_CHANNEL_4:
//  912     {
//  913       /* Disable the TIM Capture/Compare 4 interrupt */
//  914       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
//  915     }
//  916     break;
//  917 
//  918     default:
//  919     break;
//  920   }
//  921 
//  922   /* Disable the Output compare channel */
//  923   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  924 
//  925   /* Disable the Peripheral */
//  926   __HAL_TIM_DISABLE(htim);
//  927 
//  928   /* Change the htim state */
//  929   htim->State = HAL_TIM_STATE_READY;
//  930 
//  931   /* Return function status */
//  932   return HAL_OK;
//  933 }
//  934 
//  935 /**
//  936   * @}
//  937   */
//  938 
//  939 /** @defgroup TIM_Exported_Functions_Group3 Time PWM functions
//  940  *  @brief    Time PWM functions
//  941  *
//  942 @verbatim
//  943   ==============================================================================
//  944                           ##### Time PWM functions #####
//  945   ==============================================================================
//  946   [..]
//  947     This section provides functions allowing to:
//  948     (+) Initialize and configure the TIM PWM.
//  949     (+) De-initialize the TIM PWM.
//  950     (+) Start the Time PWM.
//  951     (+) Stop the Time PWM.
//  952     (+) Start the Time PWM and enable interrupt.
//  953     (+) Stop the Time PWM and disable interrupt.
//  954     (+) Start the Time PWM and enable DMA transfer.
//  955     (+) Stop the Time PWM and disable DMA transfer.
//  956 
//  957 @endverbatim
//  958   * @{
//  959   */
//  960 /**
//  961   * @brief  Initializes the TIM PWM Time Base according to the specified
//  962   *         parameters in the TIM_HandleTypeDef and create the associated handle.
//  963   * @param  htim: TIM handle
//  964   * @retval HAL status
//  965   */
//  966 HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim)
//  967 {
//  968   /* Check the TIM handle allocation */
//  969   if(htim == NULL)
//  970   {
//  971     return HAL_ERROR;
//  972   }
//  973 
//  974   /* Check the parameters */
//  975   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  976   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  977   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  978 
//  979   if(htim->State == HAL_TIM_STATE_RESET)
//  980   {
//  981     /* Allocate lock resource and initialize it */
//  982     htim->Lock = HAL_UNLOCKED;
//  983 
//  984     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  985     HAL_TIM_PWM_MspInit(htim);
//  986   }
//  987 
//  988   /* Set the TIM state */
//  989   htim->State= HAL_TIM_STATE_BUSY;
//  990 
//  991   /* Init the base time for the PWM */
//  992   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  993 
//  994   /* Initialize the TIM state*/
//  995   htim->State= HAL_TIM_STATE_READY;
//  996 
//  997   return HAL_OK;
//  998 }
//  999 
// 1000 /**
// 1001   * @brief  DeInitializes the TIM peripheral
// 1002   * @param  htim: TIM handle
// 1003   * @retval HAL status
// 1004   */
// 1005 HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim)
// 1006 {
// 1007   /* Check the parameters */
// 1008   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1009 
// 1010   htim->State = HAL_TIM_STATE_BUSY;
// 1011 
// 1012   /* Disable the TIM Peripheral Clock */
// 1013   __HAL_TIM_DISABLE(htim);
// 1014 
// 1015   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 1016   HAL_TIM_PWM_MspDeInit(htim);
// 1017 
// 1018   /* Change TIM state */
// 1019   htim->State = HAL_TIM_STATE_RESET;
// 1020 
// 1021   /* Release Lock */
// 1022   __HAL_UNLOCK(htim);
// 1023 
// 1024   return HAL_OK;
// 1025 }
// 1026 
// 1027 /**
// 1028   * @brief  Initializes the TIM PWM MSP.
// 1029   * @param  htim: TIM handle
// 1030   * @retval None
// 1031   */
// 1032 __weak void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim)
// 1033 {
// 1034   /* Prevent unused argument(s) compilation warning */
// 1035   UNUSED(htim);
// 1036 
// 1037   /* NOTE : This function Should not be modified, when the callback is needed,
// 1038             the HAL_TIM_PWM_MspInit could be implemented in the user file
// 1039    */
// 1040 }
// 1041 
// 1042 /**
// 1043   * @brief  DeInitializes TIM PWM MSP.
// 1044   * @param  htim: TIM handle
// 1045   * @retval None
// 1046   */
// 1047 __weak void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim)
// 1048 {
// 1049   /* Prevent unused argument(s) compilation warning */
// 1050   UNUSED(htim);
// 1051 
// 1052   /* NOTE : This function Should not be modified, when the callback is needed,
// 1053             the HAL_TIM_PWM_MspDeInit could be implemented in the user file
// 1054    */
// 1055 }
// 1056 
// 1057 /**
// 1058   * @brief  Starts the PWM signal generation.
// 1059   * @param  htim : TIM handle
// 1060   * @param  Channel : TIM Channels to be enabled
// 1061   *          This parameter can be one of the following values:
// 1062   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1063   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1064   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1065   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1066   * @retval HAL status
// 1067 */
// 1068 HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1069 {
// 1070   /* Check the parameters */
// 1071   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1072 
// 1073   /* Enable the Capture compare channel */
// 1074   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1075 
// 1076   /* Enable the Peripheral */
// 1077   __HAL_TIM_ENABLE(htim);
// 1078 
// 1079   /* Return function status */
// 1080   return HAL_OK;
// 1081 }
// 1082 
// 1083 /**
// 1084   * @brief  Stops the PWM signal generation.
// 1085   * @param  htim : TIM handle
// 1086   * @param  Channel : TIM Channels to be disabled
// 1087   *          This parameter can be one of the following values:
// 1088   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1089   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1090   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1091   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1092   * @retval HAL status
// 1093 */
// 1094 HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1095 {
// 1096   /* Check the parameters */
// 1097   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1098 
// 1099   /* Disable the Capture compare channel */
// 1100   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1101 
// 1102   /* Disable the Peripheral */
// 1103   __HAL_TIM_DISABLE(htim);
// 1104 
// 1105   /* Change the htim state */
// 1106   htim->State = HAL_TIM_STATE_READY;
// 1107 
// 1108   /* Return function status */
// 1109   return HAL_OK;
// 1110 }
// 1111 
// 1112 /**
// 1113   * @brief  Starts the PWM signal generation in interrupt mode.
// 1114   * @param  htim : TIM handle
// 1115   * @param  Channel : TIM Channel to be enabled
// 1116   *          This parameter can be one of the following values:
// 1117   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1118   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1119   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1120   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1121   * @retval HAL status
// 1122 */
// 1123 HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1124 {
// 1125   /* Check the parameters */
// 1126   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1127 
// 1128   switch (Channel)
// 1129   {
// 1130     case TIM_CHANNEL_1:
// 1131     {
// 1132       /* Enable the TIM Capture/Compare 1 interrupt */
// 1133       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1134     }
// 1135     break;
// 1136 
// 1137     case TIM_CHANNEL_2:
// 1138     {
// 1139       /* Enable the TIM Capture/Compare 2 interrupt */
// 1140       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1141     }
// 1142     break;
// 1143 
// 1144     case TIM_CHANNEL_3:
// 1145     {
// 1146       /* Enable the TIM Capture/Compare 3 interrupt */
// 1147       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1148     }
// 1149     break;
// 1150 
// 1151     case TIM_CHANNEL_4:
// 1152     {
// 1153       /* Enable the TIM Capture/Compare 4 interrupt */
// 1154       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 1155     }
// 1156     break;
// 1157 
// 1158     default:
// 1159     break;
// 1160   }
// 1161 
// 1162   /* Enable the Capture compare channel */
// 1163   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1164 
// 1165   /* Enable the Peripheral */
// 1166   __HAL_TIM_ENABLE(htim);
// 1167 
// 1168   /* Return function status */
// 1169   return HAL_OK;
// 1170 }
// 1171 
// 1172 /**
// 1173   * @brief  Stops the PWM signal generation in interrupt mode.
// 1174   * @param  htim : TIM handle
// 1175   * @param  Channel : TIM Channels to be disabled
// 1176   *          This parameter can be one of the following values:
// 1177   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1178   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1179   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1180   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1181   * @retval HAL status
// 1182 */
// 1183 HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT (TIM_HandleTypeDef *htim, uint32_t Channel)
// 1184 {
// 1185   /* Check the parameters */
// 1186   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1187 
// 1188   switch (Channel)
// 1189   {
// 1190     case TIM_CHANNEL_1:
// 1191     {
// 1192       /* Disable the TIM Capture/Compare 1 interrupt */
// 1193       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1194     }
// 1195     break;
// 1196 
// 1197     case TIM_CHANNEL_2:
// 1198     {
// 1199       /* Disable the TIM Capture/Compare 2 interrupt */
// 1200       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1201     }
// 1202     break;
// 1203 
// 1204     case TIM_CHANNEL_3:
// 1205     {
// 1206       /* Disable the TIM Capture/Compare 3 interrupt */
// 1207       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1208     }
// 1209     break;
// 1210 
// 1211     case TIM_CHANNEL_4:
// 1212     {
// 1213       /* Disable the TIM Capture/Compare 4 interrupt */
// 1214       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 1215     }
// 1216     break;
// 1217 
// 1218     default:
// 1219     break;
// 1220   }
// 1221 
// 1222   /* Disable the Capture compare channel */
// 1223   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1224 
// 1225 
// 1226   /* Disable the Peripheral */
// 1227   __HAL_TIM_DISABLE(htim);
// 1228 
// 1229   /* Return function status */
// 1230   return HAL_OK;
// 1231 }
// 1232 
// 1233 /**
// 1234   * @brief  Starts the TIM PWM signal generation in DMA mode.
// 1235   * @param  htim : TIM handle
// 1236   * @param  Channel : TIM Channels to be enabled
// 1237   *          This parameter can be one of the following values:
// 1238   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1239   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1240   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1241   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1242   * @param  pData: The source Buffer address.
// 1243   * @param  Length: The length of data to be transferred from memory to TIM peripheral
// 1244   * @retval HAL status
// 1245 */
// 1246 HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 1247 {
// 1248   /* Check the parameters */
// 1249   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1250 
// 1251   if((htim->State == HAL_TIM_STATE_BUSY))
// 1252   {
// 1253      return HAL_BUSY;
// 1254   }
// 1255   else if((htim->State == HAL_TIM_STATE_READY))
// 1256   {
// 1257     if(((uint32_t)pData == 0 ) && (Length > 0))
// 1258     {
// 1259       return HAL_ERROR;
// 1260     }
// 1261     else
// 1262     {
// 1263       htim->State = HAL_TIM_STATE_BUSY;
// 1264     }
// 1265   }
// 1266   else
// 1267   {
// 1268     return HAL_ERROR;
// 1269   }
// 1270 
// 1271   switch (Channel)
// 1272   {
// 1273     case TIM_CHANNEL_1:
// 1274     {
// 1275       /* Set the DMA Period elapsed callback */
// 1276       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1277 
// 1278       /* Set the DMA error callback */
// 1279       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1280 
// 1281       /* Enable the DMA channel */
// 1282       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1, Length);
// 1283 
// 1284       /* Enable the TIM Capture/Compare 1 DMA request */
// 1285       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1286     }
// 1287     break;
// 1288 
// 1289     case TIM_CHANNEL_2:
// 1290     {
// 1291       /* Set the DMA Period elapsed callback */
// 1292       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1293 
// 1294       /* Set the DMA error callback */
// 1295       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1296 
// 1297       /* Enable the DMA channel */
// 1298       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2, Length);
// 1299 
// 1300       /* Enable the TIM Capture/Compare 2 DMA request */
// 1301       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1302     }
// 1303     break;
// 1304 
// 1305     case TIM_CHANNEL_3:
// 1306     {
// 1307       /* Set the DMA Period elapsed callback */
// 1308       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1309 
// 1310       /* Set the DMA error callback */
// 1311       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1312 
// 1313       /* Enable the DMA channel */
// 1314       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,Length);
// 1315 
// 1316       /* Enable the TIM Output Capture/Compare 3 request */
// 1317       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1318     }
// 1319     break;
// 1320 
// 1321     case TIM_CHANNEL_4:
// 1322     {
// 1323      /* Set the DMA Period elapsed callback */
// 1324       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1325 
// 1326       /* Set the DMA error callback */
// 1327       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1328 
// 1329       /* Enable the DMA channel */
// 1330       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4, Length);
// 1331 
// 1332       /* Enable the TIM Capture/Compare 4 DMA request */
// 1333       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1334     }
// 1335     break;
// 1336 
// 1337     default:
// 1338     break;
// 1339   }
// 1340 
// 1341   /* Enable the Capture compare channel */
// 1342   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1343 
// 1344   /* Enable the Peripheral */
// 1345   __HAL_TIM_ENABLE(htim);
// 1346 
// 1347   /* Return function status */
// 1348   return HAL_OK;
// 1349 }
// 1350 
// 1351 /**
// 1352   * @brief  Stops the TIM PWM signal generation in DMA mode.
// 1353   * @param  htim : TIM handle
// 1354   * @param  Channel : TIM Channels to be disabled
// 1355   *          This parameter can be one of the following values:
// 1356   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1357   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1358   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1359   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1360   * @retval HAL status
// 1361 */
// 1362 HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1363 {
// 1364   /* Check the parameters */
// 1365   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1366 
// 1367   switch (Channel)
// 1368   {
// 1369     case TIM_CHANNEL_1:
// 1370     {
// 1371       /* Disable the TIM Capture/Compare 1 DMA request */
// 1372       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1373     }
// 1374     break;
// 1375 
// 1376     case TIM_CHANNEL_2:
// 1377     {
// 1378       /* Disable the TIM Capture/Compare 2 DMA request */
// 1379       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1380     }
// 1381     break;
// 1382 
// 1383     case TIM_CHANNEL_3:
// 1384     {
// 1385       /* Disable the TIM Capture/Compare 3 DMA request */
// 1386       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1387     }
// 1388     break;
// 1389 
// 1390     case TIM_CHANNEL_4:
// 1391     {
// 1392       /* Disable the TIM Capture/Compare 4 interrupt */
// 1393       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1394     }
// 1395     break;
// 1396 
// 1397     default:
// 1398     break;
// 1399   }
// 1400 
// 1401   /* Disable the Capture compare channel */
// 1402   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1403 
// 1404   /* Disable the Peripheral */
// 1405   __HAL_TIM_DISABLE(htim);
// 1406 
// 1407   /* Change the htim state */
// 1408   htim->State = HAL_TIM_STATE_READY;
// 1409 
// 1410   /* Return function status */
// 1411   return HAL_OK;
// 1412 }
// 1413 
// 1414 /**
// 1415   * @}
// 1416   */
// 1417 
// 1418 /** @defgroup TIM_Exported_Functions_Group4 Time Input Capture functions
// 1419  *  @brief    Time Input Capture functions
// 1420  *
// 1421 @verbatim
// 1422   ==============================================================================
// 1423               ##### Time Input Capture functions #####
// 1424   ==============================================================================
// 1425  [..]
// 1426    This section provides functions allowing to:
// 1427    (+) Initialize and configure the TIM Input Capture.
// 1428    (+) De-initialize the TIM Input Capture.
// 1429    (+) Start the Time Input Capture.
// 1430    (+) Stop the Time Input Capture.
// 1431    (+) Start the Time Input Capture and enable interrupt.
// 1432    (+) Stop the Time Input Capture and disable interrupt.
// 1433    (+) Start the Time Input Capture and enable DMA transfer.
// 1434    (+) Stop the Time Input Capture and disable DMA transfer.
// 1435 
// 1436 @endverbatim
// 1437   * @{
// 1438   */
// 1439 /**
// 1440   * @brief  Initializes the TIM Input Capture Time base according to the specified
// 1441   *         parameters in the TIM_HandleTypeDef and create the associated handle.
// 1442   * @param  htim: TIM Input Capture handle
// 1443   * @retval HAL status
// 1444   */
// 1445 HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim)
// 1446 {
// 1447   /* Check the TIM handle allocation */
// 1448   if(htim == NULL)
// 1449   {
// 1450     return HAL_ERROR;
// 1451   }
// 1452 
// 1453   /* Check the parameters */
// 1454   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1455   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1456   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1457 
// 1458   if(htim->State == HAL_TIM_STATE_RESET)
// 1459   {
// 1460     /* Allocate lock resource and initialize it */
// 1461     htim->Lock = HAL_UNLOCKED;
// 1462 
// 1463     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 1464     HAL_TIM_IC_MspInit(htim);
// 1465   }
// 1466 
// 1467   /* Set the TIM state */
// 1468   htim->State= HAL_TIM_STATE_BUSY;
// 1469 
// 1470   /* Init the base time for the input capture */
// 1471   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 1472 
// 1473   /* Initialize the TIM state*/
// 1474   htim->State= HAL_TIM_STATE_READY;
// 1475 
// 1476   return HAL_OK;
// 1477 }
// 1478 
// 1479 /**
// 1480   * @brief  DeInitializes the TIM peripheral
// 1481   * @param  htim: TIM Input Capture handle
// 1482   * @retval HAL status
// 1483   */
// 1484 HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim)
// 1485 {
// 1486   /* Check the parameters */
// 1487   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1488 
// 1489   htim->State = HAL_TIM_STATE_BUSY;
// 1490 
// 1491   /* Disable the TIM Peripheral Clock */
// 1492   __HAL_TIM_DISABLE(htim);
// 1493 
// 1494   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 1495   HAL_TIM_IC_MspDeInit(htim);
// 1496 
// 1497   /* Change TIM state */
// 1498   htim->State = HAL_TIM_STATE_RESET;
// 1499 
// 1500   /* Release Lock */
// 1501   __HAL_UNLOCK(htim);
// 1502 
// 1503   return HAL_OK;
// 1504 }
// 1505 
// 1506 /**
// 1507   * @brief  Initializes the TIM Input Capture MSP.
// 1508   * @param  htim: TIM handle
// 1509   * @retval None
// 1510   */
// 1511 __weak void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim)
// 1512 {
// 1513   /* Prevent unused argument(s) compilation warning */
// 1514   UNUSED(htim);
// 1515 
// 1516   /* NOTE : This function Should not be modified, when the callback is needed,
// 1517             the HAL_TIM_IC_MspInit could be implemented in the user file
// 1518    */
// 1519 }
// 1520 
// 1521 /**
// 1522   * @brief  DeInitializes TIM Input Capture MSP.
// 1523   * @param  htim: TIM handle
// 1524   * @retval None
// 1525   */
// 1526 __weak void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim)
// 1527 {
// 1528   /* Prevent unused argument(s) compilation warning */
// 1529   UNUSED(htim);
// 1530 
// 1531   /* NOTE : This function Should not be modified, when the callback is needed,
// 1532             the HAL_TIM_IC_MspDeInit could be implemented in the user file
// 1533    */
// 1534 }
// 1535 
// 1536 /**
// 1537   * @brief  Starts the TIM Input Capture measurement.
// 1538   * @param  htim : TIM Input Capture handle
// 1539   * @param  Channel : TIM Channels to be enabled
// 1540   *          This parameter can be one of the following values:
// 1541   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1542   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1543   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1544   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1545   * @retval HAL status
// 1546 */
// 1547 HAL_StatusTypeDef HAL_TIM_IC_Start (TIM_HandleTypeDef *htim, uint32_t Channel)
// 1548 {
// 1549   /* Check the parameters */
// 1550   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1551 
// 1552   /* Enable the Input Capture channel */
// 1553   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1554 
// 1555   /* Enable the Peripheral */
// 1556   __HAL_TIM_ENABLE(htim);
// 1557 
// 1558   /* Return function status */
// 1559   return HAL_OK;
// 1560 }
// 1561 
// 1562 /**
// 1563   * @brief  Stops the TIM Input Capture measurement.
// 1564   * @param  htim : TIM handle
// 1565   * @param  Channel : TIM Channels to be disabled
// 1566   *          This parameter can be one of the following values:
// 1567   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1568   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1569   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1570   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1571   * @retval HAL status
// 1572 */
// 1573 HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1574 {
// 1575   /* Check the parameters */
// 1576   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1577 
// 1578   /* Disable the Input Capture channel */
// 1579   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1580 
// 1581   /* Disable the Peripheral */
// 1582   __HAL_TIM_DISABLE(htim);
// 1583 
// 1584   /* Return function status */
// 1585   return HAL_OK;
// 1586 }
// 1587 
// 1588 /**
// 1589   * @brief  Starts the TIM Input Capture measurement in interrupt mode.
// 1590   * @param  htim : TIM Input Capture handle
// 1591   * @param  Channel : TIM Channels to be enabled
// 1592   *          This parameter can be one of the following values:
// 1593   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1594   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1595   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1596   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1597   * @retval HAL status
// 1598 */
// 1599 HAL_StatusTypeDef HAL_TIM_IC_Start_IT (TIM_HandleTypeDef *htim, uint32_t Channel)
// 1600 {
// 1601   /* Check the parameters */
// 1602   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1603 
// 1604   switch (Channel)
// 1605   {
// 1606     case TIM_CHANNEL_1:
// 1607     {
// 1608       /* Enable the TIM Capture/Compare 1 interrupt */
// 1609       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1610     }
// 1611     break;
// 1612 
// 1613     case TIM_CHANNEL_2:
// 1614     {
// 1615       /* Enable the TIM Capture/Compare 2 interrupt */
// 1616       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1617     }
// 1618     break;
// 1619 
// 1620     case TIM_CHANNEL_3:
// 1621     {
// 1622       /* Enable the TIM Capture/Compare 3 interrupt */
// 1623       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1624     }
// 1625     break;
// 1626 
// 1627     case TIM_CHANNEL_4:
// 1628     {
// 1629       /* Enable the TIM Capture/Compare 4 interrupt */
// 1630       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 1631     }
// 1632     break;
// 1633 
// 1634     default:
// 1635     break;
// 1636   }
// 1637   /* Enable the Input Capture channel */
// 1638   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1639 
// 1640   /* Enable the Peripheral */
// 1641   __HAL_TIM_ENABLE(htim);
// 1642 
// 1643   /* Return function status */
// 1644   return HAL_OK;
// 1645 }
// 1646 
// 1647 /**
// 1648   * @brief  Stops the TIM Input Capture measurement in interrupt mode.
// 1649   * @param  htim : TIM handle
// 1650   * @param  Channel : TIM Channels to be disabled
// 1651   *          This parameter can be one of the following values:
// 1652   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1653   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1654   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1655   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1656   * @retval HAL status
// 1657 */
// 1658 HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1659 {
// 1660   /* Check the parameters */
// 1661   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1662 
// 1663   switch (Channel)
// 1664   {
// 1665     case TIM_CHANNEL_1:
// 1666     {
// 1667       /* Disable the TIM Capture/Compare 1 interrupt */
// 1668       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1669     }
// 1670     break;
// 1671 
// 1672     case TIM_CHANNEL_2:
// 1673     {
// 1674       /* Disable the TIM Capture/Compare 2 interrupt */
// 1675       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1676     }
// 1677     break;
// 1678 
// 1679     case TIM_CHANNEL_3:
// 1680     {
// 1681       /* Disable the TIM Capture/Compare 3 interrupt */
// 1682       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1683     }
// 1684     break;
// 1685 
// 1686     case TIM_CHANNEL_4:
// 1687     {
// 1688       /* Disable the TIM Capture/Compare 4 interrupt */
// 1689       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 1690     }
// 1691     break;
// 1692 
// 1693     default:
// 1694     break;
// 1695   }
// 1696 
// 1697   /* Disable the Input Capture channel */
// 1698   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1699 
// 1700   /* Disable the Peripheral */
// 1701   __HAL_TIM_DISABLE(htim);
// 1702 
// 1703   /* Return function status */
// 1704   return HAL_OK;
// 1705 }
// 1706 
// 1707 /**
// 1708   * @brief  Starts the TIM Input Capture measurement in DMA mode.
// 1709   * @param  htim : TIM Input Capture handle
// 1710   * @param  Channel : TIM Channels to be enabled
// 1711   *          This parameter can be one of the following values:
// 1712   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1713   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1714   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1715   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1716   * @param  pData: The destination Buffer address.
// 1717   * @param  Length: The length of data to be transferred from TIM peripheral to memory.
// 1718   * @retval HAL status
// 1719 */
// 1720 HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 1721 {
// 1722   /* Check the parameters */
// 1723   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1724   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 1725 
// 1726   if((htim->State == HAL_TIM_STATE_BUSY))
// 1727   {
// 1728      return HAL_BUSY;
// 1729   }
// 1730   else if((htim->State == HAL_TIM_STATE_READY))
// 1731   {
// 1732     if((pData == 0 ) && (Length > 0))
// 1733     {
// 1734       return HAL_ERROR;
// 1735     }
// 1736     else
// 1737     {
// 1738       htim->State = HAL_TIM_STATE_BUSY;
// 1739     }
// 1740   }
// 1741   else
// 1742   {
// 1743     return HAL_ERROR;
// 1744   }
// 1745 
// 1746   switch (Channel)
// 1747   {
// 1748     case TIM_CHANNEL_1:
// 1749     {
// 1750       /* Set the DMA Period elapsed callback */
// 1751       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 1752 
// 1753       /* Set the DMA error callback */
// 1754       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1755 
// 1756       /* Enable the DMA channel */
// 1757       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData, Length);
// 1758 
// 1759       /* Enable the TIM Capture/Compare 1 DMA request */
// 1760       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1761     }
// 1762     break;
// 1763 
// 1764     case TIM_CHANNEL_2:
// 1765     {
// 1766       /* Set the DMA Period elapsed callback */
// 1767       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 1768 
// 1769       /* Set the DMA error callback */
// 1770       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1771 
// 1772       /* Enable the DMA channel */
// 1773       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData, Length);
// 1774 
// 1775       /* Enable the TIM Capture/Compare 2  DMA request */
// 1776       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1777     }
// 1778     break;
// 1779 
// 1780     case TIM_CHANNEL_3:
// 1781     {
// 1782       /* Set the DMA Period elapsed callback */
// 1783       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMACaptureCplt;
// 1784 
// 1785       /* Set the DMA error callback */
// 1786       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1787 
// 1788       /* Enable the DMA channel */
// 1789       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->CCR3, (uint32_t)pData, Length);
// 1790 
// 1791       /* Enable the TIM Capture/Compare 3  DMA request */
// 1792       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1793     }
// 1794     break;
// 1795 
// 1796     case TIM_CHANNEL_4:
// 1797     {
// 1798       /* Set the DMA Period elapsed callback */
// 1799       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMACaptureCplt;
// 1800 
// 1801       /* Set the DMA error callback */
// 1802       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1803 
// 1804       /* Enable the DMA channel */
// 1805       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->CCR4, (uint32_t)pData, Length);
// 1806 
// 1807       /* Enable the TIM Capture/Compare 4  DMA request */
// 1808       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1809     }
// 1810     break;
// 1811 
// 1812     default:
// 1813     break;
// 1814   }
// 1815 
// 1816   /* Enable the Input Capture channel */
// 1817   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1818 
// 1819   /* Enable the Peripheral */
// 1820   __HAL_TIM_ENABLE(htim);
// 1821 
// 1822   /* Return function status */
// 1823   return HAL_OK;
// 1824 }
// 1825 
// 1826 /**
// 1827   * @brief  Stops the TIM Input Capture measurement in DMA mode.
// 1828   * @param  htim : TIM Input Capture handle
// 1829   * @param  Channel : TIM Channels to be disabled
// 1830   *          This parameter can be one of the following values:
// 1831   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1832   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1833   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1834   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1835   * @retval HAL status
// 1836 */
// 1837 HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1838 {
// 1839   /* Check the parameters */
// 1840   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1841   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 1842 
// 1843   switch (Channel)
// 1844   {
// 1845     case TIM_CHANNEL_1:
// 1846     {
// 1847       /* Disable the TIM Capture/Compare 1 DMA request */
// 1848       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1849     }
// 1850     break;
// 1851 
// 1852     case TIM_CHANNEL_2:
// 1853     {
// 1854       /* Disable the TIM Capture/Compare 2 DMA request */
// 1855       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1856     }
// 1857     break;
// 1858 
// 1859     case TIM_CHANNEL_3:
// 1860     {
// 1861       /* Disable the TIM Capture/Compare 3  DMA request */
// 1862       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1863     }
// 1864     break;
// 1865 
// 1866     case TIM_CHANNEL_4:
// 1867     {
// 1868       /* Disable the TIM Capture/Compare 4  DMA request */
// 1869       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1870     }
// 1871     break;
// 1872 
// 1873     default:
// 1874     break;
// 1875   }
// 1876 
// 1877   /* Disable the Input Capture channel */
// 1878   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1879 
// 1880   /* Disable the Peripheral */
// 1881   __HAL_TIM_DISABLE(htim);
// 1882 
// 1883   /* Change the htim state */
// 1884   htim->State = HAL_TIM_STATE_READY;
// 1885 
// 1886   /* Return function status */
// 1887   return HAL_OK;
// 1888 }
// 1889 /**
// 1890   * @}
// 1891   */
// 1892 
// 1893 /** @defgroup TIM_Exported_Functions_Group5 Time One Pulse functions
// 1894  *  @brief    Time One Pulse functions
// 1895  *
// 1896 @verbatim
// 1897   ==============================================================================
// 1898                         ##### Time One Pulse functions #####
// 1899   ==============================================================================
// 1900   [..]
// 1901     This section provides functions allowing to:
// 1902     (+) Initialize and configure the TIM One Pulse.
// 1903     (+) De-initialize the TIM One Pulse.
// 1904     (+) Start the Time One Pulse.
// 1905     (+) Stop the Time One Pulse.
// 1906     (+) Start the Time One Pulse and enable interrupt.
// 1907     (+) Stop the Time One Pulse and disable interrupt.
// 1908     (+) Start the Time One Pulse and enable DMA transfer.
// 1909     (+) Stop the Time One Pulse and disable DMA transfer.
// 1910 
// 1911 @endverbatim
// 1912   * @{
// 1913   */
// 1914 /**
// 1915   * @brief  Initializes the TIM One Pulse Time Base according to the specified
// 1916   *         parameters in the TIM_HandleTypeDef and create the associated handle.
// 1917   * @param  htim: TIM OnePulse handle
// 1918   * @param  OnePulseMode: Select the One pulse mode.
// 1919   *         This parameter can be one of the following values:
// 1920   *            @arg TIM_OPMODE_SINGLE: Only one pulse will be generated.
// 1921   *            @arg TIM_OPMODE_REPETITIVE: Repetitive pulses wil be generated.
// 1922   * @retval HAL status
// 1923   */
// 1924 HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode)
// 1925 {
// 1926   /* Check the TIM handle allocation */
// 1927   if(htim == NULL)
// 1928   {
// 1929     return HAL_ERROR;
// 1930   }
// 1931 
// 1932   /* Check the parameters */
// 1933   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1934   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1935   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1936   assert_param(IS_TIM_OPM_MODE(OnePulseMode));
// 1937 
// 1938   if(htim->State == HAL_TIM_STATE_RESET)
// 1939   {
// 1940     /* Allocate lock resource and initialize it */
// 1941     htim->Lock = HAL_UNLOCKED;
// 1942 
// 1943     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 1944     HAL_TIM_OnePulse_MspInit(htim);
// 1945   }
// 1946 
// 1947   /* Set the TIM state */
// 1948   htim->State= HAL_TIM_STATE_BUSY;
// 1949 
// 1950   /* Configure the Time base in the One Pulse Mode */
// 1951   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 1952 
// 1953   /* Reset the OPM Bit */
// 1954   htim->Instance->CR1 &= ~TIM_CR1_OPM;
// 1955 
// 1956   /* Configure the OPM Mode */
// 1957   htim->Instance->CR1 |= OnePulseMode;
// 1958 
// 1959   /* Initialize the TIM state*/
// 1960   htim->State= HAL_TIM_STATE_READY;
// 1961 
// 1962   return HAL_OK;
// 1963 }
// 1964 
// 1965 /**
// 1966   * @brief  DeInitializes the TIM One Pulse
// 1967   * @param  htim: TIM One Pulse handle
// 1968   * @retval HAL status
// 1969   */
// 1970 HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim)
// 1971 {
// 1972   /* Check the parameters */
// 1973   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1974 
// 1975   htim->State = HAL_TIM_STATE_BUSY;
// 1976 
// 1977   /* Disable the TIM Peripheral Clock */
// 1978   __HAL_TIM_DISABLE(htim);
// 1979 
// 1980   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 1981   HAL_TIM_OnePulse_MspDeInit(htim);
// 1982 
// 1983   /* Change TIM state */
// 1984   htim->State = HAL_TIM_STATE_RESET;
// 1985 
// 1986   /* Release Lock */
// 1987   __HAL_UNLOCK(htim);
// 1988 
// 1989   return HAL_OK;
// 1990 }
// 1991 
// 1992 /**
// 1993   * @brief  Initializes the TIM One Pulse MSP.
// 1994   * @param  htim: TIM handle
// 1995   * @retval None
// 1996   */
// 1997 __weak void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim)
// 1998 {
// 1999   /* Prevent unused argument(s) compilation warning */
// 2000   UNUSED(htim);
// 2001 
// 2002   /* NOTE : This function Should not be modified, when the callback is needed,
// 2003             the HAL_TIM_OnePulse_MspInit could be implemented in the user file
// 2004    */
// 2005 }
// 2006 
// 2007 /**
// 2008   * @brief  DeInitializes TIM One Pulse MSP.
// 2009   * @param  htim: TIM handle
// 2010   * @retval None
// 2011   */
// 2012 __weak void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim)
// 2013 {
// 2014   /* Prevent unused argument(s) compilation warning */
// 2015   UNUSED(htim);
// 2016 
// 2017   /* NOTE : This function Should not be modified, when the callback is needed,
// 2018             the HAL_TIM_OnePulse_MspDeInit could be implemented in the user file
// 2019    */
// 2020 }
// 2021 
// 2022 /**
// 2023   * @brief  Starts the TIM One Pulse signal generation.
// 2024   * @param  htim : TIM One Pulse handle
// 2025   * @param  OutputChannel : TIM Channels to be enabled
// 2026   *          This parameter can be one of the following values:
// 2027   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2028   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2029   * @retval HAL status
// 2030 */
// 2031 HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2032 {
// 2033   /* Enable the Capture compare and the Input Capture channels
// 2034     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2035     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2036     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2037     in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2038 
// 2039     No need to enable the counter, it's enabled automatically by hardware
// 2040     (the counter starts in response to a stimulus and generate a pulse */
// 2041 
// 2042   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2043   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2044 
// 2045   /* Return function status */
// 2046   return HAL_OK;
// 2047 }
// 2048 
// 2049 /**
// 2050   * @brief  Stops the TIM One Pulse signal generation.
// 2051   * @param  htim : TIM One Pulse handle
// 2052   * @param  OutputChannel : TIM Channels to be disable
// 2053   *          This parameter can be one of the following values:
// 2054   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2055   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2056   * @retval HAL status
// 2057 */
// 2058 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2059 {
// 2060   /* Disable the Capture compare and the Input Capture channels
// 2061   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2062   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2063   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2064   in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2065 
// 2066   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2067   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2068 
// 2069   /* Disable the Peripheral */
// 2070   __HAL_TIM_DISABLE(htim);
// 2071 
// 2072   /* Return function status */
// 2073   return HAL_OK;
// 2074 }
// 2075 
// 2076 /**
// 2077   * @brief  Starts the TIM One Pulse signal generation in interrupt mode.
// 2078   * @param  htim : TIM One Pulse handle
// 2079   * @param  OutputChannel : TIM Channels to be enabled
// 2080   *          This parameter can be one of the following values:
// 2081   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2082   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2083   * @retval HAL status
// 2084 */
// 2085 HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2086 {
// 2087   /* Enable the Capture compare and the Input Capture channels
// 2088     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2089     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2090     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2091     in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2092 
// 2093     No need to enable the counter, it's enabled automatically by hardware
// 2094     (the counter starts in response to a stimulus and generate a pulse */
// 2095 
// 2096   /* Enable the TIM Capture/Compare 1 interrupt */
// 2097   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2098 
// 2099   /* Enable the TIM Capture/Compare 2 interrupt */
// 2100   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2101 
// 2102   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2103   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2104 
// 2105   /* Return function status */
// 2106   return HAL_OK;
// 2107 }
// 2108 
// 2109 /**
// 2110   * @brief  Stops the TIM One Pulse signal generation in interrupt mode.
// 2111   * @param  htim : TIM One Pulse handle
// 2112   * @param  OutputChannel : TIM Channels to be enabled
// 2113   *          This parameter can be one of the following values:
// 2114   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2115   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2116   * @retval HAL status
// 2117 */
// 2118 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2119 {
// 2120   /* Disable the TIM Capture/Compare 1 interrupt */
// 2121   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2122 
// 2123   /* Disable the TIM Capture/Compare 2 interrupt */
// 2124   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2125 
// 2126   /* Disable the Capture compare and the Input Capture channels
// 2127   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2128   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2129   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2130   in all combinations, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2131   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2132   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2133 
// 2134   /* Disable the Peripheral */
// 2135    __HAL_TIM_DISABLE(htim);
// 2136 
// 2137   /* Return function status */
// 2138   return HAL_OK;
// 2139 }
// 2140 
// 2141 /**
// 2142   * @}
// 2143   */
// 2144 
// 2145 /** @defgroup TIM_Exported_Functions_Group6 Time Encoder functions
// 2146  *  @brief    Time Encoder functions
// 2147  *
// 2148 @verbatim
// 2149   ==============================================================================
// 2150                           ##### Time Encoder functions #####
// 2151   ==============================================================================
// 2152   [..]
// 2153     This section provides functions allowing to:
// 2154     (+) Initialize and configure the TIM Encoder.
// 2155     (+) De-initialize the TIM Encoder.
// 2156     (+) Start the Time Encoder.
// 2157     (+) Stop the Time Encoder.
// 2158     (+) Start the Time Encoder and enable interrupt.
// 2159     (+) Stop the Time Encoder and disable interrupt.
// 2160     (+) Start the Time Encoder and enable DMA transfer.
// 2161     (+) Stop the Time Encoder and disable DMA transfer.
// 2162 
// 2163 @endverbatim
// 2164   * @{
// 2165   */
// 2166 /**
// 2167   * @brief  Initializes the TIM Encoder Interface and create the associated handle.
// 2168   * @param  htim: TIM Encoder Interface handle
// 2169   * @param  sConfig: TIM Encoder Interface configuration structure
// 2170   * @retval HAL status
// 2171   */
// 2172 HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim,  TIM_Encoder_InitTypeDef* sConfig)
// 2173 {
// 2174   uint32_t tmpsmcr = 0;
// 2175   uint32_t tmpccmr1 = 0;
// 2176   uint32_t tmpccer = 0;
// 2177 
// 2178   /* Check the TIM handle allocation */
// 2179   if(htim == NULL)
// 2180   {
// 2181     return HAL_ERROR;
// 2182   }
// 2183 
// 2184   /* Check the parameters */
// 2185   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2186   assert_param(IS_TIM_ENCODER_MODE(sConfig->EncoderMode));
// 2187   assert_param(IS_TIM_IC_SELECTION(sConfig->IC1Selection));
// 2188   assert_param(IS_TIM_IC_SELECTION(sConfig->IC2Selection));
// 2189   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
// 2190   assert_param(IS_TIM_IC_POLARITY(sConfig->IC2Polarity));
// 2191   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
// 2192   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC2Prescaler));
// 2193   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
// 2194   assert_param(IS_TIM_IC_FILTER(sConfig->IC2Filter));
// 2195 
// 2196   if(htim->State == HAL_TIM_STATE_RESET)
// 2197   {
// 2198     /* Allocate lock resource and initialize it */
// 2199     htim->Lock = HAL_UNLOCKED;
// 2200 
// 2201     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 2202     HAL_TIM_Encoder_MspInit(htim);
// 2203   }
// 2204 
// 2205   /* Set the TIM state */
// 2206   htim->State= HAL_TIM_STATE_BUSY;
// 2207 
// 2208   /* Reset the SMS bits */
// 2209   htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 2210 
// 2211   /* Configure the Time base in the Encoder Mode */
// 2212   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 2213 
// 2214   /* Get the TIMx SMCR register value */
// 2215   tmpsmcr = htim->Instance->SMCR;
// 2216 
// 2217   /* Get the TIMx CCMR1 register value */
// 2218   tmpccmr1 = htim->Instance->CCMR1;
// 2219 
// 2220   /* Get the TIMx CCER register value */
// 2221   tmpccer = htim->Instance->CCER;
// 2222 
// 2223   /* Set the encoder Mode */
// 2224   tmpsmcr |= sConfig->EncoderMode;
// 2225 
// 2226   /* Select the Capture Compare 1 and the Capture Compare 2 as input */
// 2227   tmpccmr1 &= ~(TIM_CCMR1_CC1S | TIM_CCMR1_CC2S);
// 2228   tmpccmr1 |= (sConfig->IC1Selection | (sConfig->IC2Selection << 8));
// 2229 
// 2230   /* Set the the Capture Compare 1 and the Capture Compare 2 prescalers and filters */
// 2231   tmpccmr1 &= ~(TIM_CCMR1_IC1PSC | TIM_CCMR1_IC2PSC);
// 2232   tmpccmr1 &= ~(TIM_CCMR1_IC1F | TIM_CCMR1_IC2F);
// 2233   tmpccmr1 |= sConfig->IC1Prescaler | (sConfig->IC2Prescaler << 8);
// 2234   tmpccmr1 |= (sConfig->IC1Filter << 4) | (sConfig->IC2Filter << 12);
// 2235 
// 2236   /* Set the TI1 and the TI2 Polarities */
// 2237   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC2P);
// 2238   tmpccer &= ~(TIM_CCER_CC1NP | TIM_CCER_CC2NP);
// 2239   tmpccer |= sConfig->IC1Polarity | (sConfig->IC2Polarity << 4);
// 2240 
// 2241   /* Write to TIMx SMCR */
// 2242   htim->Instance->SMCR = tmpsmcr;
// 2243 
// 2244   /* Write to TIMx CCMR1 */
// 2245   htim->Instance->CCMR1 = tmpccmr1;
// 2246 
// 2247   /* Write to TIMx CCER */
// 2248   htim->Instance->CCER = tmpccer;
// 2249 
// 2250   /* Initialize the TIM state*/
// 2251   htim->State= HAL_TIM_STATE_READY;
// 2252 
// 2253   return HAL_OK;
// 2254 }
// 2255 
// 2256 
// 2257 /**
// 2258   * @brief  DeInitializes the TIM Encoder interface
// 2259   * @param  htim: TIM Encoder handle
// 2260   * @retval HAL status
// 2261   */
// 2262 HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim)
// 2263 {
// 2264   /* Check the parameters */
// 2265   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2266 
// 2267   htim->State = HAL_TIM_STATE_BUSY;
// 2268 
// 2269   /* Disable the TIM Peripheral Clock */
// 2270   __HAL_TIM_DISABLE(htim);
// 2271 
// 2272   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 2273   HAL_TIM_Encoder_MspDeInit(htim);
// 2274 
// 2275   /* Change TIM state */
// 2276   htim->State = HAL_TIM_STATE_RESET;
// 2277 
// 2278   /* Release Lock */
// 2279   __HAL_UNLOCK(htim);
// 2280 
// 2281   return HAL_OK;
// 2282 }
// 2283 
// 2284 /**
// 2285   * @brief  Initializes the TIM Encoder Interface MSP.
// 2286   * @param  htim: TIM handle
// 2287   * @retval None
// 2288   */
// 2289 __weak void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim)
// 2290 {
// 2291   /* Prevent unused argument(s) compilation warning */
// 2292   UNUSED(htim);
// 2293 
// 2294   /* NOTE : This function Should not be modified, when the callback is needed,
// 2295             the HAL_TIM_Encoder_MspInit could be implemented in the user file
// 2296    */
// 2297 }
// 2298 
// 2299 /**
// 2300   * @brief  DeInitializes TIM Encoder Interface MSP.
// 2301   * @param  htim: TIM handle
// 2302   * @retval None
// 2303   */
// 2304 __weak void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim)
// 2305 {
// 2306   /* Prevent unused argument(s) compilation warning */
// 2307   UNUSED(htim);
// 2308 
// 2309   /* NOTE : This function Should not be modified, when the callback is needed,
// 2310             the HAL_TIM_Encoder_MspDeInit could be implemented in the user file
// 2311    */
// 2312 }
// 2313 
// 2314 /**
// 2315   * @brief  Starts the TIM Encoder Interface.
// 2316   * @param  htim : TIM Encoder Interface handle
// 2317   * @param  Channel : TIM Channels to be enabled
// 2318   *          This parameter can be one of the following values:
// 2319   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2320   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2321   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2322   * @retval HAL status
// 2323 */
// 2324 HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2325 {
// 2326   /* Check the parameters */
// 2327   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2328 
// 2329   /* Enable the encoder interface channels */
// 2330   switch (Channel)
// 2331   {
// 2332     case TIM_CHANNEL_1:
// 2333   {
// 2334     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2335       break;
// 2336   }
// 2337     case TIM_CHANNEL_2:
// 2338   {
// 2339     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2340       break;
// 2341   }
// 2342     default :
// 2343   {
// 2344      TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2345      TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2346      break;
// 2347     }
// 2348   }
// 2349   /* Enable the Peripheral */
// 2350   __HAL_TIM_ENABLE(htim);
// 2351 
// 2352   /* Return function status */
// 2353   return HAL_OK;
// 2354 }
// 2355 
// 2356 /**
// 2357   * @brief  Stops the TIM Encoder Interface.
// 2358   * @param  htim : TIM Encoder Interface handle
// 2359   * @param  Channel : TIM Channels to be disabled
// 2360   *          This parameter can be one of the following values:
// 2361   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2362   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2363   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2364   * @retval HAL status
// 2365 */
// 2366 HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2367 {
// 2368   /* Check the parameters */
// 2369     assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2370 
// 2371    /* Disable the Input Capture channels 1 and 2
// 2372     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 2373   switch (Channel)
// 2374   {
// 2375     case TIM_CHANNEL_1:
// 2376   {
// 2377      TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2378       break;
// 2379   }
// 2380     case TIM_CHANNEL_2:
// 2381   {
// 2382     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2383       break;
// 2384   }
// 2385     default :
// 2386   {
// 2387     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2388     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2389      break;
// 2390     }
// 2391   }
// 2392 
// 2393   /* Disable the Peripheral */
// 2394   __HAL_TIM_DISABLE(htim);
// 2395 
// 2396   /* Return function status */
// 2397   return HAL_OK;
// 2398 }
// 2399 
// 2400 /**
// 2401   * @brief  Starts the TIM Encoder Interface in interrupt mode.
// 2402   * @param  htim : TIM Encoder Interface handle
// 2403   * @param  Channel : TIM Channels to be enabled
// 2404   *          This parameter can be one of the following values:
// 2405   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2406   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2407   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2408   * @retval HAL status
// 2409 */
// 2410 HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2411 {
// 2412   /* Check the parameters */
// 2413   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2414 
// 2415   /* Enable the encoder interface channels */
// 2416   /* Enable the capture compare Interrupts 1 and/or 2 */
// 2417   switch (Channel)
// 2418   {
// 2419     case TIM_CHANNEL_1:
// 2420   {
// 2421     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2422     __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2423       break;
// 2424   }
// 2425     case TIM_CHANNEL_2:
// 2426   {
// 2427     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2428     __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2429       break;
// 2430   }
// 2431     default :
// 2432   {
// 2433      TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2434      TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2435      __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2436      __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2437      break;
// 2438     }
// 2439   }
// 2440 
// 2441   /* Enable the Peripheral */
// 2442   __HAL_TIM_ENABLE(htim);
// 2443 
// 2444   /* Return function status */
// 2445   return HAL_OK;
// 2446 }
// 2447 
// 2448 /**
// 2449   * @brief  Stops the TIM Encoder Interface in interrupt mode.
// 2450   * @param  htim : TIM Encoder Interface handle
// 2451   * @param  Channel : TIM Channels to be disabled
// 2452   *          This parameter can be one of the following values:
// 2453   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2454   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2455   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2456   * @retval HAL status
// 2457 */
// 2458 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2459 {
// 2460   /* Check the parameters */
// 2461   assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2462 
// 2463   /* Disable the Input Capture channels 1 and 2
// 2464     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 2465   if(Channel == TIM_CHANNEL_1)
// 2466   {
// 2467     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2468 
// 2469     /* Disable the capture compare Interrupts 1 */
// 2470   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2471   }
// 2472   else if(Channel == TIM_CHANNEL_2)
// 2473   {
// 2474     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2475 
// 2476     /* Disable the capture compare Interrupts 2 */
// 2477   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2478   }
// 2479   else
// 2480   {
// 2481     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2482     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2483 
// 2484     /* Disable the capture compare Interrupts 1 and 2 */
// 2485     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2486     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2487   }
// 2488 
// 2489   /* Disable the Peripheral */
// 2490   __HAL_TIM_DISABLE(htim);
// 2491 
// 2492   /* Change the htim state */
// 2493   htim->State = HAL_TIM_STATE_READY;
// 2494 
// 2495   /* Return function status */
// 2496   return HAL_OK;
// 2497 }
// 2498 
// 2499 /**
// 2500   * @brief  Starts the TIM Encoder Interface in DMA mode.
// 2501   * @param  htim : TIM Encoder Interface handle
// 2502   * @param  Channel : TIM Channels to be enabled
// 2503   *          This parameter can be one of the following values:
// 2504   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2505   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2506   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2507   * @param  pData1: The destination Buffer address for IC1.
// 2508   * @param  pData2: The destination Buffer address for IC2.
// 2509   * @param  Length: The length of data to be transferred from TIM peripheral to memory.
// 2510   * @retval HAL status
// 2511 */
// 2512 HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1, uint32_t *pData2, uint16_t Length)
// 2513 {
// 2514   /* Check the parameters */
// 2515   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2516 
// 2517   if((htim->State == HAL_TIM_STATE_BUSY))
// 2518   {
// 2519      return HAL_BUSY;
// 2520   }
// 2521   else if((htim->State == HAL_TIM_STATE_READY))
// 2522   {
// 2523     if((((pData1 == 0) || (pData2 == 0) )) && (Length > 0))
// 2524     {
// 2525       return HAL_ERROR;
// 2526     }
// 2527     else
// 2528     {
// 2529       htim->State = HAL_TIM_STATE_BUSY;
// 2530     }
// 2531   }
// 2532   else
// 2533   {
// 2534     return HAL_ERROR;
// 2535   }
// 2536 
// 2537   switch (Channel)
// 2538   {
// 2539     case TIM_CHANNEL_1:
// 2540     {
// 2541       /* Set the DMA Period elapsed callback */
// 2542       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 2543 
// 2544       /* Set the DMA error callback */
// 2545       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 2546 
// 2547       /* Enable the DMA channel */
// 2548       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t )pData1, Length);
// 2549 
// 2550       /* Enable the TIM Input Capture DMA request */
// 2551       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 2552 
// 2553       /* Enable the Peripheral */
// 2554       __HAL_TIM_ENABLE(htim);
// 2555 
// 2556       /* Enable the Capture compare channel */
// 2557       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2558     }
// 2559     break;
// 2560 
// 2561     case TIM_CHANNEL_2:
// 2562     {
// 2563       /* Set the DMA Period elapsed callback */
// 2564       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 2565 
// 2566       /* Set the DMA error callback */
// 2567       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError;
// 2568       /* Enable the DMA channel */
// 2569       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2, Length);
// 2570 
// 2571       /* Enable the TIM Input Capture  DMA request */
// 2572       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 2573 
// 2574       /* Enable the Peripheral */
// 2575       __HAL_TIM_ENABLE(htim);
// 2576 
// 2577       /* Enable the Capture compare channel */
// 2578       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2579     }
// 2580     break;
// 2581 
// 2582     case TIM_CHANNEL_ALL:
// 2583     {
// 2584       /* Set the DMA Period elapsed callback */
// 2585       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 2586 
// 2587       /* Set the DMA error callback */
// 2588       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 2589 
// 2590       /* Enable the DMA channel */
// 2591       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData1, Length);
// 2592 
// 2593       /* Set the DMA Period elapsed callback */
// 2594       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 2595 
// 2596       /* Set the DMA error callback */
// 2597       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 2598 
// 2599       /* Enable the DMA channel */
// 2600       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2, Length);
// 2601 
// 2602      /* Enable the Peripheral */
// 2603       __HAL_TIM_ENABLE(htim);
// 2604 
// 2605       /* Enable the Capture compare channel */
// 2606       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2607       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2608 
// 2609       /* Enable the TIM Input Capture  DMA request */
// 2610       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 2611       /* Enable the TIM Input Capture  DMA request */
// 2612       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 2613     }
// 2614     break;
// 2615 
// 2616     default:
// 2617     break;
// 2618   }
// 2619   /* Return function status */
// 2620   return HAL_OK;
// 2621 }
// 2622 
// 2623 /**
// 2624   * @brief  Stops the TIM Encoder Interface in DMA mode.
// 2625   * @param  htim : TIM Encoder Interface handle
// 2626   * @param  Channel : TIM Channels to be enabled
// 2627   *          This parameter can be one of the following values:
// 2628   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2629   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2630   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 2631   * @retval HAL status
// 2632 */
// 2633 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2634 {
// 2635   /* Check the parameters */
// 2636   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2637 
// 2638   /* Disable the Input Capture channels 1 and 2
// 2639     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 2640   if(Channel == TIM_CHANNEL_1)
// 2641   {
// 2642     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2643 
// 2644     /* Disable the capture compare DMA Request 1 */
// 2645     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 2646   }
// 2647   else if(Channel == TIM_CHANNEL_2)
// 2648   {
// 2649     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2650 
// 2651     /* Disable the capture compare DMA Request 2 */
// 2652     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 2653   }
// 2654   else
// 2655   {
// 2656     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2657     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2658 
// 2659     /* Disable the capture compare DMA Request 1 and 2 */
// 2660     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 2661     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 2662   }
// 2663 
// 2664   /* Disable the Peripheral */
// 2665   __HAL_TIM_DISABLE(htim);
// 2666 
// 2667   /* Change the htim state */
// 2668   htim->State = HAL_TIM_STATE_READY;
// 2669 
// 2670   /* Return function status */
// 2671   return HAL_OK;
// 2672 }
// 2673 
// 2674 /**
// 2675   * @}
// 2676   */
// 2677 /** @defgroup TIM_Exported_Functions_Group7 TIM IRQ handler management
// 2678  *  @brief    IRQ handler management
// 2679  *
// 2680 @verbatim
// 2681   ==============================================================================
// 2682                         ##### IRQ handler management #####
// 2683   ==============================================================================
// 2684   [..]
// 2685     This section provides Timer IRQ handler function.
// 2686 
// 2687 @endverbatim
// 2688   * @{
// 2689   */
// 2690 /**
// 2691   * @brief  This function handles TIM interrupts requests.
// 2692   * @param  htim: TIM  handle
// 2693   * @retval None
// 2694   */
// 2695 void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim)
// 2696 {
// 2697   /* Capture compare 1 event */
// 2698   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC1) != RESET)
// 2699   {
// 2700     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC1) !=RESET)
// 2701     {
// 2702       {
// 2703         __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC1);
// 2704         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 2705 
// 2706         /* Input capture event */
// 2707         if((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00)
// 2708         {
// 2709           HAL_TIM_IC_CaptureCallback(htim);
// 2710         }
// 2711         /* Output compare event */
// 2712         else
// 2713         {
// 2714           HAL_TIM_OC_DelayElapsedCallback(htim);
// 2715           HAL_TIM_PWM_PulseFinishedCallback(htim);
// 2716         }
// 2717         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2718       }
// 2719     }
// 2720   }
// 2721   /* Capture compare 2 event */
// 2722   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC2) != RESET)
// 2723   {
// 2724     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC2) !=RESET)
// 2725     {
// 2726       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC2);
// 2727       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 2728       /* Input capture event */
// 2729       if((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00)
// 2730       {
// 2731         HAL_TIM_IC_CaptureCallback(htim);
// 2732       }
// 2733       /* Output compare event */
// 2734       else
// 2735       {
// 2736         HAL_TIM_OC_DelayElapsedCallback(htim);
// 2737         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 2738       }
// 2739       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2740     }
// 2741   }
// 2742   /* Capture compare 3 event */
// 2743   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC3) != RESET)
// 2744   {
// 2745     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC3) !=RESET)
// 2746     {
// 2747       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC3);
// 2748       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 2749       /* Input capture event */
// 2750       if((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00)
// 2751       {
// 2752         HAL_TIM_IC_CaptureCallback(htim);
// 2753       }
// 2754       /* Output compare event */
// 2755       else
// 2756       {
// 2757         HAL_TIM_OC_DelayElapsedCallback(htim);
// 2758         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 2759       }
// 2760       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2761     }
// 2762   }
// 2763   /* Capture compare 4 event */
// 2764   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_CC4) != RESET)
// 2765   {
// 2766     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_CC4) !=RESET)
// 2767     {
// 2768       __HAL_TIM_CLEAR_IT(htim, TIM_IT_CC4);
// 2769       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 2770       /* Input capture event */
// 2771       if((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00)
// 2772       {
// 2773         HAL_TIM_IC_CaptureCallback(htim);
// 2774       }
// 2775       /* Output compare event */
// 2776       else
// 2777       {
// 2778         HAL_TIM_OC_DelayElapsedCallback(htim);
// 2779         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 2780       }
// 2781       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2782     }
// 2783   }
// 2784   /* TIM Update event */
// 2785   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_UPDATE) != RESET)
// 2786   {
// 2787     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_UPDATE) !=RESET)
// 2788     {
// 2789       __HAL_TIM_CLEAR_IT(htim, TIM_IT_UPDATE);
// 2790       HAL_TIM_PeriodElapsedCallback(htim);
// 2791     }
// 2792   }
// 2793   /* TIM Trigger detection event */
// 2794   if(__HAL_TIM_GET_FLAG(htim, TIM_FLAG_TRIGGER) != RESET)
// 2795   {
// 2796     if(__HAL_TIM_GET_IT_SOURCE(htim, TIM_IT_TRIGGER) !=RESET)
// 2797     {
// 2798       __HAL_TIM_CLEAR_IT(htim, TIM_IT_TRIGGER);
// 2799       HAL_TIM_TriggerCallback(htim);
// 2800     }
// 2801   }
// 2802 }
// 2803 
// 2804 /**
// 2805   * @}
// 2806   */
// 2807 
// 2808 /** @defgroup TIM_Exported_Functions_Group8 Peripheral Control functions
// 2809  *  @brief   	Peripheral Control functions
// 2810  *
// 2811 @verbatim
// 2812   ==============================================================================
// 2813                    ##### Peripheral Control functions #####
// 2814   ==============================================================================
// 2815  [..]
// 2816    This section provides functions allowing to:
// 2817       (+) Configure The Input Output channels for OC, PWM, IC or One Pulse mode.
// 2818       (+) Configure External Clock source.
// 2819       (+) Configure Complementary channels, break features and dead time.
// 2820       (+) Configure Master and the Slave synchronization.
// 2821       (+) Configure the DMA Burst Mode.
// 2822 
// 2823 @endverbatim
// 2824   * @{
// 2825   */
// 2826 
// 2827 /**
// 2828   * @brief  Initializes the TIM Output Compare Channels according to the specified
// 2829   *         parameters in the TIM_OC_InitTypeDef.
// 2830   * @param  htim: TIM Output Compare handle
// 2831   * @param  sConfig: TIM Output Compare configuration structure
// 2832   * @param  Channel : TIM Channels to configure
// 2833   *          This parameter can be one of the following values:
// 2834   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2835   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2836   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2837   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2838   * @retval HAL status
// 2839   */
// 2840 HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef* sConfig, uint32_t Channel)
// 2841 {
// 2842   /* Check the parameters */
// 2843   assert_param(IS_TIM_CHANNELS(Channel));
// 2844   assert_param(IS_TIM_OC_MODE(sConfig->OCMode));
// 2845   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 2846 
// 2847   /* Check input state */
// 2848   __HAL_LOCK(htim);
// 2849 
// 2850   htim->State = HAL_TIM_STATE_BUSY;
// 2851 
// 2852   switch (Channel)
// 2853   {
// 2854     case TIM_CHANNEL_1:
// 2855     {
// 2856       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 2857       /* Configure the TIM Channel 1 in Output Compare */
// 2858       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 2859     }
// 2860     break;
// 2861 
// 2862     case TIM_CHANNEL_2:
// 2863     {
// 2864       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2865       /* Configure the TIM Channel 2 in Output Compare */
// 2866       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 2867     }
// 2868     break;
// 2869 
// 2870     case TIM_CHANNEL_3:
// 2871     {
// 2872        assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 2873       /* Configure the TIM Channel 3 in Output Compare */
// 2874       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 2875     }
// 2876     break;
// 2877 
// 2878     case TIM_CHANNEL_4:
// 2879     {
// 2880       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 2881        /* Configure the TIM Channel 4 in Output Compare */
// 2882        TIM_OC4_SetConfig(htim->Instance, sConfig);
// 2883     }
// 2884     break;
// 2885 
// 2886     default:
// 2887     break;
// 2888   }
// 2889   htim->State = HAL_TIM_STATE_READY;
// 2890 
// 2891   __HAL_UNLOCK(htim);
// 2892 
// 2893   return HAL_OK;
// 2894 }
// 2895 
// 2896 /**
// 2897   * @brief  Initializes the TIM Input Capture Channels according to the specified
// 2898   *         parameters in the TIM_IC_InitTypeDef.
// 2899   * @param  htim: TIM IC handle
// 2900   * @param  sConfig: TIM Input Capture configuration structure
// 2901   * @param  Channel : TIM Channels to be enabled
// 2902   *          This parameter can be one of the following values:
// 2903   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2904   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2905   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2906   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2907   * @retval HAL status
// 2908   */
// 2909 HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_IC_InitTypeDef* sConfig, uint32_t Channel)
// 2910 {
// 2911   /* Check the parameters */
// 2912   assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 2913   assert_param(IS_TIM_IC_POLARITY(sConfig->ICPolarity));
// 2914   assert_param(IS_TIM_IC_SELECTION(sConfig->ICSelection));
// 2915   assert_param(IS_TIM_IC_PRESCALER(sConfig->ICPrescaler));
// 2916   assert_param(IS_TIM_IC_FILTER(sConfig->ICFilter));
// 2917 
// 2918   __HAL_LOCK(htim);
// 2919 
// 2920   htim->State = HAL_TIM_STATE_BUSY;
// 2921 
// 2922   if (Channel == TIM_CHANNEL_1)
// 2923   {
// 2924     /* TI1 Configuration */
// 2925     TIM_TI1_SetConfig(htim->Instance,
// 2926                sConfig->ICPolarity,
// 2927                sConfig->ICSelection,
// 2928                sConfig->ICFilter);
// 2929 
// 2930     /* Reset the IC1PSC Bits */
// 2931     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 2932 
// 2933     /* Set the IC1PSC value */
// 2934     htim->Instance->CCMR1 |= sConfig->ICPrescaler;
// 2935   }
// 2936   else if (Channel == TIM_CHANNEL_2)
// 2937   {
// 2938     /* TI2 Configuration */
// 2939     assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 2940 
// 2941     TIM_TI2_SetConfig(htim->Instance,
// 2942                       sConfig->ICPolarity,
// 2943                       sConfig->ICSelection,
// 2944                       sConfig->ICFilter);
// 2945 
// 2946     /* Reset the IC2PSC Bits */
// 2947     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 2948 
// 2949     /* Set the IC2PSC value */
// 2950     htim->Instance->CCMR1 |= (sConfig->ICPrescaler << 8);
// 2951   }
// 2952   else if (Channel == TIM_CHANNEL_3)
// 2953   {
// 2954     /* TI3 Configuration */
// 2955     assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 2956 
// 2957     TIM_TI3_SetConfig(htim->Instance,
// 2958                sConfig->ICPolarity,
// 2959                sConfig->ICSelection,
// 2960                sConfig->ICFilter);
// 2961 
// 2962     /* Reset the IC3PSC Bits */
// 2963     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC3PSC;
// 2964 
// 2965     /* Set the IC3PSC value */
// 2966     htim->Instance->CCMR2 |= sConfig->ICPrescaler;
// 2967   }
// 2968   else
// 2969   {
// 2970     /* TI4 Configuration */
// 2971     assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 2972 
// 2973     TIM_TI4_SetConfig(htim->Instance,
// 2974                sConfig->ICPolarity,
// 2975                sConfig->ICSelection,
// 2976                sConfig->ICFilter);
// 2977 
// 2978     /* Reset the IC4PSC Bits */
// 2979     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC4PSC;
// 2980 
// 2981     /* Set the IC4PSC value */
// 2982     htim->Instance->CCMR2 |= (sConfig->ICPrescaler << 8);
// 2983   }
// 2984 
// 2985   htim->State = HAL_TIM_STATE_READY;
// 2986 
// 2987   __HAL_UNLOCK(htim);
// 2988 
// 2989   return HAL_OK;
// 2990 }
// 2991 
// 2992 /**
// 2993   * @brief  Initializes the TIM PWM  channels according to the specified
// 2994   *         parameters in the TIM_OC_InitTypeDef.
// 2995   * @param  htim: TIM PWM handle
// 2996   * @param  sConfig: TIM PWM configuration structure
// 2997   * @param  Channel : TIM Channels to be configured
// 2998   *          This parameter can be one of the following values:
// 2999   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3000   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3001   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 3002   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 3003   * @retval HAL status
// 3004   */
// 3005 HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef* sConfig, uint32_t Channel)
// 3006 {
// 3007   __HAL_LOCK(htim);
// 3008 
// 3009   /* Check the parameters */
// 3010   assert_param(IS_TIM_CHANNELS(Channel));
// 3011   assert_param(IS_TIM_PWM_MODE(sConfig->OCMode));
// 3012   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 3013   assert_param(IS_TIM_FAST_STATE(sConfig->OCFastMode));
// 3014 
// 3015   htim->State = HAL_TIM_STATE_BUSY;
// 3016 
// 3017   switch (Channel)
// 3018   {
// 3019     case TIM_CHANNEL_1:
// 3020     {
// 3021       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3022       /* Configure the Channel 1 in PWM mode */
// 3023       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 3024 
// 3025       /* Set the Preload enable bit for channel1 */
// 3026       htim->Instance->CCMR1 |= TIM_CCMR1_OC1PE;
// 3027 
// 3028       /* Configure the Output Fast mode */
// 3029       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC1FE;
// 3030       htim->Instance->CCMR1 |= sConfig->OCFastMode;
// 3031     }
// 3032     break;
// 3033 
// 3034     case TIM_CHANNEL_2:
// 3035     {
// 3036       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3037       /* Configure the Channel 2 in PWM mode */
// 3038       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 3039 
// 3040       /* Set the Preload enable bit for channel2 */
// 3041       htim->Instance->CCMR1 |= TIM_CCMR1_OC2PE;
// 3042 
// 3043       /* Configure the Output Fast mode */
// 3044       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC2FE;
// 3045       htim->Instance->CCMR1 |= sConfig->OCFastMode << 8;
// 3046     }
// 3047     break;
// 3048 
// 3049     case TIM_CHANNEL_3:
// 3050     {
// 3051       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 3052       /* Configure the Channel 3 in PWM mode */
// 3053       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 3054 
// 3055       /* Set the Preload enable bit for channel3 */
// 3056       htim->Instance->CCMR2 |= TIM_CCMR2_OC3PE;
// 3057 
// 3058      /* Configure the Output Fast mode */
// 3059       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC3FE;
// 3060       htim->Instance->CCMR2 |= sConfig->OCFastMode;
// 3061     }
// 3062     break;
// 3063 
// 3064     case TIM_CHANNEL_4:
// 3065     {
// 3066       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 3067       /* Configure the Channel 4 in PWM mode */
// 3068       TIM_OC4_SetConfig(htim->Instance, sConfig);
// 3069 
// 3070       /* Set the Preload enable bit for channel4 */
// 3071       htim->Instance->CCMR2 |= TIM_CCMR2_OC4PE;
// 3072 
// 3073      /* Configure the Output Fast mode */
// 3074       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC4FE;
// 3075       htim->Instance->CCMR2 |= sConfig->OCFastMode << 8;
// 3076     }
// 3077     break;
// 3078 
// 3079     default:
// 3080     break;
// 3081   }
// 3082 
// 3083   htim->State = HAL_TIM_STATE_READY;
// 3084 
// 3085   __HAL_UNLOCK(htim);
// 3086 
// 3087   return HAL_OK;
// 3088 }
// 3089 
// 3090 /**
// 3091   * @brief  Initializes the TIM One Pulse Channels according to the specified
// 3092   *         parameters in the TIM_OnePulse_InitTypeDef.
// 3093   * @param  htim: TIM One Pulse handle
// 3094   * @param  sConfig: TIM One Pulse configuration structure
// 3095   * @param  OutputChannel : TIM Channels to be enabled
// 3096   *          This parameter can be one of the following values:
// 3097   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3098   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3099   * @param  InputChannel : TIM Channels to be enabled
// 3100   *          This parameter can be one of the following values:
// 3101   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3102   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3103   * @retval HAL status
// 3104   */
// 3105 HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim,  TIM_OnePulse_InitTypeDef* sConfig, uint32_t OutputChannel,  uint32_t InputChannel)
// 3106 {
// 3107   TIM_OC_InitTypeDef temp1;
// 3108 
// 3109   /* Check the parameters */
// 3110   assert_param(IS_TIM_OPM_CHANNELS(OutputChannel));
// 3111   assert_param(IS_TIM_OPM_CHANNELS(InputChannel));
// 3112 
// 3113   if(OutputChannel != InputChannel)
// 3114   {
// 3115   __HAL_LOCK(htim);
// 3116 
// 3117   htim->State = HAL_TIM_STATE_BUSY;
// 3118 
// 3119   /* Extract the Ouput compare configuration from sConfig structure */
// 3120   temp1.OCMode = sConfig->OCMode;
// 3121   temp1.Pulse = sConfig->Pulse;
// 3122   temp1.OCPolarity = sConfig->OCPolarity;
// 3123   temp1.OCIdleState = sConfig->OCIdleState;
// 3124 
// 3125     switch (OutputChannel)
// 3126   {
// 3127     case TIM_CHANNEL_1:
// 3128     {
// 3129         assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3130 
// 3131       TIM_OC1_SetConfig(htim->Instance, &temp1);
// 3132     }
// 3133     break;
// 3134     case TIM_CHANNEL_2:
// 3135     {
// 3136         assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3137 
// 3138       TIM_OC2_SetConfig(htim->Instance, &temp1);
// 3139     }
// 3140     break;
// 3141     default:
// 3142     break;
// 3143   }
// 3144   switch (InputChannel)
// 3145   {
// 3146     case TIM_CHANNEL_1:
// 3147     {
// 3148       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 3149 
// 3150       TIM_TI1_SetConfig(htim->Instance, sConfig->ICPolarity,
// 3151                         sConfig->ICSelection, sConfig->ICFilter);
// 3152 
// 3153       /* Reset the IC1PSC Bits */
// 3154       htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 3155 
// 3156       /* Select the Trigger source */
// 3157       htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 3158       htim->Instance->SMCR |= TIM_TS_TI1FP1;
// 3159 
// 3160       /* Select the Slave Mode */
// 3161       htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 3162       htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 3163     }
// 3164     break;
// 3165     case TIM_CHANNEL_2:
// 3166     {
// 3167       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3168 
// 3169       TIM_TI2_SetConfig(htim->Instance, sConfig->ICPolarity,
// 3170                  sConfig->ICSelection, sConfig->ICFilter);
// 3171 
// 3172       /* Reset the IC2PSC Bits */
// 3173       htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 3174 
// 3175       /* Select the Trigger source */
// 3176       htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 3177       htim->Instance->SMCR |= TIM_TS_TI2FP2;
// 3178 
// 3179       /* Select the Slave Mode */
// 3180       htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 3181       htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 3182     }
// 3183     break;
// 3184 
// 3185     default:
// 3186     break;
// 3187   }
// 3188 
// 3189   htim->State = HAL_TIM_STATE_READY;
// 3190 
// 3191   __HAL_UNLOCK(htim);
// 3192 
// 3193   return HAL_OK;
// 3194 }
// 3195   else
// 3196   {
// 3197     return HAL_ERROR;
// 3198   }
// 3199 }
// 3200 
// 3201 /**
// 3202   * @brief  Configure the DMA Burst to transfer Data from the memory to the TIM peripheral
// 3203   * @param  htim: TIM handle
// 3204   * @param  BurstBaseAddress : TIM Base address from where the DMA will start the Data write
// 3205   *         This parameter can be one of the following values:
// 3206   *            @arg TIM_DMABASE_CR1
// 3207   *            @arg TIM_DMABASE_CR2
// 3208   *            @arg TIM_DMABASE_SMCR
// 3209   *            @arg TIM_DMABASE_DIER
// 3210   *            @arg TIM_DMABASE_SR
// 3211   *            @arg TIM_DMABASE_EGR
// 3212   *            @arg TIM_DMABASE_CCMR1
// 3213   *            @arg TIM_DMABASE_CCMR2
// 3214   *            @arg TIM_DMABASE_CCER
// 3215   *            @arg TIM_DMABASE_CNT
// 3216   *            @arg TIM_DMABASE_PSC
// 3217   *            @arg TIM_DMABASE_ARR
// 3218   *            @arg TIM_DMABASE_CCR1
// 3219   *            @arg TIM_DMABASE_CCR2
// 3220   *            @arg TIM_DMABASE_CCR3
// 3221   *            @arg TIM_DMABASE_CCR4
// 3222   *            @arg TIM_DMABASE_DCR
// 3223   * @param  BurstRequestSrc: TIM DMA Request sources
// 3224   *         This parameter can be one of the following values:
// 3225   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 3226   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 3227   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 3228   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 3229   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 3230   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 3231   * @param  BurstBuffer: The Buffer address.
// 3232   * @param  BurstLength: DMA Burst length. This parameter can be one value
// 3233   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 3234   * @retval HAL status
// 3235   */
// 3236 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,
// 3237                                               uint32_t* BurstBuffer, uint32_t  BurstLength)
// 3238 {
// 3239   /* Check the parameters */
// 3240   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 3241   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 3242   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 3243   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 3244 
// 3245   if((htim->State == HAL_TIM_STATE_BUSY))
// 3246   {
// 3247      return HAL_BUSY;
// 3248   }
// 3249   else if((htim->State == HAL_TIM_STATE_READY))
// 3250   {
// 3251     if((BurstBuffer == 0 ) && (BurstLength > 0))
// 3252     {
// 3253       return HAL_ERROR;
// 3254     }
// 3255     else
// 3256     {
// 3257       htim->State = HAL_TIM_STATE_BUSY;
// 3258     }
// 3259   }
// 3260   else
// 3261   {
// 3262     return HAL_ERROR;
// 3263   }
// 3264 
// 3265   switch(BurstRequestSrc)
// 3266   {
// 3267     case TIM_DMA_UPDATE:
// 3268     {
// 3269       /* Set the DMA Period elapsed callback */
// 3270       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 3271 
// 3272       /* Set the DMA error callback */
// 3273       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 3274 
// 3275       /* Enable the DMA channel */
// 3276       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3277     }
// 3278     break;
// 3279     case TIM_DMA_CC1:
// 3280     {
// 3281       /* Set the DMA Period elapsed callback */
// 3282       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback =  TIM_DMADelayPulseCplt;
// 3283 
// 3284       /* Set the DMA error callback */
// 3285       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3286 
// 3287       /* Enable the DMA channel */
// 3288       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3289     }
// 3290     break;
// 3291     case TIM_DMA_CC2:
// 3292     {
// 3293       /* Set the DMA Period elapsed callback */
// 3294       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback =  TIM_DMADelayPulseCplt;
// 3295 
// 3296       /* Set the DMA error callback */
// 3297       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 3298 
// 3299       /* Enable the DMA channel */
// 3300       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3301     }
// 3302     break;
// 3303     case TIM_DMA_CC3:
// 3304     {
// 3305       /* Set the DMA Period elapsed callback */
// 3306       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback =  TIM_DMADelayPulseCplt;
// 3307 
// 3308       /* Set the DMA error callback */
// 3309       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 3310 
// 3311       /* Enable the DMA channel */
// 3312       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3313     }
// 3314     break;
// 3315     case TIM_DMA_CC4:
// 3316     {
// 3317       /* Set the DMA Period elapsed callback */
// 3318       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback =  TIM_DMADelayPulseCplt;
// 3319 
// 3320       /* Set the DMA error callback */
// 3321       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 3322 
// 3323       /* Enable the DMA channel */
// 3324       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3325     }
// 3326     break;
// 3327     case TIM_DMA_TRIGGER:
// 3328     {
// 3329       /* Set the DMA Period elapsed callback */
// 3330       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 3331 
// 3332       /* Set the DMA error callback */
// 3333       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 3334 
// 3335       /* Enable the DMA channel */
// 3336       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)BurstBuffer, (uint32_t)&htim->Instance->DMAR, ((BurstLength) >> 8) + 1);
// 3337     }
// 3338     break;
// 3339     default:
// 3340     break;
// 3341   }
// 3342    /* configure the DMA Burst Mode */
// 3343    htim->Instance->DCR = BurstBaseAddress | BurstLength;
// 3344 
// 3345    /* Enable the TIM DMA Request */
// 3346    __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 3347 
// 3348    htim->State = HAL_TIM_STATE_READY;
// 3349 
// 3350   /* Return function status */
// 3351   return HAL_OK;
// 3352 }
// 3353 
// 3354 /**
// 3355   * @brief  Stops the TIM DMA Burst mode
// 3356   * @param  htim: TIM handle
// 3357   * @param  BurstRequestSrc: TIM DMA Request sources to disable
// 3358   * @retval HAL status
// 3359   */
// 3360 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 3361 {
// 3362   /* Check the parameters */
// 3363   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 3364 
// 3365   /* Abort the DMA transfer (at least disable the DMA channel) */
// 3366   switch(BurstRequestSrc)
// 3367   {
// 3368     case TIM_DMA_UPDATE:
// 3369     {
// 3370       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_UPDATE]);
// 3371     }
// 3372     break;
// 3373     case TIM_DMA_CC1:
// 3374     {
// 3375       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC1]);
// 3376     }
// 3377     break;
// 3378     case TIM_DMA_CC2:
// 3379     {
// 3380       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC2]);
// 3381     }
// 3382     break;
// 3383     case TIM_DMA_CC3:
// 3384     {
// 3385       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC3]);
// 3386     }
// 3387     break;
// 3388     case TIM_DMA_CC4:
// 3389     {
// 3390       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC4]);
// 3391     }
// 3392     break;
// 3393     case TIM_DMA_TRIGGER:
// 3394     {
// 3395       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 3396     }
// 3397     break;
// 3398     default:
// 3399     break;
// 3400   }
// 3401 
// 3402   /* Disable the TIM Update DMA request */
// 3403   __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 3404 
// 3405   /* Return function status */
// 3406   return HAL_OK;
// 3407 }
// 3408 
// 3409 /**
// 3410   * @brief  Configure the DMA Burst to transfer Data from the TIM peripheral to the memory
// 3411   * @param  htim: TIM handle
// 3412   * @param  BurstBaseAddress : TIM Base address from where the DMA will starts the Data read
// 3413   *         This parameter can be one of the following values:
// 3414   *            @arg TIM_DMABASE_CR1
// 3415   *            @arg TIM_DMABASE_CR2
// 3416   *            @arg TIM_DMABASE_SMCR
// 3417   *            @arg TIM_DMABASE_DIER
// 3418   *            @arg TIM_DMABASE_SR
// 3419   *            @arg TIM_DMABASE_EGR
// 3420   *            @arg TIM_DMABASE_CCMR1
// 3421   *            @arg TIM_DMABASE_CCMR2
// 3422   *            @arg TIM_DMABASE_CCER
// 3423   *            @arg TIM_DMABASE_CNT
// 3424   *            @arg TIM_DMABASE_PSC
// 3425   *            @arg TIM_DMABASE_ARR
// 3426   *            @arg TIM_DMABASE_CCR1
// 3427   *            @arg TIM_DMABASE_CCR2
// 3428   *            @arg TIM_DMABASE_CCR3
// 3429   *            @arg TIM_DMABASE_CCR4
// 3430   *            @arg TIM_DMABASE_DCR
// 3431   * @param  BurstRequestSrc: TIM DMA Request sources
// 3432   *         This parameter can be one of the following values:
// 3433   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 3434   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 3435   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 3436   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 3437   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 3438   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 3439   * @param  BurstBuffer: The Buffer address.
// 3440   * @param  BurstLength: DMA Burst length. This parameter can be one value
// 3441   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 3442   * @retval HAL status
// 3443   */
// 3444 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,
// 3445                                              uint32_t  *BurstBuffer, uint32_t  BurstLength)
// 3446 {
// 3447   /* Check the parameters */
// 3448   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 3449   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 3450   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 3451   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 3452 
// 3453   if((htim->State == HAL_TIM_STATE_BUSY))
// 3454   {
// 3455      return HAL_BUSY;
// 3456   }
// 3457   else if((htim->State == HAL_TIM_STATE_READY))
// 3458   {
// 3459     if((BurstBuffer == 0 ) && (BurstLength > 0))
// 3460     {
// 3461       return HAL_ERROR;
// 3462     }
// 3463     else
// 3464     {
// 3465       htim->State = HAL_TIM_STATE_BUSY;
// 3466     }
// 3467   }
// 3468   else
// 3469   {
// 3470     return HAL_ERROR;
// 3471   }
// 3472 
// 3473   switch(BurstRequestSrc)
// 3474   {
// 3475     case TIM_DMA_UPDATE:
// 3476     {
// 3477       /* Set the DMA Period elapsed callback */
// 3478       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 3479 
// 3480       /* Set the DMA error callback */
// 3481       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 3482 
// 3483       /* Enable the DMA channel */
// 3484        HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3485     }
// 3486     break;
// 3487     case TIM_DMA_CC1:
// 3488     {
// 3489       /* Set the DMA Period elapsed callback */
// 3490       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback =  TIM_DMACaptureCplt;
// 3491 
// 3492       /* Set the DMA error callback */
// 3493       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3494 
// 3495       /* Enable the DMA channel */
// 3496       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3497     }
// 3498     break;
// 3499     case TIM_DMA_CC2:
// 3500     {
// 3501       /* Set the DMA Period elapsed callback */
// 3502       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback =  TIM_DMACaptureCplt;
// 3503 
// 3504       /* Set the DMA error callback */
// 3505       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 3506 
// 3507       /* Enable the DMA channel */
// 3508       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3509     }
// 3510     break;
// 3511     case TIM_DMA_CC3:
// 3512     {
// 3513       /* Set the DMA Period elapsed callback */
// 3514       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback =  TIM_DMACaptureCplt;
// 3515 
// 3516       /* Set the DMA error callback */
// 3517       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 3518 
// 3519       /* Enable the DMA channel */
// 3520       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3521     }
// 3522     break;
// 3523     case TIM_DMA_CC4:
// 3524     {
// 3525       /* Set the DMA Period elapsed callback */
// 3526       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback =  TIM_DMACaptureCplt;
// 3527 
// 3528       /* Set the DMA error callback */
// 3529       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 3530 
// 3531       /* Enable the DMA channel */
// 3532       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3533     }
// 3534     break;
// 3535     case TIM_DMA_TRIGGER:
// 3536     {
// 3537       /* Set the DMA Period elapsed callback */
// 3538       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 3539 
// 3540       /* Set the DMA error callback */
// 3541       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 3542 
// 3543       /* Enable the DMA channel */
// 3544       HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer, ((BurstLength) >> 8) + 1);
// 3545     }
// 3546     break;
// 3547     default:
// 3548     break;
// 3549   }
// 3550 
// 3551   /* configure the DMA Burst Mode */
// 3552   htim->Instance->DCR = BurstBaseAddress | BurstLength;
// 3553 
// 3554   /* Enable the TIM DMA Request */
// 3555   __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 3556 
// 3557   htim->State = HAL_TIM_STATE_READY;
// 3558 
// 3559   /* Return function status */
// 3560   return HAL_OK;
// 3561 }
// 3562 
// 3563 /**
// 3564   * @brief  Stop the DMA burst reading
// 3565   * @param  htim: TIM handle
// 3566   * @param  BurstRequestSrc: TIM DMA Request sources to disable.
// 3567   * @retval HAL status
// 3568   */
// 3569 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 3570 {
// 3571   /* Check the parameters */
// 3572   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 3573 
// 3574   /* Abort the DMA transfer (at least disable the DMA channel) */
// 3575   switch(BurstRequestSrc)
// 3576   {
// 3577     case TIM_DMA_UPDATE:
// 3578     {
// 3579       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_UPDATE]);
// 3580     }
// 3581     break;
// 3582     case TIM_DMA_CC1:
// 3583     {
// 3584       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC1]);
// 3585     }
// 3586     break;
// 3587     case TIM_DMA_CC2:
// 3588     {
// 3589       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC2]);
// 3590     }
// 3591     break;
// 3592     case TIM_DMA_CC3:
// 3593     {
// 3594       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC3]);
// 3595     }
// 3596     break;
// 3597     case TIM_DMA_CC4:
// 3598     {
// 3599       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_CC4]);
// 3600     }
// 3601     break;
// 3602     case TIM_DMA_TRIGGER:
// 3603     {
// 3604       HAL_DMA_Abort(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 3605     }
// 3606     break;
// 3607     default:
// 3608     break;
// 3609   }
// 3610 
// 3611   /* Disable the TIM Update DMA request */
// 3612   __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 3613 
// 3614   /* Return function status */
// 3615   return HAL_OK;
// 3616 }
// 3617 
// 3618 /**
// 3619   * @brief  Generate a software event
// 3620   * @param  htim: TIM handle
// 3621   * @param  EventSource: specifies the event source.
// 3622   *          This parameter can be one of the following values:
// 3623   *            @arg TIM_EVENTSOURCE_UPDATE: Timer update Event source
// 3624   *            @arg TIM_EVENTSOURCE_CC1: Timer Capture Compare 1 Event source
// 3625   *            @arg TIM_EVENTSOURCE_CC2: Timer Capture Compare 2 Event source
// 3626   *            @arg TIM_EVENTSOURCE_CC3: Timer Capture Compare 3 Event source
// 3627   *            @arg TIM_EVENTSOURCE_CC4: Timer Capture Compare 4 Event source
// 3628   *            @arg TIM_EVENTSOURCE_TRIGGER: Timer Trigger Event source
// 3629   * @note   TIM6 and TIM7 can only generate an update event.
// 3630   * @retval HAL status
// 3631   */
// 3632 
// 3633 HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource)
// 3634 {
// 3635   /* Check the parameters */
// 3636   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 3637   assert_param(IS_TIM_EVENT_SOURCE(EventSource));
// 3638 
// 3639   /* Process Locked */
// 3640   __HAL_LOCK(htim);
// 3641 
// 3642   /* Change the TIM state */
// 3643   htim->State = HAL_TIM_STATE_BUSY;
// 3644 
// 3645   /* Set the event sources */
// 3646   htim->Instance->EGR = EventSource;
// 3647 
// 3648   /* Change the TIM state */
// 3649   htim->State = HAL_TIM_STATE_READY;
// 3650 
// 3651   __HAL_UNLOCK(htim);
// 3652 
// 3653   /* Return function status */
// 3654   return HAL_OK;
// 3655 }
// 3656 
// 3657 /**
// 3658   * @brief  Configures the OCRef clear feature
// 3659   * @param  htim: TIM handle
// 3660   * @param  sClearInputConfig: pointer to a TIM_ClearInputConfigTypeDef structure that
// 3661   *         contains the OCREF clear feature and parameters for the TIM peripheral.
// 3662   * @param  Channel: specifies the TIM Channel
// 3663   *          This parameter can be one of the following values:
// 3664   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 3665   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 3666   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 3667   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 3668   * @retval HAL status
// 3669   */
// 3670 HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim, TIM_ClearInputConfigTypeDef * sClearInputConfig, uint32_t Channel)
// 3671 {
// 3672 
// 3673   /* Check the parameters */
// 3674   assert_param(IS_TIM_OCXREF_CLEAR_INSTANCE(htim->Instance));
// 3675   assert_param(IS_TIM_CLEARINPUT_SOURCE(sClearInputConfig->ClearInputSource));
// 3676   assert_param(IS_TIM_CLEARINPUT_POLARITY(sClearInputConfig->ClearInputPolarity));
// 3677   assert_param(IS_TIM_CLEARINPUT_PRESCALER(sClearInputConfig->ClearInputPrescaler));
// 3678   assert_param(IS_TIM_CLEARINPUT_FILTER(sClearInputConfig->ClearInputFilter));
// 3679 
// 3680   /* Process Locked */
// 3681   __HAL_LOCK(htim);
// 3682 
// 3683   htim->State = HAL_TIM_STATE_BUSY;
// 3684 
// 3685   switch (sClearInputConfig->ClearInputSource)
// 3686   {
// 3687     case TIM_CLEARINPUTSOURCE_NONE:
// 3688     {
// 3689       /* Clear the OCREF clear selection bit */
// 3690       CLEAR_BIT(htim->Instance->SMCR, TIM_SMCR_OCCS);
// 3691 
// 3692       /* Clear the ETR Bits */
// 3693       CLEAR_BIT(htim->Instance->SMCR, (TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP));
// 3694 
// 3695     }
// 3696     break;
// 3697 
// 3698     case TIM_CLEARINPUTSOURCE_OCREFCLR:
// 3699     {
// 3700       /* Clear the OCREF clear selection bit */
// 3701       CLEAR_BIT(htim->Instance->SMCR, TIM_SMCR_OCCS);
// 3702     }
// 3703     break;
// 3704     
// 3705     case TIM_CLEARINPUTSOURCE_ETR:
// 3706     {
// 3707       TIM_ETR_SetConfig(htim->Instance,
// 3708                         sClearInputConfig->ClearInputPrescaler,
// 3709                         sClearInputConfig->ClearInputPolarity,
// 3710                         sClearInputConfig->ClearInputFilter);
// 3711 
// 3712       /* Set the OCREF clear selection bit */
// 3713       SET_BIT(htim->Instance->SMCR, TIM_SMCR_OCCS);
// 3714     }
// 3715     break;
// 3716 
// 3717   default:
// 3718     break;
// 3719 
// 3720   }
// 3721 
// 3722   switch (Channel)
// 3723   {
// 3724     case TIM_CHANNEL_1:
// 3725       {
// 3726         if(sClearInputConfig->ClearInputState != RESET)
// 3727         {
// 3728           /* Enable the Ocref clear feature for Channel 1 */
// 3729           htim->Instance->CCMR1 |= TIM_CCMR1_OC1CE;
// 3730         }
// 3731         else
// 3732         {
// 3733           /* Disable the Ocref clear feature for Channel 1 */
// 3734           htim->Instance->CCMR1 &= ~TIM_CCMR1_OC1CE;
// 3735         }
// 3736       }
// 3737       break;
// 3738     case TIM_CHANNEL_2:
// 3739       {
// 3740         assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 3741         if(sClearInputConfig->ClearInputState != RESET)
// 3742         {
// 3743           /* Enable the Ocref clear feature for Channel 2 */
// 3744           htim->Instance->CCMR1 |= TIM_CCMR1_OC2CE;
// 3745         }
// 3746         else
// 3747         {
// 3748           /* Disable the Ocref clear feature for Channel 2 */
// 3749           htim->Instance->CCMR1 &= ~TIM_CCMR1_OC2CE;
// 3750         }
// 3751       }
// 3752     break;
// 3753     case TIM_CHANNEL_3:
// 3754       {
// 3755         assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 3756         if(sClearInputConfig->ClearInputState != RESET)
// 3757         {
// 3758           /* Enable the Ocref clear feature for Channel 3 */
// 3759           htim->Instance->CCMR2 |= TIM_CCMR2_OC3CE;
// 3760         }
// 3761         else
// 3762         {
// 3763           /* Disable the Ocref clear feature for Channel 3 */
// 3764           htim->Instance->CCMR2 &= ~TIM_CCMR2_OC3CE;
// 3765         }
// 3766       }
// 3767     break;
// 3768     case TIM_CHANNEL_4:
// 3769       {
// 3770         assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 3771         if(sClearInputConfig->ClearInputState != RESET)
// 3772         {
// 3773           /* Enable the Ocref clear feature for Channel 4 */
// 3774           htim->Instance->CCMR2 |= TIM_CCMR2_OC4CE;
// 3775         }
// 3776         else
// 3777         {
// 3778           /* Disable the Ocref clear feature for Channel 4 */
// 3779           htim->Instance->CCMR2 &= ~TIM_CCMR2_OC4CE;
// 3780         }
// 3781       }
// 3782     break;
// 3783     default:
// 3784     break;
// 3785   }
// 3786 
// 3787   htim->State = HAL_TIM_STATE_READY;
// 3788 
// 3789   __HAL_UNLOCK(htim);
// 3790 
// 3791   return HAL_OK;
// 3792 }
// 3793 
// 3794 /**
// 3795   * @brief   Configures the clock source to be used
// 3796   * @param  htim: TIM handle
// 3797   * @param  sClockSourceConfig: pointer to a TIM_ClockConfigTypeDef structure that
// 3798   *         contains the clock source information for the TIM peripheral.
// 3799   * @retval HAL status
// 3800   */
// 3801 HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, TIM_ClockConfigTypeDef * sClockSourceConfig)
// 3802 {
// 3803   uint32_t tmpsmcr = 0;
// 3804 
// 3805   /* Process Locked */
// 3806   __HAL_LOCK(htim);
// 3807 
// 3808   htim->State = HAL_TIM_STATE_BUSY;
// 3809 
// 3810   /* Check the parameters */
// 3811   assert_param(IS_TIM_CLOCKSOURCE(sClockSourceConfig->ClockSource));
// 3812 
// 3813   /* Reset the SMS, TS, ECE, ETPS and ETRF bits */
// 3814   tmpsmcr = htim->Instance->SMCR;
// 3815   tmpsmcr &= ~(TIM_SMCR_SMS | TIM_SMCR_TS);
// 3816   tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
// 3817   htim->Instance->SMCR = tmpsmcr;
// 3818 
// 3819   switch (sClockSourceConfig->ClockSource)
// 3820   {
// 3821   case TIM_CLOCKSOURCE_INTERNAL:
// 3822     {
// 3823       assert_param(IS_TIM_INSTANCE(htim->Instance));
// 3824       /* Disable slave mode to clock the prescaler directly with the internal clock */
// 3825       htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 3826     }
// 3827     break;
// 3828 
// 3829   case TIM_CLOCKSOURCE_ETRMODE1:
// 3830     {
// 3831       /* Check whether or not the timer instance supports external trigger input mode 1 (ETRF)*/
// 3832       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 3833 
// 3834       /* Check ETR input conditioning related parameters */
// 3835       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 3836       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 3837       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 3838       
// 3839       /* Configure the ETR Clock source */
// 3840       TIM_ETR_SetConfig(htim->Instance,
// 3841                         sClockSourceConfig->ClockPrescaler,
// 3842                         sClockSourceConfig->ClockPolarity,
// 3843                         sClockSourceConfig->ClockFilter);
// 3844       /* Get the TIMx SMCR register value */
// 3845       tmpsmcr = htim->Instance->SMCR;
// 3846       /* Reset the SMS and TS Bits */
// 3847       tmpsmcr &= ~(TIM_SMCR_SMS | TIM_SMCR_TS);
// 3848       /* Select the External clock mode1 and the ETRF trigger */
// 3849       tmpsmcr |= (TIM_SLAVEMODE_EXTERNAL1 | TIM_CLOCKSOURCE_ETRMODE1);
// 3850       /* Write to TIMx SMCR */
// 3851       htim->Instance->SMCR = tmpsmcr;
// 3852     }
// 3853     break;
// 3854 
// 3855   case TIM_CLOCKSOURCE_ETRMODE2:
// 3856     {
// 3857       /* Check whether or not the timer instance supports external trigger input mode 2 (ETRF)*/
// 3858       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE2_INSTANCE(htim->Instance));
// 3859 
// 3860       /* Check ETR input conditioning related parameters */
// 3861       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 3862       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 3863       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 3864       
// 3865       /* Configure the ETR Clock source */
// 3866       TIM_ETR_SetConfig(htim->Instance,
// 3867                         sClockSourceConfig->ClockPrescaler,
// 3868                         sClockSourceConfig->ClockPolarity,
// 3869                         sClockSourceConfig->ClockFilter);
// 3870       /* Enable the External clock mode2 */
// 3871       htim->Instance->SMCR |= TIM_SMCR_ECE;
// 3872     }
// 3873     break;
// 3874 
// 3875   case TIM_CLOCKSOURCE_TI1:
// 3876     {
// 3877       /* Check whether or not the timer instance supports external clock mode 1 */
// 3878       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 3879 
// 3880       /* Check TI1 input conditioning related parameters */
// 3881       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 3882       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 3883       
// 3884       TIM_TI1_ConfigInputStage(htim->Instance,
// 3885                                sClockSourceConfig->ClockPolarity,
// 3886                                sClockSourceConfig->ClockFilter);
// 3887       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1);
// 3888     }
// 3889     break;
// 3890   case TIM_CLOCKSOURCE_TI2:
// 3891     {
// 3892       /* Check whether or not the timer instance supports external clock mode 1 (ETRF)*/
// 3893       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 3894 
// 3895        /* Check TI2 input conditioning related parameters */
// 3896       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 3897       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 3898 
// 3899       TIM_TI2_ConfigInputStage(htim->Instance,
// 3900                                sClockSourceConfig->ClockPolarity,
// 3901                                sClockSourceConfig->ClockFilter);
// 3902       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI2);
// 3903     }
// 3904     break;
// 3905   case TIM_CLOCKSOURCE_TI1ED:
// 3906     {
// 3907       /* Check whether or not the timer instance supports external clock mode 1 */
// 3908       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 3909 
// 3910       /* Check TI1 input conditioning related parameters */
// 3911       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 3912       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 3913 
// 3914       TIM_TI1_ConfigInputStage(htim->Instance,
// 3915                                sClockSourceConfig->ClockPolarity,
// 3916                                sClockSourceConfig->ClockFilter);
// 3917       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1ED);
// 3918     }
// 3919     break;
// 3920   case TIM_CLOCKSOURCE_ITR0:
// 3921     {
// 3922       /* Check whether or not the timer instance supports external clock mode 1 */
// 3923       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 3924 
// 3925       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_ITR0);
// 3926     }
// 3927     break;
// 3928   case TIM_CLOCKSOURCE_ITR1:
// 3929     {
// 3930       /* Check whether or not the timer instance supports external clock mode 1 */
// 3931       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 3932 
// 3933       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_ITR1);
// 3934     }
// 3935     break;
// 3936   case TIM_CLOCKSOURCE_ITR2:
// 3937     {
// 3938       /* Check whether or not the timer instance supports external clock mode 1 */
// 3939       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 3940 
// 3941       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_ITR2);
// 3942     }
// 3943     break;
// 3944   case TIM_CLOCKSOURCE_ITR3:
// 3945     {
// 3946       /* Check whether or not the timer instance supports external clock mode 1 */
// 3947       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 3948 
// 3949       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_ITR3);
// 3950     }
// 3951     break;
// 3952 
// 3953   default:
// 3954     break;
// 3955   }
// 3956   htim->State = HAL_TIM_STATE_READY;
// 3957 
// 3958   __HAL_UNLOCK(htim);
// 3959 
// 3960   return HAL_OK;
// 3961 }
// 3962 
// 3963 /**
// 3964   * @brief  Selects the signal connected to the TI1 input: direct from CH1_input
// 3965   *         or a XOR combination between CH1_input, CH2_input & CH3_input
// 3966   * @param  htim: TIM handle.
// 3967   * @param  TI1_Selection: Indicate whether or not channel 1 is connected to the
// 3968   *         output of a XOR gate.
// 3969   *          This parameter can be one of the following values:
// 3970   *            @arg TIM_TI1SELECTION_CH1: The TIMx_CH1 pin is connected to TI1 input
// 3971   *            @arg TIM_TI1SELECTION_XORCOMBINATION: The TIMx_CH1, CH2 and CH3
// 3972   *            pins are connected to the TI1 input (XOR combination)
// 3973   * @retval HAL status
// 3974   */
// 3975 HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection)
// 3976 {
// 3977   uint32_t tmpcr2 = 0;
// 3978 
// 3979   /* Check the parameters */
// 3980   assert_param(IS_TIM_XOR_INSTANCE(htim->Instance));
// 3981   assert_param(IS_TIM_TI1SELECTION(TI1_Selection));
// 3982 
// 3983   /* Get the TIMx CR2 register value */
// 3984   tmpcr2 = htim->Instance->CR2;
// 3985 
// 3986   /* Reset the TI1 selection */
// 3987   tmpcr2 &= ~TIM_CR2_TI1S;
// 3988 
// 3989   /* Set the the TI1 selection */
// 3990   tmpcr2 |= TI1_Selection;
// 3991 
// 3992   /* Write to TIMxCR2 */
// 3993   htim->Instance->CR2 = tmpcr2;
// 3994 
// 3995   return HAL_OK;
// 3996 }
// 3997 
// 3998 /**
// 3999   * @brief  Configures the TIM in Slave mode
// 4000   * @param  htim : TIM handle.
// 4001   * @param  sSlaveConfig: pointer to a TIM_SlaveConfigTypeDef structure that
// 4002   *         contains the selected trigger (internal trigger input, filtered
// 4003   *         timer input or external trigger input) and the ) and the Slave 
// 4004   *         mode (Disable, Reset, Gated, Trigger, External clock mode 1). 
// 4005   * @retval HAL status
// 4006   */
// 4007 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchronization(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef * sSlaveConfig)
// 4008 {
// 4009   /* Check the parameters */
// 4010   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 4011   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 4012   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 4013    
// 4014   __HAL_LOCK(htim);
// 4015   
// 4016   htim->State = HAL_TIM_STATE_BUSY;
// 4017 
// 4018   TIM_SlaveTimer_SetConfig(htim, sSlaveConfig);
// 4019   
// 4020   /* Disable Trigger Interrupt */
// 4021   __HAL_TIM_DISABLE_IT(htim, TIM_IT_TRIGGER);
// 4022   
// 4023   /* Disable Trigger DMA request */
// 4024   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 4025   
// 4026   htim->State = HAL_TIM_STATE_READY;
// 4027      
// 4028   __HAL_UNLOCK(htim);  
// 4029   
// 4030   return HAL_OK;
// 4031 } 
// 4032 
// 4033 /**
// 4034   * @brief  Configures the TIM in Slave mode in interrupt mode
// 4035   * @param  htim: TIM handle.
// 4036   * @param  sSlaveConfig: pointer to a TIM_SlaveConfigTypeDef structure that
// 4037   *         contains the selected trigger (internal trigger input, filtered
// 4038   *         timer input or external trigger input) and the ) and the Slave 
// 4039   *         mode (Disable, Reset, Gated, Trigger, External clock mode 1). 
// 4040   * @retval HAL status
// 4041   */
// 4042 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchronization_IT(TIM_HandleTypeDef *htim, 
// 4043                                                         TIM_SlaveConfigTypeDef * sSlaveConfig)
// 4044 {
// 4045   /* Check the parameters */
// 4046   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 4047   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 4048   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 4049   
// 4050   __HAL_LOCK(htim);
// 4051 
// 4052   htim->State = HAL_TIM_STATE_BUSY;
// 4053   
// 4054   TIM_SlaveTimer_SetConfig(htim, sSlaveConfig);
// 4055   
// 4056   /* Enable Trigger Interrupt */
// 4057   __HAL_TIM_ENABLE_IT(htim, TIM_IT_TRIGGER);
// 4058   
// 4059   /* Disable Trigger DMA request */
// 4060   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 4061   
// 4062   htim->State = HAL_TIM_STATE_READY;
// 4063      
// 4064   __HAL_UNLOCK(htim);  
// 4065   
// 4066   return HAL_OK;
// 4067 }
// 4068 
// 4069 /**
// 4070   * @brief  Read the captured value from Capture Compare unit
// 4071   * @param  htim: TIM handle.
// 4072   * @param  Channel : TIM Channels to be enabled
// 4073   *          This parameter can be one of the following values:
// 4074   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4075   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4076   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 4077   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 4078   * @retval Captured value
// 4079   */
// 4080 uint32_t HAL_TIM_ReadCapturedValue(TIM_HandleTypeDef *htim, uint32_t Channel)
// 4081 {
// 4082   uint32_t tmpreg = 0;
// 4083 
// 4084   __HAL_LOCK(htim);
// 4085 
// 4086   switch (Channel)
// 4087   {
// 4088   case TIM_CHANNEL_1:
// 4089     {
// 4090       /* Check the parameters */
// 4091       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4092 
// 4093       /* Return the capture 1 value */
// 4094       tmpreg =  htim->Instance->CCR1;
// 4095 
// 4096       break;
// 4097     }
// 4098   case TIM_CHANNEL_2:
// 4099     {
// 4100       /* Check the parameters */
// 4101       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4102 
// 4103       /* Return the capture 2 value */
// 4104       tmpreg =   htim->Instance->CCR2;
// 4105 
// 4106       break;
// 4107     }
// 4108 
// 4109   case TIM_CHANNEL_3:
// 4110     {
// 4111       /* Check the parameters */
// 4112       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 4113 
// 4114       /* Return the capture 3 value */
// 4115       tmpreg =   htim->Instance->CCR3;
// 4116 
// 4117       break;
// 4118     }
// 4119 
// 4120   case TIM_CHANNEL_4:
// 4121     {
// 4122       /* Check the parameters */
// 4123       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 4124 
// 4125       /* Return the capture 4 value */
// 4126       tmpreg =   htim->Instance->CCR4;
// 4127 
// 4128       break;
// 4129     }
// 4130 
// 4131   default:
// 4132     break;
// 4133   }
// 4134 
// 4135   __HAL_UNLOCK(htim);
// 4136   return tmpreg;
// 4137 }
// 4138 
// 4139 /**
// 4140   * @}
// 4141   */
// 4142 
// 4143 /** @defgroup TIM_Exported_Functions_Group9 TIM Callbacks functions
// 4144  *  @brief    TIM Callbacks functions
// 4145  *
// 4146 @verbatim
// 4147   ==============================================================================
// 4148                         ##### TIM Callbacks functions #####
// 4149   ==============================================================================
// 4150  [..]
// 4151    This section provides TIM callback functions:
// 4152    (+) Timer Period elapsed callback
// 4153    (+) Timer Output Compare callback
// 4154    (+) Timer Input capture callback
// 4155    (+) Timer Trigger callback
// 4156    (+) Timer Error callback
// 4157 
// 4158 @endverbatim
// 4159   * @{
// 4160   */
// 4161 
// 4162 /**
// 4163   * @brief  Period elapsed callback in non blocking mode
// 4164   * @param  htim : TIM handle
// 4165   * @retval None
// 4166   */
// 4167 __weak void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
// 4168 {
// 4169   /* Prevent unused argument(s) compilation warning */
// 4170   UNUSED(htim);
// 4171 
// 4172   /* NOTE : This function Should not be modified, when the callback is needed,
// 4173             the __HAL_TIM_PeriodElapsedCallback could be implemented in the user file
// 4174    */
// 4175 
// 4176 }
// 4177 /**
// 4178   * @brief  Output Compare callback in non blocking mode
// 4179   * @param  htim : TIM OC handle
// 4180   * @retval None
// 4181   */
// 4182 __weak void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim)
// 4183 {
// 4184   /* Prevent unused argument(s) compilation warning */
// 4185   UNUSED(htim);
// 4186 
// 4187   /* NOTE : This function Should not be modified, when the callback is needed,
// 4188             the __HAL_TIM_OC_DelayElapsedCallback could be implemented in the user file
// 4189    */
// 4190 }
// 4191 /**
// 4192   * @brief  Input Capture callback in non blocking mode
// 4193   * @param  htim : TIM IC handle
// 4194   * @retval None
// 4195   */
// 4196 __weak void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
// 4197 {
// 4198   /* Prevent unused argument(s) compilation warning */
// 4199   UNUSED(htim);
// 4200 
// 4201   /* NOTE : This function Should not be modified, when the callback is needed,
// 4202             the __HAL_TIM_IC_CaptureCallback could be implemented in the user file
// 4203    */
// 4204 }
// 4205 
// 4206 /**
// 4207   * @brief  PWM Pulse finished callback in non blocking mode
// 4208   * @param  htim : TIM handle
// 4209   * @retval None
// 4210   */
// 4211 __weak void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
// 4212 {
// 4213   /* Prevent unused argument(s) compilation warning */
// 4214   UNUSED(htim);
// 4215 
// 4216   /* NOTE : This function Should not be modified, when the callback is needed,
// 4217             the __HAL_TIM_PWM_PulseFinishedCallback could be implemented in the user file
// 4218    */
// 4219 }
// 4220 
// 4221 /**
// 4222   * @brief  Hall Trigger detection callback in non blocking mode
// 4223   * @param  htim : TIM handle
// 4224   * @retval None
// 4225   */
// 4226 __weak void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim)
// 4227 {
// 4228   /* Prevent unused argument(s) compilation warning */
// 4229   UNUSED(htim);
// 4230 
// 4231   /* NOTE : This function Should not be modified, when the callback is needed,
// 4232             the HAL_TIM_TriggerCallback could be implemented in the user file
// 4233    */
// 4234 }
// 4235 
// 4236 /**
// 4237   * @brief  Timer error callback in non blocking mode
// 4238   * @param  htim : TIM handle
// 4239   * @retval None
// 4240   */
// 4241 __weak void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim)
// 4242 {
// 4243   /* Prevent unused argument(s) compilation warning */
// 4244   UNUSED(htim);
// 4245 
// 4246   /* NOTE : This function Should not be modified, when the callback is needed,
// 4247             the HAL_TIM_ErrorCallback could be implemented in the user file
// 4248    */
// 4249 }
// 4250 
// 4251 /**
// 4252   * @}
// 4253   */
// 4254 
// 4255 /** @defgroup TIM_Exported_Functions_Group10 Peripheral State functions
// 4256  *  @brief   Peripheral State functions
// 4257  *
// 4258 @verbatim
// 4259   ==============================================================================
// 4260                         ##### Peripheral State functions #####
// 4261   ==============================================================================
// 4262     [..]
// 4263     This subsection permit to get in run-time the status of the peripheral
// 4264     and the data flow.
// 4265 
// 4266 @endverbatim
// 4267   * @{
// 4268   */
// 4269 
// 4270 /**
// 4271   * @brief  Return the TIM Base state
// 4272   * @param  htim: TIM Base handle
// 4273   * @retval HAL state
// 4274   */
// 4275 HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(TIM_HandleTypeDef *htim)
// 4276 {
// 4277   return htim->State;
// 4278 }
// 4279 
// 4280 /**
// 4281   * @brief  Return the TIM OC state
// 4282   * @param  htim: TIM Ouput Compare handle
// 4283   * @retval HAL state
// 4284   */
// 4285 HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(TIM_HandleTypeDef *htim)
// 4286 {
// 4287   return htim->State;
// 4288 }
// 4289 
// 4290 /**
// 4291   * @brief  Return the TIM PWM state
// 4292   * @param  htim: TIM handle
// 4293   * @retval HAL state
// 4294   */
// 4295 HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(TIM_HandleTypeDef *htim)
// 4296 {
// 4297   return htim->State;
// 4298 }
// 4299 
// 4300 /**
// 4301   * @brief  Return the TIM Input Capture state
// 4302   * @param  htim: TIM IC handle
// 4303   * @retval HAL state
// 4304   */
// 4305 HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(TIM_HandleTypeDef *htim)
// 4306 {
// 4307   return htim->State;
// 4308 }
// 4309 
// 4310 /**
// 4311   * @brief  Return the TIM One Pulse Mode state
// 4312   * @param  htim: TIM OPM handle
// 4313   * @retval HAL state
// 4314   */
// 4315 HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(TIM_HandleTypeDef *htim)
// 4316 {
// 4317   return htim->State;
// 4318 }
// 4319 
// 4320 /**
// 4321   * @brief  Return the TIM Encoder Mode state
// 4322   * @param  htim: TIM Encoder handle
// 4323   * @retval HAL state
// 4324   */
// 4325 HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(TIM_HandleTypeDef *htim)
// 4326 {
// 4327   return htim->State;
// 4328 }
// 4329 
// 4330 /**
// 4331   * @brief  TIM DMA error callback
// 4332   * @param  hdma : pointer to DMA handle.
// 4333   * @retval None
// 4334   */
// 4335 void TIM_DMAError(DMA_HandleTypeDef *hdma)
// 4336 {
// 4337   TIM_HandleTypeDef* htim = ( TIM_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 4338 
// 4339   htim->State= HAL_TIM_STATE_READY;
// 4340 
// 4341   HAL_TIM_ErrorCallback(htim);
// 4342 }
// 4343 
// 4344 /**
// 4345   * @brief  TIM DMA Delay Pulse complete callback.
// 4346   * @param  hdma : pointer to DMA handle.
// 4347   * @retval None
// 4348   */
// 4349 void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma)
// 4350 {
// 4351   TIM_HandleTypeDef* htim = ( TIM_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 4352 
// 4353   htim->State= HAL_TIM_STATE_READY;
// 4354 
// 4355   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 4356   {
// 4357     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 4358   }
// 4359   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 4360   {
// 4361     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 4362   }
// 4363   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 4364   {
// 4365     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 4366   }
// 4367   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 4368   {
// 4369     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 4370   }
// 4371 
// 4372   HAL_TIM_PWM_PulseFinishedCallback(htim);
// 4373 
// 4374   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 4375 }
// 4376 
// 4377 /**
// 4378   * @brief  TIM DMA Capture complete callback.
// 4379   * @param  hdma : pointer to DMA handle.
// 4380   * @retval None
// 4381   */
// 4382 void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma)
// 4383 {
// 4384   TIM_HandleTypeDef* htim = ( TIM_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 4385 
// 4386   htim->State= HAL_TIM_STATE_READY;
// 4387 
// 4388   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 4389   {
// 4390     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 4391   }
// 4392   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 4393   {
// 4394     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 4395   }
// 4396   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 4397   {
// 4398     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 4399   }
// 4400   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 4401   {
// 4402     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 4403   }
// 4404 
// 4405   HAL_TIM_IC_CaptureCallback(htim);
// 4406 
// 4407   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 4408 }
// 4409 
// 4410 /**
// 4411   * @}
// 4412   */
// 4413 
// 4414 /**
// 4415   * @}
// 4416   */
// 4417 
// 4418 
// 4419 /** @addtogroup TIM_Private_Functions
// 4420   * @{
// 4421   */
// 4422 
// 4423 /**
// 4424   * @brief  TIM DMA Period Elapse complete callback.
// 4425   * @param  hdma : pointer to DMA handle.
// 4426   * @retval None
// 4427   */
// 4428 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma)
// 4429 {
// 4430   TIM_HandleTypeDef* htim = ( TIM_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 4431 
// 4432   htim->State= HAL_TIM_STATE_READY;
// 4433 
// 4434   HAL_TIM_PeriodElapsedCallback(htim);
// 4435 }
// 4436 
// 4437 /**
// 4438   * @brief  TIM DMA Trigger callback.
// 4439   * @param  hdma : pointer to DMA handle.
// 4440   * @retval None
// 4441   */
// 4442 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma)
// 4443 {
// 4444   TIM_HandleTypeDef* htim = ( TIM_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 4445 
// 4446   htim->State= HAL_TIM_STATE_READY;
// 4447 
// 4448   HAL_TIM_TriggerCallback(htim);
// 4449 }
// 4450 
// 4451 /**
// 4452   * @brief  Time Base configuration
// 4453   * @param  TIMx: TIM periheral
// 4454   * @param  Structure: TIM Base configuration structure
// 4455   * @retval None
// 4456   */
// 4457 static void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure)
// 4458 {
// 4459   uint32_t tmpcr1 = 0;
// 4460   tmpcr1 = TIMx->CR1;
// 4461 
// 4462   /* Set TIM Time Base Unit parameters ---------------------------------------*/
// 4463   if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
// 4464   {
// 4465     /* Select the Counter Mode */
// 4466     tmpcr1 &= ~(TIM_CR1_DIR | TIM_CR1_CMS);
// 4467     tmpcr1 |= Structure->CounterMode;
// 4468   }
// 4469 
// 4470   if(IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
// 4471   {
// 4472     /* Set the clock division */
// 4473     tmpcr1 &= ~TIM_CR1_CKD;
// 4474     tmpcr1 |= (uint32_t)Structure->ClockDivision;
// 4475   }
// 4476 
// 4477   TIMx->CR1 = tmpcr1;
// 4478 
// 4479   /* Set the Autoreload value */
// 4480   TIMx->ARR = (uint32_t)Structure->Period ;
// 4481 
// 4482   /* Set the Prescaler value */
// 4483   TIMx->PSC = (uint32_t)Structure->Prescaler;
// 4484 
// 4485   /* Generate an update event to reload the Prescaler */
// 4486   TIMx->EGR = TIM_EGR_UG;
// 4487 }
// 4488 
// 4489 /**
// 4490   * @brief  Time Ouput Compare 1 configuration
// 4491   * @param  TIMx to select the TIM peripheral
// 4492   * @param  OC_Config: The ouput configuration structure
// 4493   * @retval None
// 4494   */
// 4495 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 4496 {
// 4497   uint32_t tmpccmrx = 0;
// 4498   uint32_t tmpccer = 0;
// 4499   uint32_t tmpcr2 = 0;
// 4500 
// 4501    /* Disable the Channel 1: Reset the CC1E Bit */
// 4502   TIMx->CCER &= ~TIM_CCER_CC1E;
// 4503 
// 4504   /* Get the TIMx CCER register value */
// 4505   tmpccer = TIMx->CCER;
// 4506   /* Get the TIMx CR2 register value */
// 4507   tmpcr2 =  TIMx->CR2;
// 4508 
// 4509   /* Get the TIMx CCMR1 register value */
// 4510   tmpccmrx = TIMx->CCMR1;
// 4511 
// 4512   /* Reset the Output Compare Mode Bits */
// 4513   tmpccmrx &= ~TIM_CCMR1_OC1M;
// 4514   tmpccmrx &= ~TIM_CCMR1_CC1S;
// 4515   /* Select the Output Compare Mode */
// 4516   tmpccmrx |= OC_Config->OCMode;
// 4517 
// 4518   /* Reset the Output Polarity level */
// 4519   tmpccer &= ~TIM_CCER_CC1P;
// 4520   /* Set the Output Compare Polarity */
// 4521   tmpccer |= OC_Config->OCPolarity;
// 4522 
// 4523   /* Write to TIMx CR2 */
// 4524   TIMx->CR2 = tmpcr2;
// 4525 
// 4526   /* Write to TIMx CCMR1 */
// 4527   TIMx->CCMR1 = tmpccmrx;
// 4528 
// 4529   /* Set the Capture Compare Register value */
// 4530   TIMx->CCR1 = OC_Config->Pulse;
// 4531 
// 4532   /* Write to TIMx CCER */
// 4533   TIMx->CCER = tmpccer;
// 4534 }
// 4535 
// 4536 /**
// 4537   * @brief  Time Ouput Compare 2 configuration
// 4538   * @param  TIMx to select the TIM peripheral
// 4539   * @param  OC_Config: The ouput configuration structure
// 4540   * @retval None
// 4541   */
// 4542 static void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 4543 {
// 4544   uint32_t tmpccmrx = 0;
// 4545   uint32_t tmpccer = 0;
// 4546   uint32_t tmpcr2 = 0;
// 4547 
// 4548   /* Disable the Channel 2: Reset the CC2E Bit */
// 4549   TIMx->CCER &= ~TIM_CCER_CC2E;
// 4550 
// 4551   /* Get the TIMx CCER register value */
// 4552   tmpccer = TIMx->CCER;
// 4553   /* Get the TIMx CR2 register value */
// 4554   tmpcr2 =  TIMx->CR2;
// 4555 
// 4556   /* Get the TIMx CCMR1 register value */
// 4557   tmpccmrx = TIMx->CCMR1;
// 4558 
// 4559   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 4560   tmpccmrx &= ~TIM_CCMR1_OC2M;
// 4561   tmpccmrx &= ~TIM_CCMR1_CC2S;
// 4562 
// 4563   /* Select the Output Compare Mode */
// 4564   tmpccmrx |= (OC_Config->OCMode << 8);
// 4565 
// 4566   /* Reset the Output Polarity level */
// 4567   tmpccer &= ~TIM_CCER_CC2P;
// 4568   /* Set the Output Compare Polarity */
// 4569   tmpccer |= (OC_Config->OCPolarity << 4);
// 4570 
// 4571   /* Write to TIMx CR2 */
// 4572   TIMx->CR2 = tmpcr2;
// 4573 
// 4574   /* Write to TIMx CCMR1 */
// 4575   TIMx->CCMR1 = tmpccmrx;
// 4576 
// 4577   /* Set the Capture Compare Register value */
// 4578   TIMx->CCR2 = OC_Config->Pulse;
// 4579 
// 4580   /* Write to TIMx CCER */
// 4581   TIMx->CCER = tmpccer;
// 4582 }
// 4583 
// 4584 /**
// 4585   * @brief  Time Ouput Compare 3 configuration
// 4586   * @param  TIMx to select the TIM peripheral
// 4587   * @param  OC_Config: The ouput configuration structure
// 4588   * @retval None
// 4589   */
// 4590 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 4591 {
// 4592   uint32_t tmpccmrx = 0;
// 4593   uint32_t tmpccer = 0;
// 4594   uint32_t tmpcr2 = 0;
// 4595 
// 4596   /* Disable the Channel 3: Reset the CC2E Bit */
// 4597   TIMx->CCER &= ~TIM_CCER_CC3E;
// 4598 
// 4599   /* Get the TIMx CCER register value */
// 4600   tmpccer = TIMx->CCER;
// 4601   /* Get the TIMx CR2 register value */
// 4602   tmpcr2 =  TIMx->CR2;
// 4603 
// 4604   /* Get the TIMx CCMR2 register value */
// 4605   tmpccmrx = TIMx->CCMR2;
// 4606 
// 4607   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 4608   tmpccmrx &= ~TIM_CCMR2_OC3M;
// 4609   tmpccmrx &= ~TIM_CCMR2_CC3S;
// 4610   /* Select the Output Compare Mode */
// 4611   tmpccmrx |= OC_Config->OCMode;
// 4612 
// 4613   /* Reset the Output Polarity level */
// 4614   tmpccer &= ~TIM_CCER_CC3P;
// 4615   /* Set the Output Compare Polarity */
// 4616   tmpccer |= (OC_Config->OCPolarity << 8);
// 4617 
// 4618   /* Write to TIMx CR2 */
// 4619   TIMx->CR2 = tmpcr2;
// 4620 
// 4621   /* Write to TIMx CCMR2 */
// 4622   TIMx->CCMR2 = tmpccmrx;
// 4623 
// 4624   /* Set the Capture Compare Register value */
// 4625   TIMx->CCR3 = OC_Config->Pulse;
// 4626 
// 4627   /* Write to TIMx CCER */
// 4628   TIMx->CCER = tmpccer;
// 4629 }
// 4630 
// 4631 /**
// 4632   * @brief  Time Ouput Compare 4 configuration
// 4633   * @param  TIMx to select the TIM peripheral
// 4634   * @param  OC_Config: The ouput configuration structure
// 4635   * @retval None
// 4636   */
// 4637 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config)
// 4638 {
// 4639   uint32_t tmpccmrx = 0;
// 4640   uint32_t tmpccer = 0;
// 4641   uint32_t tmpcr2 = 0;
// 4642 
// 4643   /* Disable the Channel 4: Reset the CC4E Bit */
// 4644   TIMx->CCER &= ~TIM_CCER_CC4E;
// 4645 
// 4646   /* Get the TIMx CCER register value */
// 4647   tmpccer = TIMx->CCER;
// 4648   /* Get the TIMx CR2 register value */
// 4649   tmpcr2 =  TIMx->CR2;
// 4650 
// 4651   /* Get the TIMx CCMR2 register value */
// 4652   tmpccmrx = TIMx->CCMR2;
// 4653 
// 4654   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 4655   tmpccmrx &= ~TIM_CCMR2_OC4M;
// 4656   tmpccmrx &= ~TIM_CCMR2_CC4S;
// 4657 
// 4658   /* Select the Output Compare Mode */
// 4659   tmpccmrx |= (OC_Config->OCMode << 8);
// 4660 
// 4661   /* Reset the Output Polarity level */
// 4662   tmpccer &= ~TIM_CCER_CC4P;
// 4663   /* Set the Output Compare Polarity */
// 4664   tmpccer |= (OC_Config->OCPolarity << 12);
// 4665 
// 4666   /* Write to TIMx CR2 */
// 4667   TIMx->CR2 = tmpcr2;
// 4668 
// 4669   /* Write to TIMx CCMR2 */
// 4670   TIMx->CCMR2 = tmpccmrx;
// 4671 
// 4672   /* Set the Capture Compare Register value */
// 4673   TIMx->CCR4 = OC_Config->Pulse;
// 4674 
// 4675   /* Write to TIMx CCER */
// 4676   TIMx->CCER = tmpccer;
// 4677 }
// 4678 
// 4679 
// 4680 /**
// 4681   * @brief  Time Slave configuration
// 4682   * @param  htim: pointer to a TIM_HandleTypeDef structure that contains
// 4683   *                the configuration information for TIM module.
// 4684   * @param  sSlaveConfig: The slave configuration structure
// 4685   * @retval None
// 4686   */
// 4687 static void TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim,
// 4688                               TIM_SlaveConfigTypeDef * sSlaveConfig)
// 4689 {
// 4690   uint32_t tmpsmcr = 0;
// 4691   uint32_t tmpccmr1 = 0;
// 4692   uint32_t tmpccer = 0;
// 4693 
// 4694  /* Get the TIMx SMCR register value */
// 4695   tmpsmcr = htim->Instance->SMCR;
// 4696 
// 4697   /* Reset the Trigger Selection Bits */
// 4698   tmpsmcr &= ~TIM_SMCR_TS;
// 4699   /* Set the Input Trigger source */
// 4700   tmpsmcr |= sSlaveConfig->InputTrigger;
// 4701 
// 4702   /* Reset the slave mode Bits */
// 4703   tmpsmcr &= ~TIM_SMCR_SMS;
// 4704   /* Set the slave mode */
// 4705   tmpsmcr |= sSlaveConfig->SlaveMode;
// 4706 
// 4707   /* Write to TIMx SMCR */
// 4708   htim->Instance->SMCR = tmpsmcr;
// 4709   
// 4710   /* Configure the trigger prescaler, filter, and polarity */
// 4711   switch (sSlaveConfig->InputTrigger)
// 4712   {
// 4713   case TIM_TS_ETRF:
// 4714     {
// 4715       /* Check the parameters */
// 4716       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 4717       assert_param(IS_TIM_TRIGGERPRESCALER(sSlaveConfig->TriggerPrescaler));
// 4718       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 4719       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 4720       /* Configure the ETR Trigger source */
// 4721       TIM_ETR_SetConfig(htim->Instance, 
// 4722                         sSlaveConfig->TriggerPrescaler, 
// 4723                         sSlaveConfig->TriggerPolarity, 
// 4724                         sSlaveConfig->TriggerFilter);
// 4725     }
// 4726     break;
// 4727     
// 4728   case TIM_TS_TI1F_ED:
// 4729     {
// 4730       /* Check the parameters */
// 4731       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4732       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 4733       
// 4734       /* Disable the Channel 1: Reset the CC1E Bit */
// 4735       tmpccer = htim->Instance->CCER;
// 4736       htim->Instance->CCER &= ~TIM_CCER_CC1E;
// 4737       tmpccmr1 = htim->Instance->CCMR1;    
// 4738       
// 4739       /* Set the filter */
// 4740       tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 4741       tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4);
// 4742       
// 4743       /* Write to TIMx CCMR1 and CCER registers */
// 4744       htim->Instance->CCMR1 = tmpccmr1;
// 4745       htim->Instance->CCER = tmpccer;                               
// 4746                                
// 4747     }
// 4748     break;
// 4749     
// 4750   case TIM_TS_TI1FP1:
// 4751     {
// 4752       /* Check the parameters */
// 4753       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4754       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 4755       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 4756 
// 4757       /* Configure TI1 Filter and Polarity */
// 4758       TIM_TI1_ConfigInputStage(htim->Instance,
// 4759                                sSlaveConfig->TriggerPolarity,
// 4760                                sSlaveConfig->TriggerFilter);
// 4761     }
// 4762     break;
// 4763     
// 4764   case TIM_TS_TI2FP2:
// 4765     {
// 4766       /* Check the parameters */
// 4767       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4768       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 4769       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 4770       
// 4771       /* Configure TI2 Filter and Polarity */
// 4772       TIM_TI2_ConfigInputStage(htim->Instance,
// 4773                                 sSlaveConfig->TriggerPolarity,
// 4774                                 sSlaveConfig->TriggerFilter);
// 4775     }
// 4776     break;
// 4777     
// 4778   case TIM_TS_ITR0:
// 4779     {
// 4780       /* Check the parameter */
// 4781       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4782     }
// 4783     break;
// 4784     
// 4785   case TIM_TS_ITR1:
// 4786     {
// 4787       /* Check the parameter */
// 4788       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4789     }
// 4790     break;
// 4791     
// 4792   case TIM_TS_ITR2:
// 4793     {
// 4794       /* Check the parameter */
// 4795       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4796     }
// 4797     break;
// 4798     
// 4799   case TIM_TS_ITR3:
// 4800     {
// 4801       /* Check the parameter */
// 4802       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4803     }
// 4804     break;
// 4805        
// 4806   default:
// 4807     break;
// 4808   }
// 4809 }
// 4810 
// 4811 /**
// 4812   * @brief  Configure the TI1 as Input.
// 4813   * @param  TIMx to select the TIM peripheral.
// 4814   * @param  TIM_ICPolarity : The Input Polarity.
// 4815   *          This parameter can be one of the following values:
// 4816   *            @arg TIM_ICPOLARITY_RISING
// 4817   *            @arg TIM_ICPOLARITY_FALLING
// 4818   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 4819   * @param  TIM_ICSelection: specifies the input to be used.
// 4820   *          This parameter can be one of the following values:
// 4821   *            @arg TIM_ICSELECTION_DIRECTTI:    TIM Input 1 is selected to be connected to IC1.
// 4822   *            @arg TIM_ICSELECTION_INDIRECTTI:  TIM Input 1 is selected to be connected to IC2.
// 4823   *            @arg TIM_ICSELECTION_TRC:         TIM Input 1 is selected to be connected to TRC.
// 4824   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 4825   *          This parameter must be a value between 0x00 and 0x0F.
// 4826   * @retval None
// 4827   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI2FP1 
// 4828   *       (on channel2 path) is used as the input signal. Therefore CCMR1 must be 
// 4829   *        protected against un-initialized filter and polarity values.
// 4830   */
// 4831 static void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 4832                        uint32_t TIM_ICFilter)
// 4833 {
// 4834   uint32_t tmpccmr1 = 0;
// 4835   uint32_t tmpccer = 0;
// 4836 
// 4837   /* Disable the Channel 1: Reset the CC1E Bit */
// 4838   TIMx->CCER &= ~TIM_CCER_CC1E;
// 4839   tmpccmr1 = TIMx->CCMR1;
// 4840   tmpccer = TIMx->CCER;
// 4841 
// 4842   /* Select the Input */
// 4843   if(IS_TIM_CC2_INSTANCE(TIMx) != RESET)
// 4844   {
// 4845     tmpccmr1 &= ~TIM_CCMR1_CC1S;
// 4846     tmpccmr1 |= TIM_ICSelection;
// 4847   }
// 4848   else
// 4849   {
// 4850     tmpccmr1 |= TIM_CCMR1_CC1S_0;
// 4851   }
// 4852 
// 4853   /* Set the filter */
// 4854   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 4855   tmpccmr1 |= ((TIM_ICFilter << 4) & TIM_CCMR1_IC1F);
// 4856 
// 4857   /* Select the Polarity and set the CC1E Bit */
// 4858   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 4859   tmpccer |= (TIM_ICPolarity & (TIM_CCER_CC1P | TIM_CCER_CC1NP));
// 4860 
// 4861   /* Write to TIMx CCMR1 and CCER registers */
// 4862   TIMx->CCMR1 = tmpccmr1;
// 4863   TIMx->CCER = tmpccer;
// 4864 }
// 4865 
// 4866 /**
// 4867   * @brief  Configure the Polarity and Filter for TI1.
// 4868   * @param  TIMx to select the TIM peripheral.
// 4869   * @param  TIM_ICPolarity : The Input Polarity.
// 4870   *          This parameter can be one of the following values:
// 4871   *            @arg TIM_ICPOLARITY_RISING   
// 4872   *            @arg TIM_ICPOLARITY_FALLING  
// 4873   *            @arg TIM_ICPOLARITY_BOTHEDGE 
// 4874   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 4875   *          This parameter must be a value between 0x00 and 0x0F.
// 4876   * @retval None
// 4877   */
// 4878 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 4879 {
// 4880   uint32_t tmpccmr1 = 0;
// 4881   uint32_t tmpccer = 0;
// 4882 
// 4883   /* Disable the Channel 1: Reset the CC1E Bit */
// 4884   tmpccer = TIMx->CCER;
// 4885   TIMx->CCER &= ~TIM_CCER_CC1E;
// 4886   tmpccmr1 = TIMx->CCMR1;
// 4887 
// 4888   /* Set the filter */
// 4889   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 4890   tmpccmr1 |= (TIM_ICFilter << 4);
// 4891 
// 4892   /* Select the Polarity and set the CC1E Bit */
// 4893   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 4894   tmpccer |= TIM_ICPolarity;
// 4895 
// 4896   /* Write to TIMx CCMR1 and CCER registers */
// 4897   TIMx->CCMR1 = tmpccmr1;
// 4898   TIMx->CCER = tmpccer;
// 4899 }
// 4900 
// 4901 /**
// 4902   * @brief  Configure the TI2 as Input.
// 4903   * @param  TIMx to select the TIM peripheral
// 4904   * @param  TIM_ICPolarity : The Input Polarity.
// 4905   *          This parameter can be one of the following values:
// 4906   *            @arg TIM_ICPOLARITY_RISING   
// 4907   *            @arg TIM_ICPOLARITY_FALLING  
// 4908   *            @arg TIM_ICPOLARITY_BOTHEDGE 
// 4909   * @param  TIM_ICSelection: specifies the input to be used.
// 4910   *          This parameter can be one of the following values:
// 4911   *            @arg TIM_ICSELECTION_DIRECTTI:   TIM Input 2 is selected to be connected to IC2.
// 4912   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 2 is selected to be connected to IC1.
// 4913   *            @arg TIM_ICSELECTION_TRC:        TIM Input 2 is selected to be connected to TRC.
// 4914   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 4915   *          This parameter must be a value between 0x00 and 0x0F.
// 4916   * @retval None
// 4917   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI1FP2 
// 4918   *       (on channel1 path) is used as the input signal. Therefore CCMR1 must be 
// 4919   *        protected against un-initialized filter and polarity values.
// 4920   */
// 4921 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 4922                        uint32_t TIM_ICFilter)
// 4923 {
// 4924   uint32_t tmpccmr1 = 0;
// 4925   uint32_t tmpccer = 0;
// 4926 
// 4927   /* Disable the Channel 2: Reset the CC2E Bit */
// 4928   TIMx->CCER &= ~TIM_CCER_CC2E;
// 4929   tmpccmr1 = TIMx->CCMR1;
// 4930   tmpccer = TIMx->CCER;
// 4931 
// 4932   /* Select the Input */
// 4933   tmpccmr1 &= ~TIM_CCMR1_CC2S;
// 4934   tmpccmr1 |= (TIM_ICSelection << 8);
// 4935 
// 4936   /* Set the filter */
// 4937   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 4938   tmpccmr1 |= ((TIM_ICFilter << 12) & TIM_CCMR1_IC2F);
// 4939 
// 4940   /* Select the Polarity and set the CC2E Bit */
// 4941   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 4942   tmpccer |= ((TIM_ICPolarity << 4) & (TIM_CCER_CC2P | TIM_CCER_CC2NP));
// 4943 
// 4944   /* Write to TIMx CCMR1 and CCER registers */
// 4945   TIMx->CCMR1 = tmpccmr1 ;
// 4946   TIMx->CCER = tmpccer;
// 4947 }
// 4948 
// 4949 /**
// 4950   * @brief  Configure the Polarity and Filter for TI2.
// 4951   * @param  TIMx to select the TIM peripheral.
// 4952   * @param  TIM_ICPolarity : The Input Polarity.
// 4953   *          This parameter can be one of the following values:
// 4954   *            @arg TIM_ICPOLARITY_RISING  
// 4955   *            @arg TIM_ICPOLARITY_FALLING 
// 4956   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 4957   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 4958   *          This parameter must be a value between 0x00 and 0x0F.
// 4959   * @retval None
// 4960   */
// 4961 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 4962 {
// 4963   uint32_t tmpccmr1 = 0;
// 4964   uint32_t tmpccer = 0;
// 4965 
// 4966   /* Disable the Channel 2: Reset the CC2E Bit */
// 4967   TIMx->CCER &= ~TIM_CCER_CC2E;
// 4968   tmpccmr1 = TIMx->CCMR1;
// 4969   tmpccer = TIMx->CCER;
// 4970 
// 4971   /* Set the filter */
// 4972   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 4973   tmpccmr1 |= (TIM_ICFilter << 12);
// 4974 
// 4975   /* Select the Polarity and set the CC2E Bit */
// 4976   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 4977   tmpccer |= (TIM_ICPolarity << 4);
// 4978 
// 4979   /* Write to TIMx CCMR1 and CCER registers */
// 4980   TIMx->CCMR1 = tmpccmr1 ;
// 4981   TIMx->CCER = tmpccer;
// 4982 }
// 4983 
// 4984 /**
// 4985   * @brief  Configure the TI3 as Input.
// 4986   * @param  TIMx to select the TIM peripheral
// 4987   * @param  TIM_ICPolarity : The Input Polarity.
// 4988   *          This parameter can be one of the following values:
// 4989   *            @arg TIM_ICPOLARITY_RISING  
// 4990   *            @arg TIM_ICPOLARITY_FALLING 
// 4991   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 4992   * @param  TIM_ICSelection: specifies the input to be used.
// 4993   *          This parameter can be one of the following values:
// 4994   *            @arg TIM_ICSELECTION_DIRECTTI:   TIM Input 3 is selected to be connected to IC3.
// 4995   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 3 is selected to be connected to IC4.
// 4996   *            @arg TIM_ICSELECTION_TRC:        TIM Input 3 is selected to be connected to TRC.
// 4997   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 4998   *          This parameter must be a value between 0x00 and 0x0F.
// 4999   * @retval None
// 5000   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI3FP4 
// 5001   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be 
// 5002   *        protected against un-initialized filter and polarity values.
// 5003   */
// 5004 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 5005                        uint32_t TIM_ICFilter)
// 5006 {
// 5007   uint32_t tmpccmr2 = 0;
// 5008   uint32_t tmpccer = 0;
// 5009 
// 5010   /* Disable the Channel 3: Reset the CC3E Bit */
// 5011   TIMx->CCER &= ~TIM_CCER_CC3E;
// 5012   tmpccmr2 = TIMx->CCMR2;
// 5013   tmpccer = TIMx->CCER;
// 5014 
// 5015   /* Select the Input */
// 5016   tmpccmr2 &= ~TIM_CCMR2_CC3S;
// 5017   tmpccmr2 |= TIM_ICSelection;
// 5018 
// 5019   /* Set the filter */
// 5020   tmpccmr2 &= ~TIM_CCMR2_IC3F;
// 5021   tmpccmr2 |= ((TIM_ICFilter << 4) & TIM_CCMR2_IC3F);
// 5022 
// 5023   /* Select the Polarity and set the CC3E Bit */
// 5024   tmpccer &= ~(TIM_CCER_CC3P | TIM_CCER_CC3NP);
// 5025   tmpccer |= ((TIM_ICPolarity << 8) & (TIM_CCER_CC3P | TIM_CCER_CC3NP));
// 5026 
// 5027   /* Write to TIMx CCMR2 and CCER registers */
// 5028   TIMx->CCMR2 = tmpccmr2;
// 5029   TIMx->CCER = tmpccer;
// 5030 }
// 5031 
// 5032 /**
// 5033   * @brief  Configure the TI4 as Input.
// 5034   * @param  TIMx to select the TIM peripheral
// 5035   * @param  TIM_ICPolarity : The Input Polarity.
// 5036   *          This parameter can be one of the following values:
// 5037   *            @arg TIM_ICPOLARITY_RISING  
// 5038   *            @arg TIM_ICPOLARITY_FALLING 
// 5039   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 5040   * @param  TIM_ICSelection: specifies the input to be used.
// 5041   *          This parameter can be one of the following values:
// 5042   *            @arg TIM_ICSELECTION_DIRECTTI:   TIM Input 4 is selected to be connected to IC4.
// 5043   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 4 is selected to be connected to IC3.
// 5044   *            @arg TIM_ICSELECTION_TRC:        TIM Input 4 is selected to be connected to TRC.
// 5045   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 5046   *          This parameter must be a value between 0x00 and 0x0F.
// 5047   * @retval None
// 5048   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI4FP3 
// 5049   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be 
// 5050   *        protected against un-initialized filter and polarity values.
// 5051   */
// 5052 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 5053                        uint32_t TIM_ICFilter)
// 5054 {
// 5055   uint32_t tmpccmr2 = 0;
// 5056   uint32_t tmpccer = 0;
// 5057 
// 5058   /* Disable the Channel 4: Reset the CC4E Bit */
// 5059   TIMx->CCER &= ~TIM_CCER_CC4E;
// 5060   tmpccmr2 = TIMx->CCMR2;
// 5061   tmpccer = TIMx->CCER;
// 5062 
// 5063   /* Select the Input */
// 5064   tmpccmr2 &= ~TIM_CCMR2_CC4S;
// 5065   tmpccmr2 |= (TIM_ICSelection << 8);
// 5066 
// 5067   /* Set the filter */
// 5068   tmpccmr2 &= ~TIM_CCMR2_IC4F;
// 5069   tmpccmr2 |= ((TIM_ICFilter << 12) & TIM_CCMR2_IC4F);
// 5070 
// 5071   /* Select the Polarity and set the CC4E Bit */
// 5072   tmpccer &= ~(TIM_CCER_CC4P | TIM_CCER_CC4NP);
// 5073   tmpccer |= ((TIM_ICPolarity << 12) & (TIM_CCER_CC4P | TIM_CCER_CC4NP));
// 5074 
// 5075   /* Write to TIMx CCMR2 and CCER registers */
// 5076   TIMx->CCMR2 = tmpccmr2;
// 5077   TIMx->CCER = tmpccer ;
// 5078 }
// 5079 
// 5080 /**
// 5081   * @brief  Selects the Input Trigger source
// 5082   * @param  TIMx to select the TIM peripheral
// 5083   * @param  InputTriggerSource: The Input Trigger source.
// 5084   *          This parameter can be one of the following values:
// 5085   *            @arg TIM_TS_ITR0: Internal Trigger 0
// 5086   *            @arg TIM_TS_ITR1: Internal Trigger 1
// 5087   *            @arg TIM_TS_ITR2: Internal Trigger 2
// 5088   *            @arg TIM_TS_ITR3: Internal Trigger 3
// 5089   *            @arg TIM_TS_TI1F_ED: TI1 Edge Detector
// 5090   *            @arg TIM_TS_TI1FP1: Filtered Timer Input 1
// 5091   *            @arg TIM_TS_TI2FP2: Filtered Timer Input 2
// 5092   *            @arg TIM_TS_ETRF: External Trigger input
// 5093   * @retval None
// 5094   */
// 5095 static void TIM_ITRx_SetConfig(TIM_TypeDef *TIMx, uint16_t InputTriggerSource)
// 5096 {
// 5097   uint32_t tmpsmcr = 0;
// 5098 
// 5099    /* Get the TIMx SMCR register value */
// 5100    tmpsmcr = TIMx->SMCR;
// 5101    /* Reset the TS Bits */
// 5102    tmpsmcr &= ~TIM_SMCR_TS;
// 5103    /* Set the Input Trigger source and the slave mode*/
// 5104    tmpsmcr |= InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1;
// 5105    /* Write to TIMx SMCR */
// 5106    TIMx->SMCR = tmpsmcr;
// 5107 }
// 5108 /**
// 5109   * @brief  Configures the TIMx External Trigger (ETR).
// 5110   * @param  TIMx to select the TIM peripheral
// 5111   * @param  TIM_ExtTRGPrescaler: The external Trigger Prescaler.
// 5112   *          This parameter can be one of the following values:
// 5113   *            @arg TIM_ETRPRESCALER_DIV1: ETRP Prescaler OFF.
// 5114   *            @arg TIM_ETRPRESCALER_DIV2: ETRP frequency divided by 2.
// 5115   *            @arg TIM_ETRPRESCALER_DIV4: ETRP frequency divided by 4.
// 5116   *            @arg TIM_ETRPRESCALER_DIV8: ETRP frequency divided by 8.
// 5117   * @param  TIM_ExtTRGPolarity: The external Trigger Polarity.
// 5118   *          This parameter can be one of the following values:
// 5119   *            @arg TIM_ETRPOLARITY_INVERTED: active low or falling edge active.
// 5120   *            @arg TIM_ETRPOLARITY_NONINVERTED: active high or rising edge active.
// 5121   * @param  ExtTRGFilter: External Trigger Filter.
// 5122   *          This parameter must be a value between 0x00 and 0x0F
// 5123   * @retval None
// 5124   */
// 5125 static void TIM_ETR_SetConfig(TIM_TypeDef* TIMx, uint32_t TIM_ExtTRGPrescaler,
// 5126                        uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter)
// 5127 {
// 5128   uint32_t tmpsmcr = 0;
// 5129 
// 5130   tmpsmcr = TIMx->SMCR;
// 5131 
// 5132   /* Reset the ETR Bits */
// 5133   tmpsmcr &= (uint32_t)(~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP));
// 5134 
// 5135   /* Set the Prescaler, the Filter value and the Polarity */
// 5136   tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8)));
// 5137 
// 5138   /* Write to TIMx SMCR */
// 5139   TIMx->SMCR = tmpsmcr;
// 5140 }
// 5141 
// 5142 /**
// 5143   * @brief  Enables or disables the TIM Capture Compare Channel x.
// 5144   * @param  TIMx to select the TIM peripheral
// 5145   * @param  Channel: specifies the TIM Channel
// 5146   *          This parameter can be one of the following values:
// 5147   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 5148   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 5149   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 5150   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 5151   * @param  ChannelState: specifies the TIM Channel CCxE bit new state.
// 5152   *          This parameter can be: TIM_CCx_ENABLE or TIM_CCx_Disable.
// 5153   * @retval None
// 5154   */
// 5155 static void TIM_CCxChannelCmd(TIM_TypeDef* TIMx, uint32_t Channel, uint32_t ChannelState)
// 5156 {
// 5157   uint32_t tmp = 0;
// 5158 
// 5159   /* Check the parameters */
// 5160   assert_param(IS_TIM_CC1_INSTANCE(TIMx));
// 5161   assert_param(IS_TIM_CHANNELS(Channel));
// 5162 
// 5163   tmp = TIM_CCER_CC1E << Channel;
// 5164 
// 5165   /* Reset the CCxE Bit */
// 5166   TIMx->CCER &= ~tmp;
// 5167 
// 5168   /* Set or reset the CCxE Bit */
// 5169   TIMx->CCER |=  (uint32_t)(ChannelState << Channel);
// 5170 }
// 5171 
// 5172 /**
// 5173   * @}
// 5174   */
// 5175 
// 5176 #endif /* HAL_TIM_MODULE_ENABLED */
// 5177 /**
// 5178   * @}
// 5179   */
// 5180 
// 5181 /**
// 5182   * @}
// 5183   */
// 5184 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
