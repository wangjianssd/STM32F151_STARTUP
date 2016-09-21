///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_rtc.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_rtc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   RTC HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Real Time Clock (RTC) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + RTC Time and Date functions
//   12   *           + RTC Alarm functions
//   13   *           + Peripheral Control functions   
//   14   *           + Peripheral State functions
//   15   *         
//   16   @verbatim
//   17   ==============================================================================
//   18               ##### Backup Domain Operating Condition #####
//   19   ==============================================================================
//   20   [..] The real-time clock (RTC) and the RTC backup registers can be powered
//   21        from the VBAT voltage when the main VDD supply is powered off.
//   22        To retain the content of the RTC backup registers and supply the RTC 
//   23        when VDD is turned off, VBAT pin can be connected to an optional 
//   24        standby voltage supplied by a battery or by another source.
//   25 
//   26   [..] To allow the RTC operating even when the main digital supply (VDD) is turned
//   27        off, the VBAT pin powers the following blocks:
//   28     (#) The RTC
//   29     (#) The LSE oscillator
//   30     (#) PC13 to PC15 I/Os (when available)
//   31   
//   32   [..] When the backup domain is supplied by VDD (analog switch connected to VDD),
//   33        the following pins are available:
//   34     (#) PC14 and PC15 can be used as either GPIO or LSE pins
//   35     (#) PC13 can be used as a GPIO or as the RTC_AF1 pin
//   36   
//   37   [..] When the backup domain is supplied by VBAT (analog switch connected to VBAT 
//   38        because VDD is not present), the following pins are available:
//   39     (#) PC14 and PC15 can be used as LSE pins only
//   40     (#) PC13 can be used as the RTC_AF1 pin 
//   41              
//   42                    ##### Backup Domain Reset #####
//   43   ==================================================================
//   44   [..] The backup domain reset sets all RTC registers and the RCC_BDCR register
//   45        to their reset values. 
//   46   [..] A backup domain reset is generated when one of the following events occurs:
//   47     (#) Software reset, triggered by setting the BDRST bit in the 
//   48         RCC Backup domain control register (RCC_BDCR). 
//   49     (#) VDD or VBAT power on, if both supplies have previously been powered off.  
//   50 
//   51                    ##### Backup Domain Access #####
//   52   ==================================================================
//   53   [..] After reset, the backup domain (RTC registers, RTC backup data 
//   54        registers and backup SRAM) is protected against possible unwanted write 
//   55        accesses. 
//   56   [..] To enable access to the RTC Domain and RTC registers, proceed as follows:
//   57     (+) Enable the Power Controller (PWR) APB1 interface clock using the
//   58         __HAL_RCC_PWR_CLK_ENABLE() function.
//   59     (+) Enable access to RTC domain using the HAL_PWR_EnableBkUpAccess() function.
//   60     (+) Select the RTC clock source using the __HAL_RCC_RTC_CONFIG() function.
//   61     (+) Enable RTC Clock using the __HAL_RCC_RTC_ENABLE() function.
//   62   
//   63   
//   64                   ##### How to use this driver #####
//   65   ==================================================================
//   66   [..] 
//   67     (+) Enable the RTC domain access (see description in the section above).
//   68     (+) Configure the RTC Prescaler (Asynchronous and Synchronous) and RTC hour 
//   69         format using the HAL_RTC_Init() function.
//   70   
//   71   *** Time and Date configuration ***
//   72   ===================================
//   73   [..] 
//   74     (+) To configure the RTC Calendar (Time and Date) use the HAL_RTC_SetTime() 
//   75         and HAL_RTC_SetDate() functions.
//   76     (+) To read the RTC Calendar, use the HAL_RTC_GetTime() and HAL_RTC_GetDate() functions. 
//   77   
//   78   *** Alarm configuration ***
//   79   ===========================
//   80   [..]
//   81     (+) To configure the RTC Alarm use the HAL_RTC_SetAlarm() function. 
//   82         You can also configure the RTC Alarm with interrupt mode using the HAL_RTC_SetAlarm_IT() function.
//   83     (+) To read the RTC Alarm, use the HAL_RTC_GetAlarm() function.
//   84   
//   85                   ##### RTC and low power modes #####
//   86   ==================================================================
//   87   [..] The MCU can be woken up from a low power mode by an RTC alternate 
//   88        function.
//   89   [..] The RTC alternate functions are the RTC alarms (Alarm A and Alarm B), 
//   90        RTC wakeup, RTC tamper event detection and RTC time stamp event detection.
//   91        These RTC alternate functions can wake up the system from the Stop and 
//   92        Standby low power modes.
//   93   [..] The system can also wake up from low power modes without depending 
//   94        on an external interrupt (Auto-wakeup mode), by using the RTC alarm 
//   95        or the RTC wakeup events.
//   96   [..] The RTC provides a programmable time base for waking up from the 
//   97        Stop or Standby mode at regular intervals.
//   98        Wakeup from STOP and STANDBY modes is possible only when the RTC clock source
//   99        is LSE or LSI.
//  100      
//  101    @endverbatim
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
//  139 /** @defgroup RTC RTC
//  140   * @brief RTC HAL module driver
//  141   * @{
//  142   */
//  143 
//  144 #ifdef HAL_RTC_MODULE_ENABLED
//  145 
//  146 /* Private typedef -----------------------------------------------------------*/
//  147 /* Private define ------------------------------------------------------------*/
//  148 /* Private macro -------------------------------------------------------------*/
//  149 /* Private variables ---------------------------------------------------------*/
//  150 /* Private function prototypes -----------------------------------------------*/
//  151 /* Private functions ---------------------------------------------------------*/
//  152 /** @defgroup RTC_Exported_Functions RTC Exported Functions
//  153   * @{
//  154   */
//  155   
//  156 /** @defgroup RTC_Exported_Functions_Group1 Initialization and de-initialization functions 
//  157  *  @brief    Initialization and Configuration functions 
//  158  *
//  159 @verbatim    
//  160  ===============================================================================
//  161               ##### Initialization and de-initialization functions #####
//  162  ===============================================================================
//  163    [..] This section provides functions allowing to initialize and configure the 
//  164          RTC Prescaler (Synchronous and Asynchronous), RTC Hour format, disable 
//  165          RTC registers Write protection, enter and exit the RTC initialization mode, 
//  166          RTC registers synchronization check and reference clock detection enable.
//  167          (#) The RTC Prescaler is programmed to generate the RTC 1Hz time base. 
//  168              It is split into 2 programmable prescalers to minimize power consumption.
//  169              (++) A 7-bit asynchronous prescaler and a 13-bit synchronous prescaler.
//  170              (++) When both prescalers are used, it is recommended to configure the 
//  171                  asynchronous prescaler to a high value to minimize power consumption.
//  172          (#) All RTC registers are Write protected. Writing to the RTC registers
//  173              is enabled by writing a key into the Write Protection register, RTC_WPR.
//  174          (#) To configure the RTC Calendar, user application should enter 
//  175              initialization mode. In this mode, the calendar counter is stopped 
//  176              and its value can be updated. When the initialization sequence is 
//  177              complete, the calendar restarts counting after 4 RTCCLK cycles.
//  178          (#) To read the calendar through the shadow registers after Calendar 
//  179              initialization, calendar update or after wakeup from low power modes 
//  180              the software must first clear the RSF flag. The software must then 
//  181              wait until it is set again before reading the calendar, which means 
//  182              that the calendar registers have been correctly copied into the 
//  183              RTC_TR and RTC_DR shadow registers.The HAL_RTC_WaitForSynchro() function 
//  184              implements the above software sequence (RSF clear and RSF check).
//  185  
//  186 @endverbatim
//  187   * @{
//  188   */
//  189 
//  190 /**
//  191   * @brief  Initializes the RTC peripheral 
//  192   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  193   *                the configuration information for RTC.
//  194   * @retval HAL status
//  195   */
//  196 HAL_StatusTypeDef HAL_RTC_Init(RTC_HandleTypeDef *hrtc)
//  197 {
//  198   /* Check the RTC peripheral state */
//  199   if(hrtc == NULL)
//  200   {
//  201      return HAL_ERROR;
//  202   }
//  203   
//  204   /* Check the parameters */
//  205   assert_param(IS_RTC_ALL_INSTANCE(hrtc->Instance));
//  206   assert_param(IS_RTC_HOUR_FORMAT(hrtc->Init.HourFormat));
//  207   assert_param(IS_RTC_ASYNCH_PREDIV(hrtc->Init.AsynchPrediv));
//  208   assert_param(IS_RTC_SYNCH_PREDIV(hrtc->Init.SynchPrediv));
//  209   assert_param(IS_RTC_OUTPUT(hrtc->Init.OutPut));
//  210   assert_param(IS_RTC_OUTPUT_POL(hrtc->Init.OutPutPolarity));
//  211   assert_param(IS_RTC_OUTPUT_TYPE(hrtc->Init.OutPutType));
//  212     
//  213   if(hrtc->State == HAL_RTC_STATE_RESET)
//  214   {
//  215     /* Allocate lock resource and initialize it */
//  216     hrtc->Lock = HAL_UNLOCKED;
//  217 
//  218     /* Initialize RTC MSP */
//  219     HAL_RTC_MspInit(hrtc);
//  220   }
//  221   
//  222   /* Set RTC state */  
//  223   hrtc->State = HAL_RTC_STATE_BUSY;  
//  224        
//  225   /* Disable the write protection for RTC registers */
//  226   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  227 
//  228   /* Set Initialization mode */
//  229   if(RTC_EnterInitMode(hrtc) != HAL_OK)
//  230   {
//  231     /* Enable the write protection for RTC registers */
//  232     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  233     
//  234     /* Set RTC state */
//  235     hrtc->State = HAL_RTC_STATE_ERROR;
//  236     
//  237     return HAL_ERROR;
//  238   } 
//  239   else
//  240   { 
//  241     /* Clear RTC_CR FMT, OSEL and POL Bits */
//  242     hrtc->Instance->CR &= ((uint32_t)~(RTC_CR_FMT | RTC_CR_OSEL | RTC_CR_POL));
//  243     /* Set RTC_CR register */
//  244     hrtc->Instance->CR |= (uint32_t)(hrtc->Init.HourFormat | hrtc->Init.OutPut | hrtc->Init.OutPutPolarity);
//  245     
//  246     /* Configure the RTC PRER */
//  247     hrtc->Instance->PRER = (uint32_t)(hrtc->Init.SynchPrediv);
//  248     hrtc->Instance->PRER |= (uint32_t)(hrtc->Init.AsynchPrediv << 16);
//  249     
//  250     /* Exit Initialization mode */
//  251     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT; 
//  252     
//  253     hrtc->Instance->TAFCR &= (uint32_t)~RTC_TAFCR_ALARMOUTTYPE;
//  254     hrtc->Instance->TAFCR |= (uint32_t)(hrtc->Init.OutPutType); 
//  255     
//  256     /* Enable the write protection for RTC registers */
//  257     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  258     
//  259     /* Set RTC state */
//  260     hrtc->State = HAL_RTC_STATE_READY;
//  261     
//  262     return HAL_OK;
//  263   }
//  264 }
//  265 
//  266 /**
//  267   * @brief  DeInitializes the RTC peripheral 
//  268   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  269   *                the configuration information for RTC.
//  270   * @note   This function doesn't reset the RTC Backup Data registers.   
//  271   * @retval HAL status
//  272   */
//  273 __weak HAL_StatusTypeDef HAL_RTC_DeInit(RTC_HandleTypeDef *hrtc)
//  274 {
//  275   /* Prevent unused argument(s) compilation warning */
//  276   UNUSED(hrtc);
//  277 
//  278   /* Note : This function is defined into this file for library reference. */
//  279   /*        Function content is located into file stm32l1xx_hal_rtc_ex.c   */
//  280   
//  281   /* Return function status */
//  282   return HAL_ERROR;
//  283 }
//  284 
//  285 /**
//  286   * @brief  Initializes the RTC MSP.
//  287   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  288   *                the configuration information for RTC.  
//  289   * @retval None
//  290   */
//  291 __weak void HAL_RTC_MspInit(RTC_HandleTypeDef* hrtc)
//  292 {
//  293   /* Prevent unused argument(s) compilation warning */
//  294   UNUSED(hrtc);
//  295 
//  296   /* NOTE : This function Should not be modified, when the callback is needed,
//  297             the HAL_RTC_MspInit could be implemented in the user file
//  298    */ 
//  299 }
//  300 
//  301 /**
//  302   * @brief  DeInitializes the RTC MSP.
//  303   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  304   *                the configuration information for RTC. 
//  305   * @retval None
//  306   */
//  307 __weak void HAL_RTC_MspDeInit(RTC_HandleTypeDef* hrtc)
//  308 {
//  309   /* Prevent unused argument(s) compilation warning */
//  310   UNUSED(hrtc);
//  311 
//  312   /* NOTE : This function Should not be modified, when the callback is needed,
//  313             the HAL_RTC_MspDeInit could be implemented in the user file
//  314    */ 
//  315 }
//  316 
//  317 /**
//  318   * @}
//  319   */
//  320 
//  321 /** @defgroup RTC_Exported_Functions_Group2 RTC Time and Date functions
//  322  *  @brief   RTC Time and Date functions
//  323  *
//  324 @verbatim   
//  325  ===============================================================================
//  326                  ##### RTC Time and Date functions #####
//  327  ===============================================================================  
//  328  
//  329  [..] This section provides functions allowing to configure Time and Date features
//  330 
//  331 @endverbatim
//  332   * @{
//  333   */
//  334 
//  335 /**
//  336   * @brief  Sets RTC current time.
//  337   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  338   *                the configuration information for RTC.
//  339   * @param  sTime: Pointer to Time structure
//  340   * @param  Format: Specifies the format of the entered parameters.
//  341   *          This parameter can be one of the following values:
//  342   *            @arg RTC_FORMAT_BIN: Binary data format 
//  343   *            @arg RTC_FORMAT_BCD: BCD data format
//  344   * @retval HAL status
//  345   */
//  346 HAL_StatusTypeDef HAL_RTC_SetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format)
//  347 {
//  348   uint32_t tmpreg = 0;
//  349   
//  350  /* Check the parameters */
//  351   assert_param(IS_RTC_FORMAT(Format));
//  352   assert_param(IS_RTC_DAYLIGHT_SAVING(sTime->DayLightSaving));
//  353   assert_param(IS_RTC_STORE_OPERATION(sTime->StoreOperation));
//  354   
//  355   /* Process Locked */ 
//  356   __HAL_LOCK(hrtc);
//  357   
//  358   hrtc->State = HAL_RTC_STATE_BUSY;
//  359   
//  360   if(Format == RTC_FORMAT_BIN)
//  361   {
//  362     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  363     {
//  364       assert_param(IS_RTC_HOUR12(sTime->Hours));
//  365       assert_param(IS_RTC_HOURFORMAT12(sTime->TimeFormat));
//  366     } 
//  367     else
//  368     {
//  369       sTime->TimeFormat = 0x00;
//  370       assert_param(IS_RTC_HOUR24(sTime->Hours));
//  371     }
//  372     assert_param(IS_RTC_MINUTES(sTime->Minutes));
//  373     assert_param(IS_RTC_SECONDS(sTime->Seconds));
//  374     
//  375     tmpreg = (uint32_t)(((uint32_t)RTC_ByteToBcd2(sTime->Hours) << 16) | \ 
//  376                         ((uint32_t)RTC_ByteToBcd2(sTime->Minutes) << 8) | \ 
//  377                         ((uint32_t)RTC_ByteToBcd2(sTime->Seconds)) | \ 
//  378                         (((uint32_t)sTime->TimeFormat) << 16));  
//  379   }
//  380   else
//  381   {
//  382     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  383     {
//  384       tmpreg = RTC_Bcd2ToByte(sTime->Hours);
//  385       assert_param(IS_RTC_HOUR12(tmpreg));
//  386       assert_param(IS_RTC_HOURFORMAT12(sTime->TimeFormat)); 
//  387     } 
//  388     else
//  389     {
//  390       sTime->TimeFormat = 0x00;
//  391       assert_param(IS_RTC_HOUR24(RTC_Bcd2ToByte(sTime->Hours)));
//  392     }
//  393     assert_param(IS_RTC_MINUTES(RTC_Bcd2ToByte(sTime->Minutes)));
//  394     assert_param(IS_RTC_SECONDS(RTC_Bcd2ToByte(sTime->Seconds)));
//  395     tmpreg = (((uint32_t)(sTime->Hours) << 16) | \ 
//  396               ((uint32_t)(sTime->Minutes) << 8) | \ 
//  397               ((uint32_t)sTime->Seconds) | \ 
//  398               ((uint32_t)(sTime->TimeFormat) << 16));   
//  399   }
//  400   
//  401   /* Disable the write protection for RTC registers */
//  402   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  403   
//  404   /* Set Initialization mode */
//  405   if(RTC_EnterInitMode(hrtc) != HAL_OK)
//  406   {
//  407     /* Enable the write protection for RTC registers */
//  408     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  409     
//  410     /* Set RTC state */
//  411     hrtc->State = HAL_RTC_STATE_ERROR;
//  412     
//  413     /* Process Unlocked */ 
//  414     __HAL_UNLOCK(hrtc);
//  415     
//  416     return HAL_ERROR;
//  417   } 
//  418   else
//  419   {
//  420     /* Set the RTC_TR register */
//  421     hrtc->Instance->TR = (uint32_t)(tmpreg & RTC_TR_RESERVED_MASK);
//  422      
//  423     /* Clear the bits to be configured */
//  424     hrtc->Instance->CR &= (uint32_t)~RTC_CR_BCK;
//  425     
//  426     /* Configure the RTC_CR register */
//  427     hrtc->Instance->CR |= (uint32_t)(sTime->DayLightSaving | sTime->StoreOperation);
//  428     
//  429     /* Exit Initialization mode */
//  430     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT;  
//  431     
//  432     /* Wait for synchro */
//  433     if(HAL_RTC_WaitForSynchro(hrtc) != HAL_OK)
//  434     {       
//  435       /* Enable the write protection for RTC registers */
//  436       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);  
//  437       
//  438       hrtc->State = HAL_RTC_STATE_ERROR;
//  439       
//  440       /* Process Unlocked */ 
//  441       __HAL_UNLOCK(hrtc);
//  442       
//  443       return HAL_ERROR;
//  444     }
//  445     
//  446     /* Enable the write protection for RTC registers */
//  447     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  448     
//  449    hrtc->State = HAL_RTC_STATE_READY;
//  450   
//  451    __HAL_UNLOCK(hrtc); 
//  452      
//  453    return HAL_OK;
//  454   }
//  455 }
//  456 
//  457 
//  458 /**
//  459   * @brief  Sets RTC current date.
//  460   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  461   *                the configuration information for RTC.
//  462   * @param  sDate: Pointer to date structure
//  463   * @param  Format: specifies the format of the entered parameters.
//  464   *          This parameter can be one of the following values:
//  465   *            @arg RTC_FORMAT_BIN: Binary data format 
//  466   *            @arg RTC_FORMAT_BCD: BCD data format
//  467   * @retval HAL status
//  468   */
//  469 HAL_StatusTypeDef HAL_RTC_SetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format)
//  470 {
//  471   uint32_t datetmpreg = 0;
//  472   
//  473  /* Check the parameters */
//  474   assert_param(IS_RTC_FORMAT(Format));
//  475   
//  476  /* Process Locked */ 
//  477  __HAL_LOCK(hrtc);
//  478   
//  479   hrtc->State = HAL_RTC_STATE_BUSY; 
//  480   
//  481   if((Format == RTC_FORMAT_BIN) && ((sDate->Month & 0x10) == 0x10))
//  482   {
//  483     sDate->Month = (uint8_t)((sDate->Month & (uint8_t)~(0x10)) + (uint8_t)0x0A);
//  484   }
//  485   
//  486   assert_param(IS_RTC_WEEKDAY(sDate->WeekDay));
//  487   
//  488   if(Format == RTC_FORMAT_BIN)
//  489   {   
//  490     assert_param(IS_RTC_YEAR(sDate->Year));
//  491     assert_param(IS_RTC_MONTH(sDate->Month));
//  492     assert_param(IS_RTC_DATE(sDate->Date)); 
//  493     
//  494    datetmpreg = (((uint32_t)RTC_ByteToBcd2(sDate->Year) << 16) | \ 
//  495                  ((uint32_t)RTC_ByteToBcd2(sDate->Month) << 8) | \ 
//  496                  ((uint32_t)RTC_ByteToBcd2(sDate->Date)) | \ 
//  497                  ((uint32_t)sDate->WeekDay << 13));   
//  498   }
//  499   else
//  500   {   
//  501     assert_param(IS_RTC_YEAR(RTC_Bcd2ToByte(sDate->Year)));
//  502     datetmpreg = RTC_Bcd2ToByte(sDate->Month);
//  503     assert_param(IS_RTC_MONTH(datetmpreg));
//  504     datetmpreg = RTC_Bcd2ToByte(sDate->Date);
//  505     assert_param(IS_RTC_DATE(datetmpreg));
//  506     
//  507     datetmpreg = ((((uint32_t)sDate->Year) << 16) | \ 
//  508                   (((uint32_t)sDate->Month) << 8) | \ 
//  509                   ((uint32_t)sDate->Date) | \ 
//  510                   (((uint32_t)sDate->WeekDay) << 13));  
//  511   }
//  512 
//  513   /* Disable the write protection for RTC registers */
//  514   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  515   
//  516   /* Set Initialization mode */
//  517   if(RTC_EnterInitMode(hrtc) != HAL_OK)
//  518   {
//  519     /* Enable the write protection for RTC registers */
//  520     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  521     
//  522     /* Set RTC state*/
//  523     hrtc->State = HAL_RTC_STATE_ERROR;
//  524     
//  525     /* Process Unlocked */ 
//  526     __HAL_UNLOCK(hrtc);
//  527     
//  528     return HAL_ERROR;
//  529   } 
//  530   else
//  531   {
//  532     /* Set the RTC_DR register */
//  533     hrtc->Instance->DR = (uint32_t)(datetmpreg & RTC_DR_RESERVED_MASK);
//  534     
//  535     /* Exit Initialization mode */
//  536     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT;  
//  537     
//  538     /* Wait for synchro */
//  539     if(HAL_RTC_WaitForSynchro(hrtc) != HAL_OK)
//  540     {
//  541       /* Enable the write protection for RTC registers */
//  542       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);  
//  543       
//  544       hrtc->State = HAL_RTC_STATE_ERROR;
//  545       
//  546       /* Process Unlocked */ 
//  547       __HAL_UNLOCK(hrtc);
//  548       
//  549       return HAL_ERROR;
//  550     }
//  551     
//  552     /* Enable the write protection for RTC registers */
//  553     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);  
//  554     
//  555     hrtc->State = HAL_RTC_STATE_READY ;
//  556     
//  557     /* Process Unlocked */ 
//  558     __HAL_UNLOCK(hrtc);
//  559     
//  560     return HAL_OK;    
//  561   }
//  562 }
//  563 
//  564 /**
//  565   * @brief  Gets RTC current date.
//  566   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  567   *                the configuration information for RTC.
//  568   * @param  sDate: Pointer to Date structure
//  569   * @param  Format: Specifies the format of the entered parameters.
//  570   *          This parameter can be one of the following values:
//  571   *            @arg RTC_FORMAT_BIN:  Binary data format 
//  572   *            @arg RTC_FORMAT_BCD:  BCD data format
//  573   * @note You must call HAL_RTC_GetDate() after HAL_RTC_GetTime() to unlock the values 
//  574   * in the higher-order calendar shadow registers to ensure consistency between the time and date values.
//  575   * Reading RTC current time locks the values in calendar shadow registers until Current date is read.
//  576   * @retval HAL status
//  577   */
//  578 HAL_StatusTypeDef HAL_RTC_GetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format)
//  579 {
//  580   uint32_t datetmpreg = 0;
//  581 
//  582   /* Check the parameters */
//  583   assert_param(IS_RTC_FORMAT(Format));
//  584           
//  585   /* Get the DR register */
//  586   datetmpreg = (uint32_t)(hrtc->Instance->DR & RTC_DR_RESERVED_MASK); 
//  587 
//  588   /* Fill the structure fields with the read parameters */
//  589   sDate->Year = (uint8_t)((datetmpreg & (RTC_DR_YT | RTC_DR_YU)) >> 16);
//  590   sDate->Month = (uint8_t)((datetmpreg & (RTC_DR_MT | RTC_DR_MU)) >> 8);
//  591   sDate->Date = (uint8_t)(datetmpreg & (RTC_DR_DT | RTC_DR_DU));
//  592   sDate->WeekDay = (uint8_t)((datetmpreg & (RTC_DR_WDU)) >> 13); 
//  593 
//  594   /* Check the input parameters format */
//  595   if(Format == RTC_FORMAT_BIN)
//  596   {    
//  597     /* Convert the date structure parameters to Binary format */
//  598     sDate->Year = (uint8_t)RTC_Bcd2ToByte(sDate->Year);
//  599     sDate->Month = (uint8_t)RTC_Bcd2ToByte(sDate->Month);
//  600     sDate->Date = (uint8_t)RTC_Bcd2ToByte(sDate->Date);  
//  601   }
//  602   return HAL_OK;
//  603 }
//  604 
//  605 /**
//  606   * @}
//  607   */
//  608 
//  609 /** @defgroup RTC_Exported_Functions_Group3 RTC Alarm functions
//  610  *  @brief   RTC Alarm functions
//  611  *
//  612 @verbatim   
//  613  ===============================================================================
//  614                  ##### RTC Alarm functions #####
//  615  ===============================================================================  
//  616  
//  617  [..] This section provides functions allowing to configure Alarm feature
//  618 
//  619 @endverbatim
//  620   * @{
//  621   */
//  622 
//  623 /**
//  624   * @brief  Deactive the specified RTC Alarm 
//  625   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  626   *                the configuration information for RTC.
//  627   * @param  Alarm: Specifies the Alarm.
//  628   *          This parameter can be one of the following values:
//  629   *            @arg RTC_ALARM_A:  AlarmA
//  630   *            @arg RTC_ALARM_B:  AlarmB
//  631   * @retval HAL status
//  632   */
//  633 HAL_StatusTypeDef HAL_RTC_DeactivateAlarm(RTC_HandleTypeDef *hrtc, uint32_t Alarm)
//  634 {
//  635   uint32_t tickstart = 0;
//  636   
//  637   /* Check the parameters */
//  638   assert_param(IS_RTC_ALARM(Alarm));
//  639   
//  640   /* Process Locked */ 
//  641   __HAL_LOCK(hrtc);
//  642   
//  643   hrtc->State = HAL_RTC_STATE_BUSY;
//  644   
//  645   /* Disable the write protection for RTC registers */
//  646   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  647   
//  648   if(Alarm == RTC_ALARM_A)
//  649   {
//  650     /* AlarmA */
//  651     __HAL_RTC_ALARMA_DISABLE(hrtc);
//  652     
//  653     /* In case of interrupt mode is used, the interrupt source must disabled */ 
//  654     __HAL_RTC_ALARM_DISABLE_IT(hrtc, RTC_IT_ALRA);
//  655     
//  656     tickstart = HAL_GetTick();
//  657     
//  658     /* Wait till RTC ALRxWF flag is set and if Time out is reached exit */
//  659     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRAWF) == RESET)
//  660     {
//  661       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  662       { 
//  663         /* Enable the write protection for RTC registers */
//  664         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  665         
//  666         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  667         
//  668         /* Process Unlocked */ 
//  669         __HAL_UNLOCK(hrtc);
//  670         
//  671         return HAL_TIMEOUT;
//  672       }      
//  673     }
//  674   }
//  675   else
//  676   {
//  677     /* AlarmB */
//  678     __HAL_RTC_ALARMB_DISABLE(hrtc);
//  679     
//  680     /* In case of interrupt mode is used, the interrupt source must disabled */ 
//  681     __HAL_RTC_ALARM_DISABLE_IT(hrtc,RTC_IT_ALRB);
//  682     
//  683     tickstart = HAL_GetTick();
//  684     
//  685     /* Wait till RTC ALRxWF flag is set and if Time out is reached exit */
//  686     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRBWF) == RESET)
//  687     {
//  688       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  689       {
//  690         /* Enable the write protection for RTC registers */
//  691         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  692         
//  693         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  694         
//  695         /* Process Unlocked */ 
//  696         __HAL_UNLOCK(hrtc);
//  697         
//  698         return HAL_TIMEOUT;
//  699       }    
//  700     }
//  701   }
//  702   /* Enable the write protection for RTC registers */
//  703   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  704   
//  705   hrtc->State = HAL_RTC_STATE_READY; 
//  706   
//  707   /* Process Unlocked */ 
//  708   __HAL_UNLOCK(hrtc);  
//  709   
//  710   return HAL_OK; 
//  711 }
//  712 
//  713 /**
//  714   * @brief  This function handles Alarm interrupt request.
//  715   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  716   *                the configuration information for RTC.
//  717   * @retval None
//  718   */
//  719 void HAL_RTC_AlarmIRQHandler(RTC_HandleTypeDef* hrtc)
//  720 {
//  721   /* Get the AlarmA interrupt source enable status */
//  722   if(__HAL_RTC_ALARM_GET_IT_SOURCE(hrtc, RTC_IT_ALRA) != RESET)
//  723   {
//  724     /* Get the pending status of the AlarmA Interrupt */
//  725     if(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRAF) != RESET)
//  726     {
//  727       /* AlarmA callback */
//  728       HAL_RTC_AlarmAEventCallback(hrtc);
//  729 
//  730       /* Clear the AlarmA interrupt pending bit */
//  731       __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRAF);
//  732     }
//  733   }
//  734 
//  735   /* Get the AlarmB interrupt source enable status */
//  736   if(__HAL_RTC_ALARM_GET_IT_SOURCE(hrtc, RTC_IT_ALRB) != RESET)
//  737   {
//  738     /* Get the pending status of the AlarmB Interrupt */
//  739     if(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRBF) != RESET)
//  740     {
//  741       /* AlarmB callback */
//  742       HAL_RTCEx_AlarmBEventCallback(hrtc);
//  743 
//  744       /* Clear the AlarmB interrupt pending bit */
//  745       __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRBF);
//  746     }
//  747   }
//  748   
//  749   /* Clear the EXTI's line Flag for RTC Alarm */
//  750   __HAL_RTC_ALARM_EXTI_CLEAR_FLAG();
//  751   
//  752   /* Change RTC state */
//  753   hrtc->State = HAL_RTC_STATE_READY; 
//  754 }
//  755 
//  756 /**
//  757   * @brief  Alarm A callback.
//  758   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  759   *                the configuration information for RTC.
//  760   * @retval None
//  761   */
//  762 __weak void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc)
//  763 {
//  764   /* Prevent unused argument(s) compilation warning */
//  765   UNUSED(hrtc);
//  766 
//  767   /* NOTE : This function Should not be modified, when the callback is needed,
//  768             the HAL_RTC_AlarmAEventCallback could be implemented in the user file
//  769    */
//  770 }
//  771 
//  772 /**
//  773   * @brief  This function handles AlarmA Polling request.
//  774   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  775   *                the configuration information for RTC.
//  776   * @param  Timeout: Timeout duration
//  777   * @retval HAL status
//  778   */
//  779 HAL_StatusTypeDef HAL_RTC_PollForAlarmAEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
//  780 {  
//  781 
//  782   uint32_t tickstart = HAL_GetTick();   
//  783   
//  784   while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRAF) == RESET)
//  785   {
//  786     if(Timeout != HAL_MAX_DELAY)
//  787     {
//  788       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
//  789       {
//  790         hrtc->State = HAL_RTC_STATE_TIMEOUT;
//  791         return HAL_TIMEOUT;
//  792       }
//  793     }
//  794   }
//  795   
//  796   /* Clear the Alarm interrupt pending bit */
//  797   __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRAF);
//  798   
//  799   /* Change RTC state */
//  800   hrtc->State = HAL_RTC_STATE_READY; 
//  801   
//  802   return HAL_OK;  
//  803 }
//  804 
//  805 /**
//  806   * @}
//  807   */
//  808 
//  809 /** @defgroup RTC_Exported_Functions_Group5 Peripheral State functions 
//  810  *  @brief   Peripheral State functions 
//  811  *
//  812 @verbatim   
//  813  ===============================================================================
//  814                      ##### Peripheral State functions #####
//  815  ===============================================================================  
//  816     [..]
//  817     This subsection provides functions allowing to
//  818       (+) Get RTC state
//  819 
//  820 @endverbatim
//  821   * @{
//  822   */
//  823 /**
//  824   * @brief  Returns the RTC state.
//  825   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  826   *                the configuration information for RTC.
//  827   * @retval HAL state
//  828   */
//  829 HAL_RTCStateTypeDef HAL_RTC_GetState(RTC_HandleTypeDef* hrtc)
//  830 {
//  831   return hrtc->State;
//  832 }
//  833 
//  834 /**
//  835   * @}
//  836   */
//  837 
//  838 /**
//  839   * @}
//  840   */
//  841 
//  842 /** @defgroup RTC_Internal_Functions RTC Internal function
//  843   * @{
//  844   */
//  845   
//  846 /**
//  847   * @brief  Enters the RTC Initialization mode.
//  848   * @note   The RTC Initialization mode is write protected, use the
//  849   *         __HAL_RTC_WRITEPROTECTION_DISABLE() before calling this function.
//  850   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  851   *                the configuration information for RTC.
//  852   * @retval HAL status
//  853   */
//  854 HAL_StatusTypeDef RTC_EnterInitMode(RTC_HandleTypeDef* hrtc)
//  855 {
//  856   uint32_t tickstart = 0;
//  857   
//  858   /* Check if the Initialization mode is set */
//  859   if((hrtc->Instance->ISR & RTC_ISR_INITF) == (uint32_t)RESET)
//  860   {
//  861     /* Set the Initialization mode */
//  862     hrtc->Instance->ISR = (uint32_t)RTC_INIT_MASK;
//  863     
//  864     tickstart = HAL_GetTick();
//  865     /* Wait till RTC is in INIT state and if Time out is reached exit */
//  866     while((hrtc->Instance->ISR & RTC_ISR_INITF) == (uint32_t)RESET)
//  867     {
//  868       if((HAL_GetTick() - tickstart) >  RTC_TIMEOUT_VALUE)
//  869       {       
//  870         return HAL_TIMEOUT;
//  871       } 
//  872     }
//  873   }
//  874   
//  875   return HAL_OK;  
//  876 }
//  877 
//  878 /**
//  879   * @brief  Converts a 2 digit decimal to BCD format.
//  880   * @param  Value: Byte to be converted
//  881   * @retval Converted byte
//  882   */
//  883 uint8_t RTC_ByteToBcd2(uint8_t Value)
//  884 {
//  885   uint32_t bcdhigh = 0;
//  886   
//  887   while(Value >= 10)
//  888   {
//  889     bcdhigh++;
//  890     Value -= 10;
//  891   }
//  892   
//  893   return  ((uint8_t)(bcdhigh << 4) | Value);
//  894 }
//  895 
//  896 /**
//  897   * @brief  Converts from 2 digit BCD to Binary.
//  898   * @param  Value: BCD value to be converted
//  899   * @retval Converted word
//  900   */
//  901 uint8_t RTC_Bcd2ToByte(uint8_t Value)
//  902 {
//  903   uint32_t tmp = 0;
//  904   tmp = ((uint8_t)(Value & (uint8_t)0xF0) >> (uint8_t)0x4) * 10;
//  905   return (tmp + (Value & (uint8_t)0x0F));
//  906 }
//  907 
//  908 
//  909 /**
//  910   * @}
//  911   */
//  912 
//  913 #endif /* HAL_RTC_MODULE_ENABLED */
//  914 /**
//  915   * @}
//  916   */
//  917 
//  918 /**
//  919   * @}
//  920   */
//  921 
//  922 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
