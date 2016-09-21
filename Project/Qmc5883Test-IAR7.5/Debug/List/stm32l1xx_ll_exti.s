///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_exti.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_exti.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_exti.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_exti.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_exti.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   EXTI LL module driver.
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
//   40 #include "stm32l1xx_ll_exti.h"
//   41 #ifdef  USE_FULL_ASSERT
//   42 #include "stm32_assert.h"
//   43 #else
//   44 #define assert_param(expr) ((void)0U)
//   45 #endif
//   46 
//   47 /** @addtogroup STM32L1xx_LL_Driver
//   48   * @{
//   49   */
//   50 
//   51 #if defined (EXTI)
//   52 
//   53 /** @defgroup EXTI_LL EXTI
//   54   * @{
//   55   */
//   56 
//   57 /* Private types -------------------------------------------------------------*/
//   58 /* Private variables ---------------------------------------------------------*/
//   59 /* Private constants ---------------------------------------------------------*/
//   60 /* Private macros ------------------------------------------------------------*/
//   61 /** @addtogroup EXTI_LL_Private_Macros
//   62   * @{
//   63   */
//   64 
//   65 #define IS_LL_EXTI_LINE_0_31(__VALUE__)              (((__VALUE__) & ~LL_EXTI_LINE_ALL_0_31) == 0x00000000U)
//   66 
//   67 #define IS_LL_EXTI_MODE(__VALUE__)                   (((__VALUE__) == LL_EXTI_MODE_IT)            \ 
//   68                                                    || ((__VALUE__) == LL_EXTI_MODE_EVENT)         \ 
//   69                                                    || ((__VALUE__) == LL_EXTI_MODE_IT_EVENT))
//   70 
//   71 
//   72 #define IS_LL_EXTI_TRIGGER(__VALUE__)                (((__VALUE__) == LL_EXTI_TRIGGER_NONE)       \ 
//   73                                                    || ((__VALUE__) == LL_EXTI_TRIGGER_RISING)     \ 
//   74                                                    || ((__VALUE__) == LL_EXTI_TRIGGER_FALLING)    \ 
//   75                                                    || ((__VALUE__) == LL_EXTI_TRIGGER_RISING_FALLING))
//   76 
//   77 /**
//   78   * @}
//   79   */
//   80 
//   81 /* Private function prototypes -----------------------------------------------*/
//   82 
//   83 /* Exported functions --------------------------------------------------------*/
//   84 /** @addtogroup EXTI_LL_Exported_Functions
//   85   * @{
//   86   */
//   87 
//   88 /** @addtogroup EXTI_LL_EF_Init
//   89   * @{
//   90   */
//   91 
//   92 /**
//   93   * @brief  De-initialize the EXTI registers to their default reset values.
//   94   * @retval An ErrorStatus enumeration value:
//   95   *          - SUCCESS: EXTI registers are de-initialized
//   96   *          - ERROR: not applicable
//   97   */
//   98 uint32_t LL_EXTI_DeInit(void)
//   99 {
//  100   /* Interrupt mask register set to default reset values */
//  101   LL_EXTI_WriteReg(IMR,   0x00000000U);
//  102   /* Event mask register set to default reset values */
//  103   LL_EXTI_WriteReg(EMR,   0x00000000U);
//  104   /* Rising Trigger selection register set to default reset values */
//  105   LL_EXTI_WriteReg(RTSR,  0x00000000U);
//  106   /* Falling Trigger selection register set to default reset values */
//  107   LL_EXTI_WriteReg(FTSR,  0x00000000U);
//  108   /* Software interrupt event register set to default reset values */
//  109   LL_EXTI_WriteReg(SWIER, 0x00000000U);
//  110   /* Pending register set to default reset values */
//  111   LL_EXTI_WriteReg(PR,    0x00FFFFFFU);
//  112 
//  113   return SUCCESS;
//  114 }
//  115 
//  116 /**
//  117   * @brief  Initialize the EXTI registers according to the specified parameters in EXTI_InitStruct.
//  118   * @param  EXTI_InitStruct pointer to a @ref LL_EXTI_InitTypeDef structure.
//  119   * @retval An ErrorStatus enumeration value:
//  120   *          - SUCCESS: EXTI registers are initialized
//  121   *          - ERROR: not applicable
//  122   */
//  123 uint32_t LL_EXTI_Init(LL_EXTI_InitTypeDef *EXTI_InitStruct)
//  124 {
//  125   ErrorStatus status = SUCCESS;
//  126   /* Check the parameters */
//  127   assert_param(IS_LL_EXTI_LINE_0_31(EXTI_InitStruct->Line_0_31));
//  128   assert_param(IS_FUNCTIONAL_STATE(EXTI_InitStruct->LineCommand));
//  129   assert_param(IS_LL_EXTI_MODE(EXTI_InitStruct->Mode));
//  130 
//  131   /* ENABLE LineCommand */
//  132   if (EXTI_InitStruct->LineCommand != DISABLE)
//  133   {
//  134     assert_param(IS_LL_EXTI_TRIGGER(EXTI_InitStruct->Trigger));
//  135 
//  136     /* Configure EXTI Lines in range from 0 to 31 */
//  137     if (EXTI_InitStruct->Line_0_31 != LL_EXTI_LINE_NONE)
//  138     {
//  139       switch (EXTI_InitStruct->Mode)
//  140       {
//  141         case LL_EXTI_MODE_IT:
//  142           /* First Disable Event on provided Lines */
//  143           LL_EXTI_DisableEvent_0_31(EXTI_InitStruct->Line_0_31);
//  144           /* Then Enable IT on provided Lines */
//  145           LL_EXTI_EnableIT_0_31(EXTI_InitStruct->Line_0_31);
//  146           break;
//  147         case LL_EXTI_MODE_EVENT:
//  148           /* First Disable IT on provided Lines */
//  149           LL_EXTI_DisableIT_0_31(EXTI_InitStruct->Line_0_31);
//  150           /* Then Enable Event on provided Lines */
//  151           LL_EXTI_EnableEvent_0_31(EXTI_InitStruct->Line_0_31);
//  152           break;
//  153         case LL_EXTI_MODE_IT_EVENT:
//  154           /* Directly Enable IT & Event on provided Lines */
//  155           LL_EXTI_EnableIT_0_31(EXTI_InitStruct->Line_0_31);
//  156           LL_EXTI_EnableEvent_0_31(EXTI_InitStruct->Line_0_31);
//  157           break;
//  158         default:
//  159           status = ERROR;
//  160           break;
//  161       }
//  162       if (EXTI_InitStruct->Trigger != LL_EXTI_TRIGGER_NONE)
//  163       {
//  164         switch (EXTI_InitStruct->Trigger)
//  165         {
//  166           case LL_EXTI_TRIGGER_RISING:
//  167             /* First Disable Falling Trigger on provided Lines */
//  168             LL_EXTI_DisableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  169             /* Then Enable Rising Trigger on provided Lines */
//  170             LL_EXTI_EnableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  171             break;
//  172           case LL_EXTI_TRIGGER_FALLING:
//  173             /* First Disable Rising Trigger on provided Lines */
//  174             LL_EXTI_DisableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  175             /* Then Enable Falling Trigger on provided Lines */
//  176             LL_EXTI_EnableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  177             break;
//  178           case LL_EXTI_TRIGGER_RISING_FALLING:
//  179             LL_EXTI_EnableRisingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  180             LL_EXTI_EnableFallingTrig_0_31(EXTI_InitStruct->Line_0_31);
//  181             break;
//  182           default:
//  183             status = ERROR;
//  184             break;
//  185         }
//  186       }
//  187     }
//  188   }
//  189   /* DISABLE LineCommand */
//  190   else
//  191   {
//  192     /* De-configure EXTI Lines in range from 0 to 31 */
//  193     LL_EXTI_DisableIT_0_31(EXTI_InitStruct->Line_0_31);
//  194     LL_EXTI_DisableEvent_0_31(EXTI_InitStruct->Line_0_31);
//  195   }
//  196   return status;
//  197 }
//  198 
//  199 /**
//  200   * @brief  Set each @ref LL_EXTI_InitTypeDef field to default value.
//  201   * @param  EXTI_InitStruct Pointer to a @ref LL_EXTI_InitTypeDef structure.
//  202   * @retval None
//  203   */
//  204 void LL_EXTI_StructInit(LL_EXTI_InitTypeDef *EXTI_InitStruct)
//  205 {
//  206   EXTI_InitStruct->Line_0_31      = LL_EXTI_LINE_NONE;
//  207   EXTI_InitStruct->LineCommand    = DISABLE;
//  208   EXTI_InitStruct->Mode           = LL_EXTI_MODE_IT;
//  209   EXTI_InitStruct->Trigger        = LL_EXTI_TRIGGER_FALLING;
//  210 }
//  211 
//  212 /**
//  213   * @}
//  214   */
//  215 
//  216 /**
//  217   * @}
//  218   */
//  219 
//  220 /**
//  221   * @}
//  222   */
//  223 
//  224 #endif /* defined (EXTI) */
//  225 
//  226 /**
//  227   * @}
//  228   */
//  229 
//  230 #endif /* USE_FULL_LL_DRIVER */
//  231 
//  232 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
