///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_iwdg.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_iwdg.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_iwdg.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_iwdg.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_iwdg.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   IWDG HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Independent Watchdog (IWDG) peripheral:
//   10   *           + Initialization and Start functions
//   11   *           + IO operation functions
//   12   *
//   13   @verbatim
//   14   ==============================================================================
//   15                     ##### IWDG Generic features #####
//   16   ==============================================================================
//   17   [..]
//   18     (+) The IWDG can be started by either software or hardware (configurable
//   19         through option byte).
//   20 
//   21     (+) The IWDG is clocked by Low-Speed clock (LSI) and thus stays active even
//   22         if the main clock fails.
//   23 
//   24     (+) Once the IWDG is started, the LSI is forced ON and both can not be 
//   25         disabled. The counter starts counting down from the reset value (0xFFF).
//   26         When it reaches the end of count value (0x000) a reset signal is 
//   27         generated (IWDG reset).
//   28 
//   29     (+) Whenever the key value 0x0000 AAAA is written in the IWDG_KR register, 
//   30         the IWDG_RLR value is reloaded in the counter and the watchdog reset is
//   31         prevented.
//   32 
//   33     (+) The IWDG is implemented in the VDD voltage domain that is still functional
//   34         in STOP and STANDBY mode (IWDG reset can wake-up from STANDBY).
//   35         IWDGRST flag in RCC_CSR register can be used to inform when an IWDG
//   36         reset occurs.
//   37 
//   38     (+) Debug mode : When the microcontroller enters debug mode (core halted),
//   39         the IWDG counter either continues to work normally or stops, depending 
//   40         on DBG_IWDG_STOP configuration bit in DBG module, accessible through
//   41         __HAL_DBGMCU_FREEZE_IWDG() and __HAL_DBGMCU_UNFREEZE_IWDG() macros
//   42 
//   43     (+) Min-max timeout value @37KHz (LSI): ~108us / ~28.3s
//   44          The IWDG timeout may vary due to LSI frequency dispersion. STM32L1xx
//   45          devices provide the capability to measure the LSI frequency (LSI clock
//   46          connected internally to TIM10 CH1 input capture). The measured value
//   47          can be used to have an IWDG timeout with an acceptable accuracy. 
//   48          For more information, please refer to the STM32L1xx Reference manual.
//   49 
//   50                      ##### How to use this driver #####
//   51   ==============================================================================
//   52   [..]
//   53     (#) Use IWDG using HAL_IWDG_Init() function to :
//   54       (++) Enable instance by writing Start keyword in IWDG_KEY register. LSI 
//   55            clock is forced ON and IWDG counter starts downcounting.
//   56       (++) Enable write access to configuration register: IWDG_PR, IWDG_RLR.
//   57       (++) Configure the IWDG prescaler and counter reload value. This reload 
//   58            value will be loaded in the IWDG counter each time the watchdog is 
//   59            reloaded, then the IWDG will start counting down from this value.
//   60       (++) wait for status flags to be reset"
//   61 
//   62     (#) Then the application program must refresh the IWDG counter at regular
//   63         intervals during normal operation to prevent an MCU reset, using
//   64         HAL_IWDG_Refresh() function.
//   65 
//   66      *** IWDG HAL driver macros list ***
//   67      ====================================
//   68      [..]
//   69        Below the list of most used macros in IWDG HAL driver:
//   70       (+) __HAL_IWDG_START: Enable the IWDG peripheral
//   71       (+) __HAL_IWDG_RELOAD_COUNTER: Reloads IWDG counter with value defined in
//   72           the reload register
//   73 
//   74   @endverbatim
//   75   ******************************************************************************
//   76   * @attention
//   77   *
//   78   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   79   *
//   80   * Redistribution and use in source and binary forms, with or without modification,
//   81   * are permitted provided that the following conditions are met:
//   82   *   1. Redistributions of source code must retain the above copyright notice,
//   83   *      this list of conditions and the following disclaimer.
//   84   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   85   *      this list of conditions and the following disclaimer in the documentation
//   86   *      and/or other materials provided with the distribution.
//   87   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   88   *      may be used to endorse or promote products derived from this software
//   89   *      without specific prior written permission.
//   90   *
//   91   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   92   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   93   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   94   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   95   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   96   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   97   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   98   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   99   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  100   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  101   *
//  102   ******************************************************************************
//  103   */
//  104 
//  105 /* Includes ------------------------------------------------------------------*/
//  106 #include "stm32l1xx_hal.h"
//  107 
//  108 /** @addtogroup STM32L1xx_HAL_Driver
//  109   * @{
//  110   */
//  111 
//  112 #ifdef HAL_IWDG_MODULE_ENABLED
//  113 /** @addtogroup IWDG
//  114   * @brief IWDG HAL module driver.
//  115   * @{
//  116   */
//  117 
//  118 /* Private typedef -----------------------------------------------------------*/
//  119 /* Private define ------------------------------------------------------------*/
//  120 /** @defgroup IWDG_Private_Defines IWDG Private Defines
//  121   * @{
//  122   */
//  123 /* Status register need 5 RC LSI divided by prescaler clock to be updated. With 
//  124    higher prescaler (256), and according to HSI variation, we need to wait at 
//  125    least 6 cycles so 48 ms. */
//  126 #define HAL_IWDG_DEFAULT_TIMEOUT            48u
//  127 /**
//  128   * @}
//  129   */
//  130 
//  131 /* Private macro -------------------------------------------------------------*/
//  132 /* Private variables ---------------------------------------------------------*/
//  133 /* Private function prototypes -----------------------------------------------*/
//  134 /* Exported functions --------------------------------------------------------*/
//  135 
//  136 /** @addtogroup IWDG_Exported_Functions
//  137   * @{
//  138   */
//  139 
//  140 /** @addtogroup IWDG_Exported_Functions_Group1
//  141  *  @brief    Initialization and Start functions.
//  142  *
//  143 @verbatim
//  144  ===============================================================================
//  145           ##### Initialization and Start functions #####
//  146  ===============================================================================
//  147  [..]  This section provides functions allowing to:
//  148       (+) Initialize the IWDG according to the specified parameters in the 
//  149           IWDG_InitTypeDef of associated handle.
//  150       (+) Once initialization is performed in HAL_IWDG_Init function, Watchdog 
//  151           is reloaded in order to exit function with correct time base.
//  152 
//  153 @endverbatim
//  154   * @{
//  155   */
//  156 
//  157 /**
//  158   * @brief  Initialize the IWDG according to the specified parameters in the 
//  159   *         IWDG_InitTypeDef and start watchdog. Before exiting function, 
//  160   *         watchdog is refreshed in order to have correct time base.
//  161   * @param  hiwdg  pointer to a IWDG_HandleTypeDef structure that contains
//  162   *                the configuration information for the specified IWDG module.
//  163   * @retval HAL status
//  164   */
//  165 HAL_StatusTypeDef HAL_IWDG_Init(IWDG_HandleTypeDef *hiwdg)
//  166 {
//  167   uint32_t tickstart;
//  168 
//  169   /* Check the IWDG handle allocation */
//  170   if(hiwdg == NULL)
//  171   {
//  172     return HAL_ERROR;
//  173   }
//  174 
//  175   /* Check the parameters */
//  176   assert_param(IS_IWDG_ALL_INSTANCE(hiwdg->Instance));
//  177   assert_param(IS_IWDG_PRESCALER(hiwdg->Init.Prescaler));
//  178   assert_param(IS_IWDG_RELOAD(hiwdg->Init.Reload));
//  179 
//  180   /* Enable IWDG. LSI is turned on automaticaly */
//  181   __HAL_IWDG_START(hiwdg);
//  182 
//  183   /* Enable write access to IWDG_PR, IWDG_RLR registers by writing
//  184   0x5555 in KR */
//  185   IWDG_ENABLE_WRITE_ACCESS(hiwdg);
//  186 
//  187   /* Write to IWDG registers the Prescaler & Reload values to work with */
//  188   hiwdg->Instance->PR = hiwdg->Init.Prescaler;
//  189   hiwdg->Instance->RLR = hiwdg->Init.Reload;
//  190 
//  191   /* Check pending flag, if previous update not done, return timeout */
//  192   tickstart = HAL_GetTick();
//  193 
//  194    /* Wait for register to be updated */
//  195   while(hiwdg->Instance->SR != RESET)
//  196   {
//  197     if((HAL_GetTick() - tickstart ) > HAL_IWDG_DEFAULT_TIMEOUT)
//  198     {
//  199       return HAL_TIMEOUT;
//  200     }
//  201   }
//  202 
//  203   /* Reload IWDG counter with value defined in the reload register */
//  204   __HAL_IWDG_RELOAD_COUNTER(hiwdg);
//  205 
//  206   /* Return function status */
//  207   return HAL_OK;
//  208 }
//  209 
//  210 /**
//  211   * @}
//  212   */
//  213 
//  214 
//  215 /** @addtogroup IWDG_Exported_Functions_Group2
//  216  *  @brief   IO operation functions
//  217  *
//  218 @verbatim
//  219  ===============================================================================
//  220                       ##### IO operation functions #####
//  221  ===============================================================================
//  222  [..]  This section provides functions allowing to:
//  223       (+) Refresh the IWDG.
//  224 
//  225 @endverbatim
//  226   * @{
//  227   */
//  228 
//  229 
//  230 /**
//  231   * @brief  Refresh the IWDG.
//  232   * @param  hiwdg  pointer to a IWDG_HandleTypeDef structure that contains
//  233   *                the configuration information for the specified IWDG module.
//  234   * @retval HAL status
//  235   */
//  236 HAL_StatusTypeDef HAL_IWDG_Refresh(IWDG_HandleTypeDef *hiwdg)
//  237 {
//  238   /* Reload IWDG counter with value defined in the reload register */
//  239   __HAL_IWDG_RELOAD_COUNTER(hiwdg);
//  240 
//  241   /* Return function status */
//  242   return HAL_OK;
//  243 }
//  244 
//  245 /**
//  246   * @}
//  247   */
//  248 
//  249 /**
//  250   * @}
//  251   */
//  252 
//  253 #endif /* HAL_IWDG_MODULE_ENABLED */
//  254 /**
//  255   * @}
//  256   */
//  257 
//  258 /**
//  259   * @}
//  260   */
//  261 
//  262 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
//  263 
// 
//
// 
//
//
//Errors: none
//Warnings: none
