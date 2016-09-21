///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_opamp.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_opamp.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_opamp.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_opamp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_opamp.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   OPAMP LL module driver
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
//   40 #include "stm32l1xx_ll_opamp.h"
//   41 
//   42 #ifdef  USE_FULL_ASSERT
//   43   #include "stm32_assert.h"
//   44 #else
//   45   #define assert_param(expr) ((void)0U)
//   46 #endif
//   47 
//   48 /** @addtogroup STM32L1xx_LL_Driver
//   49   * @{
//   50   */
//   51 
//   52 #if defined (OPAMP1) || defined (OPAMP2) || defined (OPAMP3) 
//   53 
//   54 /** @addtogroup OPAMP_LL OPAMP
//   55   * @{
//   56   */
//   57 
//   58 /* Private types -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private constants ---------------------------------------------------------*/
//   61 /* Private macros ------------------------------------------------------------*/
//   62 
//   63 /** @addtogroup OPAMP_LL_Private_Macros
//   64   * @{
//   65   */
//   66 
//   67 /* Check of parameters for configuration of OPAMP hierarchical scope:         */
//   68 /* OPAMP instance.                                                            */
//   69 
//   70 #define IS_LL_OPAMP_POWER_MODE(__POWER_MODE__)                                 \ 
//   71   (   ((__POWER_MODE__) == LL_OPAMP_POWERMODE_NORMAL)                          \ 
//   72    || ((__POWER_MODE__) == LL_OPAMP_POWERMODE_LOWPOWER))
//   73 
//   74 #define IS_LL_OPAMP_FUNCTIONAL_MODE(__FUNCTIONAL_MODE__)                       \ 
//   75   (   ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_STANDALONE)                      \ 
//   76    || ((__FUNCTIONAL_MODE__) == LL_OPAMP_MODE_FOLLOWER)                        \ 
//   77   )
//   78 
//   79 /* Note: Comparator non-inverting inputs parameters are different             */
//   80 /*       depending on OPAMP instance.                                         */
//   81 #if defined(OPAMP3)
//   82 #define IS_LL_OPAMP_INPUT_NONINVERTING(__OPAMPX__, __INPUT_NONINVERTING__)        \ 
//   83   (((__OPAMPX__) == OPAMP1)                                                       \ 
//   84     ? (                                                                           \ 
//   85           ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)              \ 
//   86        || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH1)            \ 
//   87       )                                                                           \ 
//   88       :                                                                           \ 
//   89       (((__OPAMPX__) == OPAMP2)                                                   \ 
//   90         ? (                                                                       \ 
//   91               ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)          \ 
//   92            || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH1)        \ 
//   93            || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH2)        \ 
//   94           )                                                                       \ 
//   95           :                                                                       \ 
//   96           (                                                                       \ 
//   97               ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)          \ 
//   98            || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH2_OPAMP3) \ 
//   99           )                                                                       \ 
//  100       )                                                                           \ 
//  101   )
//  102 #else
//  103 #define IS_LL_OPAMP_INPUT_NONINVERTING(__OPAMPX__, __INPUT_NONINVERTING__)     \ 
//  104   (((__OPAMPX__) == OPAMP1)                                                    \ 
//  105     ? (                                                                        \ 
//  106           ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)           \ 
//  107        || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH1)         \ 
//  108       )                                                                        \ 
//  109       :                                                                        \ 
//  110       (                                                                        \ 
//  111           ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINVERT_IO0)           \ 
//  112        || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH1)         \ 
//  113        || ((__INPUT_NONINVERTING__) == LL_OPAMP_INPUT_NONINV_DAC1_CH2)         \ 
//  114       )                                                                        \ 
//  115   )
//  116 #endif
//  117 
//  118 /* Note: Comparator non-inverting inputs parameters are the same on all       */
//  119 /*       OPAMP instances.                                                     */
//  120 /*       However, comparator instance kept as macro parameter for             */
//  121 /*       compatibility with other STM32 families.                             */
//  122 #define IS_LL_OPAMP_INPUT_INVERTING(__OPAMPX__, __INPUT_INVERTING__)           \ 
//  123   (   ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_IO0)                     \ 
//  124    || ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_IO1)                     \ 
//  125    || ((__INPUT_INVERTING__) == LL_OPAMP_INPUT_INVERT_CONNECT_NO)              \ 
//  126   )
//  127 
//  128 /**
//  129   * @}
//  130   */
//  131 
//  132 
//  133 /* Private function prototypes -----------------------------------------------*/
//  134 
//  135 /* Exported functions --------------------------------------------------------*/
//  136 /** @addtogroup OPAMP_LL_Exported_Functions
//  137   * @{
//  138   */
//  139 
//  140 /** @addtogroup OPAMP_LL_EF_Init
//  141   * @{
//  142   */
//  143 
//  144 /**
//  145   * @brief  De-initialize registers of the selected OPAMP instance
//  146   *         to their default reset values.
//  147   * @param  OPAMPx OPAMP instance
//  148   * @retval An ErrorStatus enumeration value:
//  149   *          - SUCCESS: OPAMP registers are de-initialized
//  150   *          - ERROR: OPAMP registers are not de-initialized
//  151   */
//  152 ErrorStatus LL_OPAMP_DeInit(OPAMP_TypeDef* OPAMPx)
//  153 {
//  154   ErrorStatus status = SUCCESS;
//  155   
//  156   /* Check the parameters */
//  157   assert_param(IS_OPAMP_ALL_INSTANCE(OPAMPx));
//  158   
//  159   MODIFY_REG(OPAMP->CSR,
//  160                (OPAMP_CSR_S3SEL1 | OPAMP_CSR_S4SEL1 | OPAMP_CSR_S5SEL1 | OPAMP_CSR_S6SEL1 | OPAMP_CSR_OPA1CAL_L | OPAMP_CSR_OPA1CAL_H | OPAMP_CSR_OPA1LPM) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  161              | (OPAMP_CSR_ANAWSEL1) << __OPAMP_INSTANCE_DECIMAL(OPAMPx)
//  162              | (OPAMP_CSR_S7SEL2 * __OPAMP_IS_INSTANCE_OPAMP2(OPAMPx)) ,
//  163              (OPAMP_CSR_OPA1PD) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  164             );
//  165   return status;
//  166 }
//  167 
//  168 /**
//  169   * @brief  Initialize some features of OPAMP instance.
//  170   * @note   This function reset bit of calibration mode to ensure
//  171   *         to be in functional mode, in order to have OPAMP parameters
//  172   *         (inputs selection, ...) set with the corresponding OPAMP mode
//  173   *         to be effective.
//  174   * @note   This function configures features of the selected OPAMP instance.
//  175   *         Some features are also available at scope OPAMP common instance
//  176   *         (common to several OPAMP instances).
//  177   *         Refer to functions having argument "OPAMPxy_COMMON" as parameter.
//  178   * @param  OPAMPx OPAMP instance
//  179   * @param  OPAMP_InitStruct Pointer to a @ref LL_OPAMP_InitTypeDef structure
//  180   * @retval An ErrorStatus enumeration value:
//  181   *          - SUCCESS: OPAMP registers are initialized
//  182   *          - ERROR: OPAMP registers are not initialized
//  183   */
//  184 ErrorStatus LL_OPAMP_Init(OPAMP_TypeDef *OPAMPx, LL_OPAMP_InitTypeDef *OPAMP_InitStruct)
//  185 {
//  186   /* Check the parameters */
//  187   assert_param(IS_OPAMP_ALL_INSTANCE(OPAMPx));
//  188   assert_param(IS_LL_OPAMP_POWER_MODE(OPAMP_InitStruct->PowerMode));
//  189   assert_param(IS_LL_OPAMP_FUNCTIONAL_MODE(OPAMP_InitStruct->FunctionalMode));
//  190   assert_param(IS_LL_OPAMP_INPUT_NONINVERTING(OPAMPx, OPAMP_InitStruct->InputNonInverting));
//  191   
//  192   /* Note: OPAMP inverting input can be used with OPAMP in mode standalone.   */
//  193   /*       Otherwise (OPAMP in mode follower), OPAMP inverting input is       */
//  194   /*       not used (not connected to GPIO pin).                              */
//  195   if(OPAMP_InitStruct->FunctionalMode != LL_OPAMP_MODE_FOLLOWER)
//  196   {
//  197     assert_param(IS_LL_OPAMP_INPUT_INVERTING(OPAMPx, OPAMP_InitStruct->InputInverting));
//  198   }
//  199   
//  200   /* Configuration of OPAMP instance :                                        */
//  201   /*  - PowerMode                                                             */
//  202   /*  - Functional mode                                                       */
//  203   /*  - Input non-inverting                                                   */
//  204   /*  - Input inverting                                                       */
//  205   /* Note: Bits OPAMP_CSR_OPAxCAL_y reset to ensure to be in functional mode  */
//  206   if(OPAMP_InitStruct->FunctionalMode != LL_OPAMP_MODE_FOLLOWER)
//  207   {
//  208     MODIFY_REG(OPAMP->CSR,
//  209                ((
//  210                    OPAMP_CSR_OPA1LPM
//  211                  | OPAMP_CSR_S3SEL1
//  212                  | OPAMP_CSR_OPA1CAL_H
//  213                  | OPAMP_CSR_OPA1CAL_L
//  214                  | OPAMP_CSR_S5SEL1
//  215                  | OPAMP_CSR_S6SEL1
//  216                  | OPAMP_CSR_S4SEL1
//  217                 ) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  218                )
//  219                | ((OPAMP_CSR_ANAWSEL1) << __OPAMP_INSTANCE_DECIMAL(OPAMPx))
//  220                | (OPAMP_CSR_S7SEL2 * __OPAMP_IS_INSTANCE_OPAMP2(OPAMPx))
//  221               ,
//  222                ((
//  223                    (OPAMP_InitStruct->PowerMode & OPAMP_POWERMODE_CSR_BIT_MASK)
//  224                  | OPAMP_InitStruct->FunctionalMode
//  225                  | OPAMP_InitStruct->InputNonInverting
//  226                  | (OPAMP_InitStruct->InputInverting & OPAMP_CSR_S4SEL1)
//  227                 ) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  228                )
//  229                | ((OPAMP_InitStruct->InputInverting & OPAMP_CSR_ANAWSEL1) << __OPAMP_INSTANCE_DECIMAL(OPAMPx))
//  230                | ((OPAMP_InitStruct->InputNonInverting & OPAMP_CSR_S7SEL2) * __OPAMP_IS_INSTANCE_OPAMP2(OPAMPx))
//  231               );
//  232   }
//  233   else
//  234   {
//  235     MODIFY_REG(OPAMP->CSR,
//  236                ((
//  237                    OPAMP_CSR_OPA1LPM
//  238                  | OPAMP_CSR_OPA1CAL_H
//  239                  | OPAMP_CSR_OPA1CAL_L
//  240                  | OPAMP_CSR_S5SEL1
//  241                  | OPAMP_CSR_S6SEL1
//  242                  | OPAMP_CSR_S4SEL1
//  243                 ) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  244                )
//  245                | ((OPAMP_CSR_ANAWSEL1) << __OPAMP_INSTANCE_DECIMAL(OPAMPx))
//  246                | (OPAMP_CSR_S7SEL2 * __OPAMP_IS_INSTANCE_OPAMP2(OPAMPx))
//  247               ,
//  248                ((
//  249                    (OPAMP_InitStruct->PowerMode & OPAMP_POWERMODE_CSR_BIT_MASK)
//  250                  | OPAMP_InitStruct->FunctionalMode
//  251                  | OPAMP_InitStruct->InputNonInverting
//  252                  | OPAMP_CSR_S3SEL1
//  253                 ) << __OPAMP_INSTANCE_BITOFFSET(OPAMPx)
//  254                )
//  255                | ((OPAMP_InitStruct->InputNonInverting & OPAMP_CSR_S7SEL2) * __OPAMP_IS_INSTANCE_OPAMP2(OPAMPx))
//  256               );
//  257   }
//  258   return SUCCESS;
//  259 }
//  260 
//  261 /**
//  262   * @brief Set each @ref LL_OPAMP_InitTypeDef field to default value.
//  263   * @param OPAMP_InitStruct pointer to a @ref LL_OPAMP_InitTypeDef structure
//  264   *                         whose fields will be set to default values.
//  265   * @retval None
//  266   */
//  267 void LL_OPAMP_StructInit(LL_OPAMP_InitTypeDef *OPAMP_InitStruct)
//  268 {
//  269   /* Set OPAMP_InitStruct fields to default values */
//  270   OPAMP_InitStruct->PowerMode         = LL_OPAMP_POWERMODE_NORMAL;
//  271   OPAMP_InitStruct->FunctionalMode    = LL_OPAMP_MODE_FOLLOWER;
//  272   OPAMP_InitStruct->InputNonInverting = LL_OPAMP_INPUT_NONINVERT_IO0;
//  273   /* Note: Parameter discarded if OPAMP in functional mode follower,          */
//  274   /*       set anyway to its default value.                                   */
//  275   OPAMP_InitStruct->InputInverting    = LL_OPAMP_INPUT_INVERT_CONNECT_NO;
//  276 }
//  277 
//  278 /**
//  279   * @}
//  280   */
//  281 
//  282 /**
//  283   * @}
//  284   */
//  285 
//  286 /**
//  287   * @}
//  288   */
//  289 
//  290 #endif /* OPAMP1 || OPAMP2 || OPAMP3 */
//  291 
//  292 /**
//  293   * @}
//  294   */
//  295 
//  296 #endif /* USE_FULL_LL_DRIVER */
//  297 
//  298 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
