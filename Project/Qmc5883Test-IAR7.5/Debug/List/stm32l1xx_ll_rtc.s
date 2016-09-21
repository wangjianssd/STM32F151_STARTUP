///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rtc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rtc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_rtc.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_rtc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_rtc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   RTC LL module driver.
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
//   40 #include "stm32l1xx_ll_rtc.h"
//   41 #include "stm32l1xx_ll_cortex.h"
//   42 #ifdef  USE_FULL_ASSERT
//   43 #include "stm32_assert.h"
//   44 #else
//   45 #define assert_param(expr) ((void)0U)
//   46 #endif
//   47 
//   48 /** @addtogroup STM32L1xx_LL_Driver
//   49   * @{
//   50   */
//   51 
//   52 #if defined(RTC)
//   53 
//   54 /** @addtogroup RTC_LL
//   55   * @{
//   56   */
//   57 
//   58 /* Private types -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private constants ---------------------------------------------------------*/
//   61 /** @addtogroup RTC_LL_Private_Constants
//   62   * @{
//   63   */
//   64 /* Default values used for prescaler */
//   65 #define RTC_ASYNCH_PRESC_DEFAULT     ((uint32_t) 0x0000007FU)
//   66 #define RTC_SYNCH_PRESC_DEFAULT      ((uint32_t) 0x000000FFU)
//   67 
//   68 /* Values used for timeout */
//   69 #define RTC_INITMODE_TIMEOUT         ((uint32_t) 1000U) /* 1s when tick set to 1ms */
//   70 #define RTC_SYNCHRO_TIMEOUT          ((uint32_t) 1000U) /* 1s when tick set to 1ms */
//   71 /**
//   72   * @}
//   73   */
//   74 
//   75 /* Private macros ------------------------------------------------------------*/
//   76 /** @addtogroup RTC_LL_Private_Macros
//   77   * @{
//   78   */
//   79 
//   80 #define IS_LL_RTC_HOURFORMAT(__VALUE__) (((__VALUE__) == LL_RTC_HOURFORMAT_24HOUR) \ 
//   81                                       || ((__VALUE__) == LL_RTC_HOURFORMAT_AMPM))
//   82 
//   83 #define IS_LL_RTC_ASYNCH_PREDIV(__VALUE__)   ((__VALUE__) <= (uint32_t)0x7FU)
//   84 
//   85 #define IS_LL_RTC_SYNCH_PREDIV(__VALUE__)    ((__VALUE__) <= (uint32_t)0x7FFFU)
//   86 
//   87 #define IS_LL_RTC_FORMAT(__VALUE__) (((__VALUE__) == LL_RTC_FORMAT_BIN) \ 
//   88                                   || ((__VALUE__) == LL_RTC_FORMAT_BCD))
//   89 
//   90 #define IS_LL_RTC_TIME_FORMAT(__VALUE__) (((__VALUE__) == LL_RTC_TIME_FORMAT_AM_OR_24) \ 
//   91                                        || ((__VALUE__) == LL_RTC_TIME_FORMAT_PM))
//   92 
//   93 #define IS_LL_RTC_HOUR12(__HOUR__)            (((__HOUR__) > 0U) && ((__HOUR__) <= 12U))
//   94 #define IS_LL_RTC_HOUR24(__HOUR__)            ((__HOUR__) <= 23U)
//   95 #define IS_LL_RTC_MINUTES(__MINUTES__)        ((__MINUTES__) <= 59U)
//   96 #define IS_LL_RTC_SECONDS(__SECONDS__)        ((__SECONDS__) <= 59U)
//   97 
//   98 #define IS_LL_RTC_WEEKDAY(__VALUE__) (((__VALUE__) == LL_RTC_WEEKDAY_MONDAY) \ 
//   99                                    || ((__VALUE__) == LL_RTC_WEEKDAY_TUESDAY) \ 
//  100                                    || ((__VALUE__) == LL_RTC_WEEKDAY_WEDNESDAY) \ 
//  101                                    || ((__VALUE__) == LL_RTC_WEEKDAY_THURSDAY) \ 
//  102                                    || ((__VALUE__) == LL_RTC_WEEKDAY_FRIDAY) \ 
//  103                                    || ((__VALUE__) == LL_RTC_WEEKDAY_SATURDAY) \ 
//  104                                    || ((__VALUE__) == LL_RTC_WEEKDAY_SUNDAY))
//  105 
//  106 #define IS_LL_RTC_DAY(__DAY__)    (((__DAY__) >= (uint32_t)1U) && ((__DAY__) <= (uint32_t)31U))
//  107 
//  108 #define IS_LL_RTC_MONTH(__VALUE__) (((__VALUE__) == LL_RTC_MONTH_JANUARY) \ 
//  109                                  || ((__VALUE__) == LL_RTC_MONTH_FEBRUARY) \ 
//  110                                  || ((__VALUE__) == LL_RTC_MONTH_MARCH) \ 
//  111                                  || ((__VALUE__) == LL_RTC_MONTH_APRIL) \ 
//  112                                  || ((__VALUE__) == LL_RTC_MONTH_MAY) \ 
//  113                                  || ((__VALUE__) == LL_RTC_MONTH_JUNE) \ 
//  114                                  || ((__VALUE__) == LL_RTC_MONTH_JULY) \ 
//  115                                  || ((__VALUE__) == LL_RTC_MONTH_AUGUST) \ 
//  116                                  || ((__VALUE__) == LL_RTC_MONTH_SEPTEMBER) \ 
//  117                                  || ((__VALUE__) == LL_RTC_MONTH_OCTOBER) \ 
//  118                                  || ((__VALUE__) == LL_RTC_MONTH_NOVEMBER) \ 
//  119                                  || ((__VALUE__) == LL_RTC_MONTH_DECEMBER))
//  120 
//  121 #define IS_LL_RTC_YEAR(__YEAR__) ((__YEAR__) <= 99U)
//  122 
//  123 #define IS_LL_RTC_ALMA_MASK(__VALUE__) (((__VALUE__) == LL_RTC_ALMA_MASK_NONE) \ 
//  124                                      || ((__VALUE__) == LL_RTC_ALMA_MASK_DATEWEEKDAY) \ 
//  125                                      || ((__VALUE__) == LL_RTC_ALMA_MASK_HOURS) \ 
//  126                                      || ((__VALUE__) == LL_RTC_ALMA_MASK_MINUTES) \ 
//  127                                      || ((__VALUE__) == LL_RTC_ALMA_MASK_SECONDS) \ 
//  128                                      || ((__VALUE__) == LL_RTC_ALMA_MASK_ALL))
//  129 
//  130 #define IS_LL_RTC_ALMB_MASK(__VALUE__) (((__VALUE__) == LL_RTC_ALMB_MASK_NONE) \ 
//  131                                      || ((__VALUE__) == LL_RTC_ALMB_MASK_DATEWEEKDAY) \ 
//  132                                      || ((__VALUE__) == LL_RTC_ALMB_MASK_HOURS) \ 
//  133                                      || ((__VALUE__) == LL_RTC_ALMB_MASK_MINUTES) \ 
//  134                                      || ((__VALUE__) == LL_RTC_ALMB_MASK_SECONDS) \ 
//  135                                      || ((__VALUE__) == LL_RTC_ALMB_MASK_ALL))
//  136 
//  137 
//  138 #define IS_LL_RTC_ALMA_DATE_WEEKDAY_SEL(__SEL__) (((__SEL__) == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE) || \ 
//  139                                                   ((__SEL__) == LL_RTC_ALMA_DATEWEEKDAYSEL_WEEKDAY))
//  140 
//  141 #define IS_LL_RTC_ALMB_DATE_WEEKDAY_SEL(__SEL__) (((__SEL__) == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE) || \ 
//  142                                                   ((__SEL__) == LL_RTC_ALMB_DATEWEEKDAYSEL_WEEKDAY))
//  143 
//  144 
//  145 /**
//  146   * @}
//  147   */
//  148 /* Private function prototypes -----------------------------------------------*/
//  149 /* Exported functions --------------------------------------------------------*/
//  150 /** @addtogroup RTC_LL_Exported_Functions
//  151   * @{
//  152   */
//  153 
//  154 /** @addtogroup RTC_LL_EF_Init
//  155   * @{
//  156   */
//  157 
//  158 /**
//  159   * @brief  De-Initializes the RTC registers to their default reset values.
//  160   * @note   This function doesn't reset the RTC Clock source and RTC Backup Data
//  161   *         registers.
//  162   * @param  RTCx RTC Instance
//  163   * @retval An ErrorStatus enumeration value:
//  164   *          - SUCCESS: RTC registers are de-initialized
//  165   *          - ERROR: RTC registers are not de-initialized
//  166   */
//  167 ErrorStatus LL_RTC_DeInit(RTC_TypeDef *RTCx)
//  168 {
//  169   ErrorStatus status = ERROR;
//  170 
//  171   /* Check the parameter */
//  172   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  173 
//  174   /* Disable the write protection for RTC registers */
//  175   LL_RTC_DisableWriteProtection(RTCx);
//  176 
//  177   /* Set Initialization mode */
//  178   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
//  179   {
//  180     /* Reset TR, DR and CR registers */
//  181     LL_RTC_WriteReg(RTCx, TR,       0x00000000U);
//  182 #if defined(RTC_WAKEUP_SUPPORT)
//  183     LL_RTC_WriteReg(RTCx, WUTR,     RTC_WUTR_WUT);
//  184 #endif /* RTC_WAKEUP_SUPPORT */
//  185     LL_RTC_WriteReg(RTCx, DR  ,     (RTC_DR_WDU_0 | RTC_DR_MU_0 | RTC_DR_DU_0));
//  186     /* Reset All CR bits except CR[2:0] */
//  187 #if defined(RTC_WAKEUP_SUPPORT)
//  188     LL_RTC_WriteReg(RTCx, CR, (LL_RTC_ReadReg(RTCx, CR) & RTC_CR_WUCKSEL));
//  189 #else
//  190     LL_RTC_WriteReg(RTCx, CR, 0x00000000U);
//  191 #endif /* RTC_WAKEUP_SUPPORT */
//  192     LL_RTC_WriteReg(RTCx, PRER,     (RTC_PRER_PREDIV_A | RTC_SYNCH_PRESC_DEFAULT));
//  193     LL_RTC_WriteReg(RTCx, ALRMAR,   0x00000000U);
//  194     LL_RTC_WriteReg(RTCx, ALRMBR,   0x00000000U);
//  195 #if defined(RTC_SHIFTR_ADD1S)
//  196     LL_RTC_WriteReg(RTCx, SHIFTR,   0x00000000U);
//  197 #endif /* RTC_SHIFTR_ADD1S */
//  198 #if defined(RTC_SMOOTHCALIB_SUPPORT)
//  199     LL_RTC_WriteReg(RTCx, CALR,     0x00000000U);
//  200 #endif /* RTC_SMOOTHCALIB_SUPPORT */
//  201 #if defined(RTC_SUBSECOND_SUPPORT)
//  202     LL_RTC_WriteReg(RTCx, ALRMASSR, 0x00000000U);
//  203     LL_RTC_WriteReg(RTCx, ALRMBSSR, 0x00000000U);
//  204 #endif /* RTC_SUBSECOND_SUPPORT */
//  205 
//  206     /* Reset ISR register and exit initialization mode */
//  207     LL_RTC_WriteReg(RTCx, ISR,      0x00000000U);
//  208 
//  209     /* Reset Tamper and alternate functions configuration register */
//  210     LL_RTC_WriteReg(RTCx, TAFCR, 0x00000000U);
//  211 
//  212     /* Wait till the RTC RSF flag is set */
//  213     status = LL_RTC_WaitForSynchro(RTCx);
//  214   }
//  215 
//  216   /* Enable the write protection for RTC registers */
//  217   LL_RTC_EnableWriteProtection(RTCx);
//  218 
//  219   return status;
//  220 }
//  221 
//  222 /**
//  223   * @brief  Initializes the RTC registers according to the specified parameters
//  224   *         in RTC_InitStruct.
//  225   * @param  RTCx RTC Instance
//  226   * @param  RTC_InitStruct pointer to a @ref LL_RTC_InitTypeDef structure that contains
//  227   *         the configuration information for the RTC peripheral.
//  228   * @note   The RTC Prescaler register is write protected and can be written in
//  229   *         initialization mode only.
//  230   * @retval An ErrorStatus enumeration value:
//  231   *          - SUCCESS: RTC registers are initialized
//  232   *          - ERROR: RTC registers are not initialized
//  233   */
//  234 ErrorStatus LL_RTC_Init(RTC_TypeDef *RTCx, LL_RTC_InitTypeDef *RTC_InitStruct)
//  235 {
//  236   ErrorStatus status = ERROR;
//  237 
//  238   /* Check the parameters */
//  239   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  240   assert_param(IS_LL_RTC_HOURFORMAT(RTC_InitStruct->HourFormat));
//  241   assert_param(IS_LL_RTC_ASYNCH_PREDIV(RTC_InitStruct->AsynchPrescaler));
//  242   assert_param(IS_LL_RTC_SYNCH_PREDIV(RTC_InitStruct->SynchPrescaler));
//  243 
//  244   /* Disable the write protection for RTC registers */
//  245   LL_RTC_DisableWriteProtection(RTCx);
//  246 
//  247   /* Set Initialization mode */
//  248   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
//  249   {
//  250     /* Set Hour Format */
//  251     LL_RTC_SetHourFormat(RTCx, RTC_InitStruct->HourFormat);
//  252 
//  253     /* Configure Synchronous and Asynchronous prescaler factor */
//  254     LL_RTC_SetSynchPrescaler(RTCx, RTC_InitStruct->SynchPrescaler);
//  255     LL_RTC_SetAsynchPrescaler(RTCx, RTC_InitStruct->AsynchPrescaler);
//  256 
//  257     /* Exit Initialization mode */
//  258     LL_RTC_DisableInitMode(RTCx);
//  259 
//  260     status = SUCCESS;
//  261   }
//  262   /* Enable the write protection for RTC registers */
//  263   LL_RTC_EnableWriteProtection(RTCx);
//  264 
//  265   return status;
//  266 }
//  267 
//  268 /**
//  269   * @brief  Set each @ref LL_RTC_InitTypeDef field to default value.
//  270   * @param  RTC_InitStruct pointer to a @ref LL_RTC_InitTypeDef structure which will be initialized.
//  271   * @retval None
//  272   */
//  273 void LL_RTC_StructInit(LL_RTC_InitTypeDef *RTC_InitStruct)
//  274 {
//  275   /* Set RTC_InitStruct fields to default values */
//  276   RTC_InitStruct->HourFormat      = LL_RTC_HOURFORMAT_24HOUR;
//  277   RTC_InitStruct->AsynchPrescaler = RTC_ASYNCH_PRESC_DEFAULT;
//  278   RTC_InitStruct->SynchPrescaler  = RTC_SYNCH_PRESC_DEFAULT;
//  279 }
//  280 
//  281 /**
//  282   * @brief  Set the RTC current time.
//  283   * @param  RTCx RTC Instance
//  284   * @param  RTC_Format This parameter can be one of the following values:
//  285   *         @arg @ref LL_RTC_FORMAT_BIN
//  286   *         @arg @ref LL_RTC_FORMAT_BCD
//  287   * @param  RTC_TimeStruct pointer to a RTC_TimeTypeDef structure that contains
//  288   *                        the time configuration information for the RTC.
//  289   * @retval An ErrorStatus enumeration value:
//  290   *          - SUCCESS: RTC Time register is configured
//  291   *          - ERROR: RTC Time register is not configured
//  292   */
//  293 ErrorStatus LL_RTC_TIME_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_TimeTypeDef *RTC_TimeStruct)
//  294 {
//  295   ErrorStatus status = ERROR;
//  296 
//  297   /* Check the parameters */
//  298   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  299   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
//  300 
//  301   if (RTC_Format == LL_RTC_FORMAT_BIN)
//  302   {
//  303     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  304     {
//  305       assert_param(IS_LL_RTC_HOUR12(RTC_TimeStruct->Hours));
//  306       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_TimeStruct->TimeFormat));
//  307     }
//  308     else
//  309     {
//  310       RTC_TimeStruct->TimeFormat = 0x00U;
//  311       assert_param(IS_LL_RTC_HOUR24(RTC_TimeStruct->Hours));
//  312     }
//  313     assert_param(IS_LL_RTC_MINUTES(RTC_TimeStruct->Minutes));
//  314     assert_param(IS_LL_RTC_SECONDS(RTC_TimeStruct->Seconds));
//  315   }
//  316   else
//  317   {
//  318     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  319     {
//  320       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Hours)));
//  321       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_TimeStruct->TimeFormat));
//  322     }
//  323     else
//  324     {
//  325       RTC_TimeStruct->TimeFormat = 0x00U;
//  326       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Hours)));
//  327     }
//  328     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Minutes)));
//  329     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_TimeStruct->Seconds)));
//  330   }
//  331 
//  332   /* Disable the write protection for RTC registers */
//  333   LL_RTC_DisableWriteProtection(RTCx);
//  334 
//  335   /* Set Initialization mode */
//  336   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
//  337   {
//  338     /* Check the input parameters format */
//  339     if (RTC_Format != LL_RTC_FORMAT_BIN)
//  340     {
//  341       LL_RTC_TIME_Config(RTCx, RTC_TimeStruct->TimeFormat, RTC_TimeStruct->Hours,
//  342                          RTC_TimeStruct->Minutes, RTC_TimeStruct->Seconds);
//  343     }
//  344     else
//  345     {
//  346       LL_RTC_TIME_Config(RTCx, RTC_TimeStruct->TimeFormat, __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Hours),
//  347                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Minutes),
//  348                          __LL_RTC_CONVERT_BIN2BCD(RTC_TimeStruct->Seconds));
//  349     }
//  350 
//  351     /* Exit Initialization mode */
//  352     LL_RTC_DisableInitMode(RTC);
//  353 
//  354 #if defined(RTC_CR_BYPSHAD)
//  355     /* If  RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
//  356     if (LL_RTC_IsShadowRegBypassEnabled(RTCx) == 0U)
//  357     {
//  358       status = LL_RTC_WaitForSynchro(RTCx);
//  359     }
//  360     else
//  361     {
//  362       status = SUCCESS;
//  363     }
//  364 #else
//  365     status = SUCCESS;
//  366 #endif /* RTC_CR_BYPSHAD */
//  367   }
//  368   /* Enable the write protection for RTC registers */
//  369   LL_RTC_EnableWriteProtection(RTCx);
//  370 
//  371   return status;
//  372 }
//  373 
//  374 /**
//  375   * @brief  Set each @ref LL_RTC_TimeTypeDef field to default value (Time = 00h:00min:00sec).
//  376   * @param  RTC_TimeStruct pointer to a @ref LL_RTC_TimeTypeDef structure which will be initialized.
//  377   * @retval None
//  378   */
//  379 void LL_RTC_TIME_StructInit(LL_RTC_TimeTypeDef *RTC_TimeStruct)
//  380 {
//  381   /* Time = 00h:00min:00sec */
//  382   RTC_TimeStruct->TimeFormat = LL_RTC_TIME_FORMAT_AM_OR_24;
//  383   RTC_TimeStruct->Hours      = 0U;
//  384   RTC_TimeStruct->Minutes    = 0U;
//  385   RTC_TimeStruct->Seconds    = 0U;
//  386 }
//  387 
//  388 /**
//  389   * @brief  Set the RTC current date.
//  390   * @param  RTCx RTC Instance
//  391   * @param  RTC_Format This parameter can be one of the following values:
//  392   *         @arg @ref LL_RTC_FORMAT_BIN
//  393   *         @arg @ref LL_RTC_FORMAT_BCD
//  394   * @param  RTC_DateStruct: pointer to a RTC_DateTypeDef structure that contains
//  395   *                         the date configuration information for the RTC.
//  396   * @retval An ErrorStatus enumeration value:
//  397   *          - SUCCESS: RTC Day register is configured
//  398   *          - ERROR: RTC Day register is not configured
//  399   */
//  400 ErrorStatus LL_RTC_DATE_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_DateTypeDef *RTC_DateStruct)
//  401 {
//  402   ErrorStatus status = ERROR;
//  403 
//  404   /* Check the parameters */
//  405   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  406   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
//  407 
//  408   if ((RTC_Format == LL_RTC_FORMAT_BIN) && ((RTC_DateStruct->Month & 0x10U) == 0x10U))
//  409   {
//  410     RTC_DateStruct->Month = (RTC_DateStruct->Month & (uint32_t)~(0x10U)) + 0x0AU;
//  411   }
//  412   if (RTC_Format == LL_RTC_FORMAT_BIN)
//  413   {
//  414     assert_param(IS_LL_RTC_YEAR(RTC_DateStruct->Year));
//  415     assert_param(IS_LL_RTC_MONTH(RTC_DateStruct->Month));
//  416     assert_param(IS_LL_RTC_DAY(RTC_DateStruct->Day));
//  417   }
//  418   else
//  419   {
//  420     assert_param(IS_LL_RTC_YEAR(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Year)));
//  421     assert_param(IS_LL_RTC_MONTH(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Month)));
//  422     assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_DateStruct->Day)));
//  423   }
//  424   assert_param(IS_LL_RTC_WEEKDAY(RTC_DateStruct->WeekDay));
//  425 
//  426   /* Disable the write protection for RTC registers */
//  427   LL_RTC_DisableWriteProtection(RTCx);
//  428 
//  429   /* Set Initialization mode */
//  430   if (LL_RTC_EnterInitMode(RTCx) != ERROR)
//  431   {
//  432     /* Check the input parameters format */
//  433     if (RTC_Format != LL_RTC_FORMAT_BIN)
//  434     {
//  435       LL_RTC_DATE_Config(RTCx, RTC_DateStruct->WeekDay, RTC_DateStruct->Day, RTC_DateStruct->Month, RTC_DateStruct->Year);
//  436     }
//  437     else
//  438     {
//  439       LL_RTC_DATE_Config(RTCx, RTC_DateStruct->WeekDay, __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Day),
//  440                          __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Month), __LL_RTC_CONVERT_BIN2BCD(RTC_DateStruct->Year));
//  441     }
//  442 
//  443     /* Exit Initialization mode */
//  444     LL_RTC_DisableInitMode(RTC);
//  445 
//  446 #if defined(RTC_CR_BYPSHAD)
//  447     /* If  RTC_CR_BYPSHAD bit = 0, wait for synchro else this check is not needed */
//  448     if (LL_RTC_IsShadowRegBypassEnabled(RTCx) == 0U)
//  449     {
//  450       status = LL_RTC_WaitForSynchro(RTCx);
//  451     }
//  452     else
//  453     {
//  454       status = SUCCESS;
//  455     }
//  456 #else
//  457     status = SUCCESS;
//  458 #endif /* RTC_CR_BYPSHAD */
//  459   }
//  460   /* Enable the write protection for RTC registers */
//  461   LL_RTC_EnableWriteProtection(RTCx);
//  462 
//  463   return status;
//  464 }
//  465 
//  466 /**
//  467   * @brief  Set each @ref LL_RTC_DateTypeDef field to default value (date = Monday, January 01 xx00)
//  468   * @param  RTC_DateStruct pointer to a @ref LL_RTC_DateTypeDef structure which will be initialized.
//  469   * @retval None
//  470   */
//  471 void LL_RTC_DATE_StructInit(LL_RTC_DateTypeDef *RTC_DateStruct)
//  472 {
//  473   /* Monday, January 01 xx00 */
//  474   RTC_DateStruct->WeekDay = LL_RTC_WEEKDAY_MONDAY;
//  475   RTC_DateStruct->Day     = 1U;
//  476   RTC_DateStruct->Month   = LL_RTC_MONTH_JANUARY;
//  477   RTC_DateStruct->Year    = 0U;
//  478 }
//  479 
//  480 /**
//  481   * @brief  Set the RTC Alarm A.
//  482   * @note   The Alarm register can only be written when the corresponding Alarm
//  483   *         is disabled (Use @ref LL_RTC_ALMA_Disable function).
//  484   * @param  RTCx RTC Instance
//  485   * @param  RTC_Format This parameter can be one of the following values:
//  486   *         @arg @ref LL_RTC_FORMAT_BIN
//  487   *         @arg @ref LL_RTC_FORMAT_BCD
//  488   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure that
//  489   *                         contains the alarm configuration parameters.
//  490   * @retval An ErrorStatus enumeration value:
//  491   *          - SUCCESS: ALARMA registers are configured
//  492   *          - ERROR: ALARMA registers are not configured
//  493   */
//  494 ErrorStatus LL_RTC_ALMA_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
//  495 {
//  496   /* Check the parameters */
//  497   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  498   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
//  499   assert_param(IS_LL_RTC_ALMA_MASK(RTC_AlarmStruct->AlarmMask));
//  500   assert_param(IS_LL_RTC_ALMA_DATE_WEEKDAY_SEL(RTC_AlarmStruct->AlarmDateWeekDaySel));
//  501 
//  502   if (RTC_Format == LL_RTC_FORMAT_BIN)
//  503   {
//  504     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  505     {
//  506       assert_param(IS_LL_RTC_HOUR12(RTC_AlarmStruct->AlarmTime.Hours));
//  507       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
//  508     }
//  509     else
//  510     {
//  511       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
//  512       assert_param(IS_LL_RTC_HOUR24(RTC_AlarmStruct->AlarmTime.Hours));
//  513     }
//  514     assert_param(IS_LL_RTC_MINUTES(RTC_AlarmStruct->AlarmTime.Minutes));
//  515     assert_param(IS_LL_RTC_SECONDS(RTC_AlarmStruct->AlarmTime.Seconds));
//  516 
//  517     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
//  518     {
//  519       assert_param(IS_LL_RTC_DAY(RTC_AlarmStruct->AlarmDateWeekDay));
//  520     }
//  521     else
//  522     {
//  523       assert_param(IS_LL_RTC_WEEKDAY(RTC_AlarmStruct->AlarmDateWeekDay));
//  524     }
//  525   }
//  526   else
//  527   {
//  528     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  529     {
//  530       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
//  531       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
//  532     }
//  533     else
//  534     {
//  535       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
//  536       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
//  537     }
//  538 
//  539     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Minutes)));
//  540     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Seconds)));
//  541 
//  542     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
//  543     {
//  544       assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
//  545     }
//  546     else
//  547     {
//  548       assert_param(IS_LL_RTC_WEEKDAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
//  549     }
//  550   }
//  551 
//  552   /* Disable the write protection for RTC registers */
//  553   LL_RTC_DisableWriteProtection(RTCx);
//  554 
//  555   /* Select weekday selection */
//  556   if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMA_DATEWEEKDAYSEL_DATE)
//  557   {
//  558     /* Set the date for ALARM */
//  559     LL_RTC_ALMA_DisableWeekday(RTCx);
//  560     if (RTC_Format != LL_RTC_FORMAT_BIN)
//  561     {
//  562       LL_RTC_ALMA_SetDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
//  563     }
//  564     else
//  565     {
//  566       LL_RTC_ALMA_SetDay(RTCx, __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmDateWeekDay));
//  567     }
//  568   }
//  569   else
//  570   {
//  571     /* Set the week day for ALARM */
//  572     LL_RTC_ALMA_EnableWeekday(RTCx);
//  573     LL_RTC_ALMA_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
//  574   }
//  575 
//  576   /* Configure the Alarm register */
//  577   if (RTC_Format != LL_RTC_FORMAT_BIN)
//  578   {
//  579     LL_RTC_ALMA_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat, RTC_AlarmStruct->AlarmTime.Hours,
//  580                            RTC_AlarmStruct->AlarmTime.Minutes, RTC_AlarmStruct->AlarmTime.Seconds);
//  581   }
//  582   else
//  583   {
//  584     LL_RTC_ALMA_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat,
//  585                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
//  586                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
//  587                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
//  588   }
//  589   /* Set ALARM mask */
//  590   LL_RTC_ALMA_SetMask(RTCx, RTC_AlarmStruct->AlarmMask);
//  591 
//  592   /* Enable the write protection for RTC registers */
//  593   LL_RTC_EnableWriteProtection(RTCx);
//  594 
//  595   return SUCCESS;
//  596 }
//  597 
//  598 /**
//  599   * @brief  Set the RTC Alarm B.
//  600   * @note   The Alarm register can only be written when the corresponding Alarm
//  601   *         is disabled (@ref LL_RTC_ALMB_Disable function).
//  602   * @param  RTCx RTC Instance
//  603   * @param  RTC_Format This parameter can be one of the following values:
//  604   *         @arg @ref LL_RTC_FORMAT_BIN
//  605   *         @arg @ref LL_RTC_FORMAT_BCD
//  606   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure that
//  607   *                         contains the alarm configuration parameters.
//  608   * @retval An ErrorStatus enumeration value:
//  609   *          - SUCCESS: ALARMB registers are configured
//  610   *          - ERROR: ALARMB registers are not configured
//  611   */
//  612 ErrorStatus LL_RTC_ALMB_Init(RTC_TypeDef *RTCx, uint32_t RTC_Format, LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
//  613 {
//  614   /* Check the parameters */
//  615   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  616   assert_param(IS_LL_RTC_FORMAT(RTC_Format));
//  617   assert_param(IS_LL_RTC_ALMB_MASK(RTC_AlarmStruct->AlarmMask));
//  618   assert_param(IS_LL_RTC_ALMB_DATE_WEEKDAY_SEL(RTC_AlarmStruct->AlarmDateWeekDaySel));
//  619 
//  620   if (RTC_Format == LL_RTC_FORMAT_BIN)
//  621   {
//  622     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  623     {
//  624       assert_param(IS_LL_RTC_HOUR12(RTC_AlarmStruct->AlarmTime.Hours));
//  625       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
//  626     }
//  627     else
//  628     {
//  629       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
//  630       assert_param(IS_LL_RTC_HOUR24(RTC_AlarmStruct->AlarmTime.Hours));
//  631     }
//  632     assert_param(IS_LL_RTC_MINUTES(RTC_AlarmStruct->AlarmTime.Minutes));
//  633     assert_param(IS_LL_RTC_SECONDS(RTC_AlarmStruct->AlarmTime.Seconds));
//  634 
//  635     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
//  636     {
//  637       assert_param(IS_LL_RTC_DAY(RTC_AlarmStruct->AlarmDateWeekDay));
//  638     }
//  639     else
//  640     {
//  641       assert_param(IS_LL_RTC_WEEKDAY(RTC_AlarmStruct->AlarmDateWeekDay));
//  642     }
//  643   }
//  644   else
//  645   {
//  646     if (LL_RTC_GetHourFormat(RTCx) != LL_RTC_HOURFORMAT_24HOUR)
//  647     {
//  648       assert_param(IS_LL_RTC_HOUR12(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
//  649       assert_param(IS_LL_RTC_TIME_FORMAT(RTC_AlarmStruct->AlarmTime.TimeFormat));
//  650     }
//  651     else
//  652     {
//  653       RTC_AlarmStruct->AlarmTime.TimeFormat = 0x00U;
//  654       assert_param(IS_LL_RTC_HOUR24(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Hours)));
//  655     }
//  656 
//  657     assert_param(IS_LL_RTC_MINUTES(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Minutes)));
//  658     assert_param(IS_LL_RTC_SECONDS(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmTime.Seconds)));
//  659 
//  660     if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
//  661     {
//  662       assert_param(IS_LL_RTC_DAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
//  663     }
//  664     else
//  665     {
//  666       assert_param(IS_LL_RTC_WEEKDAY(__LL_RTC_CONVERT_BCD2BIN(RTC_AlarmStruct->AlarmDateWeekDay)));
//  667     }
//  668   }
//  669 
//  670   /* Disable the write protection for RTC registers */
//  671   LL_RTC_DisableWriteProtection(RTCx);
//  672 
//  673   /* Select weekday selection */
//  674   if (RTC_AlarmStruct->AlarmDateWeekDaySel == LL_RTC_ALMB_DATEWEEKDAYSEL_DATE)
//  675   {
//  676     /* Set the date for ALARM */
//  677     LL_RTC_ALMB_DisableWeekday(RTCx);
//  678     if (RTC_Format != LL_RTC_FORMAT_BIN)
//  679     {
//  680       LL_RTC_ALMB_SetDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
//  681     }
//  682     else
//  683     {
//  684       LL_RTC_ALMB_SetDay(RTCx, __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmDateWeekDay));
//  685     }
//  686   }
//  687   else
//  688   {
//  689     /* Set the week day for ALARM */
//  690     LL_RTC_ALMB_EnableWeekday(RTCx);
//  691     LL_RTC_ALMB_SetWeekDay(RTCx, RTC_AlarmStruct->AlarmDateWeekDay);
//  692   }
//  693 
//  694   /* Configure the Alarm register */
//  695   if (RTC_Format != LL_RTC_FORMAT_BIN)
//  696   {
//  697     LL_RTC_ALMB_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat, RTC_AlarmStruct->AlarmTime.Hours,
//  698                            RTC_AlarmStruct->AlarmTime.Minutes, RTC_AlarmStruct->AlarmTime.Seconds);
//  699   }
//  700   else
//  701   {
//  702     LL_RTC_ALMB_ConfigTime(RTCx, RTC_AlarmStruct->AlarmTime.TimeFormat,
//  703                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Hours),
//  704                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Minutes),
//  705                            __LL_RTC_CONVERT_BIN2BCD(RTC_AlarmStruct->AlarmTime.Seconds));
//  706   }
//  707   /* Set ALARM mask */
//  708   LL_RTC_ALMB_SetMask(RTCx, RTC_AlarmStruct->AlarmMask);
//  709 
//  710   /* Enable the write protection for RTC registers */
//  711   LL_RTC_EnableWriteProtection(RTCx);
//  712 
//  713   return SUCCESS;
//  714 }
//  715 
//  716 /**
//  717   * @brief  Set each @ref LL_RTC_AlarmTypeDef of ALARMA field to default value (Time = 00h:00mn:00sec /
//  718   *         Day = 1st day of the month/Mask = all fields are masked).
//  719   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure which will be initialized.
//  720   * @retval None
//  721   */
//  722 void LL_RTC_ALMA_StructInit(LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
//  723 {
//  724   /* Alarm Time Settings : Time = 00h:00mn:00sec */
//  725   RTC_AlarmStruct->AlarmTime.TimeFormat = LL_RTC_ALMA_TIME_FORMAT_AM;
//  726   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
//  727   RTC_AlarmStruct->AlarmTime.Minutes    = 0U;
//  728   RTC_AlarmStruct->AlarmTime.Seconds    = 0U;
//  729 
//  730   /* Alarm Day Settings : Day = 1st day of the month */
//  731   RTC_AlarmStruct->AlarmDateWeekDaySel = LL_RTC_ALMA_DATEWEEKDAYSEL_DATE;
//  732   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
//  733 
//  734   /* Alarm Masks Settings : Mask =  all fields are not masked */
//  735   RTC_AlarmStruct->AlarmMask           = LL_RTC_ALMA_MASK_NONE;
//  736 }
//  737 
//  738 /**
//  739   * @brief  Set each @ref LL_RTC_AlarmTypeDef of ALARMA field to default value (Time = 00h:00mn:00sec /
//  740   *         Day = 1st day of the month/Mask = all fields are masked).
//  741   * @param  RTC_AlarmStruct pointer to a @ref LL_RTC_AlarmTypeDef structure which will be initialized.
//  742   * @retval None
//  743   */
//  744 void LL_RTC_ALMB_StructInit(LL_RTC_AlarmTypeDef *RTC_AlarmStruct)
//  745 {
//  746   /* Alarm Time Settings : Time = 00h:00mn:00sec */
//  747   RTC_AlarmStruct->AlarmTime.TimeFormat = LL_RTC_ALMB_TIME_FORMAT_AM;
//  748   RTC_AlarmStruct->AlarmTime.Hours      = 0U;
//  749   RTC_AlarmStruct->AlarmTime.Minutes    = 0U;
//  750   RTC_AlarmStruct->AlarmTime.Seconds    = 0U;
//  751 
//  752   /* Alarm Day Settings : Day = 1st day of the month */
//  753   RTC_AlarmStruct->AlarmDateWeekDaySel = LL_RTC_ALMB_DATEWEEKDAYSEL_DATE;
//  754   RTC_AlarmStruct->AlarmDateWeekDay    = 1U;
//  755 
//  756   /* Alarm Masks Settings : Mask =  all fields are not masked */
//  757   RTC_AlarmStruct->AlarmMask           = LL_RTC_ALMB_MASK_NONE;
//  758 }
//  759 
//  760 /**
//  761   * @brief  Enters the RTC Initialization mode.
//  762   * @note   The RTC Initialization mode is write protected, use the
//  763   *         @ref LL_RTC_DisableWriteProtection before calling this function.
//  764   * @param  RTCx RTC Instance
//  765   * @retval An ErrorStatus enumeration value:
//  766   *          - SUCCESS: RTC is in Init mode
//  767   *          - ERROR: RTC is not in Init mode
//  768   */
//  769 ErrorStatus LL_RTC_EnterInitMode(RTC_TypeDef *RTCx)
//  770 {
//  771   __IO uint32_t timeout = RTC_INITMODE_TIMEOUT;
//  772   ErrorStatus status = SUCCESS;
//  773   uint32_t tmp = 0U;
//  774 
//  775   /* Check the parameter */
//  776   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  777 
//  778   /* Check if the Initialization mode is set */
//  779   if (LL_RTC_IsActiveFlag_INIT(RTCx) == 0U)
//  780   {
//  781     /* Set the Initialization mode */
//  782     LL_RTC_EnableInitMode(RTCx);
//  783 
//  784     /* Wait till RTC is in INIT state and if Time out is reached exit */
//  785     tmp = LL_RTC_IsActiveFlag_INIT(RTCx);
//  786     while ((timeout != 0U) && (tmp != 1U))
//  787     {
//  788       if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
//  789       {
//  790         timeout --;
//  791       }
//  792       tmp = LL_RTC_IsActiveFlag_INIT(RTCx);
//  793       if (timeout == 0U)
//  794       {
//  795         status = ERROR;
//  796       }
//  797     }
//  798   }
//  799   return status;
//  800 }
//  801 
//  802 /**
//  803   * @brief  Exit the RTC Initialization mode.
//  804   * @note   When the initialization sequence is complete, the calendar restarts
//  805   *         counting after 4 RTCCLK cycles.
//  806   * @note   The RTC Initialization mode is write protected, use the
//  807   *         @ref LL_RTC_DisableWriteProtection before calling this function.
//  808   * @param  RTCx RTC Instance
//  809   * @retval An ErrorStatus enumeration value:
//  810   *          - SUCCESS: RTC exited from in Init mode
//  811   *          - ERROR: Not applicable
//  812   */
//  813 ErrorStatus LL_RTC_ExitInitMode(RTC_TypeDef *RTCx)
//  814 {
//  815   /* Check the parameter */
//  816   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  817 
//  818   /* Disable initialization mode */
//  819   LL_RTC_DisableInitMode(RTCx);
//  820 
//  821   return SUCCESS;
//  822 }
//  823 
//  824 /**
//  825   * @brief  Waits until the RTC Time and Day registers (RTC_TR and RTC_DR) are
//  826   *         synchronized with RTC APB clock.
//  827   * @note   The RTC Resynchronization mode is write protected, use the
//  828   *         @ref LL_RTC_DisableWriteProtection before calling this function.
//  829   * @note   To read the calendar through the shadow registers after Calendar
//  830   *         initialization, calendar update or after wakeup from low power modes
//  831   *         the software must first clear the RSF flag.
//  832   *         The software must then wait until it is set again before reading
//  833   *         the calendar, which means that the calendar registers have been
//  834   *         correctly copied into the RTC_TR and RTC_DR shadow registers.
//  835   * @param  RTCx RTC Instance
//  836   * @retval An ErrorStatus enumeration value:
//  837   *          - SUCCESS: RTC registers are synchronised
//  838   *          - ERROR: RTC registers are not synchronised
//  839   */
//  840 ErrorStatus LL_RTC_WaitForSynchro(RTC_TypeDef *RTCx)
//  841 {
//  842   __IO uint32_t timeout = RTC_SYNCHRO_TIMEOUT;
//  843   ErrorStatus status = SUCCESS;
//  844   uint32_t tmp = 0U;
//  845 
//  846   /* Check the parameter */
//  847   assert_param(IS_RTC_ALL_INSTANCE(RTCx));
//  848 
//  849   /* Clear RSF flag */
//  850   LL_RTC_ClearFlag_RS(RTCx);
//  851 
//  852   /* Wait the registers to be synchronised */
//  853   tmp = LL_RTC_IsActiveFlag_RS(RTCx);
//  854   while ((timeout != 0U) && (tmp != 0U))
//  855   {
//  856     if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
//  857     {
//  858       timeout--;
//  859     }
//  860     tmp = LL_RTC_IsActiveFlag_RS(RTCx);
//  861     if (timeout == 0U)
//  862     {
//  863       status = ERROR;
//  864     }
//  865   }
//  866 
//  867   if (status != ERROR)
//  868   {
//  869     timeout = RTC_SYNCHRO_TIMEOUT;
//  870     tmp = LL_RTC_IsActiveFlag_RS(RTCx);
//  871     while ((timeout != 0U) && (tmp != 1U))
//  872     {
//  873       if (LL_SYSTICK_IsActiveCounterFlag() == 1U)
//  874       {
//  875         timeout--;
//  876       }
//  877       tmp = LL_RTC_IsActiveFlag_RS(RTCx);
//  878       if (timeout == 0U)
//  879       {
//  880         status = ERROR;
//  881       }
//  882     }
//  883   }
//  884 
//  885   return (status);
//  886 }
//  887 
//  888 /**
//  889   * @}
//  890   */
//  891 
//  892 /**
//  893   * @}
//  894   */
//  895 
//  896 /**
//  897   * @}
//  898   */
//  899 
//  900 #endif /* defined(RTC) */
//  901 
//  902 /**
//  903   * @}
//  904   */
//  905 
//  906 #endif /* USE_FULL_LL_DRIVER */
//  907 
//  908 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
