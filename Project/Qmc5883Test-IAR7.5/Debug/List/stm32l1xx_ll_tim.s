///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:16
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_tim.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_tim.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_tim.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_tim.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_tim.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   TIM LL module driver.
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
//   40 #include "stm32l1xx_ll_tim.h"
//   41 #include "stm32l1xx_ll_bus.h"
//   42 
//   43 #ifdef  USE_FULL_ASSERT
//   44 #include "stm32_assert.h"
//   45 #else
//   46 #define assert_param(expr) ((void)0U)
//   47 #endif
//   48 
//   49 /** @addtogroup STM32L1xx_LL_Driver
//   50   * @{
//   51   */
//   52 
//   53 #if defined (TIM2) || defined (TIM3) || defined (TIM4) || defined (TIM5) || defined (TIM9) || defined (TIM10) || defined (TIM11) || defined (TIM6) || defined (TIM7)
//   54 
//   55 /** @addtogroup TIM_LL
//   56   * @{
//   57   */
//   58 
//   59 /* Private types -------------------------------------------------------------*/
//   60 /* Private variables ---------------------------------------------------------*/
//   61 /* Private constants ---------------------------------------------------------*/
//   62 /* Private macros ------------------------------------------------------------*/
//   63 /** @addtogroup TIM_LL_Private_Macros
//   64   * @{
//   65   */
//   66 #define IS_LL_TIM_COUNTERMODE(__VALUE__) (((__VALUE__) == LL_TIM_COUNTERMODE_UP) \ 
//   67                                        || ((__VALUE__) == LL_TIM_COUNTERMODE_DOWN) \ 
//   68                                        || ((__VALUE__) == LL_TIM_COUNTERMODE_CENTER_UP) \ 
//   69                                        || ((__VALUE__) == LL_TIM_COUNTERMODE_CENTER_DOWN) \ 
//   70                                        || ((__VALUE__) == LL_TIM_COUNTERMODE_CENTER_UP_DOWN))
//   71 
//   72 #define IS_LL_TIM_CLOCKDIVISION(__VALUE__) (((__VALUE__) == LL_TIM_CLOCKDIVISION_DIV1) \ 
//   73                                          || ((__VALUE__) == LL_TIM_CLOCKDIVISION_DIV2) \ 
//   74                                          || ((__VALUE__) == LL_TIM_CLOCKDIVISION_DIV4))
//   75 
//   76 #define IS_LL_TIM_OCMODE(__VALUE__) (((__VALUE__) == LL_TIM_OCMODE_FROZEN) \ 
//   77                                   || ((__VALUE__) == LL_TIM_OCMODE_ACTIVE) \ 
//   78                                   || ((__VALUE__) == LL_TIM_OCMODE_INACTIVE) \ 
//   79                                   || ((__VALUE__) == LL_TIM_OCMODE_TOGGLE) \ 
//   80                                   || ((__VALUE__) == LL_TIM_OCMODE_FORCED_INACTIVE) \ 
//   81                                   || ((__VALUE__) == LL_TIM_OCMODE_FORCED_ACTIVE) \ 
//   82                                   || ((__VALUE__) == LL_TIM_OCMODE_PWM1) \ 
//   83                                   || ((__VALUE__) == LL_TIM_OCMODE_PWM2))
//   84 
//   85 #define IS_LL_TIM_OCSTATE(__VALUE__) (((__VALUE__) == LL_TIM_OCSTATE_DISABLE) \ 
//   86                                    || ((__VALUE__) == LL_TIM_OCSTATE_ENABLE))
//   87 
//   88 #define IS_LL_TIM_OCPOLARITY(__VALUE__) (((__VALUE__) == LL_TIM_OCPOLARITY_HIGH) \ 
//   89                                       || ((__VALUE__) == LL_TIM_OCPOLARITY_LOW))
//   90 
//   91 #define IS_LL_TIM_ACTIVEINPUT(__VALUE__) (((__VALUE__) == LL_TIM_ACTIVEINPUT_DIRECTTI) \ 
//   92                                        || ((__VALUE__) == LL_TIM_ACTIVEINPUT_INDIRECTTI) \ 
//   93                                        || ((__VALUE__) == LL_TIM_ACTIVEINPUT_TRC))
//   94 
//   95 #define IS_LL_TIM_ICPSC(__VALUE__) (((__VALUE__) == LL_TIM_ICPSC_DIV1) \ 
//   96                                  || ((__VALUE__) == LL_TIM_ICPSC_DIV2) \ 
//   97                                  || ((__VALUE__) == LL_TIM_ICPSC_DIV4) \ 
//   98                                  || ((__VALUE__) == LL_TIM_ICPSC_DIV8))
//   99 
//  100 #define IS_LL_TIM_IC_FILTER(__VALUE__) (((__VALUE__) == LL_TIM_IC_FILTER_FDIV1) \ 
//  101                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV1_N2) \ 
//  102                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV1_N4) \ 
//  103                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV1_N8) \ 
//  104                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV2_N6) \ 
//  105                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV2_N8) \ 
//  106                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV4_N6) \ 
//  107                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV4_N8) \ 
//  108                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV8_N6) \ 
//  109                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV8_N8) \ 
//  110                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV16_N5) \ 
//  111                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV16_N6) \ 
//  112                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV16_N8) \ 
//  113                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV32_N5) \ 
//  114                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV32_N6) \ 
//  115                                      || ((__VALUE__) == LL_TIM_IC_FILTER_FDIV32_N8))
//  116 
//  117 #define IS_LL_TIM_IC_POLARITY(__VALUE__) (((__VALUE__) == LL_TIM_IC_POLARITY_RISING) \ 
//  118                                        || ((__VALUE__) == LL_TIM_IC_POLARITY_FALLING) \ 
//  119                                        || ((__VALUE__) == LL_TIM_IC_POLARITY_BOTHEDGE))
//  120 
//  121 #define IS_LL_TIM_ENCODERMODE(__VALUE__) (((__VALUE__) == LL_TIM_ENCODERMODE_X2_TI1) \ 
//  122                                        || ((__VALUE__) == LL_TIM_ENCODERMODE_X2_TI2) \ 
//  123                                        || ((__VALUE__) == LL_TIM_ENCODERMODE_X4_TI12))
//  124 
//  125 #define IS_LL_TIM_IC_POLARITY_ENCODER(__VALUE__) (((__VALUE__) == LL_TIM_IC_POLARITY_RISING) \ 
//  126                                                || ((__VALUE__) == LL_TIM_IC_POLARITY_FALLING))
//  127 /**
//  128   * @}
//  129   */
//  130 
//  131 
//  132 /* Private function prototypes -----------------------------------------------*/
//  133 /** @defgroup TIM_LL_Private_Functions TIM Private Functions
//  134   * @{
//  135   */
//  136 static ErrorStatus OC1Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct);
//  137 static ErrorStatus OC2Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct);
//  138 static ErrorStatus OC3Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct);
//  139 static ErrorStatus OC4Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct);
//  140 static ErrorStatus IC1Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct);
//  141 static ErrorStatus IC2Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct);
//  142 static ErrorStatus IC3Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct);
//  143 static ErrorStatus IC4Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct);
//  144 /**
//  145   * @}
//  146   */
//  147 
//  148 /* Exported functions --------------------------------------------------------*/
//  149 /** @addtogroup TIM_LL_Exported_Functions
//  150   * @{
//  151   */
//  152 
//  153 /** @addtogroup TIM_LL_EF_Init
//  154   * @{
//  155   */
//  156 
//  157 /**
//  158   * @brief  Set TIMx registers to their reset values.
//  159   * @param  TIMx Timer instance
//  160   * @retval An ErrorStatus enumeration value:
//  161   *          - SUCCESS: TIMx registers are de-initialized
//  162   *          - ERROR: invalid TIMx instance
//  163   */
//  164 ErrorStatus LL_TIM_DeInit(TIM_TypeDef *TIMx)
//  165 {
//  166   ErrorStatus result = SUCCESS;
//  167 
//  168   /* Check the parameters */
//  169   assert_param(IS_TIM_INSTANCE(TIMx));
//  170 
//  171   if (TIMx == TIM2)
//  172   {
//  173     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM2);
//  174     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM2);
//  175   }
//  176 #if defined(TIM3)
//  177   else if (TIMx == TIM3)
//  178   {
//  179     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM3);
//  180     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM3);
//  181   }
//  182 #endif /* TIM3 */
//  183 #if defined(TIM4)
//  184   else if (TIMx == TIM4)
//  185   {
//  186     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM4);
//  187     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM4);
//  188   }
//  189 #endif /* TIM4 */
//  190 #if defined(TIM5)
//  191   else if (TIMx == TIM5)
//  192   {
//  193     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM5);
//  194     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM5);
//  195   }
//  196 #endif /* TIM5 */
//  197 #if defined(TIM6)
//  198   else if (TIMx == TIM6)
//  199   {
//  200     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM6);
//  201     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM6);
//  202   }
//  203 #endif /* TIM6 */
//  204 #if defined(TIM7)
//  205   else if (TIMx == TIM7)
//  206   {
//  207     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_TIM7);
//  208     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_TIM7);
//  209   }
//  210 #endif /* TIM7 */
//  211 #if defined(TIM9)
//  212   else if (TIMx == TIM9)
//  213   {
//  214     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_TIM9);
//  215     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_TIM9);
//  216   }
//  217 #endif /* TIM9 */
//  218 #if defined(TIM10)
//  219   else if (TIMx == TIM10)
//  220   {
//  221     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_TIM10);
//  222     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_TIM10);
//  223   }
//  224 #endif /* TIM10 */
//  225 #if defined(TIM11)
//  226   else if (TIMx == TIM11)
//  227   {
//  228     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_TIM11);
//  229     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_TIM11);
//  230   }
//  231 #endif /* TIM11 */
//  232   else
//  233   {
//  234     result = ERROR;
//  235   }
//  236 
//  237   return result;
//  238 }
//  239 
//  240 /**
//  241   * @brief  Set the fields of the time base unit configuration data structure
//  242   *         to their default values.
//  243   * @param  TIM_InitStruct pointer to a @ref LL_TIM_InitTypeDef structure (time base unit configuration data structure)
//  244   * @retval None
//  245   */
//  246 void LL_TIM_StructInit(LL_TIM_InitTypeDef *TIM_InitStruct)
//  247 {
//  248   /* Set the default configuration */
//  249   TIM_InitStruct->Prescaler         = (uint16_t)0x0000U;
//  250   TIM_InitStruct->CounterMode       = LL_TIM_COUNTERMODE_UP;
//  251   TIM_InitStruct->Autoreload        = (uint32_t)0xFFFFFFFFU;
//  252   TIM_InitStruct->ClockDivision     = LL_TIM_CLOCKDIVISION_DIV1;
//  253 }
//  254 
//  255 /**
//  256   * @brief  Configure the TIMx time base unit.
//  257   * @param  TIMx Timer Instance
//  258   * @param  TIM_InitStruct pointer to a @ref LL_TIM_InitTypeDef structure (TIMx time base unit configuration data structure)
//  259   * @retval An ErrorStatus enumeration value:
//  260   *          - SUCCESS: TIMx registers are de-initialized
//  261   *          - ERROR: not applicable
//  262   */
//  263 ErrorStatus LL_TIM_Init(TIM_TypeDef *TIMx, LL_TIM_InitTypeDef *TIM_InitStruct)
//  264 {
//  265   uint32_t tmpcr1 = 0U;
//  266 
//  267   /* Check the parameters */
//  268   assert_param(IS_TIM_INSTANCE(TIMx));
//  269   assert_param(IS_LL_TIM_COUNTERMODE(TIM_InitStruct->CounterMode));
//  270   assert_param(IS_LL_TIM_CLOCKDIVISION(TIM_InitStruct->ClockDivision));
//  271 
//  272   tmpcr1 = LL_TIM_ReadReg(TIMx, CR1);
//  273 
//  274   if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
//  275   {
//  276     /* Select the Counter Mode */
//  277     MODIFY_REG(tmpcr1, (TIM_CR1_DIR | TIM_CR1_CMS), TIM_InitStruct->CounterMode);
//  278   }
//  279 
//  280   if (IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
//  281   {
//  282     /* Set the clock division */
//  283     MODIFY_REG(tmpcr1, TIM_CR1_CKD, TIM_InitStruct->ClockDivision);
//  284   }
//  285 
//  286   /* Write to TIMx CR1 */
//  287   LL_TIM_WriteReg(TIMx, CR1, tmpcr1);
//  288 
//  289   /* Set the Autoreload value */
//  290   LL_TIM_SetAutoReload(TIMx, TIM_InitStruct->Autoreload);
//  291 
//  292   /* Set the Prescaler value */
//  293   LL_TIM_SetPrescaler(TIMx, TIM_InitStruct->Prescaler);
//  294   /* Generate an update event to reload the Prescaler
//  295      and the repetition counter value (if applicable) immediately */
//  296   LL_TIM_GenerateEvent_UPDATE(TIMx);
//  297 
//  298   return SUCCESS;
//  299 }
//  300 
//  301 /**
//  302   * @brief  Set the fields of the TIMx output channel configuration data
//  303   *         structure to their default values.
//  304   * @param  TIM_OC_InitStruct pointer to a @ref LL_TIM_OC_InitTypeDef structure (the output channel configuration data structure)
//  305   * @retval None
//  306   */
//  307 void LL_TIM_OC_StructInit(LL_TIM_OC_InitTypeDef *TIM_OC_InitStruct)
//  308 {
//  309   /* Set the default configuration */
//  310   TIM_OC_InitStruct->OCMode       = LL_TIM_OCMODE_FROZEN;
//  311   TIM_OC_InitStruct->OCState      = LL_TIM_OCSTATE_DISABLE;
//  312   TIM_OC_InitStruct->CompareValue = (uint32_t)0x00000000U;
//  313   TIM_OC_InitStruct->OCPolarity   = LL_TIM_OCPOLARITY_HIGH;
//  314 }
//  315 
//  316 /**
//  317   * @brief  Configure the TIMx output channel.
//  318   * @param  TIMx Timer Instance
//  319   * @param  Channel This parameter can be one of the following values:
//  320   *         @arg @ref LL_TIM_CHANNEL_CH1
//  321   *         @arg @ref LL_TIM_CHANNEL_CH2
//  322   *         @arg @ref LL_TIM_CHANNEL_CH3
//  323   *         @arg @ref LL_TIM_CHANNEL_CH4
//  324   * @param  TIM_OC_InitStruct pointer to a @ref LL_TIM_OC_InitTypeDef structure (TIMx output channel configuration data structure)
//  325   * @retval An ErrorStatus enumeration value:
//  326   *          - SUCCESS: TIMx output channel is initialized
//  327   *          - ERROR: TIMx output channel is not initialized
//  328   */
//  329 ErrorStatus LL_TIM_OC_Init(TIM_TypeDef *TIMx, uint32_t Channel, LL_TIM_OC_InitTypeDef *TIM_OC_InitStruct)
//  330 {
//  331   ErrorStatus result = ERROR;
//  332 
//  333   switch (Channel)
//  334   {
//  335     case LL_TIM_CHANNEL_CH1:
//  336       result = OC1Config(TIMx, TIM_OC_InitStruct);
//  337       break;
//  338     case LL_TIM_CHANNEL_CH2:
//  339       result = OC2Config(TIMx, TIM_OC_InitStruct);
//  340       break;
//  341     case LL_TIM_CHANNEL_CH3:
//  342       result = OC3Config(TIMx, TIM_OC_InitStruct);
//  343       break;
//  344     case LL_TIM_CHANNEL_CH4:
//  345       result = OC4Config(TIMx, TIM_OC_InitStruct);
//  346       break;
//  347     default:
//  348       break;
//  349   }
//  350 
//  351   return result;
//  352 }
//  353 
//  354 /**
//  355   * @brief  Set the fields of the TIMx input channel configuration data
//  356   *         structure to their default values.
//  357   * @param  TIM_ICInitStruct pointer to a @ref LL_TIM_IC_InitTypeDef structure (the input channel configuration data structure)
//  358   * @retval None
//  359   */
//  360 void LL_TIM_IC_StructInit(LL_TIM_IC_InitTypeDef *TIM_ICInitStruct)
//  361 {
//  362   /* Set the default configuration */
//  363   TIM_ICInitStruct->ICPolarity    = LL_TIM_IC_POLARITY_RISING;
//  364   TIM_ICInitStruct->ICActiveInput = LL_TIM_ACTIVEINPUT_DIRECTTI;
//  365   TIM_ICInitStruct->ICPrescaler   = LL_TIM_ICPSC_DIV1;
//  366   TIM_ICInitStruct->ICFilter      = LL_TIM_IC_FILTER_FDIV1;
//  367 }
//  368 
//  369 /**
//  370   * @brief  Configure the TIMx input channel.
//  371   * @param  TIMx Timer Instance
//  372   * @param  Channel This parameter can be one of the following values:
//  373   *         @arg @ref LL_TIM_CHANNEL_CH1
//  374   *         @arg @ref LL_TIM_CHANNEL_CH2
//  375   *         @arg @ref LL_TIM_CHANNEL_CH3
//  376   *         @arg @ref LL_TIM_CHANNEL_CH4
//  377   * @param  TIM_IC_InitStruct pointer to a @ref LL_TIM_IC_InitTypeDef structure (TIMx input channel configuration data structure)
//  378   * @retval An ErrorStatus enumeration value:
//  379   *          - SUCCESS: TIMx output channel is initialized
//  380   *          - ERROR: TIMx output channel is not initialized
//  381   */
//  382 ErrorStatus LL_TIM_IC_Init(TIM_TypeDef *TIMx, uint32_t Channel, LL_TIM_IC_InitTypeDef *TIM_IC_InitStruct)
//  383 {
//  384   ErrorStatus result = ERROR;
//  385 
//  386   switch (Channel)
//  387   {
//  388     case LL_TIM_CHANNEL_CH1:
//  389       result = IC1Config(TIMx, TIM_IC_InitStruct);
//  390       break;
//  391     case LL_TIM_CHANNEL_CH2:
//  392       result = IC2Config(TIMx, TIM_IC_InitStruct);
//  393       break;
//  394     case LL_TIM_CHANNEL_CH3:
//  395       result = IC3Config(TIMx, TIM_IC_InitStruct);
//  396       break;
//  397     case LL_TIM_CHANNEL_CH4:
//  398       result = IC4Config(TIMx, TIM_IC_InitStruct);
//  399       break;
//  400     default:
//  401       break;
//  402   }
//  403 
//  404   return result;
//  405 }
//  406 
//  407 /**
//  408   * @brief  Fills each TIM_EncoderInitStruct field with its default value
//  409   * @param  TIM_EncoderInitStruct pointer to a @ref LL_TIM_ENCODER_InitTypeDef structure (encoder interface configuration data structure)
//  410   * @retval None
//  411   */
//  412 void LL_TIM_ENCODER_StructInit(LL_TIM_ENCODER_InitTypeDef *TIM_EncoderInitStruct)
//  413 {
//  414   /* Set the default configuration */
//  415   TIM_EncoderInitStruct->EncoderMode    = LL_TIM_ENCODERMODE_X2_TI1;
//  416   TIM_EncoderInitStruct->IC1Polarity    = LL_TIM_IC_POLARITY_RISING;
//  417   TIM_EncoderInitStruct->IC1ActiveInput = LL_TIM_ACTIVEINPUT_DIRECTTI;
//  418   TIM_EncoderInitStruct->IC1Prescaler   = LL_TIM_ICPSC_DIV1;
//  419   TIM_EncoderInitStruct->IC1Filter      = LL_TIM_IC_FILTER_FDIV1;
//  420   TIM_EncoderInitStruct->IC2Polarity    = LL_TIM_IC_POLARITY_RISING;
//  421   TIM_EncoderInitStruct->IC2ActiveInput = LL_TIM_ACTIVEINPUT_DIRECTTI;
//  422   TIM_EncoderInitStruct->IC2Prescaler   = LL_TIM_ICPSC_DIV1;
//  423   TIM_EncoderInitStruct->IC2Filter      = LL_TIM_IC_FILTER_FDIV1;
//  424 }
//  425 
//  426 /**
//  427   * @brief  Configure the encoder interface of the timer instance.
//  428   * @param  TIMx Timer Instance
//  429   * @param  TIM_EncoderInitStruct pointer to a @ref LL_TIM_ENCODER_InitTypeDef structure (TIMx encoder interface configuration data structure)
//  430   * @retval An ErrorStatus enumeration value:
//  431   *          - SUCCESS: TIMx registers are de-initialized
//  432   *          - ERROR: not applicable
//  433   */
//  434 ErrorStatus LL_TIM_ENCODER_Init(TIM_TypeDef *TIMx, LL_TIM_ENCODER_InitTypeDef *TIM_EncoderInitStruct)
//  435 {
//  436   uint32_t tmpccmr1 = 0U;
//  437   uint32_t tmpccer = 0U;
//  438 
//  439   /* Check the parameters */
//  440   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(TIMx));
//  441   assert_param(IS_LL_TIM_ENCODERMODE(TIM_EncoderInitStruct->EncoderMode));
//  442   assert_param(IS_LL_TIM_IC_POLARITY_ENCODER(TIM_EncoderInitStruct->IC1Polarity));
//  443   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_EncoderInitStruct->IC1ActiveInput));
//  444   assert_param(IS_LL_TIM_ICPSC(TIM_EncoderInitStruct->IC1Prescaler));
//  445   assert_param(IS_LL_TIM_IC_FILTER(TIM_EncoderInitStruct->IC1Filter));
//  446   assert_param(IS_LL_TIM_IC_POLARITY_ENCODER(TIM_EncoderInitStruct->IC2Polarity));
//  447   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_EncoderInitStruct->IC2ActiveInput));
//  448   assert_param(IS_LL_TIM_ICPSC(TIM_EncoderInitStruct->IC2Prescaler));
//  449   assert_param(IS_LL_TIM_IC_FILTER(TIM_EncoderInitStruct->IC2Filter));
//  450 
//  451   /* Disable the CC1 and CC2: Reset the CC1E and CC2E Bits */
//  452   TIMx->CCER &= (uint32_t)~(TIM_CCER_CC1E | TIM_CCER_CC2E);
//  453 
//  454   /* Get the TIMx CCMR1 register value */
//  455   tmpccmr1 = LL_TIM_ReadReg(TIMx, CCMR1);
//  456 
//  457   /* Get the TIMx CCER register value */
//  458   tmpccer = LL_TIM_ReadReg(TIMx, CCER);
//  459 
//  460   /* Configure TI1 */
//  461   tmpccmr1 &= (uint32_t)~(TIM_CCMR1_CC1S | TIM_CCMR1_IC1F  | TIM_CCMR1_IC1PSC);
//  462   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC1ActiveInput >> 16U);
//  463   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC1Filter >> 16U);
//  464   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC1Prescaler >> 16U);
//  465 
//  466   /* Configure TI2 */
//  467   tmpccmr1 &= (uint32_t)~(TIM_CCMR1_CC2S | TIM_CCMR1_IC2F  | TIM_CCMR1_IC2PSC);
//  468   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC2ActiveInput >> 8U);
//  469   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC2Filter >> 8U);
//  470   tmpccmr1 |= (uint32_t)(TIM_EncoderInitStruct->IC2Prescaler >> 8U);
//  471 
//  472   /* Set TI1 and TI2 polarity and enable TI1 and TI2 */
//  473   tmpccer &= (uint32_t)~(TIM_CCER_CC1P | TIM_CCER_CC1NP | TIM_CCER_CC2P | TIM_CCER_CC2NP);
//  474   tmpccer |= (uint32_t)(TIM_EncoderInitStruct->IC1Polarity);
//  475   tmpccer |= (uint32_t)(TIM_EncoderInitStruct->IC2Polarity << 4U);
//  476   tmpccer |= (uint32_t)(TIM_CCER_CC1E | TIM_CCER_CC2E);
//  477 
//  478   /* Set encoder mode */
//  479   LL_TIM_SetEncoderMode(TIMx, TIM_EncoderInitStruct->EncoderMode);
//  480 
//  481   /* Write to TIMx CCMR1 */
//  482   LL_TIM_WriteReg(TIMx, CCMR1, tmpccmr1);
//  483 
//  484   /* Write to TIMx CCER */
//  485   LL_TIM_WriteReg(TIMx, CCER, tmpccer);
//  486 
//  487   return SUCCESS;
//  488 }
//  489 
//  490 
//  491 /**
//  492   * @}
//  493   */
//  494 
//  495 /**
//  496   * @}
//  497   */
//  498 
//  499 /** @addtogroup TIM_LL_Private_Functions TIM Private Functions
//  500  *  @brief   Private functions
//  501   * @{
//  502   */
//  503 /**
//  504   * @brief  Configure the TIMx output channel 1.
//  505   * @param  TIMx Timer Instance
//  506   * @param  TIM_OCInitStruct pointer to the the TIMx output channel 1 configuration data structure
//  507   * @retval An ErrorStatus enumeration value:
//  508   *          - SUCCESS: TIMx registers are de-initialized
//  509   *          - ERROR: not applicable
//  510   */
//  511 static ErrorStatus OC1Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct)
//  512 {
//  513   uint32_t tmpccmr1 = 0U;
//  514   uint32_t tmpccer = 0U;
//  515   uint32_t tmpcr2 = 0U;
//  516 
//  517   /* Check the parameters */
//  518   assert_param(IS_TIM_CC1_INSTANCE(TIMx));
//  519   assert_param(IS_LL_TIM_OCMODE(TIM_OCInitStruct->OCMode));
//  520   assert_param(IS_LL_TIM_OCSTATE(TIM_OCInitStruct->OCState));
//  521   assert_param(IS_LL_TIM_OCPOLARITY(TIM_OCInitStruct->OCPolarity));
//  522 
//  523   /* Disable the Channel 1: Reset the CC1E Bit */
//  524   CLEAR_BIT(TIMx->CCER, TIM_CCER_CC1E);
//  525 
//  526   /* Get the TIMx CCER register value */
//  527   tmpccer = LL_TIM_ReadReg(TIMx, CCER);
//  528 
//  529   /* Get the TIMx CR2 register value */
//  530   tmpcr2 = LL_TIM_ReadReg(TIMx, CR2);
//  531 
//  532   /* Get the TIMx CCMR1 register value */
//  533   tmpccmr1 = LL_TIM_ReadReg(TIMx, CCMR1);
//  534 
//  535   /* Reset Capture/Compare selection Bits */
//  536   CLEAR_BIT(tmpccmr1, TIM_CCMR1_CC1S);
//  537 
//  538   /* Set the Output Compare Mode */
//  539   MODIFY_REG(tmpccmr1, TIM_CCMR1_OC1M, TIM_OCInitStruct->OCMode);
//  540 
//  541   /* Set the Output Compare Polarity */
//  542   MODIFY_REG(tmpccer, TIM_CCER_CC1P, TIM_OCInitStruct->OCPolarity);
//  543 
//  544   /* Set the Output State */
//  545   MODIFY_REG(tmpccer, TIM_CCER_CC1E, TIM_OCInitStruct->OCState);
//  546 
//  547   /* Write to TIMx CR2 */
//  548   LL_TIM_WriteReg(TIMx, CR2, tmpcr2);
//  549 
//  550   /* Write to TIMx CCMR1 */
//  551   LL_TIM_WriteReg(TIMx, CCMR1, tmpccmr1);
//  552 
//  553   /* Set the Capture Compare Register value */
//  554   LL_TIM_OC_SetCompareCH1(TIMx, TIM_OCInitStruct->CompareValue);
//  555 
//  556   /* Write to TIMx CCER */
//  557   LL_TIM_WriteReg(TIMx, CCER, tmpccer);
//  558 
//  559   return SUCCESS;
//  560 }
//  561 
//  562 /**
//  563   * @brief  Configure the TIMx output channel 2.
//  564   * @param  TIMx Timer Instance
//  565   * @param  TIM_OCInitStruct pointer to the the TIMx output channel 2 configuration data structure
//  566   * @retval An ErrorStatus enumeration value:
//  567   *          - SUCCESS: TIMx registers are de-initialized
//  568   *          - ERROR: not applicable
//  569   */
//  570 static ErrorStatus OC2Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct)
//  571 {
//  572   uint32_t tmpccmr1 = 0U;
//  573   uint32_t tmpccer = 0U;
//  574   uint32_t tmpcr2 = 0U;
//  575 
//  576   /* Check the parameters */
//  577   assert_param(IS_TIM_CC2_INSTANCE(TIMx));
//  578   assert_param(IS_LL_TIM_OCMODE(TIM_OCInitStruct->OCMode));
//  579   assert_param(IS_LL_TIM_OCSTATE(TIM_OCInitStruct->OCState));
//  580   assert_param(IS_LL_TIM_OCPOLARITY(TIM_OCInitStruct->OCPolarity));
//  581 
//  582   /* Disable the Channel 2: Reset the CC2E Bit */
//  583   CLEAR_BIT(TIMx->CCER, TIM_CCER_CC2E);
//  584 
//  585   /* Get the TIMx CCER register value */
//  586   tmpccer =  LL_TIM_ReadReg(TIMx, CCER);
//  587 
//  588   /* Get the TIMx CR2 register value */
//  589   tmpcr2 = LL_TIM_ReadReg(TIMx, CR2);
//  590 
//  591   /* Get the TIMx CCMR1 register value */
//  592   tmpccmr1 = LL_TIM_ReadReg(TIMx, CCMR1);
//  593 
//  594   /* Reset Capture/Compare selection Bits */
//  595   CLEAR_BIT(tmpccmr1, TIM_CCMR1_CC2S);
//  596 
//  597   /* Select the Output Compare Mode */
//  598   MODIFY_REG(tmpccmr1, TIM_CCMR1_OC2M, TIM_OCInitStruct->OCMode << 8U);
//  599 
//  600   /* Set the Output Compare Polarity */
//  601   MODIFY_REG(tmpccer, TIM_CCER_CC2P, TIM_OCInitStruct->OCPolarity << 4U);
//  602 
//  603   /* Set the Output State */
//  604   MODIFY_REG(tmpccer, TIM_CCER_CC2E, TIM_OCInitStruct->OCState << 4U);
//  605 
//  606   /* Write to TIMx CR2 */
//  607   LL_TIM_WriteReg(TIMx, CR2, tmpcr2);
//  608 
//  609   /* Write to TIMx CCMR1 */
//  610   LL_TIM_WriteReg(TIMx, CCMR1, tmpccmr1);
//  611 
//  612   /* Set the Capture Compare Register value */
//  613   LL_TIM_OC_SetCompareCH2(TIMx, TIM_OCInitStruct->CompareValue);
//  614 
//  615   /* Write to TIMx CCER */
//  616   LL_TIM_WriteReg(TIMx, CCER, tmpccer);
//  617 
//  618   return SUCCESS;
//  619 }
//  620 
//  621 /**
//  622   * @brief  Configure the TIMx output channel 3.
//  623   * @param  TIMx Timer Instance
//  624   * @param  TIM_OCInitStruct pointer to the the TIMx output channel 3 configuration data structure
//  625   * @retval An ErrorStatus enumeration value:
//  626   *          - SUCCESS: TIMx registers are de-initialized
//  627   *          - ERROR: not applicable
//  628   */
//  629 static ErrorStatus OC3Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct)
//  630 {
//  631   uint32_t tmpccmr2 = 0U;
//  632   uint32_t tmpccer = 0U;
//  633   uint32_t tmpcr2 = 0U;
//  634 
//  635   /* Check the parameters */
//  636   assert_param(IS_TIM_CC3_INSTANCE(TIMx));
//  637   assert_param(IS_LL_TIM_OCMODE(TIM_OCInitStruct->OCMode));
//  638   assert_param(IS_LL_TIM_OCSTATE(TIM_OCInitStruct->OCState));
//  639   assert_param(IS_LL_TIM_OCPOLARITY(TIM_OCInitStruct->OCPolarity));
//  640 
//  641   /* Disable the Channel 3: Reset the CC3E Bit */
//  642   CLEAR_BIT(TIMx->CCER, TIM_CCER_CC3E);
//  643 
//  644   /* Get the TIMx CCER register value */
//  645   tmpccer =  LL_TIM_ReadReg(TIMx, CCER);
//  646 
//  647   /* Get the TIMx CR2 register value */
//  648   tmpcr2 = LL_TIM_ReadReg(TIMx, CR2);
//  649 
//  650   /* Get the TIMx CCMR2 register value */
//  651   tmpccmr2 = LL_TIM_ReadReg(TIMx, CCMR2);
//  652 
//  653   /* Reset Capture/Compare selection Bits */
//  654   CLEAR_BIT(tmpccmr2, TIM_CCMR2_CC3S);
//  655 
//  656   /* Select the Output Compare Mode */
//  657   MODIFY_REG(tmpccmr2, TIM_CCMR2_OC3M, TIM_OCInitStruct->OCMode);
//  658 
//  659   /* Set the Output Compare Polarity */
//  660   MODIFY_REG(tmpccer, TIM_CCER_CC3P, TIM_OCInitStruct->OCPolarity << 8U);
//  661 
//  662   /* Set the Output State */
//  663   MODIFY_REG(tmpccer, TIM_CCER_CC3E, TIM_OCInitStruct->OCState << 8U);
//  664 
//  665   /* Write to TIMx CR2 */
//  666   LL_TIM_WriteReg(TIMx, CR2, tmpcr2);
//  667 
//  668   /* Write to TIMx CCMR2 */
//  669   LL_TIM_WriteReg(TIMx, CCMR2, tmpccmr2);
//  670 
//  671   /* Set the Capture Compare Register value */
//  672   LL_TIM_OC_SetCompareCH3(TIMx, TIM_OCInitStruct->CompareValue);
//  673 
//  674   /* Write to TIMx CCER */
//  675   LL_TIM_WriteReg(TIMx, CCER, tmpccer);
//  676 
//  677   return SUCCESS;
//  678 }
//  679 
//  680 /**
//  681   * @brief  Configure the TIMx output channel 4.
//  682   * @param  TIMx Timer Instance
//  683   * @param  TIM_OCInitStruct pointer to the the TIMx output channel 4 configuration data structure
//  684   * @retval An ErrorStatus enumeration value:
//  685   *          - SUCCESS: TIMx registers are de-initialized
//  686   *          - ERROR: not applicable
//  687   */
//  688 static ErrorStatus OC4Config(TIM_TypeDef *TIMx, LL_TIM_OC_InitTypeDef *TIM_OCInitStruct)
//  689 {
//  690   uint32_t tmpccmr2 = 0U;
//  691   uint32_t tmpccer = 0U;
//  692   uint32_t tmpcr2 = 0U;
//  693 
//  694   /* Check the parameters */
//  695   assert_param(IS_TIM_CC4_INSTANCE(TIMx));
//  696   assert_param(IS_LL_TIM_OCMODE(TIM_OCInitStruct->OCMode));
//  697   assert_param(IS_LL_TIM_OCSTATE(TIM_OCInitStruct->OCState));
//  698   assert_param(IS_LL_TIM_OCPOLARITY(TIM_OCInitStruct->OCPolarity));
//  699 
//  700   /* Disable the Channel 4: Reset the CC4E Bit */
//  701   CLEAR_BIT(TIMx->CCER, TIM_CCER_CC4E);
//  702 
//  703   /* Get the TIMx CCER register value */
//  704   tmpccer = LL_TIM_ReadReg(TIMx, CCER);
//  705 
//  706   /* Get the TIMx CR2 register value */
//  707   tmpcr2 =  LL_TIM_ReadReg(TIMx, CR2);
//  708 
//  709   /* Get the TIMx CCMR2 register value */
//  710   tmpccmr2 = LL_TIM_ReadReg(TIMx, CCMR2);
//  711 
//  712   /* Reset Capture/Compare selection Bits */
//  713   CLEAR_BIT(tmpccmr2, TIM_CCMR2_CC4S);
//  714 
//  715   /* Select the Output Compare Mode */
//  716   MODIFY_REG(tmpccmr2, TIM_CCMR2_OC4M, TIM_OCInitStruct->OCMode << 8U);
//  717 
//  718   /* Set the Output Compare Polarity */
//  719   MODIFY_REG(tmpccer, TIM_CCER_CC4P, TIM_OCInitStruct->OCPolarity << 12U);
//  720 
//  721   /* Set the Output State */
//  722   MODIFY_REG(tmpccer, TIM_CCER_CC4E, TIM_OCInitStruct->OCState << 12U);
//  723 
//  724   /* Write to TIMx CR2 */
//  725   LL_TIM_WriteReg(TIMx, CR2, tmpcr2);
//  726 
//  727   /* Write to TIMx CCMR2 */
//  728   LL_TIM_WriteReg(TIMx, CCMR2, tmpccmr2);
//  729 
//  730   /* Set the Capture Compare Register value */
//  731   LL_TIM_OC_SetCompareCH4(TIMx, TIM_OCInitStruct->CompareValue);
//  732 
//  733   /* Write to TIMx CCER */
//  734   LL_TIM_WriteReg(TIMx, CCER, tmpccer);
//  735 
//  736   return SUCCESS;
//  737 }
//  738 
//  739 
//  740 /**
//  741   * @brief  Configure the TIMx input channel 1.
//  742   * @param  TIMx Timer Instance
//  743   * @param  TIM_ICInitStruct pointer to the the TIMx input channel 1 configuration data structure
//  744   * @retval An ErrorStatus enumeration value:
//  745   *          - SUCCESS: TIMx registers are de-initialized
//  746   *          - ERROR: not applicable
//  747   */
//  748 static ErrorStatus IC1Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct)
//  749 {
//  750   /* Check the parameters */
//  751   assert_param(IS_TIM_CC1_INSTANCE(TIMx));
//  752   assert_param(IS_LL_TIM_IC_POLARITY(TIM_ICInitStruct->ICPolarity));
//  753   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_ICInitStruct->ICActiveInput));
//  754   assert_param(IS_LL_TIM_ICPSC(TIM_ICInitStruct->ICPrescaler));
//  755   assert_param(IS_LL_TIM_IC_FILTER(TIM_ICInitStruct->ICFilter));
//  756 
//  757   /* Disable the Channel 1: Reset the CC1E Bit */
//  758   TIMx->CCER &= (uint32_t)~TIM_CCER_CC1E;
//  759 
//  760   /* Select the Input and set the filter and the prescaler value */
//  761   MODIFY_REG(TIMx->CCMR1,
//  762              (TIM_CCMR1_CC1S | TIM_CCMR1_IC1F | TIM_CCMR1_IC1PSC),
//  763              (TIM_ICInitStruct->ICActiveInput | TIM_ICInitStruct->ICFilter | TIM_ICInitStruct->ICPrescaler) >> 16U);
//  764 
//  765   /* Select the Polarity and set the CC1E Bit */
//  766   MODIFY_REG(TIMx->CCER,
//  767              (TIM_CCER_CC1P | TIM_CCER_CC1NP),
//  768              (TIM_ICInitStruct->ICPolarity | TIM_CCER_CC1E));
//  769 
//  770   return SUCCESS;
//  771 }
//  772 
//  773 /**
//  774   * @brief  Configure the TIMx input channel 2.
//  775   * @param  TIMx Timer Instance
//  776   * @param  TIM_ICInitStruct pointer to the the TIMx input channel 2 configuration data structure
//  777   * @retval An ErrorStatus enumeration value:
//  778   *          - SUCCESS: TIMx registers are de-initialized
//  779   *          - ERROR: not applicable
//  780   */
//  781 static ErrorStatus IC2Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct)
//  782 {
//  783   /* Check the parameters */
//  784   assert_param(IS_TIM_CC2_INSTANCE(TIMx));
//  785   assert_param(IS_LL_TIM_IC_POLARITY(TIM_ICInitStruct->ICPolarity));
//  786   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_ICInitStruct->ICActiveInput));
//  787   assert_param(IS_LL_TIM_ICPSC(TIM_ICInitStruct->ICPrescaler));
//  788   assert_param(IS_LL_TIM_IC_FILTER(TIM_ICInitStruct->ICFilter));
//  789 
//  790   /* Disable the Channel 2: Reset the CC2E Bit */
//  791   TIMx->CCER &= (uint32_t)~TIM_CCER_CC2E;
//  792 
//  793   /* Select the Input and set the filter and the prescaler value */
//  794   MODIFY_REG(TIMx->CCMR1,
//  795              (TIM_CCMR1_CC2S | TIM_CCMR1_IC2F | TIM_CCMR1_IC2PSC),
//  796              (TIM_ICInitStruct->ICActiveInput | TIM_ICInitStruct->ICFilter | TIM_ICInitStruct->ICPrescaler) >> 8U);
//  797 
//  798   /* Select the Polarity and set the CC2E Bit */
//  799   MODIFY_REG(TIMx->CCER,
//  800              (TIM_CCER_CC2P | TIM_CCER_CC2NP),
//  801              ((TIM_ICInitStruct->ICPolarity << 4U) | TIM_CCER_CC2E));
//  802 
//  803   return SUCCESS;
//  804 }
//  805 
//  806 /**
//  807   * @brief  Configure the TIMx input channel 3.
//  808   * @param  TIMx Timer Instance
//  809   * @param  TIM_ICInitStruct pointer to the the TIMx input channel 3 configuration data structure
//  810   * @retval An ErrorStatus enumeration value:
//  811   *          - SUCCESS: TIMx registers are de-initialized
//  812   *          - ERROR: not applicable
//  813   */
//  814 static ErrorStatus IC3Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct)
//  815 {
//  816   /* Check the parameters */
//  817   assert_param(IS_TIM_CC3_INSTANCE(TIMx));
//  818   assert_param(IS_LL_TIM_IC_POLARITY(TIM_ICInitStruct->ICPolarity));
//  819   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_ICInitStruct->ICActiveInput));
//  820   assert_param(IS_LL_TIM_ICPSC(TIM_ICInitStruct->ICPrescaler));
//  821   assert_param(IS_LL_TIM_IC_FILTER(TIM_ICInitStruct->ICFilter));
//  822 
//  823   /* Disable the Channel 3: Reset the CC3E Bit */
//  824   TIMx->CCER &= (uint32_t)~TIM_CCER_CC3E;
//  825 
//  826   /* Select the Input and set the filter and the prescaler value */
//  827   MODIFY_REG(TIMx->CCMR2,
//  828              (TIM_CCMR2_CC3S | TIM_CCMR2_IC3F | TIM_CCMR2_IC3PSC),
//  829              (TIM_ICInitStruct->ICActiveInput | TIM_ICInitStruct->ICFilter | TIM_ICInitStruct->ICPrescaler) >> 16U);
//  830 
//  831   /* Select the Polarity and set the CC3E Bit */
//  832   MODIFY_REG(TIMx->CCER,
//  833              (TIM_CCER_CC3P | TIM_CCER_CC3NP),
//  834              ((TIM_ICInitStruct->ICPolarity << 8U) | TIM_CCER_CC3E));
//  835 
//  836   return SUCCESS;
//  837 }
//  838 
//  839 /**
//  840   * @brief  Configure the TIMx input channel 4.
//  841   * @param  TIMx Timer Instance
//  842   * @param  TIM_ICInitStruct pointer to the the TIMx input channel 4 configuration data structure
//  843   * @retval An ErrorStatus enumeration value:
//  844   *          - SUCCESS: TIMx registers are de-initialized
//  845   *          - ERROR: not applicable
//  846   */
//  847 static ErrorStatus IC4Config(TIM_TypeDef *TIMx, LL_TIM_IC_InitTypeDef *TIM_ICInitStruct)
//  848 {
//  849   /* Check the parameters */
//  850   assert_param(IS_TIM_CC4_INSTANCE(TIMx));
//  851   assert_param(IS_LL_TIM_IC_POLARITY(TIM_ICInitStruct->ICPolarity));
//  852   assert_param(IS_LL_TIM_ACTIVEINPUT(TIM_ICInitStruct->ICActiveInput));
//  853   assert_param(IS_LL_TIM_ICPSC(TIM_ICInitStruct->ICPrescaler));
//  854   assert_param(IS_LL_TIM_IC_FILTER(TIM_ICInitStruct->ICFilter));
//  855 
//  856   /* Disable the Channel 4: Reset the CC4E Bit */
//  857   TIMx->CCER &= (uint32_t)~TIM_CCER_CC4E;
//  858 
//  859   /* Select the Input and set the filter and the prescaler value */
//  860   MODIFY_REG(TIMx->CCMR2,
//  861              (TIM_CCMR2_CC4S | TIM_CCMR2_IC4F | TIM_CCMR2_IC4PSC),
//  862              (TIM_ICInitStruct->ICActiveInput | TIM_ICInitStruct->ICFilter | TIM_ICInitStruct->ICPrescaler) >> 8U);
//  863 
//  864   /* Select the Polarity and set the CC2E Bit */
//  865   MODIFY_REG(TIMx->CCER,
//  866              (TIM_CCER_CC4P | TIM_CCER_CC4NP),
//  867              ((TIM_ICInitStruct->ICPolarity << 12U) | TIM_CCER_CC4E));
//  868 
//  869   return SUCCESS;
//  870 }
//  871 
//  872 
//  873 /**
//  874   * @}
//  875   */
//  876 
//  877 /**
//  878   * @}
//  879   */
//  880 
//  881 #endif /* TIM2 || TIM3 || TIM4 || TIM5 || TIM9 || TIM10 || TIM11 TIM6 || TIM7 */
//  882 
//  883 /**
//  884   * @}
//  885   */
//  886 
//  887 #endif /* USE_FULL_LL_DRIVER */
//  888 
//  889 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
