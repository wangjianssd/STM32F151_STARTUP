///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dac.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dac.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_dac.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dac.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_dac.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   DAC LL module driver
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
//   40 #include "stm32l1xx_ll_dac.h"
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
//   53 #if defined (DAC1)
//   54 
//   55 /** @addtogroup DAC_LL DAC
//   56   * @{
//   57   */
//   58 
//   59 /* Private types -------------------------------------------------------------*/
//   60 /* Private variables ---------------------------------------------------------*/
//   61 /* Private constants ---------------------------------------------------------*/
//   62 /* Private macros ------------------------------------------------------------*/
//   63 
//   64 /** @addtogroup DAC_LL_Private_Macros
//   65   * @{
//   66   */
//   67 
//   68 #define IS_LL_DAC_CHANNEL(__DACX__, __DAC_CHANNEL__)                           \ 
//   69   (                                                                            \ 
//   70       ((__DAC_CHANNEL__) == LL_DAC_CHANNEL_1)                                  \ 
//   71    || ((__DAC_CHANNEL__) == LL_DAC_CHANNEL_2)                                  \ 
//   72   )
//   73 
//   74 #define IS_LL_DAC_TRIGGER_SOURCE(__TRIGGER_SOURCE__)                           \ 
//   75   (   ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_SOFTWARE)                           \ 
//   76    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM2_TRGO)                      \ 
//   77    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM4_TRGO)                      \ 
//   78    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM6_TRGO)                      \ 
//   79    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM7_TRGO)                      \ 
//   80    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_TIM9_TRGO)                      \ 
//   81    || ((__TRIGGER_SOURCE__) == LL_DAC_TRIG_EXT_EXTI_LINE9)                     \ 
//   82   )
//   83 
//   84 #define IS_LL_DAC_WAVE_AUTO_GENER_MODE(__WAVE_AUTO_GENERATION_MODE__)           \ 
//   85   (   ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_NONE)     \ 
//   86    || ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_NOISE)    \ 
//   87    || ((__WAVE_AUTO_GENERATION_MODE__) == LL_DAC_WAVE_AUTO_GENERATION_TRIANGLE) \ 
//   88   )
//   89 
//   90 #define IS_LL_DAC_WAVE_AUTO_GENER_CONFIG(__WAVE_AUTO_GENERATION_CONFIG__)      \ 
//   91   (   ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BIT0)     \ 
//   92    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS1_0)  \ 
//   93    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS2_0)  \ 
//   94    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS3_0)  \ 
//   95    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS4_0)  \ 
//   96    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS5_0)  \ 
//   97    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS6_0)  \ 
//   98    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS7_0)  \ 
//   99    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS8_0)  \ 
//  100    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS9_0)  \ 
//  101    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS10_0) \ 
//  102    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_NOISE_LFSR_UNMASK_BITS11_0) \ 
//  103    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_1)       \ 
//  104    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_3)       \ 
//  105    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_7)       \ 
//  106    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_15)      \ 
//  107    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_31)      \ 
//  108    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_63)      \ 
//  109    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_127)     \ 
//  110    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_255)     \ 
//  111    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_511)     \ 
//  112    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_1023)    \ 
//  113    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_2047)    \ 
//  114    || ((__WAVE_AUTO_GENERATION_CONFIG__) == LL_DAC_TRIANGLE_AMPLITUDE_4095)    \ 
//  115   )
//  116 
//  117 #define IS_LL_DAC_OUTPUT_BUFFER(__OUTPUT_BUFFER__)                             \ 
//  118   (   ((__OUTPUT_BUFFER__) == LL_DAC_OUTPUT_BUFFER_ENABLE)                     \ 
//  119    || ((__OUTPUT_BUFFER__) == LL_DAC_OUTPUT_BUFFER_DISABLE)                    \ 
//  120   )
//  121 
//  122 /**
//  123   * @}
//  124   */
//  125 
//  126 
//  127 /* Private function prototypes -----------------------------------------------*/
//  128 
//  129 /* Exported functions --------------------------------------------------------*/
//  130 /** @addtogroup DAC_LL_Exported_Functions
//  131   * @{
//  132   */
//  133 
//  134 /** @addtogroup DAC_LL_EF_Init
//  135   * @{
//  136   */
//  137 
//  138 /**
//  139   * @brief  De-initialize registers of the selected DAC instance
//  140   *         to their default reset values.
//  141   * @param  DACx DAC instance
//  142   * @retval An ErrorStatus enumeration value:
//  143   *          - SUCCESS: DAC registers are de-initialized
//  144   *          - ERROR: not applicable
//  145   */
//  146 ErrorStatus LL_DAC_DeInit(DAC_TypeDef *DACx)
//  147 {
//  148   /* Check the parameters */
//  149   assert_param(IS_DAC_ALL_INSTANCE(DACx));
//  150   
//  151   /* Force reset of DAC clock */
//  152   LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_DAC1);
//  153   
//  154   /* Release reset of DAC clock */
//  155   LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_DAC1);
//  156   
//  157   return SUCCESS;
//  158 }
//  159 
//  160 /**
//  161   * @brief  Initialize some features of DAC instance.
//  162   * @note   The setting of these parameters by function @ref LL_DAC_Init()
//  163   *         is conditioned to DAC state:
//  164   *         DAC instance must be disabled.
//  165   * @param  DACx DAC instance
//  166   * @param  DAC_Channel This parameter can be one of the following values:
//  167   *         @arg @ref LL_DAC_CHANNEL_1
//  168   *         @arg @ref LL_DAC_CHANNEL_2
//  169   * @param  DAC_InitStruct Pointer to a @ref LL_DAC_InitTypeDef structure
//  170   * @retval An ErrorStatus enumeration value:
//  171   *          - SUCCESS: DAC registers are initialized
//  172   *          - ERROR: DAC registers are not initialized
//  173   */
//  174 ErrorStatus LL_DAC_Init(DAC_TypeDef *DACx, uint32_t DAC_Channel, LL_DAC_InitTypeDef *DAC_InitStruct)
//  175 {
//  176   ErrorStatus status = SUCCESS;
//  177   
//  178   /* Check the parameters */
//  179   assert_param(IS_DAC_ALL_INSTANCE(DACx));
//  180   assert_param(IS_LL_DAC_CHANNEL(DACx, DAC_Channel));
//  181   assert_param(IS_LL_DAC_TRIGGER_SOURCE(DAC_InitStruct->TriggerSource));
//  182   assert_param(IS_LL_DAC_OUTPUT_BUFFER(DAC_InitStruct->OutputBuffer));
//  183   assert_param(IS_LL_DAC_WAVE_AUTO_GENER_MODE(DAC_InitStruct->WaveAutoGeneration));
//  184   if (DAC_InitStruct->WaveAutoGeneration != LL_DAC_WAVE_AUTO_GENERATION_NONE)
//  185   {
//  186     assert_param(IS_LL_DAC_WAVE_AUTO_GENER_CONFIG(DAC_InitStruct->WaveAutoGenerationConfig));
//  187   }
//  188   
//  189   /* Note: Hardware constraint (refer to description of this function)        */
//  190   /*       DAC instance must be disabled.                                     */
//  191   if(LL_DAC_IsEnabled(DACx, DAC_Channel) == 0U)
//  192   {
//  193     /* Configuration of DAC channel:                                          */
//  194     /*  - TriggerSource                                                       */
//  195     /*  - WaveAutoGeneration                                                  */
//  196     /*  - OutputBuffer                                                        */
//  197     if (DAC_InitStruct->WaveAutoGeneration != LL_DAC_WAVE_AUTO_GENERATION_NONE)
//  198     {
//  199       MODIFY_REG(DACx->CR,
//  200                  (  DAC_CR_TSEL1
//  201                   | DAC_CR_WAVE1
//  202                   | DAC_CR_MAMP1
//  203                   | DAC_CR_BOFF1
//  204                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
//  205                 ,
//  206                  (  DAC_InitStruct->TriggerSource
//  207                   | DAC_InitStruct->WaveAutoGeneration
//  208                   | DAC_InitStruct->WaveAutoGenerationConfig
//  209                   | DAC_InitStruct->OutputBuffer
//  210                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
//  211                 );
//  212     }
//  213     else
//  214     {
//  215       MODIFY_REG(DACx->CR,
//  216                  (  DAC_CR_TSEL1
//  217                   | DAC_CR_WAVE1
//  218                   | DAC_CR_BOFF1
//  219                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
//  220                 ,
//  221                  (  DAC_InitStruct->TriggerSource
//  222                   | LL_DAC_WAVE_AUTO_GENERATION_NONE
//  223                   | DAC_InitStruct->OutputBuffer
//  224                  ) << (DAC_Channel & DAC_CR_CHX_BITOFFSET_MASK)
//  225                 );
//  226     }
//  227   }
//  228   else
//  229   {
//  230     /* Initialization error: DAC instance is not disabled.                    */
//  231     status = ERROR;
//  232   }
//  233   return status;
//  234 }
//  235 
//  236 /**
//  237   * @brief Set each @ref LL_DAC_InitTypeDef field to default value.
//  238   * @param DAC_InitStruct pointer to a @ref LL_DAC_InitTypeDef structure
//  239   *                       whose fields will be set to default values.
//  240   * @retval None
//  241   */
//  242 void LL_DAC_StructInit(LL_DAC_InitTypeDef *DAC_InitStruct)
//  243 {
//  244   /* Set DAC_InitStruct fields to default values */
//  245   DAC_InitStruct->TriggerSource            = LL_DAC_TRIG_SOFTWARE;
//  246   DAC_InitStruct->WaveAutoGeneration       = LL_DAC_WAVE_AUTO_GENERATION_NONE;
//  247   /* Note: Parameter discarded if wave auto generation is disabled,           */
//  248   /*       set anyway to its default value.                                   */
//  249   DAC_InitStruct->WaveAutoGenerationConfig = LL_DAC_NOISE_LFSR_UNMASK_BIT0;
//  250   DAC_InitStruct->OutputBuffer             = LL_DAC_OUTPUT_BUFFER_ENABLE;
//  251 }
//  252 
//  253 /**
//  254   * @}
//  255   */
//  256 
//  257 /**
//  258   * @}
//  259   */
//  260 
//  261 /**
//  262   * @}
//  263   */
//  264 
//  265 #endif /* DAC1 */
//  266 
//  267 /**
//  268   * @}
//  269   */
//  270 
//  271 #endif /* USE_FULL_LL_DRIVER */
//  272 
//  273 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
