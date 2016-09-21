///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_tim_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_tim_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_tim_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   TIM HAL module driver.
//    8   *          This file provides firmware functions to manage the following
//    9   *          functionalities of the Timer extension peripheral:
//   10   *           + Time Master and Slave synchronization configuration
//   11   *           + Timer remapping capabilities configuration
//   12   @verbatim
//   13   ==============================================================================
//   14                       ##### TIMER Extended features #####
//   15   ==============================================================================
//   16   [..]
//   17     The Timer Extension features include:
//   18     (#) Synchronization circuit to control the timer with external signals and to
//   19         interconnect several timers together.
//   20     (#) Timer remapping capabilities configuration
//   21 
//   22   @endverbatim
//   23   ******************************************************************************
//   24   * @attention
//   25   *
//   26   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   27   *
//   28   * Redistribution and use in source and binary forms, with or without modification,
//   29   * are permitted provided that the following conditions are met:
//   30   *   1. Redistributions of source code must retain the above copyright notice,
//   31   *      this list of conditions and the following disclaimer.
//   32   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   33   *      this list of conditions and the following disclaimer in the documentation
//   34   *      and/or other materials provided with the distribution.
//   35   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   36   *      may be used to endorse or promote products derived from this software
//   37   *      without specific prior written permission.
//   38   *
//   39   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   40   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   41   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   42   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   43   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   44   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   45   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   46   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   47   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   48   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   49   *
//   50   ******************************************************************************
//   51 */
//   52 
//   53 /* Includes ------------------------------------------------------------------*/
//   54 #include "stm32l1xx_hal.h"
//   55 
//   56 /** @addtogroup STM32L1xx_HAL_Driver
//   57   * @{
//   58   */
//   59 
//   60 /** @defgroup TIMEx TIMEx
//   61   * @brief TIM Extended HAL module driver
//   62   * @{
//   63   */
//   64 
//   65 #ifdef HAL_TIM_MODULE_ENABLED
//   66 
//   67 /* Private typedef -----------------------------------------------------------*/
//   68 /* Private define ------------------------------------------------------------*/
//   69 /* Private macro -------------------------------------------------------------*/
//   70 /* Private variables ---------------------------------------------------------*/
//   71 /* Private function prototypes -----------------------------------------------*/
//   72 /* Private functions ---------------------------------------------------------*/
//   73 
//   74 /* Exported functions ---------------------------------------------------------*/
//   75 
//   76 /** @defgroup TIMEx_Exported_Functions TIMEx Exported Functions
//   77   * @{
//   78   */
//   79 
//   80 /** @defgroup TIMEx_Exported_Functions_Group1 Peripheral Control functions
//   81  *  @brief   	Peripheral Control functions
//   82  *
//   83 @verbatim
//   84   ==============================================================================
//   85                     ##### Peripheral Control functions #####
//   86   ==============================================================================
//   87   [..]
//   88     This section provides functions allowing to:
//   89     (+)Configure Master synchronization.
//   90     (+) Configure timer remapping capabilities.
//   91 
//   92 @endverbatim
//   93   * @{
//   94   */
//   95 
//   96 /**
//   97   * @brief  Configures the TIM in master mode.
//   98   * @param  htim: TIM handle.
//   99   * @param  sMasterConfig: pointer to a TIM_MasterConfigTypeDef structure that
//  100   *         contains the selected trigger output (TRGO) and the Master/Slave
//  101   *         mode.
//  102   * @retval HAL status
//  103   */
//  104 HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim, TIM_MasterConfigTypeDef * sMasterConfig)
//  105 {
//  106   /* Check the parameters */
//  107   assert_param(IS_TIM_MASTER_INSTANCE(htim->Instance));
//  108   assert_param(IS_TIM_TRGO_SOURCE(sMasterConfig->MasterOutputTrigger));
//  109   assert_param(IS_TIM_MSM_STATE(sMasterConfig->MasterSlaveMode));
//  110 
//  111   __HAL_LOCK(htim);
//  112 
//  113   htim->State = HAL_TIM_STATE_BUSY;
//  114 
//  115   /* Reset the MMS Bits */
//  116   htim->Instance->CR2 &= ~TIM_CR2_MMS;
//  117   /* Select the TRGO source */
//  118   htim->Instance->CR2 |=  sMasterConfig->MasterOutputTrigger;
//  119 
//  120   /* Reset the MSM Bit */
//  121   htim->Instance->SMCR &= ~TIM_SMCR_MSM;
//  122   /* Set or Reset the MSM Bit */
//  123   htim->Instance->SMCR |= sMasterConfig->MasterSlaveMode;
//  124 
//  125   htim->State = HAL_TIM_STATE_READY;
//  126 
//  127   __HAL_UNLOCK(htim);
//  128 
//  129   return HAL_OK;
//  130 }
//  131 
//  132 /**
//  133   * @brief  Configures the TIM2/TIM3/TIM9/TIM10/TIM11 Remapping input capabilities.
//  134   * @param  htim: TIM handle.
//  135   * @param  Remap: specifies the TIM remapping source.
//  136   *         This parameter is a combination of the following values depending on TIM instance.
//  137   * @retval HAL status
//  138   *
//  139   * @note For TIM2, the parameter can have the following values:
//  140   *            @arg TIM_TIM2_ITR1_TIM10_OC:      TIM2 ITR1 input is connected to TIM10 OC
//  141   *            @arg TIM_TIM2_ITR1_TIM5_TGO:      TIM2 ITR1 input is connected to TIM5 TGO
//  142   *
//  143   * @note For TIM3, the parameter can have the following values:
//  144   *            @arg TIM_TIM3_ITR2_TIM11_OC:      TIM3 ITR2 input is connected to TIM11 OC
//  145   *            @arg TIM_TIM3_ITR2_TIM5_TGO:      TIM3 ITR2 input is connected to TIM5 TGO
//  146   *
//  147   * @note For TIM9, the parameter is a combination of 2 fields (field1 | field2):
//  148   * @note For TIM9, the field1 can have the following values:
//  149   *            @arg TIM_TIM9_ITR1_TIM3_TGO:      TIM9 ITR1 input is connected to TIM3 TGO
//  150   *            @arg TIM_TIM9_ITR1_TS:            TIM9 ITR1 input is connected to touch sensing I/O
//  151   * @note For TIM9, the field2 can have the following values:
//  152   *            @arg TIM_TIM9_GPIO:               TIM9 Channel1 is connected to GPIO
//  153   *            @arg TIM_TIM9_LSE:                TIM9 Channel1 is connected to LSE internal clock
//  154   *            @arg TIM_TIM9_GPIO1:              TIM9 Channel1 is connected to GPIO
//  155   *            @arg TIM_TIM9_GPIO2:              TIM9 Channel1 is connected to GPIO
//  156   *
//  157   * @note For TIM10, the parameter is a combination of 3 fields (field1 | field2 | field3):
//  158   * @note For TIM10, the field1 can have the following values:
//  159   *            @arg TIM_TIM10_TI1RMP:            TIM10 Channel 1 depends on TI1_RMP
//  160   *            @arg TIM_TIM10_RI:                TIM10 Channel 1 is connected to RI
//  161   * @note For TIM10, the field2 can have the following values:
//  162   *            @arg TIM_TIM10_ETR_LSE:           TIM10 ETR input is connected to LSE clock
//  163   *            @arg TIM_TIM10_ETR_TIM9_TGO:      TIM10 ETR input is connected to TIM9 TGO
//  164   * @note For TIM10, the field3 can have the following values:
//  165   *            @arg TIM_TIM10_GPIO:              TIM10 Channel1 is connected to GPIO
//  166   *            @arg TIM_TIM10_LSI:               TIM10 Channel1 is connected to LSI internal clock
//  167   *            @arg TIM_TIM10_LSE:               TIM10 Channel1 is connected to LSE internal clock
//  168   *            @arg TIM_TIM10_RTC:               TIM10 Channel1 is connected to RTC wakeup interrupt
//  169   *
//  170   * @note For TIM11, the parameter is a combination of 3 fields (field1 | field2 | field3):
//  171   * @note For TIM11, the field1 can have the following values:
//  172   *            @arg TIM_TIM11_TI1RMP:            TIM11 Channel 1 depends on TI1_RMP
//  173   *            @arg TIM_TIM11_RI:                TIM11 Channel 1 is connected to RI
//  174   * @note For TIM11, the field2 can have the following values:
//  175   *            @arg TIM_TIM11_ETR_LSE:           TIM11 ETR input is connected to LSE clock
//  176   *            @arg TIM_TIM11_ETR_TIM9_TGO:      TIM11 ETR input is connected to TIM9 TGO 
//  177   * @note For TIM11, the field3 can have the following values:
//  178   *            @arg TIM_TIM11_GPIO:     TIM11 Channel1 is connected to GPIO           
//  179   *            @arg TIM_TIM11_MSI:      TIM11 Channel1 is connected to MSI internal clock
//  180   *            @arg TIM_TIM11_HSE_RTC:  TIM11 Channel1 is connected to HSE_RTC clock
//  181   *            @arg TIM_TIM11_GPIO1:    TIM11 Channel1 is connected to GPIO
//  182   *
//  183   */
//  184 HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap)
//  185 {
//  186   __HAL_LOCK(htim);
//  187 
//  188   /* Check parameters */
//  189   assert_param(IS_TIM_REMAP_INSTANCE(htim->Instance));
//  190   assert_param(IS_TIM_REMAP(htim->Instance,Remap));
//  191 
//  192   /* Set the Timer remapping configuration */
//  193   htim->Instance->OR = Remap;
//  194 
//  195   htim->State = HAL_TIM_STATE_READY;
//  196 
//  197   __HAL_UNLOCK(htim);
//  198 
//  199   return HAL_OK;
//  200 }
//  201 
//  202 /**
//  203   * @}
//  204   */
//  205 
//  206 #endif /* HAL_TIM_MODULE_ENABLED */
//  207 /**
//  208   * @}
//  209   */
//  210 
//  211 /**
//  212   * @}
//  213   */
//  214 
//  215 /**
//  216   * @}
//  217   */
//  218 
//  219 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
