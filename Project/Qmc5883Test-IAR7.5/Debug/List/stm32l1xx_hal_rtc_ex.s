///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_rtc_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_rtc_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_rtc_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended RTC HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Real Time Clock (RTC) Extension peripheral:
//   10   *           + RTC Time Stamp functions
//   11   *           + RTC Tamper functions 
//   12   *           + RTC Wake-up functions
//   13   *           + Extension Control functions
//   14   *           + Extension RTC features functions    
//   15   *         
//   16   @verbatim
//   17   ==============================================================================
//   18                   ##### How to use this driver #####
//   19   ==============================================================================
//   20   [..] 
//   21     (+) Enable the RTC domain access.
//   22     (+) Configure the RTC Prescaler (Asynchronous and Synchronous) and RTC hour 
//   23         format using the HAL_RTC_Init() function.
//   24   
//   25   *** RTC Wakeup configuration ***
//   26   ================================
//   27   [..] 
//   28     (+) To configure the RTC Wakeup Clock source and Counter use the HAL_RTCEx_SetWakeUpTimer()
//   29         function. You can also configure the RTC Wakeup timer with interrupt mode 
//   30         using the HAL_RTCEx_SetWakeUpTimer_IT() function.
//   31     (+) To read the RTC WakeUp Counter register, use the HAL_RTCEx_GetWakeUpTimer()
//   32         function.
//   33   
//   34   *** TimeStamp configuration ***
//   35   ===============================
//   36   [..]
//   37     (+) Configure the RTC_AFx trigger and enable the RTC TimeStamp using the 
//   38         HAL_RTCEx_SetTimeStamp() function. You can also configure the RTC TimeStamp with
//   39         interrupt mode using the HAL_RTCEx_SetTimeStamp_IT() function.
//   40     (+) To read the RTC TimeStamp Time and Date register, use the HAL_RTCEx_GetTimeStamp()
//   41         function.
//   42     (+) The TIMESTAMP alternate function can be mapped to RTC_AF1 (PC13).
//   43   
//   44   *** Tamper configuration ***
//   45   ============================
//   46   [..]
//   47     (+) Enable the RTC Tamper and configure the Tamper filter count, trigger Edge 
//   48         or Level according to the Tamper filter (if equal to 0 Edge else Level) 
//   49         value, sampling frequency, precharge or discharge and Pull-UP using the 
//   50         HAL_RTCEx_SetTamper() function. You can configure RTC Tamper with interrupt
//   51         mode using HAL_RTCEx_SetTamper_IT() function.
//   52     (+) The TAMPER1 alternate function can be mapped to RTC_AF1 (PC13).
//   53 
//   54   *** Backup Data Registers configuration ***
//   55   ===========================================
//   56   [..]
//   57     (+) To write to the RTC Backup Data registers, use the HAL_RTCEx_BKUPWrite()
//   58         function.  
//   59     (+) To read the RTC Backup Data registers, use the HAL_RTCEx_BKUPRead()
//   60         function.
//   61      
//   62    @endverbatim
//   63   ******************************************************************************
//   64   * @attention
//   65   *
//   66   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   67   *
//   68   * Redistribution and use in source and binary forms, with or without modification,
//   69   * are permitted provided that the following conditions are met:
//   70   *   1. Redistributions of source code must retain the above copyright notice,
//   71   *      this list of conditions and the following disclaimer.
//   72   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   73   *      this list of conditions and the following disclaimer in the documentation
//   74   *      and/or other materials provided with the distribution.
//   75   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   76   *      may be used to endorse or promote products derived from this software
//   77   *      without specific prior written permission.
//   78   *
//   79   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   80   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   81   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   82   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   83   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   84   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   85   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   86   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   87   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   88   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   89   *
//   90   ******************************************************************************  
//   91   */ 
//   92 
//   93 /* Includes ------------------------------------------------------------------*/
//   94 #include "stm32l1xx_hal.h"
//   95 
//   96 /** @addtogroup STM32L1xx_HAL_Driver
//   97   * @{
//   98   */
//   99   
//  100 /** @addtogroup RTC
//  101   * @{
//  102   */
//  103   
//  104 #ifdef HAL_RTC_MODULE_ENABLED
//  105 
//  106 /* Private typedef -----------------------------------------------------------*/
//  107 /* Private define ------------------------------------------------------------*/
//  108 /* Private macro -------------------------------------------------------------*/
//  109 /* Private variables ---------------------------------------------------------*/
//  110 /* Private function prototypes -----------------------------------------------*/
//  111 /* Private functions ---------------------------------------------------------*/
//  112 
//  113 /** @addtogroup RTC_Exported_Functions
//  114   * @{
//  115   */
//  116 
//  117 
//  118 /** @addtogroup RTC_Exported_Functions_Group1
//  119   * @{
//  120   */
//  121   
//  122 /**
//  123   * @brief  DeInitializes the RTC peripheral 
//  124   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  125   *                the configuration information for RTC.
//  126   * @note   This function does not reset the RTC Backup Data registers.   
//  127   * @retval HAL status
//  128   */
//  129 HAL_StatusTypeDef HAL_RTC_DeInit(RTC_HandleTypeDef *hrtc)
//  130 {
//  131   uint32_t tickstart = 0;
//  132 
//  133   /* Check the parameters */
//  134   assert_param(IS_RTC_ALL_INSTANCE(hrtc->Instance));
//  135 
//  136   /* Set RTC state */
//  137   hrtc->State = HAL_RTC_STATE_BUSY; 
//  138   
//  139   /* Disable the write protection for RTC registers */
//  140   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  141   
//  142   /* Set Initialization mode */
//  143   if(RTC_EnterInitMode(hrtc) != HAL_OK)
//  144   {
//  145     /* Enable the write protection for RTC registers */
//  146     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  147     
//  148     /* Set RTC state */
//  149     hrtc->State = HAL_RTC_STATE_ERROR;
//  150     
//  151     return HAL_ERROR;
//  152   }  
//  153   else
//  154   {
//  155     /* Reset TR, DR and CR registers */
//  156     hrtc->Instance->TR = (uint32_t)0x00000000;
//  157     hrtc->Instance->DR = (uint32_t)0x00002101;
//  158     /* Reset All CR bits except CR[2:0] */
//  159     hrtc->Instance->CR &= (uint32_t)0x00000007;
//  160     
//  161     tickstart = HAL_GetTick();
//  162     
//  163     /* Wait till WUTWF flag is set and if Time out is reached exit */
//  164     while(((hrtc->Instance->ISR) & RTC_ISR_WUTWF) == (uint32_t)RESET)
//  165     {
//  166       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  167       { 
//  168         /* Enable the write protection for RTC registers */
//  169         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
//  170         
//  171         /* Set RTC state */
//  172         hrtc->State = HAL_RTC_STATE_TIMEOUT;
//  173         
//  174         return HAL_TIMEOUT;
//  175       } 
//  176     }
//  177     
//  178     /* Reset all RTC CR register bits */
//  179     hrtc->Instance->CR &= (uint32_t)0x00000000;
//  180     hrtc->Instance->WUTR = (uint32_t)0x0000FFFF;
//  181     hrtc->Instance->PRER = (uint32_t)0x007F00FF;
//  182     hrtc->Instance->CALIBR = (uint32_t)0x00000000;
//  183     hrtc->Instance->ALRMAR = (uint32_t)0x00000000;
//  184     hrtc->Instance->ALRMBR = (uint32_t)0x00000000;
//  185 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  186     hrtc->Instance->SHIFTR = (uint32_t)0x00000000;
//  187     hrtc->Instance->CALR = (uint32_t)0x00000000;
//  188     hrtc->Instance->ALRMASSR = (uint32_t)0x00000000;
//  189     hrtc->Instance->ALRMBSSR = (uint32_t)0x00000000;
//  190 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  191     /* Reset ISR register and exit initialization mode */
//  192     hrtc->Instance->ISR = (uint32_t)0x00000000;
//  193     
//  194     /* Reset Tamper and alternate functions configuration register */
//  195     hrtc->Instance->TAFCR = 0x00000000;
//  196     
//  197     /* Wait for synchro */
//  198     if(HAL_RTC_WaitForSynchro(hrtc) != HAL_OK)
//  199     {
//  200       /* Enable the write protection for RTC registers */
//  201       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);  
//  202       
//  203       hrtc->State = HAL_RTC_STATE_ERROR;
//  204       
//  205       return HAL_ERROR;
//  206     }  
//  207   }
//  208   
//  209   /* Enable the write protection for RTC registers */
//  210   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  211   
//  212   /* De-Initialize RTC MSP */
//  213   HAL_RTC_MspDeInit(hrtc);
//  214   
//  215   hrtc->State = HAL_RTC_STATE_RESET; 
//  216   
//  217   /* Release Lock */
//  218   __HAL_UNLOCK(hrtc);
//  219 
//  220   return HAL_OK;
//  221 }
//  222 
//  223 /**
//  224   * @}
//  225   */
//  226 
//  227 /** @addtogroup RTC_Exported_Functions_Group2
//  228   * @{
//  229   */
//  230   
//  231 /**
//  232   * @brief  Get RTC current time.
//  233   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  234   *                the configuration information for RTC.
//  235   * @param  sTime: Pointer to Time structure with Hours, Minutes and Seconds fields returned 
//  236   *                with input format (BIN or BCD), also SubSeconds field (if availabale) returning the
//  237   *                RTC_SSR register content and SecondFraction field the Synchronous pre-scaler
//  238   *                factor to be used for second fraction ratio computation.
//  239   * @param  Format: Specifies the format of the entered parameters.
//  240   *          This parameter can be one of the following values:
//  241   *            @arg RTC_FORMAT_BIN: Binary data format 
//  242   *            @arg RTC_FORMAT_BCD: BCD data format
//  243   * @note  If available, you can use SubSeconds and SecondFraction (sTime structure fields returned) to convert SubSeconds
//  244   *        value in second fraction ratio with time unit following generic formula:
//  245   *        Second fraction ratio * time_unit= [(SecondFraction-SubSeconds)/(SecondFraction+1)] * time_unit
//  246   *        This conversion can be performed only if no shift operation is pending (ie. SHFP=0) when PREDIV_S >= SS
//  247   * @note You must call HAL_RTC_GetDate() after HAL_RTC_GetTime() to unlock the values 
//  248   * in the higher-order calendar shadow registers to ensure consistency between the time and date values.
//  249   *        Reading RTC current time locks the values in calendar shadow registers until Current date is read
//  250   *        to ensure consistency between the time and date values.
//  251   * @retval HAL status
//  252   */
//  253 HAL_StatusTypeDef HAL_RTC_GetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format)
//  254 {
//  255   uint32_t tmpreg = 0;
//  256 
//  257   /* Check the parameters */
//  258   assert_param(IS_RTC_FORMAT(Format));
//  259 
//  260 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  261   /* Get subseconds structure field from the corresponding register*/
//  262   sTime->SubSeconds = (uint32_t)((hrtc->Instance->SSR) & RTC_SSR_SS);
//  263 
//  264   /* Get SecondFraction structure field from the corresponding register field*/
//  265   sTime->SecondFraction = (uint32_t)(hrtc->Instance->PRER & RTC_PRER_PREDIV_S);
//  266 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  267   
//  268   /* Get the TR register */
//  269   tmpreg = (uint32_t)(hrtc->Instance->TR & RTC_TR_RESERVED_MASK); 
//  270   
//  271   /* Fill the structure fields with the read parameters */
//  272   sTime->Hours = (uint8_t)((tmpreg & (RTC_TR_HT | RTC_TR_HU)) >> 16);
//  273   sTime->Minutes = (uint8_t)((tmpreg & (RTC_TR_MNT | RTC_TR_MNU)) >>8);
//  274   sTime->Seconds = (uint8_t)(tmpreg & (RTC_TR_ST | RTC_TR_SU));
//  275   sTime->TimeFormat = (uint8_t)((tmpreg & (RTC_TR_PM)) >> 16); 
//  276   
//  277   /* Check the input parameters format */
//  278   if(Format == RTC_FORMAT_BIN)
//  279   {
//  280     /* Convert the time structure parameters to Binary format */
//  281     sTime->Hours = (uint8_t)RTC_Bcd2ToByte(sTime->Hours);
//  282     sTime->Minutes = (uint8_t)RTC_Bcd2ToByte(sTime->Minutes);
//  283     sTime->Seconds = (uint8_t)RTC_Bcd2ToByte(sTime->Seconds);  
//  284   }
//  285   
//  286   return HAL_OK;
//  287 }
//  288 
//  289 /**
//  290   * @}
//  291   */
//  292 
//  293 /** @addtogroup RTC_Exported_Functions_Group3
//  294   * @{
//  295   */
//  296 
//  297 /**
//  298   * @brief  Sets the specified RTC Alarm.
//  299   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  300   *                the configuration information for RTC.
//  301   * @param  sAlarm: Pointer to Alarm structure
//  302   * @param  Format: Specifies the format of the entered parameters.
//  303   *          This parameter can be one of the following values:
//  304   *             @arg RTC_FORMAT_BIN: Binary data format 
//  305   *             @arg RTC_FORMAT_BCD: BCD data format
//  306   * @retval HAL status
//  307   */
//  308 HAL_StatusTypeDef HAL_RTC_SetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format)
//  309 {
//  310   uint32_t tickstart = 0;
//  311   uint32_t tmpreg = 0;
//  312   
//  313 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  314   uint32_t subsecondtmpreg = 0;
//  315 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  316   
//  317   /* Check the parameters */
//  318   assert_param(IS_RTC_FORMAT(Format));
//  319   assert_param(IS_RTC_ALARM(sAlarm->Alarm));
//  320   assert_param(IS_RTC_ALARM_MASK(sAlarm->AlarmMask));
//  321   assert_param(IS_RTC_ALARM_DATE_WEEKDAY_SEL(sAlarm->AlarmDateWeekDaySel));
//  322 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  323   assert_param(IS_RTC_ALARM_SUB_SECOND_VALUE(sAlarm->AlarmTime.SubSeconds));
//  324   assert_param(IS_RTC_ALARM_SUB_SECOND_MASK(sAlarm->AlarmSubSecondMask));
//  325 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  326   
//  327   /* Process Locked */ 
//  328   __HAL_LOCK(hrtc);
//  329   
//  330   hrtc->State = HAL_RTC_STATE_BUSY;
//  331   
//  332   if(Format == RTC_FORMAT_BIN)
//  333   {
//  334     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  335     {
//  336       assert_param(IS_RTC_HOUR12(sAlarm->AlarmTime.Hours));
//  337       assert_param(IS_RTC_HOURFORMAT12(sAlarm->AlarmTime.TimeFormat));
//  338     } 
//  339     else
//  340     {
//  341       sAlarm->AlarmTime.TimeFormat = 0x00;
//  342       assert_param(IS_RTC_HOUR24(sAlarm->AlarmTime.Hours));
//  343     }
//  344     assert_param(IS_RTC_MINUTES(sAlarm->AlarmTime.Minutes));
//  345     assert_param(IS_RTC_SECONDS(sAlarm->AlarmTime.Seconds));
//  346     
//  347     if(sAlarm->AlarmDateWeekDaySel == RTC_ALARMDATEWEEKDAYSEL_DATE)
//  348     {
//  349       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_DATE(sAlarm->AlarmDateWeekDay));
//  350     }
//  351     else
//  352     {
//  353       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(sAlarm->AlarmDateWeekDay));
//  354     }
//  355     
//  356     tmpreg = (((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Hours) << 16) | \ 
//  357               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Minutes) << 8) | \ 
//  358               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Seconds)) | \ 
//  359               ((uint32_t)(sAlarm->AlarmTime.TimeFormat) << 16) | \ 
//  360               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmDateWeekDay) << 24) | \ 
//  361               ((uint32_t)sAlarm->AlarmDateWeekDaySel) | \ 
//  362               ((uint32_t)sAlarm->AlarmMask)); 
//  363   }
//  364   else
//  365   {
//  366     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  367     {
//  368       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmTime.Hours);
//  369       assert_param(IS_RTC_HOUR12(tmpreg));
//  370       assert_param(IS_RTC_HOURFORMAT12(sAlarm->AlarmTime.TimeFormat));
//  371     } 
//  372     else
//  373     {
//  374       sAlarm->AlarmTime.TimeFormat = 0x00;
//  375       assert_param(IS_RTC_HOUR24(RTC_Bcd2ToByte(sAlarm->AlarmTime.Hours)));
//  376     }
//  377     
//  378     assert_param(IS_RTC_MINUTES(RTC_Bcd2ToByte(sAlarm->AlarmTime.Minutes)));
//  379     assert_param(IS_RTC_SECONDS(RTC_Bcd2ToByte(sAlarm->AlarmTime.Seconds)));
//  380     
//  381     if(sAlarm->AlarmDateWeekDaySel == RTC_ALARMDATEWEEKDAYSEL_DATE)
//  382     {
//  383       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmDateWeekDay);
//  384       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_DATE(tmpreg));    
//  385     }
//  386     else
//  387     {
//  388       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmDateWeekDay);
//  389       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(tmpreg));      
//  390     }  
//  391     
//  392     tmpreg = (((uint32_t)(sAlarm->AlarmTime.Hours) << 16) | \ 
//  393               ((uint32_t)(sAlarm->AlarmTime.Minutes) << 8) | \ 
//  394               ((uint32_t) sAlarm->AlarmTime.Seconds) | \ 
//  395               ((uint32_t)(sAlarm->AlarmTime.TimeFormat) << 16) | \ 
//  396               ((uint32_t)(sAlarm->AlarmDateWeekDay) << 24) | \ 
//  397               ((uint32_t)sAlarm->AlarmDateWeekDaySel) | \ 
//  398               ((uint32_t)sAlarm->AlarmMask));   
//  399   }
//  400   
//  401 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  402   /* Configure the Alarm A or Alarm B Sub Second registers */
//  403   subsecondtmpreg = (uint32_t)((uint32_t)(sAlarm->AlarmTime.SubSeconds) | (uint32_t)(sAlarm->AlarmSubSecondMask));
//  404 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  405   
//  406   /* Disable the write protection for RTC registers */
//  407   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  408 
//  409   /* Configure the Alarm register */
//  410   if(sAlarm->Alarm == RTC_ALARM_A)
//  411   {
//  412     /* Disable the Alarm A interrupt */
//  413     __HAL_RTC_ALARMA_DISABLE(hrtc);
//  414     
//  415     /* In case of interrupt mode is used, the interrupt source must disabled */ 
//  416     __HAL_RTC_ALARM_DISABLE_IT(hrtc, RTC_IT_ALRA);
//  417          
//  418     tickstart = HAL_GetTick();
//  419     /* Wait till RTC ALRAWF flag is set and if Time out is reached exit */
//  420     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRAWF) == RESET)
//  421     {
//  422       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  423       {
//  424         /* Enable the write protection for RTC registers */
//  425         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  426         
//  427         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  428         
//  429         /* Process Unlocked */ 
//  430         __HAL_UNLOCK(hrtc);
//  431         
//  432         return HAL_TIMEOUT;
//  433       }   
//  434     }
//  435     
//  436     hrtc->Instance->ALRMAR = (uint32_t)tmpreg;
//  437 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  438     /* Configure the Alarm A Sub Second register */
//  439     hrtc->Instance->ALRMASSR = subsecondtmpreg;
//  440 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  441     /* Configure the Alarm state: Enable Alarm */
//  442     __HAL_RTC_ALARMA_ENABLE(hrtc);
//  443   }
//  444   else
//  445   {
//  446     /* Disable the Alarm B interrupt */
//  447     __HAL_RTC_ALARMB_DISABLE(hrtc);
//  448     
//  449     /* In case of interrupt mode is used, the interrupt source must disabled */ 
//  450     __HAL_RTC_ALARM_DISABLE_IT(hrtc, RTC_IT_ALRB);
//  451        
//  452     tickstart = HAL_GetTick();
//  453     /* Wait till RTC ALRBWF flag is set and if Time out is reached exit */
//  454     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRBWF) == RESET)
//  455     {
//  456       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  457       {
//  458         /* Enable the write protection for RTC registers */
//  459         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  460         
//  461         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  462         
//  463         /* Process Unlocked */ 
//  464         __HAL_UNLOCK(hrtc);
//  465         
//  466         return HAL_TIMEOUT;
//  467       }  
//  468     }    
//  469     
//  470     hrtc->Instance->ALRMBR = (uint32_t)tmpreg;
//  471 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  472     /* Configure the Alarm B Sub Second register */
//  473     hrtc->Instance->ALRMBSSR = subsecondtmpreg;
//  474 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  475     /* Configure the Alarm state: Enable Alarm */
//  476     __HAL_RTC_ALARMB_ENABLE(hrtc); 
//  477   }
//  478   
//  479   /* Enable the write protection for RTC registers */
//  480   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);   
//  481   
//  482   /* Change RTC state */
//  483   hrtc->State = HAL_RTC_STATE_READY; 
//  484   
//  485   /* Process Unlocked */ 
//  486   __HAL_UNLOCK(hrtc);
//  487   
//  488   return HAL_OK;
//  489 }
//  490 
//  491 /**
//  492   * @brief  Sets the specified RTC Alarm with Interrupt 
//  493   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  494   *                the configuration information for RTC.
//  495   * @param  sAlarm: Pointer to Alarm structure
//  496   * @param  Format: Specifies the format of the entered parameters.
//  497   *          This parameter can be one of the following values:
//  498   *             @arg RTC_FORMAT_BIN: Binary data format 
//  499   *             @arg RTC_FORMAT_BCD: BCD data format
//  500   * @note   The Alarm register can only be written when the corresponding Alarm
//  501   *         is disabled (Use the HAL_RTC_DeactivateAlarm()).   
//  502   * @note   The HAL_RTC_SetTime() must be called before enabling the Alarm feature.   
//  503   * @retval HAL status
//  504   */
//  505 HAL_StatusTypeDef HAL_RTC_SetAlarm_IT(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format)
//  506 {
//  507   uint32_t tickstart = 0;
//  508   uint32_t tmpreg = 0;
//  509 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
//  510   uint32_t subsecondtmpreg = 0;
//  511 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  512   
//  513   /* Check the parameters */
//  514   assert_param(IS_RTC_FORMAT(Format));
//  515   assert_param(IS_RTC_ALARM(sAlarm->Alarm));
//  516   assert_param(IS_RTC_ALARM_MASK(sAlarm->AlarmMask));
//  517   assert_param(IS_RTC_ALARM_DATE_WEEKDAY_SEL(sAlarm->AlarmDateWeekDaySel));
//  518 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  519   assert_param(IS_RTC_ALARM_SUB_SECOND_VALUE(sAlarm->AlarmTime.SubSeconds));
//  520   assert_param(IS_RTC_ALARM_SUB_SECOND_MASK(sAlarm->AlarmSubSecondMask));
//  521 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  522   
//  523   /* Process Locked */ 
//  524   __HAL_LOCK(hrtc);
//  525   
//  526   hrtc->State = HAL_RTC_STATE_BUSY;
//  527   
//  528   if(Format == RTC_FORMAT_BIN)
//  529   {
//  530     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  531     {
//  532       assert_param(IS_RTC_HOUR12(sAlarm->AlarmTime.Hours));
//  533       assert_param(IS_RTC_HOURFORMAT12(sAlarm->AlarmTime.TimeFormat));
//  534     } 
//  535     else
//  536     {
//  537       sAlarm->AlarmTime.TimeFormat = 0x00;
//  538       assert_param(IS_RTC_HOUR24(sAlarm->AlarmTime.Hours));
//  539     }
//  540     assert_param(IS_RTC_MINUTES(sAlarm->AlarmTime.Minutes));
//  541     assert_param(IS_RTC_SECONDS(sAlarm->AlarmTime.Seconds));
//  542     
//  543     if(sAlarm->AlarmDateWeekDaySel == RTC_ALARMDATEWEEKDAYSEL_DATE)
//  544     {
//  545       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_DATE(sAlarm->AlarmDateWeekDay));
//  546     }
//  547     else
//  548     {
//  549       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(sAlarm->AlarmDateWeekDay));
//  550     }
//  551     tmpreg = (((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Hours) << 16) | \ 
//  552               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Minutes) << 8) | \ 
//  553               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmTime.Seconds)) | \ 
//  554               ((uint32_t)(sAlarm->AlarmTime.TimeFormat) << 16) | \ 
//  555               ((uint32_t)RTC_ByteToBcd2(sAlarm->AlarmDateWeekDay) << 24) | \ 
//  556               ((uint32_t)sAlarm->AlarmDateWeekDaySel) | \ 
//  557               ((uint32_t)sAlarm->AlarmMask)); 
//  558   }
//  559   else
//  560   {
//  561     if((hrtc->Instance->CR & RTC_CR_FMT) != (uint32_t)RESET)
//  562     {
//  563       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmTime.Hours);
//  564       assert_param(IS_RTC_HOUR12(tmpreg));
//  565       assert_param(IS_RTC_HOURFORMAT12(sAlarm->AlarmTime.TimeFormat));
//  566     } 
//  567     else
//  568     {
//  569       sAlarm->AlarmTime.TimeFormat = 0x00;
//  570       assert_param(IS_RTC_HOUR24(RTC_Bcd2ToByte(sAlarm->AlarmTime.Hours)));
//  571     }
//  572     
//  573     assert_param(IS_RTC_MINUTES(RTC_Bcd2ToByte(sAlarm->AlarmTime.Minutes)));
//  574     assert_param(IS_RTC_SECONDS(RTC_Bcd2ToByte(sAlarm->AlarmTime.Seconds)));
//  575     
//  576     if(sAlarm->AlarmDateWeekDaySel == RTC_ALARMDATEWEEKDAYSEL_DATE)
//  577     {
//  578       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmDateWeekDay);
//  579       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_DATE(tmpreg));    
//  580     }
//  581     else
//  582     {
//  583       tmpreg = RTC_Bcd2ToByte(sAlarm->AlarmDateWeekDay);
//  584       assert_param(IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(tmpreg));      
//  585     }
//  586     tmpreg = (((uint32_t)(sAlarm->AlarmTime.Hours) << 16) | \ 
//  587               ((uint32_t)(sAlarm->AlarmTime.Minutes) << 8) | \ 
//  588               ((uint32_t) sAlarm->AlarmTime.Seconds) | \ 
//  589               ((uint32_t)(sAlarm->AlarmTime.TimeFormat) << 16) | \ 
//  590               ((uint32_t)(sAlarm->AlarmDateWeekDay) << 24) | \ 
//  591               ((uint32_t)sAlarm->AlarmDateWeekDaySel) | \ 
//  592               ((uint32_t)sAlarm->AlarmMask));     
//  593   }
//  594 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  595   /* Configure the Alarm A or Alarm B Sub Second registers */
//  596   subsecondtmpreg = (uint32_t)((uint32_t)(sAlarm->AlarmTime.SubSeconds) | (uint32_t)(sAlarm->AlarmSubSecondMask));
//  597 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  598   
//  599   /* Disable the write protection for RTC registers */
//  600   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  601   
//  602   /* Configure the Alarm register */
//  603   if(sAlarm->Alarm == RTC_ALARM_A)
//  604   {
//  605     /* Disable the Alarm A interrupt */
//  606     __HAL_RTC_ALARMA_DISABLE(hrtc);
//  607 
//  608     /* Clear flag alarm A */
//  609     __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRAF);
//  610 
//  611     tickstart = HAL_GetTick();
//  612     /* Wait till RTC ALRAWF flag is set and if Time out is reached exit */
//  613     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRAWF) == RESET)
//  614     {
//  615       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  616       {
//  617         /* Enable the write protection for RTC registers */
//  618         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  619         
//  620         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  621         
//  622         /* Process Unlocked */ 
//  623         __HAL_UNLOCK(hrtc);
//  624         
//  625         return HAL_TIMEOUT;
//  626       }  
//  627     }
//  628     
//  629     hrtc->Instance->ALRMAR = (uint32_t)tmpreg;
//  630 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  631     /* Configure the Alarm A Sub Second register */
//  632     hrtc->Instance->ALRMASSR = subsecondtmpreg;
//  633 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  634     /* Configure the Alarm state: Enable Alarm */
//  635     __HAL_RTC_ALARMA_ENABLE(hrtc);
//  636     /* Configure the Alarm interrupt */
//  637     __HAL_RTC_ALARM_ENABLE_IT(hrtc,RTC_IT_ALRA);
//  638   }
//  639   else
//  640   {
//  641     /* Disable the Alarm B interrupt */
//  642     __HAL_RTC_ALARMB_DISABLE(hrtc);
//  643 
//  644     /* Clear flag alarm B */
//  645     __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRBF);
//  646 
//  647     tickstart = HAL_GetTick();
//  648     /* Wait till RTC ALRBWF flag is set and if Time out is reached exit */
//  649     while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRBWF) == RESET)
//  650     {
//  651       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  652       {
//  653         /* Enable the write protection for RTC registers */
//  654         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  655         
//  656         hrtc->State = HAL_RTC_STATE_TIMEOUT; 
//  657         
//  658         /* Process Unlocked */ 
//  659         __HAL_UNLOCK(hrtc);
//  660         
//  661         return HAL_TIMEOUT;
//  662       }  
//  663     }
//  664 
//  665     hrtc->Instance->ALRMBR = (uint32_t)tmpreg;
//  666 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  667     /* Configure the Alarm B Sub Second register */
//  668     hrtc->Instance->ALRMBSSR = subsecondtmpreg;
//  669 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  670     /* Configure the Alarm state: Enable Alarm */
//  671     __HAL_RTC_ALARMB_ENABLE(hrtc);
//  672     /* Configure the Alarm interrupt */
//  673     __HAL_RTC_ALARM_ENABLE_IT(hrtc, RTC_IT_ALRB);
//  674   }
//  675 
//  676   /* RTC Alarm Interrupt Configuration: EXTI configuration */
//  677   __HAL_RTC_ALARM_EXTI_ENABLE_IT();
//  678   
//  679   __HAL_RTC_ALARM_EXTI_ENABLE_RISING_EDGE();
//  680   
//  681   /* Enable the write protection for RTC registers */
//  682   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);  
//  683   
//  684   hrtc->State = HAL_RTC_STATE_READY; 
//  685   
//  686   /* Process Unlocked */ 
//  687   __HAL_UNLOCK(hrtc);  
//  688   
//  689   return HAL_OK;
//  690 }
//  691 
//  692 /**
//  693   * @brief  Gets the RTC Alarm value and masks.
//  694   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  695   *                the configuration information for RTC.
//  696   * @param  sAlarm: Pointer to Date structure
//  697   * @param  Alarm: Specifies the Alarm.
//  698   *          This parameter can be one of the following values:
//  699   *             @arg RTC_ALARM_A: AlarmA
//  700   *             @arg RTC_ALARM_B: AlarmB  
//  701   * @param  Format: Specifies the format of the entered parameters.
//  702   *          This parameter can be one of the following values:
//  703   *             @arg RTC_FORMAT_BIN: Binary data format 
//  704   *             @arg RTC_FORMAT_BCD: BCD data format
//  705   * @retval HAL status
//  706   */
//  707 HAL_StatusTypeDef HAL_RTC_GetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Alarm, uint32_t Format)
//  708 {
//  709   uint32_t tmpreg = 0;
//  710 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
//  711   uint32_t subsecondtmpreg = 0;
//  712 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  713   
//  714   /* Check the parameters */
//  715   assert_param(IS_RTC_FORMAT(Format));
//  716   assert_param(IS_RTC_ALARM(Alarm));
//  717   
//  718   if(Alarm == RTC_ALARM_A)
//  719   {
//  720     /* AlarmA */
//  721     sAlarm->Alarm = RTC_ALARM_A;
//  722     
//  723     tmpreg = (uint32_t)(hrtc->Instance->ALRMAR);
//  724 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  725     subsecondtmpreg = (uint32_t)((hrtc->Instance->ALRMASSR) & RTC_ALRMASSR_SS);
//  726 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */    
//  727   }
//  728   else
//  729   {
//  730     sAlarm->Alarm = RTC_ALARM_B;
//  731     
//  732     tmpreg = (uint32_t)(hrtc->Instance->ALRMBR);
//  733 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
//  734     subsecondtmpreg = (uint32_t)((hrtc->Instance->ALRMBSSR) & RTC_ALRMBSSR_SS);
//  735 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */    
//  736   }
//  737     
//  738   /* Fill the structure with the read parameters */
//  739   sAlarm->AlarmTime.Hours = (uint32_t)((tmpreg & (RTC_ALRMAR_HT | RTC_ALRMAR_HU)) >> 16);
//  740   sAlarm->AlarmTime.Minutes = (uint32_t)((tmpreg & (RTC_ALRMAR_MNT | RTC_ALRMAR_MNU)) >> 8);
//  741   sAlarm->AlarmTime.Seconds = (uint32_t)(tmpreg & (RTC_ALRMAR_ST | RTC_ALRMAR_SU));
//  742   sAlarm->AlarmTime.TimeFormat = (uint32_t)((tmpreg & RTC_ALRMAR_PM) >> 16);
//  743 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
//  744   sAlarm->AlarmTime.SubSeconds = (uint32_t) subsecondtmpreg;
//  745 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */  
//  746   sAlarm->AlarmDateWeekDay = (uint32_t)((tmpreg & (RTC_ALRMAR_DT | RTC_ALRMAR_DU)) >> 24);
//  747   sAlarm->AlarmDateWeekDaySel = (uint32_t)(tmpreg & RTC_ALRMAR_WDSEL);
//  748   sAlarm->AlarmMask = (uint32_t)(tmpreg & RTC_ALARMMASK_ALL);
//  749     
//  750   if(Format == RTC_FORMAT_BIN)
//  751   {
//  752     sAlarm->AlarmTime.Hours = RTC_Bcd2ToByte(sAlarm->AlarmTime.Hours);
//  753     sAlarm->AlarmTime.Minutes = RTC_Bcd2ToByte(sAlarm->AlarmTime.Minutes);
//  754     sAlarm->AlarmTime.Seconds = RTC_Bcd2ToByte(sAlarm->AlarmTime.Seconds);
//  755     sAlarm->AlarmDateWeekDay = RTC_Bcd2ToByte(sAlarm->AlarmDateWeekDay);
//  756   }  
//  757     
//  758   return HAL_OK;
//  759 }
//  760 
//  761 /**
//  762   * @}
//  763   */
//  764 
//  765 
//  766 /** @defgroup RTC_Exported_Functions_Group6 Peripheral Control functions 
//  767  *  @brief   Peripheral Control functions 
//  768  *
//  769 @verbatim   
//  770  ===============================================================================
//  771                      ##### Peripheral Control functions #####
//  772  ===============================================================================  
//  773     [..]
//  774     This subsection provides functions allowing to
//  775       (+) Wait for RTC Time and Date Synchronization
//  776 
//  777 @endverbatim
//  778   * @{
//  779   */
//  780 
//  781 /**
//  782   * @brief  Waits until the RTC Time and Date registers (RTC_TR and RTC_DR) are 
//  783   *         synchronized with RTC APB clock.
//  784   * @note   The RTC Resynchronization mode is write protected, use the 
//  785   *         __HAL_RTC_WRITEPROTECTION_DISABLE() before calling this function.
//  786   * @note   To read the calendar through the shadow registers after Calendar 
//  787   *         initialization, calendar update or after wakeup from low power modes 
//  788   *         the software must first clear the RSF flag. 
//  789   *         The software must then wait until it is set again before reading 
//  790   *         the calendar, which means that the calendar registers have been 
//  791   *         correctly copied into the RTC_TR and RTC_DR shadow registers.   
//  792   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  793   *                the configuration information for RTC.
//  794   * @retval HAL status
//  795   */
//  796 HAL_StatusTypeDef HAL_RTC_WaitForSynchro(RTC_HandleTypeDef* hrtc)
//  797 {
//  798   uint32_t tickstart = 0;
//  799   
//  800 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
//  801   /* If RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
//  802   if((hrtc->Instance->CR & RTC_CR_BYPSHAD) == RESET)
//  803 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
//  804   {
//  805     /* Clear RSF flag */
//  806     hrtc->Instance->ISR &= (uint32_t)RTC_RSF_MASK;
//  807     
//  808   tickstart = HAL_GetTick();
//  809 
//  810     /* Wait the registers to be synchronised */
//  811     while((hrtc->Instance->ISR & RTC_ISR_RSF) == (uint32_t)RESET)
//  812     {
//  813     if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
//  814       {       
//  815         return HAL_TIMEOUT;
//  816       } 
//  817     }
//  818   }
//  819 
//  820   return HAL_OK;
//  821 }
//  822 
//  823 /**
//  824   * @}
//  825   */
//  826 
//  827 /**
//  828   * @}
//  829   */
//  830 
//  831 /**
//  832   * @}
//  833   */
//  834     
//  835 /** @defgroup RTCEx RTCEx
//  836   * @brief RTC Extended HAL module driver
//  837   * @{
//  838   */
//  839   
//  840 /** @defgroup RTCEx_Exported_Functions RTCEx Exported Functions
//  841   * @{
//  842   */
//  843   
//  844 /** @defgroup RTCEx_Exported_Functions_Group4 RTC TimeStamp and Tamper functions
//  845   * @brief    RTC TimeStamp and Tamper functions
//  846   *
//  847 @verbatim   
//  848  ===============================================================================
//  849                  ##### RTC TimeStamp and Tamper functions #####
//  850  ===============================================================================  
//  851  
//  852  [..] This section provides functions allowing to configure TimeStamp feature
//  853 
//  854 @endverbatim
//  855   * @{
//  856   */
//  857 
//  858 /**
//  859   * @brief  Sets TimeStamp.
//  860   * @note   This API must be called before enabling the TimeStamp feature. 
//  861   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  862   *                the configuration information for RTC.
//  863   * @param  TimeStampEdge: Specifies the pin edge on which the TimeStamp is 
//  864   *         activated.
//  865   *          This parameter can be one of the following values:
//  866   *             @arg RTC_TIMESTAMPEDGE_RISING: the Time stamp event occurs on the  
//  867   *                                        rising edge of the related pin.
//  868   *             @arg RTC_TIMESTAMPEDGE_FALLING: the Time stamp event occurs on the 
//  869   *                                         falling edge of the related pin.
//  870   * @retval HAL status
//  871   */
//  872 HAL_StatusTypeDef HAL_RTCEx_SetTimeStamp(RTC_HandleTypeDef *hrtc, uint32_t TimeStampEdge)
//  873 {
//  874   uint32_t tmpreg = 0;
//  875 
//  876   /* Check the parameters */
//  877   assert_param(IS_TIMESTAMP_EDGE(TimeStampEdge));
//  878 
//  879   /* Process Locked */
//  880   __HAL_LOCK(hrtc);
//  881 
//  882   hrtc->State = HAL_RTC_STATE_BUSY;
//  883 
//  884   /* Get the RTC_CR register and clear the bits to be configured */
//  885   tmpreg = (uint32_t)(hrtc->Instance->CR & (uint32_t)~(RTC_CR_TSEDGE | RTC_CR_TSE));
//  886 
//  887   tmpreg|= TimeStampEdge;
//  888 
//  889   /* Disable the write protection for RTC registers */
//  890   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  891 
//  892   /* Configure the Time Stamp TSEDGE and Enable bits */
//  893   hrtc->Instance->CR = (uint32_t)tmpreg;
//  894 
//  895   __HAL_RTC_TIMESTAMP_ENABLE(hrtc);
//  896 
//  897   /* Enable the write protection for RTC registers */
//  898   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  899 
//  900   /* Change RTC state */
//  901   hrtc->State = HAL_RTC_STATE_READY;
//  902 
//  903   /* Process Unlocked */
//  904   __HAL_UNLOCK(hrtc);
//  905 
//  906   return HAL_OK;
//  907 }
//  908 
//  909 /**
//  910   * @brief  Sets TimeStamp with Interrupt. 
//  911   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  912   *                the configuration information for RTC.
//  913   * @note   This API must be called before enabling the TimeStamp feature.
//  914   * @param  TimeStampEdge: Specifies the pin edge on which the TimeStamp is 
//  915   *         activated.
//  916   *          This parameter can be one of the following values:
//  917   *             @arg RTC_TIMESTAMPEDGE_RISING: the Time stamp event occurs on the  
//  918   *                                        rising edge of the related pin.
//  919   *             @arg RTC_TIMESTAMPEDGE_FALLING: the Time stamp event occurs on the 
//  920   *                                         falling edge of the related pin.
//  921   * @retval HAL status
//  922   */
//  923 HAL_StatusTypeDef HAL_RTCEx_SetTimeStamp_IT(RTC_HandleTypeDef *hrtc, uint32_t TimeStampEdge)
//  924 {
//  925   uint32_t tmpreg = 0;
//  926 
//  927   /* Check the parameters */
//  928   assert_param(IS_TIMESTAMP_EDGE(TimeStampEdge));
//  929 
//  930   /* Process Locked */ 
//  931   __HAL_LOCK(hrtc);
//  932 
//  933   hrtc->State = HAL_RTC_STATE_BUSY;
//  934 
//  935   /* Get the RTC_CR register and clear the bits to be configured */
//  936   tmpreg = (uint32_t)(hrtc->Instance->CR & (uint32_t)~(RTC_CR_TSEDGE | RTC_CR_TSE));
//  937 
//  938   tmpreg |= TimeStampEdge;
//  939 
//  940   /* Disable the write protection for RTC registers */
//  941   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  942 
//  943   /* Configure the Time Stamp TSEDGE and Enable bits */
//  944   hrtc->Instance->CR = (uint32_t)tmpreg;
//  945 
//  946   __HAL_RTC_TIMESTAMP_ENABLE(hrtc);
//  947 
//  948   /* Enable IT timestamp */
//  949   __HAL_RTC_TIMESTAMP_ENABLE_IT(hrtc,RTC_IT_TS);
//  950 
//  951   /* RTC timestamp Interrupt Configuration: EXTI configuration */
//  952   __HAL_RTC_TAMPER_TIMESTAMP_EXTI_ENABLE_IT();
//  953 
//  954   __HAL_RTC_TAMPER_TIMESTAMP_EXTI_ENABLE_RISING_EDGE();
//  955 
//  956   /* Enable the write protection for RTC registers */
//  957   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  958 
//  959   hrtc->State = HAL_RTC_STATE_READY;
//  960 
//  961   /* Process Unlocked */
//  962   __HAL_UNLOCK(hrtc);
//  963 
//  964   return HAL_OK;
//  965 }
//  966 
//  967 /**
//  968   * @brief  Deactivates TimeStamp. 
//  969   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
//  970   *                the configuration information for RTC.
//  971   * @retval HAL status
//  972   */
//  973 HAL_StatusTypeDef HAL_RTCEx_DeactivateTimeStamp(RTC_HandleTypeDef *hrtc)
//  974 {
//  975   uint32_t tmpreg = 0;
//  976 
//  977   /* Process Locked */
//  978   __HAL_LOCK(hrtc);
//  979 
//  980   hrtc->State = HAL_RTC_STATE_BUSY;
//  981 
//  982   /* Disable the write protection for RTC registers */
//  983   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
//  984 
//  985   /* In case of interrupt mode is used, the interrupt source must disabled */
//  986   __HAL_RTC_TIMESTAMP_DISABLE_IT(hrtc, RTC_IT_TS);
//  987 
//  988   /* Get the RTC_CR register and clear the bits to be configured */
//  989   tmpreg = (uint32_t)(hrtc->Instance->CR & (uint32_t)~(RTC_CR_TSEDGE | RTC_CR_TSE));
//  990 
//  991   /* Configure the Time Stamp TSEDGE and Enable bits */
//  992   hrtc->Instance->CR = (uint32_t)tmpreg;
//  993 
//  994   /* Enable the write protection for RTC registers */
//  995   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
//  996 
//  997   hrtc->State = HAL_RTC_STATE_READY;
//  998 
//  999   /* Process Unlocked */
// 1000   __HAL_UNLOCK(hrtc);
// 1001 
// 1002   return HAL_OK;
// 1003 }
// 1004 
// 1005 /**
// 1006   * @brief  Gets the RTC TimeStamp value.
// 1007   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1008   *                the configuration information for RTC.
// 1009   * @param  sTimeStamp: Pointer to Time structure
// 1010   * @param  sTimeStampDate: Pointer to Date structure  
// 1011   * @param  Format: specifies the format of the entered parameters.
// 1012   *          This parameter can be one of the following values:
// 1013   *             RTC_FORMAT_BIN: Binary data format 
// 1014   *             RTC_FORMAT_BCD: BCD data format
// 1015   * @retval HAL status
// 1016   */
// 1017 HAL_StatusTypeDef HAL_RTCEx_GetTimeStamp(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef* sTimeStamp, RTC_DateTypeDef* sTimeStampDate, uint32_t Format)
// 1018 {
// 1019   uint32_t tmptime = 0, tmpdate = 0;
// 1020 
// 1021   /* Check the parameters */
// 1022   assert_param(IS_RTC_FORMAT(Format));
// 1023 
// 1024   /* Get the TimeStamp time and date registers values */
// 1025   tmptime = (uint32_t)(hrtc->Instance->TSTR & RTC_TR_RESERVED_MASK);
// 1026   tmpdate = (uint32_t)(hrtc->Instance->TSDR & RTC_DR_RESERVED_MASK);
// 1027 
// 1028   /* Fill the Time structure fields with the read parameters */
// 1029   sTimeStamp->Hours = (uint8_t)((tmptime & (RTC_TR_HT | RTC_TR_HU)) >> 16);
// 1030   sTimeStamp->Minutes = (uint8_t)((tmptime & (RTC_TR_MNT | RTC_TR_MNU)) >> 8);
// 1031   sTimeStamp->Seconds = (uint8_t)(tmptime & (RTC_TR_ST | RTC_TR_SU));
// 1032   sTimeStamp->TimeFormat = (uint8_t)((tmptime & (RTC_TR_PM)) >> 16);
// 1033 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1034   sTimeStamp->SubSeconds = (uint32_t)((hrtc->Instance->TSSSR) & RTC_TSSSR_SS);
// 1035 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1036 
// 1037   /* Fill the Date structure fields with the read parameters */
// 1038   sTimeStampDate->Year = 0;
// 1039   sTimeStampDate->Month = (uint8_t)((tmpdate & (RTC_DR_MT | RTC_DR_MU)) >> 8);
// 1040   sTimeStampDate->Date = (uint8_t)(tmpdate & (RTC_DR_DT | RTC_DR_DU));
// 1041   sTimeStampDate->WeekDay = (uint8_t)((tmpdate & (RTC_DR_WDU)) >> 13);
// 1042 
// 1043   /* Check the input parameters format */
// 1044   if(Format == RTC_FORMAT_BIN)
// 1045   {
// 1046     /* Convert the TimeStamp structure parameters to Binary format */
// 1047     sTimeStamp->Hours = (uint8_t)RTC_Bcd2ToByte(sTimeStamp->Hours);
// 1048     sTimeStamp->Minutes = (uint8_t)RTC_Bcd2ToByte(sTimeStamp->Minutes);
// 1049     sTimeStamp->Seconds = (uint8_t)RTC_Bcd2ToByte(sTimeStamp->Seconds);
// 1050 
// 1051     /* Convert the DateTimeStamp structure parameters to Binary format */
// 1052     sTimeStampDate->Month = (uint8_t)RTC_Bcd2ToByte(sTimeStampDate->Month);
// 1053     sTimeStampDate->Date = (uint8_t)RTC_Bcd2ToByte(sTimeStampDate->Date);
// 1054     sTimeStampDate->WeekDay = (uint8_t)RTC_Bcd2ToByte(sTimeStampDate->WeekDay);
// 1055   }
// 1056 
// 1057   /* Clear the TIMESTAMP Flag */
// 1058   __HAL_RTC_TIMESTAMP_CLEAR_FLAG(hrtc, RTC_FLAG_TSF);
// 1059 
// 1060   return HAL_OK;
// 1061 }
// 1062 
// 1063 /**
// 1064   * @brief  Sets Tamper
// 1065   * @note   By calling this API we disable the tamper interrupt for all tampers. 
// 1066   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1067   *                the configuration information for RTC.
// 1068   * @param  sTamper: Pointer to Tamper Structure.
// 1069   * @retval HAL status
// 1070   */
// 1071 HAL_StatusTypeDef HAL_RTCEx_SetTamper(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef* sTamper)
// 1072 {
// 1073   uint32_t tmpreg = 0;
// 1074 
// 1075   /* Check the parameters */
// 1076   assert_param(IS_RTC_TAMPER(sTamper->Tamper));
// 1077   assert_param(IS_RTC_TAMPER_TRIGGER(sTamper->Trigger));
// 1078 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1079   assert_param(IS_RTC_TAMPER_FILTER(sTamper->Filter));
// 1080   assert_param(IS_RTC_TAMPER_SAMPLING_FREQ(sTamper->SamplingFrequency));
// 1081   assert_param(IS_RTC_TAMPER_PRECHARGE_DURATION(sTamper->PrechargeDuration));
// 1082   assert_param(IS_RTC_TAMPER_PULLUP_STATE(sTamper->TamperPullUp));
// 1083   assert_param(IS_RTC_TAMPER_TIMESTAMPONTAMPER_DETECTION(sTamper->TimeStampOnTamperDetection));
// 1084 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1085 
// 1086   /* Process Locked */
// 1087   __HAL_LOCK(hrtc);
// 1088 
// 1089   hrtc->State = HAL_RTC_STATE_BUSY;
// 1090 
// 1091 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1092   if((sTamper->Trigger == RTC_TAMPERTRIGGER_RISINGEDGE))
// 1093   {
// 1094     /* Configure the RTC_TAFCR register */
// 1095     sTamper->Trigger = RTC_TAMPERTRIGGER_RISINGEDGE;
// 1096   }
// 1097   else
// 1098   {
// 1099     sTamper->Trigger = (uint32_t)(sTamper->Tamper << 1);
// 1100   }
// 1101 
// 1102   tmpreg = ((uint32_t)sTamper->Tamper | (uint32_t)sTamper->Trigger | (uint32_t)sTamper->Filter |\ 
// 1103             (uint32_t)sTamper->SamplingFrequency | (uint32_t)sTamper->PrechargeDuration |\ 
// 1104             (uint32_t)sTamper->TamperPullUp | sTamper->TimeStampOnTamperDetection);
// 1105 
// 1106   hrtc->Instance->TAFCR &= (uint32_t)~((uint32_t)sTamper->Tamper | (uint32_t)(sTamper->Tamper << 1) | (uint32_t)RTC_TAFCR_TAMPTS |\ 
// 1107                                        (uint32_t)RTC_TAFCR_TAMPFREQ | (uint32_t)RTC_TAFCR_TAMPFLT | (uint32_t)RTC_TAFCR_TAMPPRCH |\ 
// 1108                                        (uint32_t)RTC_TAFCR_TAMPPUDIS | (uint32_t)RTC_TAFCR_TAMPIE);
// 1109 #else
// 1110   tmpreg = ((uint32_t)sTamper->Tamper | (uint32_t)(sTamper->Trigger));
// 1111 
// 1112   hrtc->Instance->TAFCR &= (uint32_t)~((uint32_t)RTC_TAFCR_TAMP1E | (uint32_t)RTC_TAFCR_TAMP1TRG);
// 1113 
// 1114 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1115   hrtc->Instance->TAFCR |= tmpreg;
// 1116   
// 1117   hrtc->State = HAL_RTC_STATE_READY; 
// 1118 
// 1119   /* Process Unlocked */
// 1120   __HAL_UNLOCK(hrtc);
// 1121 
// 1122   return HAL_OK;
// 1123 }
// 1124 
// 1125 /**
// 1126   * @brief  Sets Tamper with interrupt.
// 1127   * @note   By calling this API we force the tamper interrupt for all tampers.
// 1128   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1129   *                the configuration information for RTC.
// 1130   * @param  sTamper: Pointer to RTC Tamper.
// 1131   * @retval HAL status
// 1132   */
// 1133 HAL_StatusTypeDef HAL_RTCEx_SetTamper_IT(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef* sTamper)
// 1134 {
// 1135   uint32_t tmpreg = 0;
// 1136 
// 1137   /* Check the parameters */
// 1138   assert_param(IS_RTC_TAMPER(sTamper->Tamper)); 
// 1139   assert_param(IS_RTC_TAMPER_TRIGGER(sTamper->Trigger));
// 1140 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1141   assert_param(IS_RTC_TAMPER_FILTER(sTamper->Filter));
// 1142   assert_param(IS_RTC_TAMPER_SAMPLING_FREQ(sTamper->SamplingFrequency));
// 1143   assert_param(IS_RTC_TAMPER_PRECHARGE_DURATION(sTamper->PrechargeDuration));
// 1144   assert_param(IS_RTC_TAMPER_PULLUP_STATE(sTamper->TamperPullUp));
// 1145   assert_param(IS_RTC_TAMPER_TIMESTAMPONTAMPER_DETECTION(sTamper->TimeStampOnTamperDetection));
// 1146 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1147 
// 1148   /* Process Locked */
// 1149   __HAL_LOCK(hrtc);
// 1150 
// 1151   hrtc->State = HAL_RTC_STATE_BUSY;
// 1152 
// 1153 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1154   /* Configure the tamper trigger */
// 1155   if((sTamper->Trigger == RTC_TAMPERTRIGGER_RISINGEDGE))
// 1156   {
// 1157     sTamper->Trigger = RTC_TAMPERTRIGGER_RISINGEDGE;
// 1158   }
// 1159   else
// 1160   {
// 1161     sTamper->Trigger = (uint32_t) (sTamper->Tamper<<1);
// 1162   }
// 1163 
// 1164   tmpreg = ((uint32_t)sTamper->Tamper | (uint32_t)sTamper->Trigger | (uint32_t)sTamper->Filter |\ 
// 1165             (uint32_t)sTamper->SamplingFrequency | (uint32_t)sTamper->PrechargeDuration |\ 
// 1166             (uint32_t)sTamper->TamperPullUp | sTamper->TimeStampOnTamperDetection);
// 1167 
// 1168   hrtc->Instance->TAFCR &= (uint32_t)~((uint32_t)sTamper->Tamper | (uint32_t)(sTamper->Tamper << 1) | (uint32_t)RTC_TAFCR_TAMPTS |\ 
// 1169                                        (uint32_t)RTC_TAFCR_TAMPFREQ | (uint32_t)RTC_TAFCR_TAMPFLT | (uint32_t)RTC_TAFCR_TAMPPRCH |\ 
// 1170                                        (uint32_t)RTC_TAFCR_TAMPPUDIS);
// 1171 #else
// 1172   tmpreg = ((uint32_t)sTamper->Tamper | (uint32_t)sTamper->Trigger);
// 1173 
// 1174   hrtc->Instance->TAFCR &= (uint32_t)~((uint32_t)RTC_TAFCR_TAMP1E | (uint32_t)RTC_TAFCR_TAMP1TRG | (uint32_t)RTC_TAFCR_TAMPIE);
// 1175 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1176   hrtc->Instance->TAFCR |= tmpreg;
// 1177 
// 1178   /* Configure the Tamper Interrupt in the RTC_TAFCR */
// 1179   hrtc->Instance->TAFCR |= (uint32_t)RTC_TAFCR_TAMPIE;
// 1180 
// 1181   /* RTC Tamper Interrupt Configuration: EXTI configuration */
// 1182   __HAL_RTC_TAMPER_TIMESTAMP_EXTI_ENABLE_IT();
// 1183 
// 1184   __HAL_RTC_TAMPER_TIMESTAMP_EXTI_ENABLE_RISING_EDGE();
// 1185 
// 1186   hrtc->State = HAL_RTC_STATE_READY;
// 1187 
// 1188   /* Process Unlocked */
// 1189   __HAL_UNLOCK(hrtc);
// 1190 
// 1191   return HAL_OK;
// 1192 }
// 1193 
// 1194 /**
// 1195   * @brief  Deactivates Tamper.
// 1196   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1197   *                the configuration information for RTC.
// 1198   * @param  Tamper: Selected tamper pin.
// 1199   *          This parameter can be a value of @ref RTCEx_Tamper_Pins_Definitions
// 1200   * @retval HAL status
// 1201   */
// 1202 HAL_StatusTypeDef HAL_RTCEx_DeactivateTamper(RTC_HandleTypeDef *hrtc, uint32_t Tamper)
// 1203 {
// 1204   assert_param(IS_RTC_TAMPER(Tamper));
// 1205 
// 1206   /* Process Locked */
// 1207   __HAL_LOCK(hrtc);
// 1208 
// 1209   hrtc->State = HAL_RTC_STATE_BUSY;
// 1210 
// 1211   /* Disable the selected Tamper pin */
// 1212   hrtc->Instance->TAFCR &= (uint32_t)~Tamper;
// 1213 
// 1214   hrtc->State = HAL_RTC_STATE_READY;
// 1215 
// 1216   /* Process Unlocked */
// 1217   __HAL_UNLOCK(hrtc);
// 1218 
// 1219   return HAL_OK;
// 1220 }
// 1221 
// 1222 /**
// 1223   * @brief  This function handles TimeStamp interrupt request.
// 1224   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1225   *                the configuration information for RTC.
// 1226   * @retval None
// 1227   */
// 1228 void HAL_RTCEx_TamperTimeStampIRQHandler(RTC_HandleTypeDef *hrtc)
// 1229 { 
// 1230   /* Get the TimeStamp interrupt source enable status */
// 1231   if(__HAL_RTC_TIMESTAMP_GET_IT_SOURCE(hrtc, RTC_IT_TS) != RESET)
// 1232   {
// 1233     /* Get the pending status of the TIMESTAMP Interrupt */
// 1234     if(__HAL_RTC_TIMESTAMP_GET_FLAG(hrtc, RTC_FLAG_TSF) != RESET)
// 1235     {
// 1236       /* TIMESTAMP callback */ 
// 1237       HAL_RTCEx_TimeStampEventCallback(hrtc);
// 1238       
// 1239       /* Clear the TIMESTAMP interrupt pending bit */
// 1240       __HAL_RTC_TIMESTAMP_CLEAR_FLAG(hrtc, RTC_FLAG_TSF);
// 1241     }
// 1242   }
// 1243 
// 1244   /* Get the Tamper1 interrupts source enable status */
// 1245   if(__HAL_RTC_TAMPER_GET_IT_SOURCE(hrtc, RTC_IT_TAMP | RTC_IT_TAMP1) != RESET)
// 1246   {
// 1247     /* Get the pending status of the Tamper1 Interrupt */
// 1248     if(__HAL_RTC_TAMPER_GET_FLAG(hrtc, RTC_FLAG_TAMP1F) != RESET)
// 1249     {
// 1250       /* Tamper1 callback */
// 1251       HAL_RTCEx_Tamper1EventCallback(hrtc);
// 1252 
// 1253       /* Clear the Tamper1 interrupt pending bit */
// 1254       __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc, RTC_FLAG_TAMP1F);
// 1255     }
// 1256   }
// 1257 
// 1258 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1259   /* Get the Tamper2 interrupts source enable status */
// 1260   if(__HAL_RTC_TAMPER_GET_IT_SOURCE(hrtc, RTC_IT_TAMP | RTC_IT_TAMP2) != RESET)
// 1261   {
// 1262     /* Get the pending status of the Tamper2 Interrupt */
// 1263     if(__HAL_RTC_TAMPER_GET_FLAG(hrtc, RTC_FLAG_TAMP2F) != RESET)
// 1264     {
// 1265       /* Tamper2 callback */
// 1266       HAL_RTCEx_Tamper2EventCallback(hrtc);
// 1267 
// 1268       /* Clear the Tamper2 interrupt pending bit */
// 1269       __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc, RTC_FLAG_TAMP2F);
// 1270     }
// 1271   }
// 1272 
// 1273   /* Get the Tamper3 interrupts source enable status */
// 1274   if(__HAL_RTC_TAMPER_GET_IT_SOURCE(hrtc, RTC_IT_TAMP | RTC_IT_TAMP3) != RESET)
// 1275   {
// 1276     /* Get the pending status of the Tamper3 Interrupt */
// 1277     if(__HAL_RTC_TAMPER_GET_FLAG(hrtc, RTC_FLAG_TAMP3F) != RESET)
// 1278     {
// 1279       /* Tamper3 callback */
// 1280       HAL_RTCEx_Tamper3EventCallback(hrtc);
// 1281 
// 1282       /* Clear the Tamper3 interrupt pending bit */
// 1283       __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc, RTC_FLAG_TAMP3F);
// 1284     }
// 1285   }
// 1286 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1287   
// 1288   /* Clear the EXTI's Flag for RTC TimeStamp and Tamper */
// 1289   __HAL_RTC_TAMPER_TIMESTAMP_EXTI_CLEAR_FLAG();
// 1290 
// 1291   /* Change RTC state */
// 1292   hrtc->State = HAL_RTC_STATE_READY;
// 1293 }
// 1294 
// 1295 /**
// 1296   * @brief  TimeStamp callback. 
// 1297   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1298   *                the configuration information for RTC.
// 1299   * @retval None
// 1300   */
// 1301 __weak void HAL_RTCEx_TimeStampEventCallback(RTC_HandleTypeDef *hrtc)
// 1302 {
// 1303   /* Prevent unused argument(s) compilation warning */
// 1304   UNUSED(hrtc);
// 1305 
// 1306   /* NOTE : This function Should not be modified, when the callback is needed,
// 1307             the HAL_RTCEx_TimeStampEventCallback could be implemented in the user file
// 1308   */
// 1309 }
// 1310 
// 1311 /**
// 1312   * @brief  Tamper 1 callback. 
// 1313   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1314   *                the configuration information for RTC.
// 1315   * @retval None
// 1316   */
// 1317 __weak void HAL_RTCEx_Tamper1EventCallback(RTC_HandleTypeDef *hrtc)
// 1318 {
// 1319   /* Prevent unused argument(s) compilation warning */
// 1320   UNUSED(hrtc);
// 1321 
// 1322   /* NOTE : This function Should not be modified, when the callback is needed,
// 1323             the HAL_RTCEx_Tamper1EventCallback could be implemented in the user file
// 1324    */
// 1325 }
// 1326 
// 1327 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1328 /**
// 1329   * @brief  Tamper 2 callback. 
// 1330   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1331   *                the configuration information for RTC.
// 1332   * @retval None
// 1333   */
// 1334 __weak void HAL_RTCEx_Tamper2EventCallback(RTC_HandleTypeDef *hrtc)
// 1335 {
// 1336   /* Prevent unused argument(s) compilation warning */
// 1337   UNUSED(hrtc);
// 1338 
// 1339   /* NOTE : This function should not be modified, when the callback is needed,
// 1340             the HAL_RTCEx_Tamper2EventCallback could be implemented in the user file
// 1341    */
// 1342 }
// 1343 
// 1344 /**
// 1345   * @brief  Tamper 3 callback. 
// 1346   * @param  hrtc: RTC handle
// 1347   * @retval None
// 1348   */
// 1349 __weak void HAL_RTCEx_Tamper3EventCallback(RTC_HandleTypeDef *hrtc)
// 1350 {
// 1351   /* Prevent unused argument(s) compilation warning */
// 1352   UNUSED(hrtc);
// 1353 
// 1354   /* NOTE : This function Should not be modified, when the callback is needed,
// 1355             the HAL_RTCEx_Tamper3EventCallback could be implemented in the user file
// 1356    */
// 1357 }
// 1358 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1359 
// 1360 /**
// 1361   * @brief  This function handles TimeStamp polling request.
// 1362   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1363   *                the configuration information for RTC.
// 1364   * @param  Timeout: Timeout duration
// 1365   * @retval HAL status
// 1366   */
// 1367 HAL_StatusTypeDef HAL_RTCEx_PollForTimeStampEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 1368 {
// 1369   uint32_t tickstart = HAL_GetTick();
// 1370 
// 1371   while(__HAL_RTC_TIMESTAMP_GET_FLAG(hrtc, RTC_FLAG_TSF) == RESET)
// 1372   {
// 1373     if(__HAL_RTC_TIMESTAMP_GET_FLAG(hrtc, RTC_FLAG_TSOVF) != RESET)
// 1374     {
// 1375       /* Clear the TIMESTAMP OverRun Flag */
// 1376       __HAL_RTC_TIMESTAMP_CLEAR_FLAG(hrtc, RTC_FLAG_TSOVF);
// 1377 
// 1378       /* Change TIMESTAMP state */
// 1379       hrtc->State = HAL_RTC_STATE_ERROR;
// 1380 
// 1381       return HAL_ERROR;
// 1382     }
// 1383 
// 1384     if(Timeout != HAL_MAX_DELAY)
// 1385     {
// 1386       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1387       {
// 1388         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1389         return HAL_TIMEOUT;
// 1390       }
// 1391     }
// 1392   }
// 1393 
// 1394   /* Change RTC state */
// 1395   hrtc->State = HAL_RTC_STATE_READY;
// 1396 
// 1397   return HAL_OK;
// 1398 }
// 1399 
// 1400 /**
// 1401   * @brief  This function handles Tamper1 Polling.
// 1402   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1403   *                the configuration information for RTC.
// 1404   * @param  Timeout: Timeout duration
// 1405   * @retval HAL status
// 1406   */
// 1407 HAL_StatusTypeDef HAL_RTCEx_PollForTamper1Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 1408 {  
// 1409   uint32_t tickstart = HAL_GetTick();
// 1410 
// 1411   /* Get the status of the Interrupt */
// 1412   while(__HAL_RTC_TAMPER_GET_FLAG(hrtc,RTC_FLAG_TAMP1F)== RESET)
// 1413   {
// 1414     if(Timeout != HAL_MAX_DELAY)
// 1415     {
// 1416       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1417       {
// 1418         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1419         return HAL_TIMEOUT;
// 1420       }
// 1421     }
// 1422   }
// 1423 
// 1424   /* Clear the Tamper Flag */
// 1425   __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc,RTC_FLAG_TAMP1F);
// 1426 
// 1427   /* Change RTC state */
// 1428   hrtc->State = HAL_RTC_STATE_READY;
// 1429 
// 1430   return HAL_OK;
// 1431 }
// 1432 
// 1433 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 1434 /**
// 1435   * @brief  This function handles Tamper2 Polling.
// 1436   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1437   *                the configuration information for RTC.
// 1438   * @param  Timeout: Timeout duration
// 1439   * @retval HAL status
// 1440   */
// 1441 HAL_StatusTypeDef HAL_RTCEx_PollForTamper2Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 1442 {  
// 1443   uint32_t tickstart = HAL_GetTick();
// 1444 
// 1445   /* Get the status of the Interrupt */
// 1446   while(__HAL_RTC_TAMPER_GET_FLAG(hrtc,RTC_FLAG_TAMP2F) == RESET)
// 1447   {
// 1448     if(Timeout != HAL_MAX_DELAY)
// 1449     {
// 1450       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1451       {
// 1452         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1453         return HAL_TIMEOUT;
// 1454       }
// 1455     }
// 1456   }
// 1457 
// 1458   /* Clear the Tamper Flag */
// 1459   __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc,RTC_FLAG_TAMP2F);
// 1460 
// 1461   /* Change RTC state */
// 1462   hrtc->State = HAL_RTC_STATE_READY;
// 1463 
// 1464   return HAL_OK;
// 1465 }
// 1466 
// 1467 /**
// 1468   * @brief  This function handles Tamper3 Polling.
// 1469   * @param  hrtc: RTC handle
// 1470   * @param  Timeout: Timeout duration
// 1471   * @retval HAL status
// 1472   */
// 1473 HAL_StatusTypeDef HAL_RTCEx_PollForTamper3Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 1474 {  
// 1475   uint32_t tickstart = HAL_GetTick();
// 1476 
// 1477   /* Get the status of the Interrupt */
// 1478   while(__HAL_RTC_TAMPER_GET_FLAG(hrtc,RTC_FLAG_TAMP3F) == RESET)
// 1479   {
// 1480     if(Timeout != HAL_MAX_DELAY)
// 1481     {
// 1482       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1483       {
// 1484         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1485         return HAL_TIMEOUT;
// 1486       }
// 1487     }
// 1488   }
// 1489 
// 1490   /* Clear the Tamper Flag */
// 1491   __HAL_RTC_TAMPER_CLEAR_FLAG(hrtc,RTC_FLAG_TAMP3F);
// 1492 
// 1493   /* Change RTC state */
// 1494   hrtc->State = HAL_RTC_STATE_READY;
// 1495 
// 1496   return HAL_OK;
// 1497 }
// 1498 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 1499 
// 1500 /**
// 1501   * @}
// 1502   */
// 1503   
// 1504 /** @defgroup RTCEx_Exported_Functions_Group5 RTC Wake-up functions
// 1505   * @brief    RTC Wake-up functions
// 1506   *
// 1507 @verbatim   
// 1508  ===============================================================================
// 1509                         ##### RTC Wake-up functions #####
// 1510  ===============================================================================  
// 1511  
// 1512  [..] This section provides functions allowing to configure Wake-up feature
// 1513 
// 1514 @endverbatim
// 1515   * @{
// 1516   */
// 1517 
// 1518 /**
// 1519   * @brief  Set wake up timer.
// 1520   * @param  hrtc: RTC handle
// 1521   * @param  WakeUpCounter: Wake up counter
// 1522   * @param  WakeUpClock: Wake up clock  
// 1523   * @retval HAL status
// 1524   */
// 1525 HAL_StatusTypeDef HAL_RTCEx_SetWakeUpTimer(RTC_HandleTypeDef *hrtc, uint32_t WakeUpCounter, uint32_t WakeUpClock)
// 1526 {
// 1527   uint32_t tickstart = 0;
// 1528 
// 1529   /* Check the parameters */
// 1530   assert_param(IS_RTC_WAKEUP_CLOCK(WakeUpClock));
// 1531   assert_param(IS_RTC_WAKEUP_COUNTER(WakeUpCounter));
// 1532 
// 1533   /* Process Locked */
// 1534   __HAL_LOCK(hrtc);
// 1535 
// 1536   hrtc->State = HAL_RTC_STATE_BUSY;
// 1537 
// 1538   /* Disable the write protection for RTC registers */
// 1539   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 1540 
// 1541   /*Check RTC WUTWF flag is reset only when wake up timer enabled*/
// 1542   if((hrtc->Instance->CR & RTC_CR_WUTE) != RESET){
// 1543     tickstart = HAL_GetTick();
// 1544 
// 1545    /* Wait till RTC WUTWF flag is reset and if Time out is reached exit */
// 1546    while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTWF) == SET)
// 1547    {
// 1548     if((HAL_GetTick() - tickstart ) > RTC_TIMEOUT_VALUE)
// 1549       {
// 1550        /* Enable the write protection for RTC registers */
// 1551        __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1552 
// 1553        hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1554 
// 1555        /* Process Unlocked */ 
// 1556        __HAL_UNLOCK(hrtc);
// 1557 
// 1558        return HAL_TIMEOUT;
// 1559       }
// 1560     }
// 1561   }
// 1562 
// 1563   __HAL_RTC_WAKEUPTIMER_DISABLE(hrtc);
// 1564      
// 1565   tickstart = HAL_GetTick();
// 1566 
// 1567   /* Wait till RTC WUTWF flag is set and if Time out is reached exit */
// 1568   while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTWF) == RESET)
// 1569   {
// 1570     if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
// 1571     {
// 1572       /* Enable the write protection for RTC registers */
// 1573       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1574 
// 1575       hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1576 
// 1577       /* Process Unlocked */
// 1578       __HAL_UNLOCK(hrtc);
// 1579 
// 1580       return HAL_TIMEOUT;
// 1581     }
// 1582   }
// 1583 
// 1584   /* Clear the Wakeup Timer clock source bits in CR register */
// 1585   hrtc->Instance->CR &= (uint32_t)~RTC_CR_WUCKSEL;
// 1586 
// 1587   /* Configure the clock source */
// 1588   hrtc->Instance->CR |= (uint32_t)WakeUpClock;
// 1589 
// 1590   /* Configure the Wakeup Timer counter */
// 1591   hrtc->Instance->WUTR = (uint32_t)WakeUpCounter;
// 1592 
// 1593    /* Enable the Wakeup Timer */
// 1594   __HAL_RTC_WAKEUPTIMER_ENABLE(hrtc);
// 1595 
// 1596   /* Enable the write protection for RTC registers */
// 1597   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1598 
// 1599   hrtc->State = HAL_RTC_STATE_READY;
// 1600 
// 1601   /* Process Unlocked */
// 1602   __HAL_UNLOCK(hrtc);
// 1603 
// 1604   return HAL_OK;
// 1605 }
// 1606 
// 1607 /**
// 1608   * @brief  Set wake up timer with interrupt.
// 1609   * @param  hrtc: RTC handle
// 1610   * @param  WakeUpCounter: Wake up counter
// 1611   * @param  WakeUpClock: Wake up clock  
// 1612   * @retval HAL status
// 1613   */
// 1614 HAL_StatusTypeDef HAL_RTCEx_SetWakeUpTimer_IT(RTC_HandleTypeDef *hrtc, uint32_t WakeUpCounter, uint32_t WakeUpClock)
// 1615 {
// 1616   uint32_t tickstart = 0;
// 1617 
// 1618   /* Check the parameters */
// 1619   assert_param(IS_RTC_WAKEUP_CLOCK(WakeUpClock));
// 1620   assert_param(IS_RTC_WAKEUP_COUNTER(WakeUpCounter));
// 1621 
// 1622   /* Process Locked */
// 1623   __HAL_LOCK(hrtc);
// 1624 
// 1625   hrtc->State = HAL_RTC_STATE_BUSY;
// 1626 
// 1627   /* Disable the write protection for RTC registers */
// 1628   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 1629 
// 1630   /*Check RTC WUTWF flag is reset only when wake up timer enabled*/
// 1631   if((hrtc->Instance->CR & RTC_CR_WUTE) != RESET){
// 1632     tickstart = HAL_GetTick();
// 1633  
// 1634    /* Wait till RTC WUTWF flag is reset and if Time out is reached exit */
// 1635    while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTWF) == SET)
// 1636    {
// 1637     if((HAL_GetTick() - tickstart ) > RTC_TIMEOUT_VALUE)
// 1638       {
// 1639        /* Enable the write protection for RTC registers */
// 1640        __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1641 
// 1642        hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1643 
// 1644        /* Process Unlocked */ 
// 1645        __HAL_UNLOCK(hrtc);
// 1646 
// 1647        return HAL_TIMEOUT;
// 1648       }
// 1649     }
// 1650   }
// 1651 
// 1652   /* Disable the Wake-Up timer */
// 1653   __HAL_RTC_WAKEUPTIMER_DISABLE(hrtc);
// 1654 
// 1655   /* Clear flag Wake-Up */
// 1656   __HAL_RTC_WAKEUPTIMER_CLEAR_FLAG(hrtc, RTC_FLAG_WUTF);
// 1657 
// 1658   tickstart = HAL_GetTick();
// 1659 
// 1660   /* Wait till RTC WUTWF flag is set and if Time out is reached exit */
// 1661   while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTWF) == RESET)
// 1662   {
// 1663     if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
// 1664     {
// 1665       /* Enable the write protection for RTC registers */
// 1666       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1667 
// 1668       hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1669 
// 1670       /* Process Unlocked */
// 1671       __HAL_UNLOCK(hrtc);
// 1672 
// 1673       return HAL_TIMEOUT;
// 1674     }
// 1675   }
// 1676 
// 1677   /* Configure the Wakeup Timer counter */
// 1678   hrtc->Instance->WUTR = (uint32_t)WakeUpCounter;
// 1679 
// 1680   /* Clear the Wakeup Timer clock source bits in CR register */
// 1681   hrtc->Instance->CR &= (uint32_t)~RTC_CR_WUCKSEL;
// 1682 
// 1683   /* Configure the clock source */
// 1684   hrtc->Instance->CR |= (uint32_t)WakeUpClock;
// 1685 
// 1686   /* RTC WakeUpTimer Interrupt Configuration: EXTI configuration */
// 1687   __HAL_RTC_WAKEUPTIMER_EXTI_ENABLE_IT();
// 1688 
// 1689   __HAL_RTC_WAKEUPTIMER_EXTI_ENABLE_RISING_EDGE();
// 1690 
// 1691   /* Configure the Interrupt in the RTC_CR register */
// 1692   __HAL_RTC_WAKEUPTIMER_ENABLE_IT(hrtc,RTC_IT_WUT);
// 1693 
// 1694   /* Enable the Wakeup Timer */
// 1695   __HAL_RTC_WAKEUPTIMER_ENABLE(hrtc);
// 1696 
// 1697   /* Enable the write protection for RTC registers */
// 1698   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1699 
// 1700   hrtc->State = HAL_RTC_STATE_READY;
// 1701 
// 1702   /* Process Unlocked */
// 1703   __HAL_UNLOCK(hrtc);
// 1704 
// 1705   return HAL_OK;
// 1706 }
// 1707 
// 1708 /**
// 1709   * @brief  Deactivates wake up timer counter.
// 1710   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1711   *                the configuration information for RTC. 
// 1712   * @retval HAL status
// 1713   */
// 1714 uint32_t HAL_RTCEx_DeactivateWakeUpTimer(RTC_HandleTypeDef *hrtc)
// 1715 {
// 1716   uint32_t tickstart = 0;
// 1717 
// 1718   /* Process Locked */
// 1719   __HAL_LOCK(hrtc);
// 1720 
// 1721   hrtc->State = HAL_RTC_STATE_BUSY;
// 1722 
// 1723   /* Disable the write protection for RTC registers */
// 1724   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 1725 
// 1726   /* Disable the Wakeup Timer */
// 1727   __HAL_RTC_WAKEUPTIMER_DISABLE(hrtc);
// 1728 
// 1729   /* In case of interrupt mode is used, the interrupt source must disabled */
// 1730   __HAL_RTC_WAKEUPTIMER_DISABLE_IT(hrtc,RTC_IT_WUT);
// 1731 
// 1732   tickstart = HAL_GetTick();
// 1733   /* Wait till RTC WUTWF flag is set and if Time out is reached exit */
// 1734   while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTWF) == RESET)
// 1735   {
// 1736     if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
// 1737     {
// 1738       /* Enable the write protection for RTC registers */
// 1739       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1740 
// 1741       hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1742 
// 1743       /* Process Unlocked */
// 1744       __HAL_UNLOCK(hrtc);
// 1745 
// 1746       return HAL_TIMEOUT;
// 1747     }
// 1748   }
// 1749 
// 1750   /* Enable the write protection for RTC registers */
// 1751   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1752 
// 1753   hrtc->State = HAL_RTC_STATE_READY;
// 1754 
// 1755   /* Process Unlocked */
// 1756   __HAL_UNLOCK(hrtc);
// 1757 
// 1758   return HAL_OK;
// 1759 }
// 1760 
// 1761 /**
// 1762   * @brief  Gets wake up timer counter.
// 1763   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1764   *                the configuration information for RTC. 
// 1765   * @retval Counter value
// 1766   */
// 1767 uint32_t HAL_RTCEx_GetWakeUpTimer(RTC_HandleTypeDef *hrtc)
// 1768 {
// 1769   /* Get the counter value */
// 1770   return ((uint32_t)(hrtc->Instance->WUTR & RTC_WUTR_WUT));
// 1771 }
// 1772 
// 1773 /**
// 1774   * @brief  This function handles Wake Up Timer interrupt request.
// 1775   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1776   *                the configuration information for RTC.
// 1777   * @retval None
// 1778   */
// 1779 void HAL_RTCEx_WakeUpTimerIRQHandler(RTC_HandleTypeDef *hrtc)
// 1780 {  
// 1781     /* Get the pending status of the WAKEUPTIMER Interrupt */
// 1782     if(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTF) != RESET)
// 1783     {
// 1784       /* WAKEUPTIMER callback */ 
// 1785       HAL_RTCEx_WakeUpTimerEventCallback(hrtc);
// 1786       
// 1787       /* Clear the WAKEUPTIMER interrupt pending bit */
// 1788       __HAL_RTC_WAKEUPTIMER_CLEAR_FLAG(hrtc, RTC_FLAG_WUTF);
// 1789     }
// 1790 
// 1791 
// 1792   /* Clear the EXTI's line Flag for RTC WakeUpTimer */
// 1793   __HAL_RTC_WAKEUPTIMER_EXTI_CLEAR_FLAG();
// 1794   
// 1795   /* Change RTC state */
// 1796   hrtc->State = HAL_RTC_STATE_READY;
// 1797 }
// 1798 
// 1799 /**
// 1800   * @brief  Wake Up Timer callback.
// 1801   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1802   *                the configuration information for RTC.
// 1803   * @retval None
// 1804   */
// 1805 __weak void HAL_RTCEx_WakeUpTimerEventCallback(RTC_HandleTypeDef *hrtc)
// 1806 {
// 1807   /* Prevent unused argument(s) compilation warning */
// 1808   UNUSED(hrtc);
// 1809 
// 1810   /* NOTE : This function Should not be modified, when the callback is needed,
// 1811             the HAL_RTCEx_WakeUpTimerEventCallback could be implemented in the user file
// 1812    */
// 1813 }
// 1814 
// 1815 /**
// 1816   * @brief  This function handles Wake Up Timer Polling.
// 1817   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1818   *                the configuration information for RTC.
// 1819   * @param  Timeout: Timeout duration
// 1820   * @retval HAL status
// 1821   */
// 1822 HAL_StatusTypeDef HAL_RTCEx_PollForWakeUpTimerEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 1823 {
// 1824   uint32_t tickstart = HAL_GetTick();
// 1825 
// 1826   while(__HAL_RTC_WAKEUPTIMER_GET_FLAG(hrtc, RTC_FLAG_WUTF) == RESET)
// 1827   {
// 1828     if(Timeout != HAL_MAX_DELAY)
// 1829     {
// 1830       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1831       {
// 1832         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 1833       
// 1834         return HAL_TIMEOUT;
// 1835       }
// 1836     }
// 1837   }
// 1838 
// 1839   /* Clear the WAKEUPTIMER Flag */
// 1840   __HAL_RTC_WAKEUPTIMER_CLEAR_FLAG(hrtc, RTC_FLAG_WUTF);
// 1841 
// 1842   /* Change RTC state */
// 1843   hrtc->State = HAL_RTC_STATE_READY;
// 1844 
// 1845   return HAL_OK;
// 1846 }
// 1847 
// 1848 /**
// 1849   * @}
// 1850   */
// 1851 
// 1852 /** @defgroup RTCEx_Exported_Functions_Group7 Extended Peripheral Control functions
// 1853   * @brief    Extended Peripheral Control functions
// 1854   *
// 1855 @verbatim   
// 1856  ===============================================================================
// 1857               ##### Extension Peripheral Control functions #####
// 1858  ===============================================================================  
// 1859     [..]
// 1860     This subsection provides functions allowing to
// 1861       (+) Writes a data in a specified RTC Backup data register
// 1862       (+) Read a data in a specified RTC Backup data register
// 1863       (+) Sets the Coarse calibration parameters.
// 1864       (+) Deactivates the Coarse calibration parameters
// 1865       (+) Sets the Smooth calibration parameters.
// 1866       (+) Configures the Synchronization Shift Control Settings.
// 1867       (+) Configures the Calibration Pinout (RTC_CALIB) Selection (1Hz or 512Hz).
// 1868       (+) Deactivates the Calibration Pinout (RTC_CALIB) Selection (1Hz or 512Hz).
// 1869       (+) Enables the RTC reference clock detection.
// 1870       (+) Disable the RTC reference clock detection.
// 1871       (+) Enables the Bypass Shadow feature.
// 1872       (+) Disables the Bypass Shadow feature.
// 1873 
// 1874 @endverbatim
// 1875   * @{
// 1876   */
// 1877 
// 1878 /**
// 1879   * @brief  Writes a data in a specified RTC Backup data register.
// 1880   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1881   *                the configuration information for RTC. 
// 1882   * @param  BackupRegister: RTC Backup data Register number.
// 1883   *          This parameter can be: RTC_BKP_DRx where x can be from 0 to 19 to 
// 1884   *                                 specify the register.
// 1885   * @param  Data: Data to be written in the specified RTC Backup data register.                     
// 1886   * @retval None
// 1887   */
// 1888 void HAL_RTCEx_BKUPWrite(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister, uint32_t Data)
// 1889 {
// 1890   uint32_t tmp = 0;
// 1891 
// 1892   /* Check the parameters */
// 1893   assert_param(IS_RTC_BKP(BackupRegister));
// 1894   
// 1895   tmp = (uint32_t)&(hrtc->Instance->BKP0R);
// 1896   tmp += (BackupRegister * 4);
// 1897 
// 1898   /* Write the specified register */
// 1899   *(__IO uint32_t *)tmp = (uint32_t)Data;
// 1900 }
// 1901 
// 1902 /**
// 1903   * @brief  Reads data from the specified RTC Backup data Register.
// 1904   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1905   *                the configuration information for RTC. 
// 1906   * @param  BackupRegister: RTC Backup data Register number.
// 1907   *          This parameter can be: RTC_BKP_DRx where x can be from 0 to 19 to 
// 1908   *                                 specify the register.                   
// 1909   * @retval Read value
// 1910   */
// 1911 uint32_t HAL_RTCEx_BKUPRead(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister)
// 1912 {
// 1913   uint32_t tmp = 0;
// 1914 
// 1915   /* Check the parameters */
// 1916   assert_param(IS_RTC_BKP(BackupRegister));
// 1917 
// 1918   tmp = (uint32_t)&(hrtc->Instance->BKP0R);
// 1919   tmp += (BackupRegister * 4);
// 1920 
// 1921   /* Read the specified register */
// 1922   return (*(__IO uint32_t *)tmp);
// 1923 }
// 1924 
// 1925 /**
// 1926   * @brief  Sets the Coarse calibration parameters.
// 1927   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1928   *                the configuration information for RTC.  
// 1929   * @param  CalibSign: Specifies the sign of the coarse calibration value.
// 1930   *          This parameter can be  one of the following values :
// 1931   *             @arg RTC_CALIBSIGN_POSITIVE: The value sign is positive 
// 1932   *             @arg RTC_CALIBSIGN_NEGATIVE: The value sign is negative
// 1933   * @param  Value: value of coarse calibration expressed in ppm (coded on 5 bits).
// 1934   *    
// 1935   * @note   This Calibration value should be between 0 and 63 when using negative
// 1936   *         sign with a 2-ppm step.
// 1937   *           
// 1938   * @note   This Calibration value should be between 0 and 126 when using positive
// 1939   *         sign with a 4-ppm step.
// 1940   * @retval HAL status
// 1941   */
// 1942 HAL_StatusTypeDef HAL_RTCEx_SetCoarseCalib(RTC_HandleTypeDef* hrtc, uint32_t CalibSign, uint32_t Value)
// 1943 {
// 1944   /* Check the parameters */
// 1945   assert_param(IS_RTC_CALIB_SIGN(CalibSign));
// 1946   assert_param(IS_RTC_CALIB_VALUE(Value)); 
// 1947   
// 1948   /* Process Locked */ 
// 1949   __HAL_LOCK(hrtc);
// 1950   
// 1951   hrtc->State = HAL_RTC_STATE_BUSY;
// 1952 
// 1953   /* Disable the write protection for RTC registers */
// 1954   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 1955 
// 1956   /* Set Initialization mode */
// 1957   if(RTC_EnterInitMode(hrtc) != HAL_OK)
// 1958   {
// 1959     /* Enable the write protection for RTC registers */
// 1960     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
// 1961     
// 1962     /* Set RTC state*/
// 1963     hrtc->State = HAL_RTC_STATE_ERROR;
// 1964     
// 1965     /* Process Unlocked */ 
// 1966     __HAL_UNLOCK(hrtc);
// 1967     
// 1968     return HAL_ERROR;
// 1969   } 
// 1970   else
// 1971   { 
// 1972     /* Enable the Coarse Calibration */
// 1973     __HAL_RTC_COARSE_CALIB_ENABLE(hrtc);
// 1974     
// 1975     /* Set the coarse calibration value */
// 1976     hrtc->Instance->CALIBR = (uint32_t)(CalibSign|Value);
// 1977     
// 1978     /* Exit Initialization mode */
// 1979     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT; 
// 1980   } 
// 1981 
// 1982   /* Enable the write protection for RTC registers */
// 1983   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 1984   
// 1985   /* Change state */
// 1986   hrtc->State = HAL_RTC_STATE_READY; 
// 1987   
// 1988   /* Process Unlocked */ 
// 1989   __HAL_UNLOCK(hrtc);
// 1990   
// 1991   return HAL_OK;
// 1992 }
// 1993 
// 1994 /**
// 1995   * @brief  Deactivates the Coarse calibration parameters.
// 1996   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 1997   *                the configuration information for RTC.  
// 1998   * @retval HAL status
// 1999   */
// 2000 HAL_StatusTypeDef HAL_RTCEx_DeactivateCoarseCalib(RTC_HandleTypeDef* hrtc)
// 2001 { 
// 2002   /* Process Locked */ 
// 2003   __HAL_LOCK(hrtc);
// 2004   
// 2005   hrtc->State = HAL_RTC_STATE_BUSY;
// 2006   
// 2007   /* Disable the write protection for RTC registers */
// 2008   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2009 
// 2010   /* Set Initialization mode */
// 2011   if(RTC_EnterInitMode(hrtc) != HAL_OK)
// 2012   {
// 2013     /* Enable the write protection for RTC registers */
// 2014     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc); 
// 2015     
// 2016     /* Set RTC state*/
// 2017     hrtc->State = HAL_RTC_STATE_ERROR;
// 2018     
// 2019     /* Process Unlocked */ 
// 2020     __HAL_UNLOCK(hrtc);
// 2021     
// 2022     return HAL_ERROR;
// 2023   } 
// 2024   else
// 2025   { 
// 2026     /* Enable the Coarse Calibration */
// 2027     __HAL_RTC_COARSE_CALIB_DISABLE(hrtc);
// 2028     
// 2029     /* Exit Initialization mode */
// 2030     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT; 
// 2031   } 
// 2032 
// 2033   /* Enable the write protection for RTC registers */
// 2034   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2035   
// 2036   /* Change state */
// 2037   hrtc->State = HAL_RTC_STATE_READY; 
// 2038   
// 2039   /* Process Unlocked */ 
// 2040   __HAL_UNLOCK(hrtc);
// 2041   
// 2042   return HAL_OK;
// 2043 }
// 2044 
// 2045 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 2046 /**
// 2047   * @brief  Sets the Smooth calibration parameters.
// 2048   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2049   *                the configuration information for RTC.  
// 2050   * @param  SmoothCalibPeriod: Select the Smooth Calibration Period.
// 2051   *          This parameter can be can be one of the following values :
// 2052   *             @arg RTC_SMOOTHCALIB_PERIOD_32SEC: The smooth calibration periode is 32s.
// 2053   *             @arg RTC_SMOOTHCALIB_PERIOD_16SEC: The smooth calibration periode is 16s.
// 2054   *             @arg RTC_SMOOTHCALIB_PERIOD_8SEC: The smooth calibartion periode is 8s.
// 2055   * @param  SmoothCalibPlusPulses: Select to Set or reset the CALP bit.
// 2056   *          This parameter can be one of the following values:
// 2057   *             @arg RTC_SMOOTHCALIB_PLUSPULSES_SET: Add one RTCCLK puls every 2*11 pulses.
// 2058   *             @arg RTC_SMOOTHCALIB_PLUSPULSES_RESET: No RTCCLK pulses are added.
// 2059   * @param  SmoothCalibMinusPulsesValue: Select the value of CALM[8:0] bits.
// 2060   *          This parameter can be one any value from 0 to 0x000001FF.
// 2061   * @note   To deactivate the smooth calibration, the field SmoothCalibPlusPulses 
// 2062   *         must be equal to SMOOTHCALIB_PLUSPULSES_RESET and the field
// 2063   *         SmoothCalibMinusPulsesValue mut be equal to 0.
// 2064   * @retval HAL status
// 2065   */
// 2066 HAL_StatusTypeDef HAL_RTCEx_SetSmoothCalib(RTC_HandleTypeDef* hrtc, uint32_t SmoothCalibPeriod, uint32_t SmoothCalibPlusPulses, uint32_t SmoothCalibMinusPulsesValue)
// 2067 {
// 2068   uint32_t tickstart = 0;
// 2069 
// 2070   /* Check the parameters */
// 2071   assert_param(IS_RTC_SMOOTH_CALIB_PERIOD(SmoothCalibPeriod));
// 2072   assert_param(IS_RTC_SMOOTH_CALIB_PLUS(SmoothCalibPlusPulses));
// 2073   assert_param(IS_RTC_SMOOTH_CALIB_MINUS(SmoothCalibMinusPulsesValue));
// 2074 
// 2075   /* Process Locked */
// 2076   __HAL_LOCK(hrtc);
// 2077 
// 2078   hrtc->State = HAL_RTC_STATE_BUSY;
// 2079 
// 2080   /* Disable the write protection for RTC registers */
// 2081   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2082 
// 2083   /* check if a calibration is pending*/
// 2084   if((hrtc->Instance->ISR & RTC_ISR_RECALPF) != RESET)
// 2085   {
// 2086     tickstart = HAL_GetTick();
// 2087 
// 2088     /* check if a calibration is pending*/
// 2089     while((hrtc->Instance->ISR & RTC_ISR_RECALPF) != RESET)
// 2090     {
// 2091       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
// 2092       {
// 2093         /* Enable the write protection for RTC registers */
// 2094         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2095 
// 2096         /* Change RTC state */
// 2097         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 2098 
// 2099         /* Process Unlocked */
// 2100         __HAL_UNLOCK(hrtc);
// 2101 
// 2102         return HAL_TIMEOUT;
// 2103       }
// 2104     }
// 2105   }
// 2106 
// 2107   /* Configure the Smooth calibration settings */
// 2108   hrtc->Instance->CALR = (uint32_t)((uint32_t)SmoothCalibPeriod | (uint32_t)SmoothCalibPlusPulses | (uint32_t)SmoothCalibMinusPulsesValue);
// 2109 
// 2110   /* Enable the write protection for RTC registers */
// 2111   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2112 
// 2113   /* Change RTC state */
// 2114   hrtc->State = HAL_RTC_STATE_READY;
// 2115 
// 2116   /* Process Unlocked */
// 2117   __HAL_UNLOCK(hrtc);
// 2118 
// 2119   return HAL_OK;
// 2120 }
// 2121 
// 2122 /**
// 2123   * @brief  Configures the Synchronization Shift Control Settings.
// 2124   * @note   When REFCKON is set, firmware must not write to Shift control register. 
// 2125   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2126   *                the configuration information for RTC.    
// 2127   * @param  ShiftAdd1S: Select to add or not 1 second to the time calendar.
// 2128   *          This parameter can be one of the following values :
// 2129   *             @arg RTC_SHIFTADD1S_SET: Add one second to the clock calendar. 
// 2130   *             @arg RTC_SHIFTADD1S_RESET: No effect.
// 2131   * @param  ShiftSubFS: Select the number of Second Fractions to substitute.
// 2132   *          This parameter can be one any value from 0 to 0x7FFF.
// 2133   * @retval HAL status
// 2134   */
// 2135 HAL_StatusTypeDef HAL_RTCEx_SetSynchroShift(RTC_HandleTypeDef* hrtc, uint32_t ShiftAdd1S, uint32_t ShiftSubFS)
// 2136 {
// 2137   uint32_t tickstart = 0;
// 2138 
// 2139   /* Check the parameters */
// 2140   assert_param(IS_RTC_SHIFT_ADD1S(ShiftAdd1S));
// 2141   assert_param(IS_RTC_SHIFT_SUBFS(ShiftSubFS));
// 2142 
// 2143   /* Process Locked */
// 2144   __HAL_LOCK(hrtc);
// 2145 
// 2146   hrtc->State = HAL_RTC_STATE_BUSY;
// 2147 
// 2148   /* Disable the write protection for RTC registers */
// 2149   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2150 
// 2151     tickstart = HAL_GetTick();
// 2152 
// 2153     /* Wait until the shift is completed*/
// 2154     while((hrtc->Instance->ISR & RTC_ISR_SHPF) != RESET)
// 2155     {
// 2156       if((HAL_GetTick() - tickstart ) >  RTC_TIMEOUT_VALUE)
// 2157       {
// 2158         /* Enable the write protection for RTC registers */
// 2159         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2160 
// 2161         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 2162 
// 2163         /* Process Unlocked */
// 2164         __HAL_UNLOCK(hrtc);
// 2165 
// 2166         return HAL_TIMEOUT;
// 2167       }
// 2168     }
// 2169 
// 2170     /* Check if the reference clock detection is disabled */
// 2171     if((hrtc->Instance->CR & RTC_CR_REFCKON) == RESET)
// 2172     {
// 2173       /* Configure the Shift settings */
// 2174       hrtc->Instance->SHIFTR = (uint32_t)(uint32_t)(ShiftSubFS) | (uint32_t)(ShiftAdd1S);
// 2175 
// 2176       /* Wait for synchro */
// 2177       if(HAL_RTC_WaitForSynchro(hrtc) != HAL_OK)
// 2178       {
// 2179         /* Enable the write protection for RTC registers */
// 2180         __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2181 
// 2182         hrtc->State = HAL_RTC_STATE_ERROR;
// 2183 
// 2184         /* Process Unlocked */
// 2185         __HAL_UNLOCK(hrtc);
// 2186 
// 2187         return HAL_ERROR;
// 2188       }
// 2189     }
// 2190     else
// 2191     {
// 2192       /* Enable the write protection for RTC registers */
// 2193       __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2194 
// 2195       /* Change RTC state */
// 2196       hrtc->State = HAL_RTC_STATE_ERROR;
// 2197 
// 2198       /* Process Unlocked */
// 2199       __HAL_UNLOCK(hrtc);
// 2200 
// 2201       return HAL_ERROR;
// 2202     }
// 2203 
// 2204   /* Enable the write protection for RTC registers */
// 2205   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2206 
// 2207   /* Change RTC state */
// 2208   hrtc->State = HAL_RTC_STATE_READY;
// 2209 
// 2210   /* Process Unlocked */
// 2211   __HAL_UNLOCK(hrtc);
// 2212 
// 2213   return HAL_OK;
// 2214 }
// 2215 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 2216 
// 2217 
// 2218 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 2219 /**
// 2220   * @brief  Configures the Calibration Pinout (RTC_CALIB) Selection (1Hz or 512Hz).
// 2221   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2222   *                the configuration information for RTC.    
// 2223   * @param  CalibOutput : Select the Calibration output Selection .
// 2224   *          This parameter can be one of the following values:
// 2225   *             @arg RTC_CALIBOUTPUT_512HZ: A signal has a regular waveform at 512Hz. 
// 2226   *             @arg RTC_CALIBOUTPUT_1HZ: A signal has a regular waveform at 1Hz.
// 2227   * @retval HAL status
// 2228   */
// 2229 HAL_StatusTypeDef HAL_RTCEx_SetCalibrationOutPut(RTC_HandleTypeDef* hrtc, uint32_t CalibOutput)
// 2230 #else
// 2231 /**
// 2232   * @brief  Configure the Calibration Pinout (RTC_CALIB).
// 2233   * @param  hrtc : RTC handle    
// 2234   * @retval HAL status
// 2235   */
// 2236 HAL_StatusTypeDef HAL_RTCEx_SetCalibrationOutPut(RTC_HandleTypeDef* hrtc)
// 2237 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 2238 {
// 2239 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 2240   /* Check the parameters */
// 2241   assert_param(IS_RTC_CALIB_OUTPUT(CalibOutput));
// 2242 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 2243   
// 2244   /* Process Locked */
// 2245   __HAL_LOCK(hrtc);
// 2246 
// 2247   hrtc->State = HAL_RTC_STATE_BUSY;
// 2248 
// 2249   /* Disable the write protection for RTC registers */
// 2250   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2251 
// 2252 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX)   
// 2253   /* Clear flags before config */
// 2254   hrtc->Instance->CR &= (uint32_t)~RTC_CR_COSEL;
// 2255 
// 2256   /* Configure the RTC_CR register */
// 2257   hrtc->Instance->CR |= (uint32_t)CalibOutput;
// 2258 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 2259   
// 2260   __HAL_RTC_CALIBRATION_OUTPUT_ENABLE(hrtc);
// 2261 
// 2262   /* Enable the write protection for RTC registers */
// 2263   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2264 
// 2265   /* Change RTC state */
// 2266   hrtc->State = HAL_RTC_STATE_READY;
// 2267 
// 2268   /* Process Unlocked */
// 2269   __HAL_UNLOCK(hrtc);
// 2270 
// 2271   return HAL_OK;
// 2272 }
// 2273 
// 2274 /**
// 2275   * @brief  Deactivates the Calibration Pinout (RTC_CALIB) Selection (1Hz or 512Hz).
// 2276   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2277   *                the configuration information for RTC.    
// 2278   * @retval HAL status
// 2279   */
// 2280 HAL_StatusTypeDef HAL_RTCEx_DeactivateCalibrationOutPut(RTC_HandleTypeDef* hrtc)
// 2281 {
// 2282   /* Process Locked */
// 2283   __HAL_LOCK(hrtc);
// 2284 
// 2285   hrtc->State = HAL_RTC_STATE_BUSY;
// 2286 
// 2287   /* Disable the write protection for RTC registers */
// 2288   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2289 
// 2290   __HAL_RTC_CALIBRATION_OUTPUT_DISABLE(hrtc);
// 2291 
// 2292   /* Enable the write protection for RTC registers */
// 2293   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2294 
// 2295   /* Change RTC state */
// 2296   hrtc->State = HAL_RTC_STATE_READY;
// 2297 
// 2298   /* Process Unlocked */
// 2299   __HAL_UNLOCK(hrtc);
// 2300 
// 2301   return HAL_OK;
// 2302 }
// 2303 
// 2304 /**
// 2305   * @brief  Enables the RTC reference clock detection.
// 2306   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2307   *                the configuration information for RTC.    
// 2308   * @retval HAL status
// 2309   */
// 2310 HAL_StatusTypeDef HAL_RTCEx_SetRefClock(RTC_HandleTypeDef* hrtc)
// 2311 {
// 2312   /* Process Locked */
// 2313   __HAL_LOCK(hrtc);
// 2314 
// 2315   hrtc->State = HAL_RTC_STATE_BUSY;
// 2316 
// 2317   /* Disable the write protection for RTC registers */
// 2318   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2319 
// 2320   /* Set Initialization mode */
// 2321   if(RTC_EnterInitMode(hrtc) != HAL_OK)
// 2322   {
// 2323     /* Enable the write protection for RTC registers */
// 2324     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2325 
// 2326     /* Set RTC state*/
// 2327     hrtc->State = HAL_RTC_STATE_ERROR;
// 2328 
// 2329     /* Process Unlocked */
// 2330     __HAL_UNLOCK(hrtc);
// 2331 
// 2332     return HAL_ERROR;
// 2333   }
// 2334   else
// 2335   {
// 2336     __HAL_RTC_CLOCKREF_DETECTION_ENABLE(hrtc);
// 2337 
// 2338     /* Exit Initialization mode */
// 2339     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT;
// 2340   }
// 2341 
// 2342   /* Enable the write protection for RTC registers */
// 2343   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2344 
// 2345    /* Change RTC state */
// 2346   hrtc->State = HAL_RTC_STATE_READY;
// 2347 
// 2348   /* Process Unlocked */
// 2349   __HAL_UNLOCK(hrtc);
// 2350 
// 2351   return HAL_OK;
// 2352 }
// 2353 
// 2354 /**
// 2355   * @brief  Disable the RTC reference clock detection.
// 2356   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2357   *                the configuration information for RTC.    
// 2358   * @retval HAL status
// 2359   */
// 2360 HAL_StatusTypeDef HAL_RTCEx_DeactivateRefClock(RTC_HandleTypeDef* hrtc)
// 2361 {
// 2362   /* Process Locked */
// 2363   __HAL_LOCK(hrtc);
// 2364 
// 2365   hrtc->State = HAL_RTC_STATE_BUSY;
// 2366 
// 2367   /* Disable the write protection for RTC registers */
// 2368   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2369 
// 2370   /* Set Initialization mode */
// 2371   if(RTC_EnterInitMode(hrtc) != HAL_OK)
// 2372   {
// 2373     /* Enable the write protection for RTC registers */
// 2374     __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2375 
// 2376     /* Set RTC state*/
// 2377     hrtc->State = HAL_RTC_STATE_ERROR;
// 2378 
// 2379     /* Process Unlocked */
// 2380     __HAL_UNLOCK(hrtc);
// 2381 
// 2382     return HAL_ERROR;
// 2383   }
// 2384   else
// 2385   {
// 2386     __HAL_RTC_CLOCKREF_DETECTION_DISABLE(hrtc);
// 2387 
// 2388     /* Exit Initialization mode */
// 2389     hrtc->Instance->ISR &= (uint32_t)~RTC_ISR_INIT;
// 2390   }
// 2391 
// 2392   /* Enable the write protection for RTC registers */
// 2393   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2394 
// 2395   /* Change RTC state */
// 2396   hrtc->State = HAL_RTC_STATE_READY;
// 2397 
// 2398   /* Process Unlocked */
// 2399   __HAL_UNLOCK(hrtc);
// 2400 
// 2401   return HAL_OK;
// 2402 }
// 2403 
// 2404 #if defined(STM32L100xBA) || defined (STM32L151xBA) || defined (STM32L152xBA) || defined(STM32L100xC) || defined (STM32L151xC) || defined (STM32L152xC) || defined (STM32L162xC) || defined(STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined(STM32L151xE) || defined(STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) 
// 2405 /**
// 2406   * @brief  Enables the Bypass Shadow feature.
// 2407   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2408   *                the configuration information for RTC.  
// 2409   * @note   When the Bypass Shadow is enabled the calendar value are taken 
// 2410   *         directly from the Calendar counter.
// 2411   * @retval HAL status
// 2412   */
// 2413 HAL_StatusTypeDef HAL_RTCEx_EnableBypassShadow(RTC_HandleTypeDef* hrtc)
// 2414 {
// 2415   /* Process Locked */
// 2416   __HAL_LOCK(hrtc);
// 2417 
// 2418   hrtc->State = HAL_RTC_STATE_BUSY;
// 2419 
// 2420   /* Disable the write protection for RTC registers */
// 2421   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2422 
// 2423   /* Set the BYPSHAD bit */
// 2424   hrtc->Instance->CR |= (uint8_t)RTC_CR_BYPSHAD;
// 2425 
// 2426   /* Enable the write protection for RTC registers */
// 2427   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2428 
// 2429   /* Change RTC state */
// 2430   hrtc->State = HAL_RTC_STATE_READY;
// 2431 
// 2432   /* Process Unlocked */
// 2433   __HAL_UNLOCK(hrtc);
// 2434 
// 2435   return HAL_OK;
// 2436 }
// 2437 
// 2438 /**
// 2439   * @brief  Disables the Bypass Shadow feature.
// 2440   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2441   *                the configuration information for RTC.  
// 2442   * @note   When the Bypass Shadow is enabled the calendar value are taken
// 2443   *         directly from the Calendar counter.
// 2444   * @retval HAL status
// 2445   */
// 2446 HAL_StatusTypeDef HAL_RTCEx_DisableBypassShadow(RTC_HandleTypeDef* hrtc)
// 2447 {
// 2448   /* Process Locked */
// 2449   __HAL_LOCK(hrtc);
// 2450 
// 2451   hrtc->State = HAL_RTC_STATE_BUSY;
// 2452 
// 2453   /* Disable the write protection for RTC registers */
// 2454   __HAL_RTC_WRITEPROTECTION_DISABLE(hrtc);
// 2455 
// 2456   /* Reset the BYPSHAD bit */
// 2457   hrtc->Instance->CR &= (uint8_t)~RTC_CR_BYPSHAD;
// 2458 
// 2459   /* Enable the write protection for RTC registers */
// 2460   __HAL_RTC_WRITEPROTECTION_ENABLE(hrtc);
// 2461 
// 2462   /* Change RTC state */
// 2463   hrtc->State = HAL_RTC_STATE_READY;
// 2464 
// 2465   /* Process Unlocked */
// 2466   __HAL_UNLOCK(hrtc);
// 2467 
// 2468   return HAL_OK;
// 2469 }
// 2470 #endif /* STM32L100xBA || STM32L151xBA || STM32L152xBA || STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC || STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX */
// 2471 
// 2472 /**
// 2473   * @}
// 2474   */
// 2475 
// 2476 /** @defgroup RTCEx_Exported_Functions_Group8 Extended features functions
// 2477   * @brief    Extended features functions
// 2478   *
// 2479 @verbatim   
// 2480  ===============================================================================
// 2481                  ##### Extended features functions #####
// 2482  ===============================================================================  
// 2483     [..]  This section provides functions allowing to:
// 2484       (+) RTC Alram B callback
// 2485       (+) RTC Poll for Alarm B request
// 2486                
// 2487 @endverbatim
// 2488   * @{
// 2489   */
// 2490 
// 2491 /**
// 2492   * @brief  Alarm B callback.
// 2493   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2494   *                the configuration information for RTC.
// 2495   * @retval None
// 2496   */
// 2497 __weak void HAL_RTCEx_AlarmBEventCallback(RTC_HandleTypeDef *hrtc)
// 2498 {
// 2499   /* Prevent unused argument(s) compilation warning */
// 2500   UNUSED(hrtc);
// 2501 
// 2502   /* NOTE : This function Should not be modified, when the callback is needed,
// 2503             the HAL_RTCEx_AlarmBEventCallback could be implemented in the user file
// 2504    */
// 2505 }
// 2506 
// 2507 /**
// 2508   * @brief  This function handles AlarmB Polling request.
// 2509   * @param  hrtc: pointer to a RTC_HandleTypeDef structure that contains
// 2510   *                the configuration information for RTC.
// 2511   * @param  Timeout: Timeout duration
// 2512   * @retval HAL status
// 2513   */
// 2514 HAL_StatusTypeDef HAL_RTCEx_PollForAlarmBEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout)
// 2515 {  
// 2516   uint32_t tickstart = HAL_GetTick();
// 2517   
// 2518   while(__HAL_RTC_ALARM_GET_FLAG(hrtc, RTC_FLAG_ALRBF) == RESET)
// 2519   {
// 2520     if(Timeout != HAL_MAX_DELAY)
// 2521     {
// 2522       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 2523       {
// 2524         hrtc->State = HAL_RTC_STATE_TIMEOUT;
// 2525         return HAL_TIMEOUT;
// 2526       }
// 2527     }
// 2528   }
// 2529   
// 2530   /* Clear the Alarm Flag */
// 2531   __HAL_RTC_ALARM_CLEAR_FLAG(hrtc, RTC_FLAG_ALRBF);
// 2532   
// 2533   /* Change RTC state */
// 2534   hrtc->State = HAL_RTC_STATE_READY; 
// 2535   
// 2536   return HAL_OK; 
// 2537 }
// 2538 
// 2539 /**
// 2540   * @}
// 2541   */
// 2542 
// 2543 /**
// 2544   * @}
// 2545   */
// 2546   
// 2547 /**
// 2548   * @}
// 2549   */
// 2550 
// 2551 #endif /* HAL_RTC_MODULE_ENABLED */
// 2552 
// 2553 /**
// 2554   * @}
// 2555   */
// 2556 
// 2557 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
