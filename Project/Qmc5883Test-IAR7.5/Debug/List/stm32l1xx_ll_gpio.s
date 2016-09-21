///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_gpio.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_gpio.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_gpio.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_gpio.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_gpio.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   GPIO LL module driver.
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
//   40 #include "stm32l1xx_ll_gpio.h"
//   41 #include "stm32l1xx_ll_bus.h"
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
//   52 #if defined (GPIOA) || defined (GPIOB) || defined (GPIOC) || defined (GPIOD) || defined (GPIOE) || defined (GPIOF) || defined (GPIOG) || defined (GPIOH)
//   53 
//   54 /** @addtogroup GPIO_LL
//   55   * @{
//   56   */
//   57 
//   58 /* Private types -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private constants ---------------------------------------------------------*/
//   61 /* Private macros ------------------------------------------------------------*/
//   62 /** @addtogroup GPIO_LL_Private_Macros
//   63   * @{
//   64   */
//   65 #define IS_LL_GPIO_PIN(__VALUE__)          ((((uint32_t)0x00000000U) < (__VALUE__)) && ((__VALUE__) <= (LL_GPIO_PIN_ALL)))
//   66 
//   67 #define IS_LL_GPIO_MODE(__VALUE__)         (((__VALUE__) == LL_GPIO_MODE_INPUT)     ||\ 
//   68                                             ((__VALUE__) == LL_GPIO_MODE_OUTPUT)    ||\ 
//   69                                             ((__VALUE__) == LL_GPIO_MODE_ALTERNATE) ||\ 
//   70                                             ((__VALUE__) == LL_GPIO_MODE_ANALOG))
//   71 
//   72 #define IS_LL_GPIO_OUTPUT_TYPE(__VALUE__)  (((__VALUE__) == LL_GPIO_OUTPUT_PUSHPULL)  ||\ 
//   73                                             ((__VALUE__) == LL_GPIO_OUTPUT_OPENDRAIN))
//   74 
//   75 #define IS_LL_GPIO_SPEED(__VALUE__)        (((__VALUE__) == LL_GPIO_SPEED_FREQ_LOW)       ||\ 
//   76                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_MEDIUM)    ||\ 
//   77                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_HIGH)      ||\ 
//   78                                             ((__VALUE__) == LL_GPIO_SPEED_FREQ_VERY_HIGH))
//   79 
//   80 #define IS_LL_GPIO_PULL(__VALUE__)         (((__VALUE__) == LL_GPIO_PULL_NO)   ||\ 
//   81                                             ((__VALUE__) == LL_GPIO_PULL_UP)   ||\ 
//   82                                             ((__VALUE__) == LL_GPIO_PULL_DOWN))
//   83 
//   84 #define IS_LL_GPIO_ALTERNATE(__VALUE__)    (((__VALUE__) == LL_GPIO_AF_0  )   ||\ 
//   85                                             ((__VALUE__) == LL_GPIO_AF_1  )   ||\ 
//   86                                             ((__VALUE__) == LL_GPIO_AF_2  )   ||\ 
//   87                                             ((__VALUE__) == LL_GPIO_AF_3  )   ||\ 
//   88                                             ((__VALUE__) == LL_GPIO_AF_4  )   ||\ 
//   89                                             ((__VALUE__) == LL_GPIO_AF_5  )   ||\ 
//   90                                             ((__VALUE__) == LL_GPIO_AF_6  )   ||\ 
//   91                                             ((__VALUE__) == LL_GPIO_AF_7  )   ||\ 
//   92                                             ((__VALUE__) == LL_GPIO_AF_8  )   ||\ 
//   93                                             ((__VALUE__) == LL_GPIO_AF_9  )   ||\ 
//   94                                             ((__VALUE__) == LL_GPIO_AF_10 )   ||\ 
//   95                                             ((__VALUE__) == LL_GPIO_AF_11 )   ||\ 
//   96                                             ((__VALUE__) == LL_GPIO_AF_12 )   ||\ 
//   97                                             ((__VALUE__) == LL_GPIO_AF_13 )   ||\ 
//   98                                             ((__VALUE__) == LL_GPIO_AF_14 )   ||\ 
//   99                                             ((__VALUE__) == LL_GPIO_AF_15 ))
//  100 /**
//  101   * @}
//  102   */
//  103 
//  104 /* Private function prototypes -----------------------------------------------*/
//  105 
//  106 /* Exported functions --------------------------------------------------------*/
//  107 /** @addtogroup GPIO_LL_Exported_Functions
//  108   * @{
//  109   */
//  110 
//  111 /** @addtogroup GPIO_LL_EF_Init
//  112   * @{
//  113   */
//  114 
//  115 /**
//  116   * @brief  De-initialize GPIO registers (Registers restored to their default values).
//  117   * @param  GPIOx GPIO Port
//  118   * @retval An ErrorStatus enumeration value:
//  119   *          - SUCCESS: GPIO registers are de-initialized
//  120   *          - ERROR:   Wrong GPIO Port
//  121   */
//  122 ErrorStatus LL_GPIO_DeInit(GPIO_TypeDef *GPIOx)
//  123 {
//  124   ErrorStatus status = SUCCESS;
//  125 
//  126   /* Check the parameters */
//  127   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  128 
//  129   /* Force and Release reset on clock of GPIOx Port */
//  130   if (GPIOx == GPIOA)
//  131   {
//  132     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOA);
//  133     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOA);
//  134   }
//  135   else if (GPIOx == GPIOB)
//  136   {
//  137     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOB);
//  138     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOB);
//  139   }
//  140   else if (GPIOx == GPIOC)
//  141   {
//  142     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOC);
//  143     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOC);
//  144   }
//  145 #if defined(GPIOD)
//  146   else if (GPIOx == GPIOD)
//  147   {
//  148     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOD);
//  149     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOD);
//  150   }
//  151 #endif /* GPIOD */
//  152 #if defined(GPIOE)
//  153   else if (GPIOx == GPIOE)
//  154   {
//  155     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOE);
//  156     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOE);
//  157   }
//  158 #endif /* GPIOE */
//  159 #if defined(GPIOF)
//  160   else if (GPIOx == GPIOF)
//  161   {
//  162     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOF);
//  163     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOF);
//  164   }
//  165 #endif /* GPIOF */
//  166 #if defined(GPIOG)
//  167   else if (GPIOx == GPIOG)
//  168   {
//  169     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOG);
//  170     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOG);
//  171   }
//  172 #endif /* GPIOG */
//  173 #if defined(GPIOH)
//  174   else if (GPIOx == GPIOH)
//  175   {
//  176     LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_GPIOH);
//  177     LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_GPIOH);
//  178   }
//  179 #endif /* GPIOH */
//  180   else
//  181   {
//  182     status = ERROR;
//  183   }
//  184 
//  185   return (status);
//  186 }
//  187 
//  188 /**
//  189   * @brief  Initialize GPIO registers according to the specified parameters in GPIO_InitStruct.
//  190   * @param  GPIOx GPIO Port
//  191   * @param  GPIO_InitStruct: pointer to a @ref LL_GPIO_InitTypeDef structure
//  192   *         that contains the configuration information for the specified GPIO peripheral.
//  193   * @retval An ErrorStatus enumeration value:
//  194   *          - SUCCESS: GPIO registers are initialized according to GPIO_InitStruct content
//  195   *          - ERROR:   Not applicable
//  196   */
//  197 ErrorStatus LL_GPIO_Init(GPIO_TypeDef *GPIOx, LL_GPIO_InitTypeDef *GPIO_InitStruct)
//  198 {
//  199   uint32_t pinpos     = 0x00000000U;
//  200   uint32_t currentpin = 0x00000000U;
//  201 
//  202   /* Check the parameters */
//  203   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  204   assert_param(IS_LL_GPIO_PIN(GPIO_InitStruct->Pin));
//  205   assert_param(IS_LL_GPIO_MODE(GPIO_InitStruct->Mode));
//  206   assert_param(IS_LL_GPIO_PULL(GPIO_InitStruct->Pull));
//  207 
//  208   /* ------------------------- Configure the port pins ---------------- */
//  209   /* Initialize  pinpos on first pin set */
//  210   pinpos = POSITION_VAL(GPIO_InitStruct->Pin);
//  211 
//  212   /* Configure the port pins */
//  213   while (((GPIO_InitStruct->Pin) >> pinpos) != 0x00000000U)
//  214   {
//  215     /* Get current io position */
//  216     currentpin = (GPIO_InitStruct->Pin) & (0x00000001U << pinpos);
//  217 
//  218     if (currentpin)
//  219     {
//  220       /* Pin Mode configuration */
//  221       LL_GPIO_SetPinMode(GPIOx, currentpin, GPIO_InitStruct->Mode);
//  222 
//  223       if ((GPIO_InitStruct->Mode == LL_GPIO_MODE_OUTPUT) || (GPIO_InitStruct->Mode == LL_GPIO_MODE_ALTERNATE))
//  224       {
//  225         /* Check Speed mode parameters */
//  226         assert_param(IS_LL_GPIO_SPEED(GPIO_InitStruct->Speed));
//  227 
//  228         /* Speed mode configuration */
//  229         LL_GPIO_SetPinSpeed(GPIOx, currentpin, GPIO_InitStruct->Speed);
//  230       }
//  231 
//  232       /* Pull-up Pull down resistor configuration*/
//  233       LL_GPIO_SetPinPull(GPIOx, currentpin, GPIO_InitStruct->Pull);
//  234 
//  235       if (GPIO_InitStruct->Mode == LL_GPIO_MODE_ALTERNATE)
//  236       {
//  237         /* Check Alternate parameter */
//  238         assert_param(IS_LL_GPIO_ALTERNATE(GPIO_InitStruct->Alternate));
//  239 
//  240         /* Speed mode configuration */
//  241         if (POSITION_VAL(currentpin) < 0x00000008U)
//  242         {
//  243           LL_GPIO_SetAFPin_0_7(GPIOx, currentpin, GPIO_InitStruct->Alternate);
//  244         }
//  245         else
//  246         {
//  247           LL_GPIO_SetAFPin_8_15(GPIOx, currentpin, GPIO_InitStruct->Alternate);
//  248         }
//  249       }
//  250     }
//  251     pinpos++;
//  252   }
//  253 
//  254   if ((GPIO_InitStruct->Mode == LL_GPIO_MODE_OUTPUT) || (GPIO_InitStruct->Mode == LL_GPIO_MODE_ALTERNATE))
//  255   {
//  256     /* Check Output mode parameters */
//  257     assert_param(IS_LL_GPIO_OUTPUT_TYPE(GPIO_InitStruct->OutputType));
//  258 
//  259     /* Output mode configuration*/
//  260     LL_GPIO_SetPinOutputType(GPIOx, GPIO_InitStruct->Pin, GPIO_InitStruct->OutputType);
//  261 
//  262   }
//  263   return (SUCCESS);
//  264 }
//  265 
//  266 /**
//  267   * @brief Set each @ref LL_GPIO_InitTypeDef field to default value.
//  268   * @param GPIO_InitStruct: pointer to a @ref LL_GPIO_InitTypeDef structure
//  269   *                          whose fields will be set to default values.
//  270   * @retval None
//  271   */
//  272 
//  273 void LL_GPIO_StructInit(LL_GPIO_InitTypeDef *GPIO_InitStruct)
//  274 {
//  275   /* Reset GPIO init structure parameters values */
//  276   GPIO_InitStruct->Pin        = LL_GPIO_PIN_ALL;
//  277   GPIO_InitStruct->Mode       = LL_GPIO_MODE_ANALOG;
//  278   GPIO_InitStruct->Speed      = LL_GPIO_SPEED_FREQ_LOW;
//  279   GPIO_InitStruct->OutputType = LL_GPIO_OUTPUT_PUSHPULL;
//  280   GPIO_InitStruct->Pull       = LL_GPIO_PULL_NO;
//  281   GPIO_InitStruct->Alternate  = LL_GPIO_AF_0;
//  282 }
//  283 
//  284 /**
//  285   * @}
//  286   */
//  287 
//  288 /**
//  289   * @}
//  290   */
//  291 
//  292 /**
//  293   * @}
//  294   */
//  295 
//  296 #endif /* defined (GPIOA) || defined (GPIOB) || defined (GPIOC) || defined (GPIOD) || defined (GPIOE) || defined (GPIOF) || defined (GPIOG) || defined (GPIOH) */
//  297 
//  298 /**
//  299   * @}
//  300   */
//  301 
//  302 #endif /* USE_FULL_LL_DRIVER */
//  303 
//  304 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
//  305 
// 
//
// 
//
//
//Errors: none
//Warnings: none
