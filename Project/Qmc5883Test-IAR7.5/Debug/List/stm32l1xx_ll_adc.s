///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_adc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_adc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_adc.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_adc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_adc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   ADC LL module driver
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
//   40 #include "stm32l1xx_ll_adc.h"
//   41 #include "stm32l1xx_ll_bus.h"
//   42 
//   43 #ifdef  USE_FULL_ASSERT
//   44   #include "stm32_assert.h"
//   45 #else
//   46   #define assert_param(expr) ((void)0U)
//   47 #endif
//   48 
//   49 /** @addtogroup STM32L1xx_LL_Driver
//   50   * @{
//   51   */
//   52 
//   53 #if defined (ADC1)
//   54 
//   55 /** @addtogroup ADC_LL ADC
//   56   * @{
//   57   */
//   58 
//   59 /* Private types -------------------------------------------------------------*/
//   60 /* Private variables ---------------------------------------------------------*/
//   61 /* Private constants ---------------------------------------------------------*/
//   62 /* Private macros ------------------------------------------------------------*/
//   63 
//   64 /** @addtogroup ADC_LL_Private_Macros
//   65   * @{
//   66   */
//   67 
//   68 /* Check of parameters for configuration of ADC hierarchical scope:           */
//   69 /* common to several ADC instances.                                           */
//   70 #define IS_LL_ADC_COMMON_CLOCK(__CLOCK__)                                      \ 
//   71   (   ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV1)                                 \ 
//   72    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV2)                                 \ 
//   73    || ((__CLOCK__) == LL_ADC_CLOCK_ASYNC_DIV4)                                 \ 
//   74   )
//   75 
//   76 /* Check of parameters for configuration of ADC hierarchical scope:           */
//   77 /* ADC instance.                                                              */
//   78 #define IS_LL_ADC_RESOLUTION(__RESOLUTION__)                                   \ 
//   79   (   ((__RESOLUTION__) == LL_ADC_RESOLUTION_12B)                              \ 
//   80    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_10B)                              \ 
//   81    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_8B)                               \ 
//   82    || ((__RESOLUTION__) == LL_ADC_RESOLUTION_6B)                               \ 
//   83   )
//   84 
//   85 #define IS_LL_ADC_DATA_ALIGN(__DATA_ALIGN__)                                   \ 
//   86   (   ((__DATA_ALIGN__) == LL_ADC_DATA_ALIGN_RIGHT)                            \ 
//   87    || ((__DATA_ALIGN__) == LL_ADC_DATA_ALIGN_LEFT)                             \ 
//   88   )
//   89 
//   90 #define IS_LL_ADC_LOW_POWER_AUTOWAIT(__LOW_POWER__)                            \ 
//   91   (   ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_NONE)                             \ 
//   92    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT)                                  \ 
//   93    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_7_APBCLOCKCYCLES)                 \ 
//   94    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_15_APBCLOCKCYCLES)                \ 
//   95    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_31_APBCLOCKCYCLES)                \ 
//   96    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_63_APBCLOCKCYCLES)                \ 
//   97    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_127_APBCLOCKCYCLES)               \ 
//   98    || ((__LOW_POWER__) == LL_ADC_LP_AUTOWAIT_255_APBCLOCKCYCLES)               \ 
//   99   )
//  100 
//  101 #define IS_LL_ADC_LOW_POWER_AUTOPOWEROFF(__LOW_POWER__)                        \ 
//  102   (   ((__LOW_POWER__) == LL_ADC_LP_AUTOPOWEROFF_NONE)                         \ 
//  103    || ((__LOW_POWER__) == LL_ADC_LP_AUTOPOWEROFF_IDLE_PHASE)                   \ 
//  104    || ((__LOW_POWER__) == LL_ADC_LP_AUTOPOWEROFF_AUTOWAIT_PHASE)               \ 
//  105    || ((__LOW_POWER__) == LL_ADC_LP_AUTOPOWEROFF_IDLE_AUTOWAIT_PHASES)         \ 
//  106   )
//  107 
//  108 #define IS_LL_ADC_SCAN_SELECTION(__SCAN_SELECTION__)                           \ 
//  109   (   ((__SCAN_SELECTION__) == LL_ADC_SEQ_SCAN_DISABLE)                        \ 
//  110    || ((__SCAN_SELECTION__) == LL_ADC_SEQ_SCAN_ENABLE)                         \ 
//  111   )
//  112 
//  113 #define IS_LL_ADC_SEQ_SCAN_MODE(__SEQ_SCAN_MODE__)                             \ 
//  114   (   ((__SCAN_MODE__) == LL_ADC_SEQ_SCAN_DISABLE)                             \ 
//  115    || ((__SCAN_MODE__) == LL_ADC_SEQ_SCAN_ENABLE)                              \ 
//  116   )
//  117 
//  118 #define IS_LL_ADC_CHANNELS_BANK(__CHANNELS_BANK__)                             \ 
//  119   (   ((__CHANNELS_BANK__) == LL_ADC_CHANNELS_BANK_A)                          \ 
//  120    || ((__CHANNELS_BANK__) == LL_ADC_CHANNELS_BANK_B)                          \ 
//  121   )
//  122 
//  123 /* Check of parameters for configuration of ADC hierarchical scope:           */
//  124 /* ADC group regular                                                          */
//  125 #define IS_LL_ADC_REG_TRIG_SOURCE(__REG_TRIG_SOURCE__)                         \ 
//  126   (   ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_SOFTWARE)                      \ 
//  127    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_TRGO)                 \ 
//  128    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH3)                  \ 
//  129    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_TRGO)                 \ 
//  130    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM2_CH2)                  \ 
//  131    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH1)                  \ 
//  132    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM3_CH3)                  \ 
//  133    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_TRGO)                 \ 
//  134    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM4_CH4)                  \ 
//  135    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM6_TRGO)                 \ 
//  136    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM9_CH2)                  \ 
//  137    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_TIM9_TRGO)                 \ 
//  138    || ((__REG_TRIG_SOURCE__) == LL_ADC_REG_TRIG_EXT_EXTI_LINE11)               \ 
//  139   )
//  140 
//  141 #define IS_LL_ADC_REG_CONTINUOUS_MODE(__REG_CONTINUOUS_MODE__)                 \ 
//  142   (   ((__REG_CONTINUOUS_MODE__) == LL_ADC_REG_CONV_SINGLE)                    \ 
//  143    || ((__REG_CONTINUOUS_MODE__) == LL_ADC_REG_CONV_CONTINUOUS)                \ 
//  144   )
//  145 
//  146 #define IS_LL_ADC_REG_DMA_TRANSFER(__REG_DMA_TRANSFER__)                       \ 
//  147   (   ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_NONE)                 \ 
//  148    || ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_LIMITED)              \ 
//  149    || ((__REG_DMA_TRANSFER__) == LL_ADC_REG_DMA_TRANSFER_UNLIMITED)            \ 
//  150   )
//  151 
//  152 #define IS_LL_ADC_REG_FLAG_EOC_SELECTION(__REG_FLAG_EOC_SELECTION__)           \ 
//  153   (   ((__REG_FLAG_EOC_SELECTION__) == LL_ADC_REG_FLAG_EOC_SEQUENCE_CONV)      \ 
//  154    || ((__REG_FLAG_EOC_SELECTION__) == LL_ADC_REG_FLAG_EOC_UNITARY_CONV)       \ 
//  155   )
//  156 
//  157 #define IS_LL_ADC_REG_SEQ_SCAN_LENGTH(__REG_SEQ_SCAN_LENGTH__)                 \ 
//  158   (   ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_DISABLE)               \ 
//  159    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_2RANKS)         \ 
//  160    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_3RANKS)         \ 
//  161    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_4RANKS)         \ 
//  162    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_5RANKS)         \ 
//  163    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_6RANKS)         \ 
//  164    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_7RANKS)         \ 
//  165    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_8RANKS)         \ 
//  166    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_9RANKS)         \ 
//  167    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_10RANKS)        \ 
//  168    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_11RANKS)        \ 
//  169    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_12RANKS)        \ 
//  170    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_13RANKS)        \ 
//  171    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_14RANKS)        \ 
//  172    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_15RANKS)        \ 
//  173    || ((__REG_SEQ_SCAN_LENGTH__) == LL_ADC_REG_SEQ_SCAN_ENABLE_16RANKS)        \ 
//  174   )
//  175 
//  176 #define IS_LL_ADC_REG_SEQ_SCAN_DISCONT_MODE(__REG_SEQ_DISCONT_MODE__)          \ 
//  177   (   ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_DISABLE)           \ 
//  178    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_1RANK)             \ 
//  179    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_2RANKS)            \ 
//  180    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_3RANKS)            \ 
//  181    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_4RANKS)            \ 
//  182    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_5RANKS)            \ 
//  183    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_6RANKS)            \ 
//  184    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_7RANKS)            \ 
//  185    || ((__REG_SEQ_DISCONT_MODE__) == LL_ADC_REG_SEQ_DISCONT_8RANKS)            \ 
//  186   )
//  187 
//  188 /* Check of parameters for configuration of ADC hierarchical scope:           */
//  189 /* ADC group injected                                                         */
//  190 #define IS_LL_ADC_INJ_TRIG_SOURCE(__INJ_TRIG_SOURCE__)                         \ 
//  191   (   ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_SOFTWARE)                      \ 
//  192    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM9_CH1)                  \ 
//  193    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM9_TRGO)                 \ 
//  194    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_TRGO)                 \ 
//  195    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM2_CH1)                  \ 
//  196    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM3_CH4)                  \ 
//  197    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_TRGO)                 \ 
//  198    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH1)                  \ 
//  199    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH2)                  \ 
//  200    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM4_CH3)                  \ 
//  201    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM10_CH1)                 \ 
//  202    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_TIM7_TRGO)                 \ 
//  203    || ((__INJ_TRIG_SOURCE__) == LL_ADC_INJ_TRIG_EXT_EXTI_LINE15)               \ 
//  204   )
//  205 
//  206 #define IS_LL_ADC_INJ_TRIG_EXT_EDGE(__INJ_TRIG_EXT_EDGE__)                     \ 
//  207   (   ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_RISING)                  \ 
//  208    || ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_FALLING)                 \ 
//  209    || ((__INJ_TRIG_EXT_EDGE__) == LL_ADC_INJ_TRIG_EXT_RISINGFALLING)           \ 
//  210   )
//  211 
//  212 #define IS_LL_ADC_INJ_TRIG_AUTO(__INJ_TRIG_AUTO__)                             \ 
//  213   (   ((__INJ_TRIG_AUTO__) == LL_ADC_INJ_TRIG_INDEPENDENT)                     \ 
//  214    || ((__INJ_TRIG_AUTO__) == LL_ADC_INJ_TRIG_FROM_GRP_REGULAR)                \ 
//  215   )
//  216 
//  217 #define IS_LL_ADC_INJ_SEQ_SCAN_LENGTH(__INJ_SEQ_SCAN_LENGTH__)                 \ 
//  218   (   ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_DISABLE)               \ 
//  219    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_2RANKS)         \ 
//  220    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_3RANKS)         \ 
//  221    || ((__INJ_SEQ_SCAN_LENGTH__) == LL_ADC_INJ_SEQ_SCAN_ENABLE_4RANKS)         \ 
//  222   )
//  223 
//  224 #define IS_LL_ADC_INJ_SEQ_SCAN_DISCONT_MODE(__INJ_SEQ_DISCONT_MODE__)          \ 
//  225   (   ((__INJ_SEQ_DISCONT_MODE__) == LL_ADC_INJ_SEQ_DISCONT_DISABLE)           \ 
//  226    || ((__INJ_SEQ_DISCONT_MODE__) == LL_ADC_INJ_SEQ_DISCONT_1RANK)             \ 
//  227   )
//  228 
//  229 /**
//  230   * @}
//  231   */
//  232 
//  233 
//  234 /* Private function prototypes -----------------------------------------------*/
//  235 
//  236 /* Exported functions --------------------------------------------------------*/
//  237 /** @addtogroup ADC_LL_Exported_Functions
//  238   * @{
//  239   */
//  240 
//  241 /** @addtogroup ADC_LL_EF_Init
//  242   * @{
//  243   */
//  244 
//  245 /**
//  246   * @brief  De-initialize registers of all ADC instances belonging to
//  247   *         the same ADC common instance to their default reset values.
//  248   * @param  ADCxy_COMMON ADC common instance
//  249   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMON_INSTANCE() )
//  250   * @retval An ErrorStatus enumeration value:
//  251   *          - SUCCESS: ADC common registers are de-initialized
//  252   *          - ERROR: not applicable
//  253   */
//  254 ErrorStatus LL_ADC_CommonDeInit(ADC_Common_TypeDef *ADCxy_COMMON)
//  255 {
//  256   /* Check the parameters */
//  257   assert_param(IS_ADC_COMMON_INSTANCE(ADCxy_COMMON));
//  258   
//  259   /* Force reset of ADC clock (core clock) */
//  260   LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_ADC1);
//  261   
//  262   /* Release reset of ADC clock (core clock) */
//  263   LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_ADC1);
//  264   
//  265   return SUCCESS;
//  266 }
//  267 
//  268 /**
//  269   * @brief  Initialize some features of ADC common parameters
//  270   *         (all ADC instances belonging to the same ADC common instance)
//  271   *         and multimode (for devices with several ADC instances available).
//  272   * @note   The setting of ADC common parameters is conditioned to
//  273   *         ADC instances state:
//  274   *         All ADC instances belonging to the same ADC common instance
//  275   *         must be disabled.
//  276   * @param  ADCxy_COMMON ADC common instance
//  277   *         (can be set directly from CMSIS definition or by using helper macro @ref __LL_ADC_COMMON_INSTANCE() )
//  278   * @param  ADC_CommonInitStruct Pointer to a @ref LL_ADC_CommonInitTypeDef structure
//  279   * @retval An ErrorStatus enumeration value:
//  280   *          - SUCCESS: ADC common registers are initialized
//  281   *          - ERROR: ADC common registers are not initialized
//  282   */
//  283 ErrorStatus LL_ADC_CommonInit(ADC_Common_TypeDef *ADCxy_COMMON, LL_ADC_CommonInitTypeDef *ADC_CommonInitStruct)
//  284 {
//  285   ErrorStatus status = SUCCESS;
//  286   
//  287   /* Check the parameters */
//  288   assert_param(IS_ADC_COMMON_INSTANCE(ADCxy_COMMON));
//  289   assert_param(IS_LL_ADC_COMMON_CLOCK(ADC_CommonInitStruct->CommonClock));
//  290   
//  291   /* Note: Hardware constraint (refer to description of functions             */
//  292   /*       "LL_ADC_SetCommonXXX()":                                           */
//  293   /*       On this STM32 serie, setting of these features is conditioned to   */
//  294   /*       ADC state:                                                         */
//  295   /*       All ADC instances of the ADC common group must be disabled.        */
//  296   if(__LL_ADC_IS_ENABLED_ALL_COMMON_INSTANCE(ADCxy_COMMON) == 0U)
//  297   {
//  298     /* Configuration of ADC hierarchical scope:                               */
//  299     /*  - common to several ADC                                               */
//  300     /*    (all ADC instances belonging to the same ADC common instance)       */
//  301     /*    - Set ADC clock (conversion clock)                                  */
//  302     LL_ADC_SetCommonClock(ADCxy_COMMON, ADC_CommonInitStruct->CommonClock);
//  303   }
//  304   else
//  305   {
//  306     /* Initialization error: One or several ADC instances belonging to        */
//  307     /* the same ADC common instance are not disabled.                         */
//  308     status = ERROR;
//  309   }
//  310   
//  311   return status;
//  312 }
//  313 
//  314 /**
//  315   * @brief  Set each @ref LL_ADC_CommonInitTypeDef field to default value.
//  316   * @param  ADC_CommonInitStruct Pointer to a @ref LL_ADC_CommonInitTypeDef structure
//  317   *                              whose fields will be set to default values.
//  318   * @retval None
//  319   */
//  320 void LL_ADC_CommonStructInit(LL_ADC_CommonInitTypeDef *ADC_CommonInitStruct)
//  321 {
//  322   /* Set ADC_CommonInitStruct fields to default values */
//  323   /* Set fields of ADC common */
//  324   /* (all ADC instances belonging to the same ADC common instance) */
//  325   ADC_CommonInitStruct->CommonClock = LL_ADC_CLOCK_ASYNC_DIV2;
//  326   
//  327 }
//  328 
//  329 /**
//  330   * @brief  De-initialize registers of the selected ADC instance
//  331   *         to their default reset values.
//  332   * @note   To reset all ADC instances quickly (perform a hard reset),
//  333   *         use function @ref LL_ADC_CommonDeInit().
//  334   * @param  ADCx ADC instance
//  335   * @retval An ErrorStatus enumeration value:
//  336   *          - SUCCESS: ADC registers are de-initialized
//  337   *          - ERROR: ADC registers are not de-initialized
//  338   */
//  339 ErrorStatus LL_ADC_DeInit(ADC_TypeDef *ADCx)
//  340 {
//  341   ErrorStatus status = SUCCESS;
//  342   
//  343   /* Check the parameters */
//  344   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
//  345   
//  346   /* Disable ADC instance if not already disabled.                            */
//  347   if(LL_ADC_IsEnabled(ADCx) == 1U)
//  348   {
//  349     /* Set ADC group regular trigger source to SW start to ensure to not      */
//  350     /* have an external trigger event occurring during the conversion stop    */
//  351     /* ADC disable process.                                                   */
//  352     LL_ADC_REG_SetTriggerSource(ADCx, LL_ADC_REG_TRIG_SOFTWARE);
//  353     
//  354     /* Set ADC group injected trigger source to SW start to ensure to not     */
//  355     /* have an external trigger event occurring during the conversion stop    */
//  356     /* ADC disable process.                                                   */
//  357     LL_ADC_INJ_SetTriggerSource(ADCx, LL_ADC_INJ_TRIG_SOFTWARE);
//  358     
//  359     /* Disable the ADC instance */
//  360     LL_ADC_Disable(ADCx);
//  361   }
//  362   
//  363   /* Check whether ADC state is compliant with expected state */
//  364   /* (hardware requirements of bits state to reset registers below) */
//  365   if(READ_BIT(ADCx->CR2, ADC_CR2_ADON) == 0U)
//  366   {
//  367     /* ========== Reset ADC registers ========== */
//  368     /* Reset register SR */
//  369     CLEAR_BIT(ADCx->SR,
//  370               (  LL_ADC_FLAG_STRT
//  371                | LL_ADC_FLAG_JSTRT
//  372                | LL_ADC_FLAG_EOCS
//  373                | LL_ADC_FLAG_OVR
//  374                | LL_ADC_FLAG_JEOS
//  375                | LL_ADC_FLAG_AWD1 )
//  376              );
//  377     
//  378     /* Reset register CR1 */
//  379     CLEAR_BIT(ADCx->CR1,
//  380               (  ADC_CR1_OVRIE   | ADC_CR1_RES     | ADC_CR1_AWDEN
//  381                | ADC_CR1_JAWDEN  | ADC_CR1_PDI     | ADC_CR1_PDD
//  382                | ADC_CR1_DISCNUM | ADC_CR1_JDISCEN | ADC_CR1_DISCEN
//  383                | ADC_CR1_JAUTO   | ADC_CR1_AWDSGL  | ADC_CR1_SCAN
//  384                | ADC_CR1_JEOCIE  | ADC_CR1_AWDIE   | ADC_CR1_EOCIE
//  385                | ADC_CR1_AWDCH                                     )
//  386              );
//  387     
//  388     /* Reset register CR2 */
//  389     #if defined(ADC_CR2_CFG)
//  390     CLEAR_BIT(ADCx->CR2,
//  391               (  ADC_CR2_SWSTART  | ADC_CR2_EXTEN  | ADC_CR2_EXTSEL
//  392                | ADC_CR2_JSWSTART | ADC_CR2_JEXTEN | ADC_CR2_JEXTSEL
//  393                | ADC_CR2_ALIGN    | ADC_CR2_EOCS
//  394                | ADC_CR2_DDS      | ADC_CR2_DMA    | ADC_CR2_DELS
//  395                | ADC_CR2_CFG      | ADC_CR2_CONT   | ADC_CR2_ADON   )
//  396              );
//  397     #else
//  398     CLEAR_BIT(ADCx->CR2,
//  399               (  ADC_CR2_SWSTART  | ADC_CR2_EXTEN  | ADC_CR2_EXTSEL
//  400                | ADC_CR2_JSWSTART | ADC_CR2_JEXTEN | ADC_CR2_JEXTSEL
//  401                | ADC_CR2_ALIGN    | ADC_CR2_EOCS
//  402                | ADC_CR2_DDS      | ADC_CR2_DMA    | ADC_CR2_DELS
//  403                | ADC_CR2_CONT     | ADC_CR2_ADON                    )
//  404              );
//  405     #endif /* ADC_CR2_CFG */
//  406     
//  407     /* Reset register SMPR1 */
//  408     /* Note: On STM32L1, ADC channels 27, 28, 29, 30, 31 are not available    */
//  409     /*       on all devices: only on STM32L1 Cat.4 and Cat.5.                 */
//  410     #if defined(ADC_SMPR0_SMP31)
//  411     CLEAR_BIT(ADCx->SMPR1,
//  412               (  ADC_SMPR1_SMP29 | ADC_SMPR1_SMP28 | ADC_SMPR1_SMP27
//  413                | ADC_SMPR1_SMP26 | ADC_SMPR1_SMP25 | ADC_SMPR1_SMP24
//  414                | ADC_SMPR1_SMP23 | ADC_SMPR1_SMP22 | ADC_SMPR1_SMP21
//  415                | ADC_SMPR1_SMP20                                    )
//  416              );
//  417     #else
//  418     CLEAR_BIT(ADCx->SMPR1,
//  419               (  ADC_SMPR1_SMP26 | ADC_SMPR1_SMP25 | ADC_SMPR1_SMP24
//  420                | ADC_SMPR1_SMP23 | ADC_SMPR1_SMP22 | ADC_SMPR1_SMP21
//  421                | ADC_SMPR1_SMP20                                    )
//  422              );
//  423     #endif /* ADC_SMPR0_SMP31 */
//  424     
//  425     /* Reset register SMPR2 */
//  426     CLEAR_BIT(ADCx->SMPR2,
//  427               (  ADC_SMPR2_SMP19 | ADC_SMPR2_SMP18 | ADC_SMPR2_SMP17
//  428                | ADC_SMPR2_SMP16 | ADC_SMPR2_SMP15 | ADC_SMPR2_SMP14
//  429                | ADC_SMPR2_SMP13 | ADC_SMPR2_SMP12 | ADC_SMPR2_SMP11
//  430                | ADC_SMPR2_SMP10                                    )
//  431              );
//  432     
//  433     /* Reset register SMPR3 */
//  434     CLEAR_BIT(ADCx->SMPR3,
//  435               (  ADC_SMPR3_SMP9 | ADC_SMPR3_SMP8 | ADC_SMPR3_SMP7
//  436                | ADC_SMPR3_SMP6 | ADC_SMPR3_SMP5 | ADC_SMPR3_SMP4
//  437                | ADC_SMPR3_SMP3 | ADC_SMPR3_SMP2 | ADC_SMPR3_SMP1
//  438                | ADC_SMPR3_SMP0                                  )
//  439              );
//  440     
//  441     #if defined(ADC_SMPR0_SMP31)
//  442     /* Reset register SMPR0 */
//  443     CLEAR_BIT(ADCx->SMPR0, (ADC_SMPR0_SMP31 | ADC_SMPR0_SMP30));
//  444     #endif /* ADC_SMPR0_SMP31 */
//  445     
//  446     /* Reset register JOFR1 */
//  447     CLEAR_BIT(ADCx->JOFR1, ADC_JOFR1_JOFFSET1);
//  448     /* Reset register JOFR2 */
//  449     CLEAR_BIT(ADCx->JOFR2, ADC_JOFR2_JOFFSET2);
//  450     /* Reset register JOFR3 */
//  451     CLEAR_BIT(ADCx->JOFR3, ADC_JOFR3_JOFFSET3);
//  452     /* Reset register JOFR4 */
//  453     CLEAR_BIT(ADCx->JOFR4, ADC_JOFR4_JOFFSET4);
//  454     
//  455     /* Reset register HTR */
//  456     SET_BIT(ADCx->HTR, ADC_HTR_HT);
//  457     /* Reset register LTR */
//  458     CLEAR_BIT(ADCx->LTR, ADC_LTR_LT);
//  459     
//  460     /* Reset register SQR1 */
//  461     CLEAR_BIT(ADCx->SQR1,
//  462               (  ADC_SQR1_L
//  463     #if defined(ADC_SQR1_SQ28)
//  464                | ADC_SQR1_SQ28 | ADC_SQR1_SQ27
//  465     #endif
//  466                | ADC_SQR1_SQ26 | ADC_SQR1_SQ25)
//  467              );
//  468     
//  469     /* Reset register SQR2 */
//  470     CLEAR_BIT(ADCx->SQR2,
//  471               (  ADC_SQR2_SQ24 | ADC_SQR2_SQ23 | ADC_SQR2_SQ22
//  472                | ADC_SQR2_SQ21 | ADC_SQR2_SQ20 | ADC_SQR2_SQ19)
//  473              );
//  474     
//  475     /* Reset register SQR3 */
//  476     CLEAR_BIT(ADCx->SQR3,
//  477               (  ADC_SQR3_SQ18 | ADC_SQR3_SQ17 | ADC_SQR3_SQ16
//  478                | ADC_SQR3_SQ15 | ADC_SQR3_SQ14 | ADC_SQR3_SQ13)
//  479              );
//  480     
//  481     /* Reset register SQR4 */
//  482     CLEAR_BIT(ADCx->SQR4,
//  483               (  ADC_SQR4_SQ12 | ADC_SQR4_SQ11 | ADC_SQR4_SQ10
//  484                | ADC_SQR4_SQ9  | ADC_SQR4_SQ8  | ADC_SQR4_SQ7 )
//  485              );
//  486     
//  487     /* Reset register SQR5 */
//  488     CLEAR_BIT(ADCx->SQR5,
//  489               (  ADC_SQR5_SQ6 | ADC_SQR5_SQ5 | ADC_SQR5_SQ4
//  490                | ADC_SQR5_SQ3 | ADC_SQR5_SQ2 | ADC_SQR5_SQ1 )
//  491              );
//  492     
//  493     
//  494     /* Reset register JSQR */
//  495     CLEAR_BIT(ADCx->JSQR,
//  496               (  ADC_JSQR_JL
//  497                | ADC_JSQR_JSQ4 | ADC_JSQR_JSQ3
//  498                | ADC_JSQR_JSQ2 | ADC_JSQR_JSQ1  )
//  499              );
//  500     
//  501     /* Reset register DR */
//  502     /* bits in access mode read only, no direct reset applicable */
//  503     
//  504     /* Reset registers JDR1, JDR2, JDR3, JDR4 */
//  505     /* bits in access mode read only, no direct reset applicable */
//  506     
//  507     /* Reset register CCR */
//  508     CLEAR_BIT(ADC->CCR, ADC_CCR_TSVREFE | ADC_CCR_ADCPRE);
//  509   }
//  510   
//  511   return status;
//  512 }
//  513 
//  514 /**
//  515   * @brief  Initialize some features of ADC instance.
//  516   * @note   These parameters have an impact on ADC scope: ADC instance.
//  517   *         Affects both group regular and group injected (availability
//  518   *         of ADC group injected depends on STM32 families).
//  519   *         Refer to corresponding unitary functions into
//  520   *         @ref ADC_LL_EF_Configuration_ADC_Instance .
//  521   * @note   The setting of these parameters by function @ref LL_ADC_Init()
//  522   *         is conditioned to ADC state:
//  523   *         ADC instance must be disabled.
//  524   *         This condition is applied to all ADC features, for efficiency
//  525   *         and compatibility over all STM32 families. However, the different
//  526   *         features can be set under different ADC state conditions
//  527   *         (setting possible with ADC enabled without conversion on going,
//  528   *         ADC enabled with conversion on going, ...)
//  529   *         Each feature can be updated afterwards with a unitary function
//  530   *         and potentially with ADC in a different state than disabled,
//  531   *         refer to description of each function for setting
//  532   *         conditioned to ADC state.
//  533   * @note   After using this function, some other features must be configured
//  534   *         using LL unitary functions.
//  535   *         The minimum configuration remaining to be done is:
//  536   *          - Set ADC group regular or group injected sequencer:
//  537   *            map channel on the selected sequencer rank.
//  538   *            Refer to function @ref LL_ADC_REG_SetSequencerRanks().
//  539   *          - Set ADC channel sampling time
//  540   *            Refer to function LL_ADC_SetChannelSamplingTime();
//  541   * @param  ADCx ADC instance
//  542   * @param  ADC_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
//  543   * @retval An ErrorStatus enumeration value:
//  544   *          - SUCCESS: ADC registers are initialized
//  545   *          - ERROR: ADC registers are not initialized
//  546   */
//  547 ErrorStatus LL_ADC_Init(ADC_TypeDef *ADCx, LL_ADC_InitTypeDef *ADC_InitStruct)
//  548 {
//  549   ErrorStatus status = SUCCESS;
//  550   
//  551   /* Check the parameters */
//  552   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
//  553   
//  554   assert_param(IS_LL_ADC_RESOLUTION(ADC_InitStruct->Resolution));
//  555   assert_param(IS_LL_ADC_DATA_ALIGN(ADC_InitStruct->DataAlignment));
//  556   /* Note: On STM32L1, low power feature is set by concatenating              */
//  557   /*       values of @ref ADC_LL_EC_LP_MODE_AUTOWAIT                          */
//  558   /*       and @ref ADC_LL_EC_LP_MODE_AUTOPOWEROFF.                           */
//  559   /*       Check of the parameter is done for each of group of values,        */
//  560   /*       by excluding the other group of values.                            */
//  561   assert_param(IS_LL_ADC_LOW_POWER_AUTOWAIT(ADC_InitStruct->LowPowerMode & ~(ADC_CR1_PDI | ADC_CR1_PDD)));
//  562   assert_param(IS_LL_ADC_LOW_POWER_AUTOPOWEROFF(ADC_InitStruct->LowPowerMode & ~(ADC_CR2_DELS)));
//  563   assert_param(IS_LL_ADC_SCAN_SELECTION(ADC_InitStruct->SequencersScanMode));
//  564   
//  565   /* Note: Hardware constraint (refer to description of this function):       */
//  566   /*       ADC instance must be disabled.                                     */
//  567   if(LL_ADC_IsEnabled(ADCx) == 0U)
//  568   {
//  569     /* Configuration of ADC hierarchical scope:                               */
//  570     /*  - ADC instance                                                        */
//  571     /*    - Set ADC data resolution                                           */
//  572     /*    - Set ADC conversion data alignment                                 */
//  573     /*    - Set ADC low power mode                                            */
//  574     MODIFY_REG(ADCx->CR1,
//  575                  ADC_CR1_RES
//  576                | ADC_CR1_PDI
//  577                | ADC_CR1_PDD
//  578                | ADC_CR1_SCAN
//  579               ,
//  580                  ADC_InitStruct->Resolution
//  581                | (ADC_InitStruct->LowPowerMode & (ADC_CR1_PDI | ADC_CR1_PDD))
//  582                | ADC_InitStruct->SequencersScanMode
//  583               );
//  584     
//  585     MODIFY_REG(ADCx->CR2,
//  586                  ADC_CR2_ALIGN
//  587                | ADC_CR2_DELS
//  588               ,
//  589                  ADC_InitStruct->DataAlignment
//  590                | (ADC_InitStruct->LowPowerMode & ADC_CR2_DELS)
//  591               );
//  592 
//  593   }
//  594   else
//  595   {
//  596     /* Initialization error: ADC instance is not disabled. */
//  597     status = ERROR;
//  598   }
//  599   return status;
//  600 }
//  601 
//  602 /**
//  603   * @brief  Set each @ref LL_ADC_InitTypeDef field to default value.
//  604   * @param  ADC_InitStruct Pointer to a @ref LL_ADC_InitTypeDef structure
//  605   *                        whose fields will be set to default values.
//  606   * @retval None
//  607   */
//  608 void LL_ADC_StructInit(LL_ADC_InitTypeDef *ADC_InitStruct)
//  609 {
//  610   /* Set ADC_InitStruct fields to default values */
//  611   /* Set fields of ADC instance */
//  612   ADC_InitStruct->Resolution    = LL_ADC_RESOLUTION_12B;
//  613   ADC_InitStruct->DataAlignment = LL_ADC_DATA_ALIGN_RIGHT;
//  614   ADC_InitStruct->LowPowerMode  = (LL_ADC_LP_AUTOWAIT_NONE | LL_ADC_LP_AUTOPOWEROFF_NONE);
//  615   
//  616   /* Enable scan mode to have a generic behavior with ADC of other            */
//  617   /* STM32 families, without this setting available:                          */
//  618   /* ADC group regular sequencer and ADC group injected sequencer depend      */
//  619   /* only of their own configuration.                                         */
//  620   ADC_InitStruct->SequencersScanMode      = LL_ADC_SEQ_SCAN_ENABLE;
//  621   
//  622 }
//  623 
//  624 /**
//  625   * @brief  Initialize some features of ADC group regular.
//  626   * @note   These parameters have an impact on ADC scope: ADC group regular.
//  627   *         Refer to corresponding unitary functions into
//  628   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
//  629   *         (functions with prefix "REG").
//  630   * @note   The setting of these parameters by function @ref LL_ADC_Init()
//  631   *         is conditioned to ADC state:
//  632   *         ADC instance must be disabled.
//  633   *         This condition is applied to all ADC features, for efficiency
//  634   *         and compatibility over all STM32 families. However, the different
//  635   *         features can be set under different ADC state conditions
//  636   *         (setting possible with ADC enabled without conversion on going,
//  637   *         ADC enabled with conversion on going, ...)
//  638   *         Each feature can be updated afterwards with a unitary function
//  639   *         and potentially with ADC in a different state than disabled,
//  640   *         refer to description of each function for setting
//  641   *         conditioned to ADC state.
//  642   * @note   After using this function, other features must be configured
//  643   *         using LL unitary functions.
//  644   *         The minimum configuration remaining to be done is:
//  645   *          - Set ADC group regular or group injected sequencer:
//  646   *            map channel on the selected sequencer rank.
//  647   *            Refer to function @ref LL_ADC_REG_SetSequencerRanks().
//  648   *          - Set ADC channel sampling time
//  649   *            Refer to function LL_ADC_SetChannelSamplingTime();
//  650   * @param  ADCx ADC instance
//  651   * @param  ADC_REG_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
//  652   * @retval An ErrorStatus enumeration value:
//  653   *          - SUCCESS: ADC registers are initialized
//  654   *          - ERROR: ADC registers are not initialized
//  655   */
//  656 ErrorStatus LL_ADC_REG_Init(ADC_TypeDef *ADCx, LL_ADC_REG_InitTypeDef *ADC_REG_InitStruct)
//  657 {
//  658   ErrorStatus status = SUCCESS;
//  659   
//  660   /* Check the parameters */
//  661   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
//  662   assert_param(IS_LL_ADC_REG_TRIG_SOURCE(ADC_REG_InitStruct->TriggerSource));
//  663   assert_param(IS_LL_ADC_REG_SEQ_SCAN_LENGTH(ADC_REG_InitStruct->SequencerLength));
//  664   if(ADC_REG_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
//  665   {
//  666     assert_param(IS_LL_ADC_REG_SEQ_SCAN_DISCONT_MODE(ADC_REG_InitStruct->SequencerDiscont));
//  667   }
//  668   assert_param(IS_LL_ADC_REG_CONTINUOUS_MODE(ADC_REG_InitStruct->ContinuousMode));
//  669   assert_param(IS_LL_ADC_REG_DMA_TRANSFER(ADC_REG_InitStruct->DMATransfer));
//  670   
//  671   /* Note: Hardware constraint (refer to description of this function):       */
//  672   /*       ADC instance must be disabled.                                     */
//  673   if(LL_ADC_IsEnabled(ADCx) == 0U)
//  674   {
//  675     /* Configuration of ADC hierarchical scope:                               */
//  676     /*  - ADC group regular                                                   */
//  677     /*    - Set ADC group regular trigger source                              */
//  678     /*    - Set ADC group regular sequencer length                            */
//  679     /*    - Set ADC group regular sequencer discontinuous mode                */
//  680     /*    - Set ADC group regular continuous mode                             */
//  681     /*    - Set ADC group regular conversion data transfer: no transfer or    */
//  682     /*      transfer by DMA, and DMA requests mode                            */
//  683     /* Note: On this STM32 serie, ADC trigger edge is set when starting       */
//  684     /*       ADC conversion.                                                  */
//  685     /*       Refer to function @ref LL_ADC_REG_StartConversionExtTrig().      */
//  686     if(ADC_REG_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
//  687     {
//  688       MODIFY_REG(ADCx->CR1,
//  689                    ADC_CR1_DISCEN
//  690                  | ADC_CR1_DISCNUM
//  691                 ,
//  692                    ADC_REG_InitStruct->SequencerLength
//  693                  | ADC_REG_InitStruct->SequencerDiscont
//  694                 );
//  695     }
//  696     else
//  697     {
//  698       MODIFY_REG(ADCx->CR1,
//  699                    ADC_CR1_DISCEN
//  700                  | ADC_CR1_DISCNUM
//  701                 ,
//  702                    ADC_REG_InitStruct->SequencerLength
//  703                  | LL_ADC_REG_SEQ_DISCONT_DISABLE
//  704                 );
//  705     }
//  706     
//  707     MODIFY_REG(ADCx->CR2,
//  708                  ADC_CR2_EXTSEL
//  709                | ADC_CR2_EXTEN
//  710                | ADC_CR2_CONT
//  711                | ADC_CR2_DMA
//  712                | ADC_CR2_DDS
//  713               ,
//  714                 (ADC_REG_InitStruct->TriggerSource & ADC_CR2_EXTSEL)
//  715                | ADC_REG_InitStruct->ContinuousMode
//  716                | ADC_REG_InitStruct->DMATransfer
//  717               );
//  718 
//  719     /* Set ADC group regular sequencer length and scan direction */
//  720     /* Note: Hardware constraint (refer to description of this function):     */
//  721     /* Note: If ADC instance feature scan mode is disabled                    */
//  722     /*       (refer to  ADC instance initialization structure                 */
//  723     /*       parameter @ref SequencersScanMode                                */
//  724     /*       or function @ref LL_ADC_SetSequencersScanMode() ),               */
//  725     /*       this parameter is discarded.                                     */
//  726     LL_ADC_REG_SetSequencerLength(ADCx, ADC_REG_InitStruct->SequencerLength);
//  727   }
//  728   else
//  729   {
//  730     /* Initialization error: ADC instance is not disabled. */
//  731     status = ERROR;
//  732   }
//  733   return status;
//  734 }
//  735 
//  736 /**
//  737   * @brief  Set each @ref LL_ADC_REG_InitTypeDef field to default value.
//  738   * @param  ADC_REG_InitStruct Pointer to a @ref LL_ADC_REG_InitTypeDef structure
//  739   *                            whose fields will be set to default values.
//  740   * @retval None
//  741   */
//  742 void LL_ADC_REG_StructInit(LL_ADC_REG_InitTypeDef *ADC_REG_InitStruct)
//  743 {
//  744   /* Set ADC_REG_InitStruct fields to default values */
//  745   /* Set fields of ADC group regular */
//  746   /* Note: On this STM32 serie, ADC trigger edge is set when starting         */
//  747   /*       ADC conversion.                                                    */
//  748   /*       Refer to function @ref LL_ADC_REG_StartConversionExtTrig().        */
//  749   ADC_REG_InitStruct->TriggerSource    = LL_ADC_REG_TRIG_SOFTWARE;
//  750   ADC_REG_InitStruct->SequencerLength  = LL_ADC_REG_SEQ_SCAN_DISABLE;
//  751   ADC_REG_InitStruct->SequencerDiscont = LL_ADC_REG_SEQ_DISCONT_DISABLE;
//  752   ADC_REG_InitStruct->ContinuousMode   = LL_ADC_REG_CONV_SINGLE;
//  753   ADC_REG_InitStruct->DMATransfer      = LL_ADC_REG_DMA_TRANSFER_NONE;
//  754 }
//  755 
//  756 /**
//  757   * @brief  Initialize some features of ADC group injected.
//  758   * @note   These parameters have an impact on ADC scope: ADC group injected.
//  759   *         Refer to corresponding unitary functions into
//  760   *         @ref ADC_LL_EF_Configuration_ADC_Group_Regular
//  761   *         (functions with prefix "INJ").
//  762   * @note   The setting of these parameters by function @ref LL_ADC_Init()
//  763   *         is conditioned to ADC state:
//  764   *         ADC instance must be disabled.
//  765   *         This condition is applied to all ADC features, for efficiency
//  766   *         and compatibility over all STM32 families. However, the different
//  767   *         features can be set under different ADC state conditions
//  768   *         (setting possible with ADC enabled without conversion on going,
//  769   *         ADC enabled with conversion on going, ...)
//  770   *         Each feature can be updated afterwards with a unitary function
//  771   *         and potentially with ADC in a different state than disabled,
//  772   *         refer to description of each function for setting
//  773   *         conditioned to ADC state.
//  774   * @note   After using this function, other features must be configured
//  775   *         using LL unitary functions.
//  776   *         The minimum configuration remaining to be done is:
//  777   *          - Set ADC group injected sequencer:
//  778   *            map channel on the selected sequencer rank.
//  779   *            Refer to function @ref LL_ADC_INJ_SetSequencerRanks().
//  780   *          - Set ADC channel sampling time
//  781   *            Refer to function LL_ADC_SetChannelSamplingTime();
//  782   * @param  ADCx ADC instance
//  783   * @param  ADC_INJ_InitStruct Pointer to a @ref LL_ADC_INJ_InitTypeDef structure
//  784   * @retval An ErrorStatus enumeration value:
//  785   *          - SUCCESS: ADC registers are initialized
//  786   *          - ERROR: ADC registers are not initialized
//  787   */
//  788 ErrorStatus LL_ADC_INJ_Init(ADC_TypeDef *ADCx, LL_ADC_INJ_InitTypeDef *ADC_INJ_InitStruct)
//  789 {
//  790   ErrorStatus status = SUCCESS;
//  791   
//  792   /* Check the parameters */
//  793   assert_param(IS_ADC_ALL_INSTANCE(ADCx));
//  794   assert_param(IS_LL_ADC_INJ_TRIG_SOURCE(ADC_INJ_InitStruct->TriggerSource));
//  795   assert_param(IS_LL_ADC_INJ_SEQ_SCAN_LENGTH(ADC_INJ_InitStruct->SequencerLength));
//  796   if(ADC_INJ_InitStruct->SequencerLength != LL_ADC_INJ_SEQ_SCAN_DISABLE)
//  797   {
//  798     assert_param(IS_LL_ADC_INJ_SEQ_SCAN_DISCONT_MODE(ADC_INJ_InitStruct->SequencerDiscont));
//  799   }
//  800   assert_param(IS_LL_ADC_INJ_TRIG_AUTO(ADC_INJ_InitStruct->TrigAuto));
//  801   
//  802   /* Note: Hardware constraint (refer to description of this function):       */
//  803   /*       ADC instance must be disabled.                                     */
//  804   if(LL_ADC_IsEnabled(ADCx) == 0U)
//  805   {
//  806     /* Configuration of ADC hierarchical scope:                               */
//  807     /*  - ADC group injected                                                  */
//  808     /*    - Set ADC group injected trigger source                             */
//  809     /*    - Set ADC group injected sequencer length                           */
//  810     /*    - Set ADC group injected sequencer discontinuous mode               */
//  811     /*    - Set ADC group injected conversion trigger: independent or         */
//  812     /*      from ADC group regular                                            */
//  813     /* Note: On this STM32 serie, ADC trigger edge is set when starting       */
//  814     /*       ADC conversion.                                                  */
//  815     /*       Refer to function @ref LL_ADC_INJ_StartConversionExtTrig().      */
//  816     if(ADC_INJ_InitStruct->SequencerLength != LL_ADC_REG_SEQ_SCAN_DISABLE)
//  817     {
//  818       MODIFY_REG(ADCx->CR1,
//  819                    ADC_CR1_JDISCEN
//  820                  | ADC_CR1_JAUTO
//  821                 ,
//  822                    ADC_INJ_InitStruct->SequencerDiscont
//  823                  | ADC_INJ_InitStruct->TrigAuto
//  824                 );
//  825     }
//  826     else
//  827     {
//  828       MODIFY_REG(ADCx->CR1,
//  829                    ADC_CR1_JDISCEN
//  830                  | ADC_CR1_JAUTO
//  831                 ,
//  832                    LL_ADC_REG_SEQ_DISCONT_DISABLE
//  833                  | ADC_INJ_InitStruct->TrigAuto
//  834                 );
//  835     }
//  836     
//  837     MODIFY_REG(ADCx->CR2,
//  838                  ADC_CR2_JEXTSEL
//  839                | ADC_CR2_JEXTEN
//  840               ,
//  841                 (ADC_INJ_InitStruct->TriggerSource & ADC_CR2_JEXTSEL)
//  842               );
//  843     
//  844     /* Note: Hardware constraint (refer to description of this function):     */
//  845     /* Note: If ADC instance feature scan mode is disabled                    */
//  846     /*       (refer to  ADC instance initialization structure                 */
//  847     /*       parameter @ref SequencersScanMode                                */
//  848     /*       or function @ref LL_ADC_SetSequencersScanMode() ),               */
//  849     /*       this parameter is discarded.                                     */
//  850     LL_ADC_INJ_SetSequencerLength(ADCx, ADC_INJ_InitStruct->SequencerLength);
//  851   }
//  852   else
//  853   {
//  854     /* Initialization error: ADC instance is not disabled. */
//  855     status = ERROR;
//  856   }
//  857   return status;
//  858 }
//  859 
//  860 /**
//  861   * @brief  Set each @ref LL_ADC_INJ_InitTypeDef field to default value.
//  862   * @param  ADC_INJ_InitStruct Pointer to a @ref LL_ADC_INJ_InitTypeDef structure
//  863   *                            whose fields will be set to default values.
//  864   * @retval None
//  865   */
//  866 void LL_ADC_INJ_StructInit(LL_ADC_INJ_InitTypeDef *ADC_INJ_InitStruct)
//  867 {
//  868   /* Set ADC_INJ_InitStruct fields to default values */
//  869   /* Set fields of ADC group injected */
//  870   ADC_INJ_InitStruct->TriggerSource    = LL_ADC_INJ_TRIG_SOFTWARE;
//  871   ADC_INJ_InitStruct->SequencerLength  = LL_ADC_INJ_SEQ_SCAN_DISABLE;
//  872   ADC_INJ_InitStruct->SequencerDiscont = LL_ADC_INJ_SEQ_DISCONT_DISABLE;
//  873   ADC_INJ_InitStruct->TrigAuto         = LL_ADC_INJ_TRIG_INDEPENDENT;
//  874 }
//  875 
//  876 /**
//  877   * @}
//  878   */
//  879 
//  880 /**
//  881   * @}
//  882   */
//  883 
//  884 /**
//  885   * @}
//  886   */
//  887 
//  888 #endif /* ADC1 */
//  889 
//  890 /**
//  891   * @}
//  892   */
//  893 
//  894 #endif /* USE_FULL_LL_DRIVER */
//  895 
//  896 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
