///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_wwdg.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_wwdg.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_wwdg.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_wwdg.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_wwdg.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   WWDG HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Window Watchdog (WWDG) peripheral:
//   10   *           + Initialization and Configuration function
//   11   *           + IO operation functions
//   12   @verbatim
//   13   ==============================================================================
//   14                       ##### WWDG specific features #####
//   15   ==============================================================================
//   16   [..]
//   17     Once enabled the WWDG generates a system reset on expiry of a programmed
//   18     time period, unless the program refreshes the counter (T[6;0] downcounter)
//   19     before reaching 0x3F value (i.e. a reset is generated when the counter
//   20     value rolls over from 0x40 to 0x3F).
//   21 
//   22     (+) An MCU reset is also generated if the counter value is refreshed
//   23         before the counter has reached the refresh window value. This
//   24         implies that the counter must be refreshed in a limited window.
//   25 
//   26     (+) Once enabled the WWDG cannot be disabled except by a system reset.
//   27 
//   28     (+) WWDGRST flag in RCC_CSR register informs when a WWDG reset has 
//   29         occurred (check available with __HAL_RCC_GET_FLAG(RCC_FLAG_WWDGRST)).
//   30 
//   31     (+) The WWDG downcounter input clock is derived from the APB clock divided
//   32         by a programmable prescaler.
//   33 
//   34     (+) WWDG downcounter clock (Hz) = PCLK1 / (4096 * Prescaler)
//   35 
//   36     (+) WWDG timeout (ms) = (1000 * (T[5;0] + 1)) / (WWDG downcounter clock)
//   37         where T[5;0] are the lowest 6 bits of downcounter.
//   38 
//   39     (+) WWDG Counter refresh is allowed between the following limits :
//   40         (++) min time (ms) = (1000 * (T[5;0] - Window)) / (WWDG downcounter clock)
//   41         (++) max time (ms) = (1000 * (T[5;0] - 0x40)) / (WWDG downcounter clock)
//   42 
//   43     (+) Min-max timeout value @80 MHz(PCLK1): ~51.2 us / ~26.22 ms
//   44 
//   45     (+) The Early Wakeup Interrupt (EWI) can be used if specific safety 
//   46         operations or data logging must be performed before the actual reset is
//   47         generated. When the downcounter reaches the value 0x40, an EWI interrupt
//   48         is generated and the corresponding interrupt service routine (ISR) can 
//   49         be used to trigger specific actions (such as communications or data 
//   50         logging), before resetting the device.
//   51         In some applications, the EWI interrupt can be used to manage a software
//   52         system check and/or system recovery/graceful degradation, without 
//   53         generating a WWDG reset. In this case, the corresponding interrupt 
//   54         service routine (ISR) should reload the WWDG counter to avoid the WWDG 
//   55         reset, then trigger the required actions.
//   56         Note:When the EWI interrupt cannot be served, e.g. due to a system lock 
//   57         in a higher priority task, the WWDG reset will eventually be generated.
//   58 
//   59     (+) Debug mode : When the microcontroller enters debug mode (core halted),
//   60         the WWDG counter either continues to work normally or stops, depending 
//   61         on DBG_WWDG_STOP configuration bit in DBG module, accessible through
//   62         __HAL_DBGMCU_FREEZE_WWDG() and __HAL_DBGMCU_UNFREEZE_WWDG() macros
//   63 
//   64                      ##### How to use this driver #####
//   65   ==============================================================================
//   66   [..]
//   67     (+) Enable WWDG APB1 clock using __HAL_RCC_WWDG_CLK_ENABLE().
//   68 
//   69     (+) Set the WWDG prescaler, refresh window, counter value and Early Wakeup 
//   70         Interrupt mode using using HAL_WWDG_Init() function.
//   71         This enables WWDG peripheral and the downcounter starts downcounting 
//   72         from given counter value.
//   73         Init function can be called again to modify all watchdog parameters, 
//   74         however if EWI mode has been set once, it can't be clear until next 
//   75         reset.
//   76 
//   77     (+) The application program must refresh the WWDG counter at regular
//   78         intervals during normal operation to prevent an MCU reset using
//   79         HAL_WWDG_Refresh() function. This operation must occur only when
//   80         the counter is lower than the window value already programmed.
//   81 
//   82     (+) if Early Wakeup Interrupt mode is enable an interrupt is generated when 
//   83         the counter reaches 0x40. User can add his own code in weak function 
//   84         HAL_WWDG_EarlyWakeupCallback().
//   85 
//   86      *** WWDG HAL driver macros list ***
//   87      ==================================
//   88      [..]
//   89        Below the list of most used macros in WWDG HAL driver.
//   90 
//   91       (+) __HAL_WWDG_GET_IT_SOURCE: Check the selected WWDG's interrupt source.
//   92       (+) __HAL_WWDG_GET_FLAG: Get the selected WWDG's flag status.
//   93       (+) __HAL_WWDG_CLEAR_FLAG: Clear the WWDG's pending flags.
//   94 
//   95   @endverbatim
//   96   ******************************************************************************
//   97   * @attention
//   98   *
//   99   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  100   *
//  101   * Redistribution and use in source and binary forms, with or without modification,
//  102   * are permitted provided that the following conditions are met:
//  103   *   1. Redistributions of source code must retain the above copyright notice,
//  104   *      this list of conditions and the following disclaimer.
//  105   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  106   *      this list of conditions and the following disclaimer in the documentation
//  107   *      and/or other materials provided with the distribution.
//  108   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  109   *      may be used to endorse or promote products derived from this software
//  110   *      without specific prior written permission.
//  111   *
//  112   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  113   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  114   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  115   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  116   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  117   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  118   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  119   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  120   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  121   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  122   *
//  123   ******************************************************************************
//  124   */
//  125 
//  126 /* Includes ------------------------------------------------------------------*/
//  127 #include "stm32l1xx_hal.h"
//  128 
//  129 /** @addtogroup STM32L1xx_HAL_Driver
//  130   * @{
//  131   */
//  132 
//  133 #ifdef HAL_WWDG_MODULE_ENABLED
//  134 /** @defgroup WWDG WWDG
//  135   * @brief WWDG HAL module driver.
//  136   * @{
//  137   */
//  138 
//  139 /* Private typedef -----------------------------------------------------------*/
//  140 /* Private define ------------------------------------------------------------*/
//  141 /* Private macro -------------------------------------------------------------*/
//  142 /* Private variables ---------------------------------------------------------*/
//  143 /* Private function prototypes -----------------------------------------------*/
//  144 /* Exported functions --------------------------------------------------------*/
//  145 
//  146 /** @defgroup WWDG_Exported_Functions WWDG Exported Functions
//  147   * @{
//  148   */
//  149 
//  150 /** @defgroup WWDG_Exported_Functions_Group1 Initialization and Configuration functions
//  151  *  @brief    Initialization and Configuration functions.
//  152  *
//  153 @verbatim
//  154   ==============================================================================
//  155           ##### Initialization and Configuration functions #####
//  156   ==============================================================================
//  157   [..]  
//  158     This section provides functions allowing to:
//  159       (+) Initialize and start the WWDG according to the specified parameters
//  160           in the WWDG_InitTypeDef of associated handle.
//  161       (+) Initialize the WWDG MSP.
//  162 
//  163 @endverbatim
//  164   * @{
//  165   */
//  166 
//  167 /**
//  168   * @brief  Initialize the WWDG according to the specified.
//  169   *         parameters in the WWDG_InitTypeDef of  associated handle.
//  170   * @param  hwwdg  pointer to a WWDG_HandleTypeDef structure that contains
//  171   *                the configuration information for the specified WWDG module.
//  172   * @retval HAL status
//  173   */
//  174 HAL_StatusTypeDef HAL_WWDG_Init(WWDG_HandleTypeDef *hwwdg)
//  175 {
//  176   /* Check the WWDG handle allocation */
//  177   if(hwwdg == NULL)
//  178   {
//  179     return HAL_ERROR;
//  180   }
//  181 
//  182   /* Check the parameters */
//  183   assert_param(IS_WWDG_ALL_INSTANCE(hwwdg->Instance));
//  184   assert_param(IS_WWDG_PRESCALER(hwwdg->Init.Prescaler));
//  185   assert_param(IS_WWDG_WINDOW(hwwdg->Init.Window));
//  186   assert_param(IS_WWDG_COUNTER(hwwdg->Init.Counter));
//  187   assert_param(IS_WWDG_EWI_MODE(hwwdg->Init.EWIMode));
//  188 
//  189   /* Init the low level hardware */
//  190   HAL_WWDG_MspInit(hwwdg);
//  191 
//  192   /* Set WWDG Counter */
//  193   WRITE_REG(hwwdg->Instance->CR, (WWDG_CR_WDGA | hwwdg->Init.Counter));
//  194 
//  195   /* Set WWDG Prescaler and Window */
//  196   WRITE_REG(hwwdg->Instance->CFR, (hwwdg->Init.EWIMode | hwwdg->Init.Prescaler | hwwdg->Init.Window));
//  197 
//  198   /* Return function status */
//  199   return HAL_OK;
//  200 }
//  201 
//  202 
//  203 /**
//  204   * @brief  Initialize the WWDG MSP.
//  205   * @param  hwwdg  pointer to a WWDG_HandleTypeDef structure that contains
//  206   *                the configuration information for the specified WWDG module.
//  207   * @note   When rewriting this function in user file, mechanism may be added
//  208   *         to avoid multiple initialize when HAL_WWDG_Init function is called
//  209   *         again to change parameters.
//  210   * @retval None
//  211   */
//  212 __weak void HAL_WWDG_MspInit(WWDG_HandleTypeDef *hwwdg)
//  213 {
//  214   /* Prevent unused argument(s) compilation warning */
//  215   UNUSED(hwwdg);
//  216 
//  217   /* NOTE: This function should not be modified, when the callback is needed,
//  218            the HAL_WWDG_MspInit could be implemented in the user file
//  219    */
//  220 }
//  221 
//  222 /**
//  223   * @}
//  224   */
//  225 
//  226 /** @defgroup WWDG_Exported_Functions_Group2 IO operation functions
//  227  *  @brief    IO operation functions 
//  228  *
//  229 @verbatim
//  230   ==============================================================================
//  231                       ##### IO operation functions #####
//  232   ==============================================================================  
//  233   [..]
//  234     This section provides functions allowing to:
//  235     (+) Refresh the WWDG.
//  236     (+) Handle WWDG interrupt request and associated function callback.
//  237 
//  238 @endverbatim
//  239   * @{
//  240   */
//  241 
//  242 /**
//  243   * @brief  Refresh the WWDG.
//  244   * @param  hwwdg  pointer to a WWDG_HandleTypeDef structure that contains
//  245   *                the configuration information for the specified WWDG module.
//  246   * @retval HAL status
//  247   */
//  248 HAL_StatusTypeDef HAL_WWDG_Refresh(WWDG_HandleTypeDef *hwwdg)
//  249 {
//  250   /* Write to WWDG CR the WWDG Counter value to refresh with */
//  251   WRITE_REG(hwwdg->Instance->CR, (hwwdg->Init.Counter));
//  252 
//  253   /* Return function status */
//  254   return HAL_OK;
//  255 }
//  256 
//  257 /**
//  258   * @brief  Handle WWDG interrupt request.
//  259   * @note   The Early Wakeup Interrupt (EWI) can be used if specific safety operations
//  260   *         or data logging must be performed before the actual reset is generated.
//  261   *         The EWI interrupt is enabled by calling HAL_WWDG_Init function with 
//  262   *         EWIMode set to WWDG_EWI_ENABLE.
//  263   *         When the downcounter reaches the value 0x40, and EWI interrupt is
//  264   *         generated and the corresponding Interrupt Service Routine (ISR) can
//  265   *         be used to trigger specific actions (such as communications or data
//  266   *         logging), before resetting the device.
//  267   * @param  hwwdg  pointer to a WWDG_HandleTypeDef structure that contains
//  268   *                the configuration information for the specified WWDG module.
//  269   * @retval None
//  270   */
//  271 void HAL_WWDG_IRQHandler(WWDG_HandleTypeDef *hwwdg)
//  272 {
//  273   /* Check if Early Wakeup Interrupt is enable */
//  274   if(__HAL_WWDG_GET_IT_SOURCE(hwwdg, WWDG_IT_EWI) != RESET)
//  275   {
//  276     /* Check if WWDG Early Wakeup Interrupt occurred */
//  277     if(__HAL_WWDG_GET_FLAG(hwwdg, WWDG_FLAG_EWIF) != RESET)
//  278     {
//  279       /* Clear the WWDG Early Wakeup flag */
//  280       __HAL_WWDG_CLEAR_FLAG(hwwdg, WWDG_FLAG_EWIF);
//  281 
//  282       /* Early Wakeup callback */ 
//  283       HAL_WWDG_EarlyWakeupCallback(hwwdg);
//  284     }
//  285   }
//  286 }
//  287 
//  288 
//  289 /**
//  290   * @brief  WWDG Early Wakeup callback.
//  291   * @param  hwwdg  pointer to a WWDG_HandleTypeDef structure that contains
//  292   *                the configuration information for the specified WWDG module.
//  293   * @retval None
//  294   */
//  295 __weak void HAL_WWDG_EarlyWakeupCallback(WWDG_HandleTypeDef* hwwdg)
//  296 {
//  297   /* Prevent unused argument(s) compilation warning */
//  298   UNUSED(hwwdg);
//  299 
//  300   /* NOTE: This function should not be modified, when the callback is needed,
//  301            the HAL_WWDG_EarlyWakeupCallback could be implemented in the user file
//  302    */
//  303 }
//  304 
//  305 /**
//  306   * @}
//  307   */
//  308 
//  309 /**
//  310   * @}
//  311   */
//  312 
//  313 #endif /* HAL_WWDG_MODULE_ENABLED */
//  314 /**
//  315   * @}
//  316   */
//  317 
//  318 /**
//  319   * @}
//  320   */
//  321 
//  322 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
