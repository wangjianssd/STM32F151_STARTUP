///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_comp.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_comp.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_comp.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_comp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_comp.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   COMP LL module driver
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
//   40 #include "stm32l1xx_ll_comp.h"
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
//   52 #if defined (COMP1) || defined (COMP2)
//   53 
//   54 /** @addtogroup COMP_LL COMP
//   55   * @{
//   56   */
//   57 
//   58 /* Private types -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private constants ---------------------------------------------------------*/
//   61 /* Private macros ------------------------------------------------------------*/
//   62 
//   63 /** @addtogroup COMP_LL_Private_Macros
//   64   * @{
//   65   */
//   66 
//   67 /* Check of parameters for configuration of COMP hierarchical scope:          */
//   68 /* COMP instance.                                                             */
//   69 
//   70 #define IS_LL_COMP_POWER_MODE(__POWER_MODE__)                                  \ 
//   71   (   ((__POWER_MODE__) == LL_COMP_POWERMODE_MEDIUMSPEED)                      \ 
//   72    || ((__POWER_MODE__) == LL_COMP_POWERMODE_ULTRALOWPOWER)                    \ 
//   73   )
//   74 
//   75 /* Note: On this STM32 serie, comparator input plus parameters are            */
//   76 /*       the different depending on COMP instances.                           */
//   77 #if defined(RI_ASCR1_CH_31)
//   78 #define IS_LL_COMP_INPUT_PLUS(__COMP_INSTANCE__, __INPUT_PLUS__)               \ 
//   79   (((__COMP_INSTANCE__) == COMP1)                                              \ 
//   80     ? (                                                                        \ 
//   81           ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO5)                         \ 
//   82        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO6)                         \ 
//   83        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO7)                         \ 
//   84        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO8)                         \ 
//   85        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO9)                         \ 
//   86        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO10)                        \ 
//   87        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO11)                        \ 
//   88        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO12)                        \ 
//   89        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO13)                        \ 
//   90        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO14)                        \ 
//   91        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO15)                        \ 
//   92        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO16)                        \ 
//   93        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO17)                        \ 
//   94        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO18)                        \ 
//   95        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO19)                        \ 
//   96        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO20)                        \ 
//   97        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO21)                        \ 
//   98        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO22)                        \ 
//   99        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO23)                        \ 
//  100        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO24)                        \ 
//  101        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO25)                        \ 
//  102        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO26)                        \ 
//  103        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO27)                        \ 
//  104        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO28)                        \ 
//  105        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO29)                        \ 
//  106        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO30)                        \ 
//  107        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO31)                        \ 
//  108        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO32)                        \ 
//  109        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO33)                        \ 
//  110       )                                                                        \ 
//  111       :                                                                        \ 
//  112       (                                                                        \ 
//  113           ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO1)                         \ 
//  114        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO2)                         \ 
//  115        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO3)                         \ 
//  116        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO4)                         \ 
//  117       )                                                                        \ 
//  118   )
//  119 #else
//  120 #define IS_LL_COMP_INPUT_PLUS(__COMP_INSTANCE__, __INPUT_PLUS__)               \ 
//  121   (((__COMP_INSTANCE__) == COMP1)                                              \ 
//  122     ? (                                                                        \ 
//  123           ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO5)                         \ 
//  124        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO6)                         \ 
//  125        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO7)                         \ 
//  126        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO8)                         \ 
//  127        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO9)                         \ 
//  128        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO10)                        \ 
//  129        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO11)                        \ 
//  130        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO12)                        \ 
//  131        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO13)                        \ 
//  132        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO14)                        \ 
//  133        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO15)                        \ 
//  134        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO16)                        \ 
//  135        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO17)                        \ 
//  136        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO18)                        \ 
//  137        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO19)                        \ 
//  138        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO20)                        \ 
//  139        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO21)                        \ 
//  140        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO22)                        \ 
//  141        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO23)                        \ 
//  142        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO24)                        \ 
//  143        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO25)                        \ 
//  144        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO26)                        \ 
//  145        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO27)                        \ 
//  146        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO28)                        \ 
//  147       )                                                                        \ 
//  148       :                                                                        \ 
//  149       (                                                                        \ 
//  150           ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO1)                         \ 
//  151        || ((__INPUT_PLUS__) == LL_COMP_INPUT_PLUS_IO2)                         \ 
//  152       )                                                                        \ 
//  153   )
//  154 #endif
//  155 
//  156 /* Note: On this STM32 serie, comparator input minus parameters are           */
//  157 /*       the different depending on COMP instances.                           */
//  158 #define IS_LL_COMP_INPUT_MINUS(__COMP_INSTANCE__, __INPUT_MINUS__)             \ 
//  159   (((__COMP_INSTANCE__) == COMP1)                                              \ 
//  160     ? (                                                                        \ 
//  161           ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_VREFINT)                   \ 
//  162       )                                                                        \ 
//  163       :                                                                        \ 
//  164       (                                                                        \ 
//  165           ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_4VREFINT)                \ 
//  166        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_1_2VREFINT)                \ 
//  167        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_3_4VREFINT)                \ 
//  168        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_VREFINT)                   \ 
//  169        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH1)                  \ 
//  170        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_DAC1_CH2)                  \ 
//  171        || ((__INPUT_MINUS__) == LL_COMP_INPUT_MINUS_IO1)                       \ 
//  172       )                                                                        \ 
//  173   )
//  174 
//  175 #define IS_LL_COMP_OUTPUT_SELECTION(__OUTPUT_SELECTION__)                      \ 
//  176   (   ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_NONE)                          \ 
//  177    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM2_IC4)                      \ 
//  178    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM2_OCREFCLR)                 \ 
//  179    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM3_IC4)                      \ 
//  180    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM3_OCREFCLR)                 \ 
//  181    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM4_IC4)                      \ 
//  182    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM4_OCREFCLR)                 \ 
//  183    || ((__OUTPUT_SELECTION__) == LL_COMP_OUTPUT_TIM10_IC1)                     \ 
//  184   )
//  185 
//  186 /**
//  187   * @}
//  188   */
//  189 
//  190 
//  191 /* Private function prototypes -----------------------------------------------*/
//  192 
//  193 /* Exported functions --------------------------------------------------------*/
//  194 /** @addtogroup COMP_LL_Exported_Functions
//  195   * @{
//  196   */
//  197 
//  198 /** @addtogroup COMP_LL_EF_Init
//  199   * @{
//  200   */
//  201 
//  202 /**
//  203   * @brief  De-initialize registers of the selected COMP instance
//  204   *         to their default reset values.
//  205   * @note   If comparator is locked, de-initialization by software is
//  206   *         not possible.
//  207   *         The only way to unlock the comparator is a device hardware reset.
//  208   * @param  COMPx COMP instance
//  209   * @retval An ErrorStatus enumeration value:
//  210   *          - SUCCESS: COMP registers are de-initialized
//  211   *          - ERROR: COMP registers are not de-initialized
//  212   */
//  213 ErrorStatus LL_COMP_DeInit(COMP_TypeDef *COMPx)
//  214 {
//  215   ErrorStatus status = SUCCESS;
//  216   
//  217   /* Check the parameters */
//  218   assert_param(IS_COMP_ALL_INSTANCE(COMPx));
//  219   
//  220     /* Note: On this STM32 serie, only COMP instance COMP2 has                */
//  221     /*       features settables: power mode, input minus selection            */
//  222     /*       and output selection.                                            */
//  223     /* Note: On this STM32 serie, setting COMP instance COMP2 input minus     */
//  224     /*       is enabling the comparator.                                      */
//  225     /*       Reset COMP2 input minus also disable the comparator.             */
//  226     /* Note: In case of de-initialization of COMP instance COMP1:             */
//  227     /*       Switch COMP_CSR_SW1 is not modified because can be used          */
//  228     /*       to connect OPAMP3 to ADC.                                        */
//  229     /*       Switches RI_ASCR1_VCOMP, RI_ASCR1_SCM are reset: let routing     */
//  230     /*       interface under control of ADC.                                  */
//  231     if(COMPx == COMP1)
//  232     {
//  233       CLEAR_BIT(COMP->CSR,
//  234                 (  COMP_CSR_CMP1EN
//  235                  | COMP_CSR_10KPU
//  236                  | COMP_CSR_400KPU
//  237                  | COMP_CSR_10KPD
//  238                  | COMP_CSR_400KPD
//  239                 ) 
//  240                );
//  241     }
//  242     else
//  243     {
//  244       CLEAR_BIT(COMP->CSR,
//  245                 (  COMP_CSR_SPEED
//  246                  | COMP_CSR_INSEL
//  247                  | COMP_CSR_OUTSEL
//  248                 ) 
//  249                );
//  250     }
//  251     
//  252     /* Set comparator input plus */
//  253     LL_COMP_SetInputPlus(COMPx, LL_COMP_INPUT_PLUS_NONE);
//  254     
//  255   return status;
//  256 }
//  257 
//  258 /**
//  259   * @brief  Initialize some features of COMP instance.
//  260   * @note   This function configures features of the selected COMP instance.
//  261   *         Some features are also available at scope COMP common instance
//  262   *         (common to several COMP instances).
//  263   *         Refer to functions having argument "COMPxy_COMMON" as parameter.
//  264   * @param  COMPx COMP instance
//  265   * @param  COMP_InitStruct Pointer to a @ref LL_COMP_InitTypeDef structure
//  266   * @retval An ErrorStatus enumeration value:
//  267   *          - SUCCESS: COMP registers are initialized
//  268   *          - ERROR: COMP registers are not initialized
//  269   */
//  270 ErrorStatus LL_COMP_Init(COMP_TypeDef *COMPx, LL_COMP_InitTypeDef *COMP_InitStruct)
//  271 {
//  272   ErrorStatus status = SUCCESS;
//  273   
//  274   /* Check the parameters */
//  275   assert_param(IS_COMP_ALL_INSTANCE(COMPx));
//  276   if(COMPx == COMP2)
//  277   {
//  278     assert_param(IS_LL_COMP_POWER_MODE(COMP_InitStruct->PowerMode));
//  279     assert_param(IS_LL_COMP_INPUT_MINUS(COMPx, COMP_InitStruct->InputMinus));
//  280     assert_param(IS_LL_COMP_OUTPUT_SELECTION(COMP_InitStruct->OutputSelection));
//  281   }
//  282   assert_param(IS_LL_COMP_INPUT_PLUS(COMPx, COMP_InitStruct->InputPlus));
//  283   
//  284     /* Configuration of comparator instance :                                 */
//  285     /*  - PowerMode                                                           */
//  286     /*  - InputPlus                                                           */
//  287     /*  - InputMinus                                                          */
//  288     /*  - OutputSelection                                                     */
//  289     /* Note: On this STM32 serie, only COMP instance COMP2 has                */
//  290     /*       features settables: power mode, input minus selection            */
//  291     /*       and output selection.                                            */
//  292     /* Note: On this STM32 serie, setting COMP instance COMP2 input minus     */
//  293     /*       is enabling the comparator.                                      */
//  294     if(COMPx == COMP2)
//  295     {
//  296       MODIFY_REG(COMP->CSR,
//  297                    COMP_CSR_SPEED
//  298                  | COMP_CSR_INSEL
//  299                  | COMP_CSR_OUTSEL
//  300                 ,
//  301                    COMP_InitStruct->PowerMode
//  302                  | COMP_InitStruct->InputMinus
//  303                  | COMP_InitStruct->OutputSelection
//  304                 );
//  305     }
//  306     
//  307     /* Set comparator input plus */
//  308     LL_COMP_SetInputPlus(COMPx, COMP_InitStruct->InputPlus);
//  309     
//  310   return status;
//  311 }
//  312 
//  313 /**
//  314   * @brief Set each @ref LL_COMP_InitTypeDef field to default value.
//  315   * @param COMP_InitStruct: pointer to a @ref LL_COMP_InitTypeDef structure
//  316   *                         whose fields will be set to default values.
//  317   * @retval None
//  318   */
//  319 void LL_COMP_StructInit(LL_COMP_InitTypeDef *COMP_InitStruct)
//  320 {
//  321   /* Set COMP_InitStruct fields to default values */
//  322   COMP_InitStruct->PowerMode            = LL_COMP_POWERMODE_ULTRALOWPOWER;
//  323   COMP_InitStruct->InputPlus            = LL_COMP_INPUT_PLUS_IO1;
//  324   COMP_InitStruct->InputMinus           = LL_COMP_INPUT_MINUS_VREFINT;
//  325   COMP_InitStruct->OutputSelection      = LL_COMP_OUTPUT_NONE;
//  326 }
//  327 
//  328 /**
//  329   * @}
//  330   */
//  331 
//  332 /**
//  333   * @}
//  334   */
//  335 
//  336 /**
//  337   * @}
//  338   */
//  339 
//  340 #endif /* COMP1 || COMP2 */
//  341 
//  342 /**
//  343   * @}
//  344   */
//  345 
//  346 #endif /* USE_FULL_LL_DRIVER */
//  347 
//  348 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
