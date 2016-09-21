///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_crc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_crc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_crc.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_crc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_crc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   CRC HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Cyclic Redundancy Check (CRC) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + Peripheral Control functions 
//   12   *           + Peripheral State functions
//   13   *
//   14   @verbatim
//   15   ==============================================================================
//   16                      ##### How to use this driver #####
//   17   ==============================================================================
//   18     [..]
//   19       The CRC HAL driver can be used as follows:
//   20 
//   21       (#) Enable CRC AHB clock using __HAL_RCC_CRC_CLK_ENABLE();
//   22 
//   23       (#) Use HAL_CRC_Accumulate() function to compute the CRC value of 
//   24           a 32-bit data buffer using combination of the previous CRC value
//   25           and the new one.
//   26 
//   27       (#) Use HAL_CRC_Calculate() function to compute the CRC Value of 
//   28           a new 32-bit data buffer. This function resets the CRC computation  
//   29           unit before starting the computation to avoid getting wrong CRC values.
//   30 
//   31   @endverbatim
//   32   ******************************************************************************
//   33   * @attention
//   34   *
//   35   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   36   *
//   37   * Redistribution and use in source and binary forms, with or without modification,
//   38   * are permitted provided that the following conditions are met:
//   39   *   1. Redistributions of source code must retain the above copyright notice,
//   40   *      this list of conditions and the following disclaimer.
//   41   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   42   *      this list of conditions and the following disclaimer in the documentation
//   43   *      and/or other materials provided with the distribution.
//   44   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   45   *      may be used to endorse or promote products derived from this software
//   46   *      without specific prior written permission.
//   47   *
//   48   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   49   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   50   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   51   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   52   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   53   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   54   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   55   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   56   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   57   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   58   *
//   59   ******************************************************************************
//   60   */
//   61 
//   62 /* Includes ------------------------------------------------------------------*/
//   63 #include "stm32l1xx_hal.h"
//   64 
//   65 /** @addtogroup STM32L1xx_HAL_Driver
//   66   * @{
//   67   */
//   68 
//   69 /** @defgroup CRC CRC
//   70   * @brief CRC HAL module driver.
//   71   * @{
//   72   */
//   73 
//   74 #ifdef HAL_CRC_MODULE_ENABLED
//   75 
//   76 /* Private typedef -----------------------------------------------------------*/
//   77 /* Private define ------------------------------------------------------------*/
//   78 /* Private macro -------------------------------------------------------------*/
//   79 /* Private variables ---------------------------------------------------------*/
//   80 /* Private function prototypes -----------------------------------------------*/
//   81 /* Private functions ---------------------------------------------------------*/
//   82 
//   83 /** @defgroup CRC_Exported_Functions CRC Exported Functions
//   84   * @{
//   85   */
//   86 
//   87 /** @defgroup CRC_Exported_Functions_Group1 Initialization and de-initialization functions 
//   88  *  @brief    Initialization and Configuration functions. 
//   89  *
//   90 @verbatim    
//   91   ==============================================================================
//   92             ##### Initialization and de-initialization functions #####
//   93   ==============================================================================
//   94     [..]  This section provides functions allowing to:
//   95       (+) Initialize the CRC according to the specified parameters 
//   96           in the CRC_InitTypeDef and create the associated handle
//   97       (+) DeInitialize the CRC peripheral
//   98       (+) Initialize the CRC MSP
//   99       (+) DeInitialize CRC MSP 
//  100  
//  101 @endverbatim
//  102   * @{
//  103   */
//  104 
//  105 /**
//  106   * @brief  Initializes the CRC according to the specified
//  107   *         parameters in the CRC_InitTypeDef and creates the associated handle.
//  108   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  109   *         the configuration information for CRC
//  110   * @retval HAL status
//  111   */
//  112 HAL_StatusTypeDef HAL_CRC_Init(CRC_HandleTypeDef *hcrc)
//  113 {
//  114   /* Check the CRC handle allocation */
//  115   if(hcrc == NULL)
//  116   {
//  117     return HAL_ERROR;
//  118   }
//  119 
//  120   /* Check the parameters */
//  121   assert_param(IS_CRC_ALL_INSTANCE(hcrc->Instance));
//  122 
//  123   if(hcrc->State == HAL_CRC_STATE_RESET)
//  124   {
//  125     /* Allocate lock resource and initialize it */
//  126     hcrc->Lock = HAL_UNLOCKED;
//  127 
//  128     /* Init the low level hardware */
//  129     HAL_CRC_MspInit(hcrc);
//  130   }
//  131   
//  132   /* Change CRC peripheral state */
//  133   hcrc->State = HAL_CRC_STATE_BUSY;
//  134    
//  135   /* Change CRC peripheral state */
//  136   hcrc->State = HAL_CRC_STATE_READY;
//  137   
//  138   /* Return function status */
//  139   return HAL_OK;
//  140 }
//  141 
//  142 /**
//  143   * @brief  DeInitializes the CRC peripheral.
//  144   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  145   *         the configuration information for CRC
//  146   * @retval HAL status
//  147   */
//  148 HAL_StatusTypeDef HAL_CRC_DeInit(CRC_HandleTypeDef *hcrc)
//  149 {
//  150   /* Check the CRC handle allocation */
//  151   if(hcrc == NULL)
//  152   {
//  153     return HAL_ERROR;
//  154   }
//  155 
//  156   /* Check the parameters */
//  157   assert_param(IS_CRC_ALL_INSTANCE(hcrc->Instance));
//  158 
//  159   /* Change CRC peripheral state */
//  160   hcrc->State = HAL_CRC_STATE_BUSY;
//  161   
//  162   /* Reset IDR register content */
//  163   CLEAR_BIT(hcrc->Instance->IDR, CRC_IDR_IDR) ;
//  164 
//  165   /* DeInit the low level hardware */
//  166   HAL_CRC_MspDeInit(hcrc);
//  167 
//  168   /* Change CRC peripheral state */
//  169   hcrc->State = HAL_CRC_STATE_RESET;
//  170 
//  171   /* Release Lock */
//  172   __HAL_UNLOCK(hcrc);
//  173 
//  174   /* Return function status */
//  175   return HAL_OK;
//  176 }
//  177 
//  178 /**
//  179   * @brief  Initializes the CRC MSP.
//  180   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  181   *         the configuration information for CRC
//  182   * @retval None
//  183   */
//  184 __weak void HAL_CRC_MspInit(CRC_HandleTypeDef *hcrc)
//  185 {
//  186   /* Prevent unused argument(s) compilation warning */
//  187   UNUSED(hcrc);
//  188 
//  189   /* NOTE : This function Should not be modified, when the callback is needed,
//  190             the HAL_CRC_MspInit could be implemented in the user file
//  191    */
//  192 }
//  193 
//  194 /**
//  195   * @brief  DeInitializes the CRC MSP.
//  196   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  197   *         the configuration information for CRC
//  198   * @retval None
//  199   */
//  200 __weak void HAL_CRC_MspDeInit(CRC_HandleTypeDef *hcrc)
//  201 {
//  202   /* Prevent unused argument(s) compilation warning */
//  203   UNUSED(hcrc);
//  204 
//  205   /* NOTE : This function Should not be modified, when the callback is needed,
//  206             the HAL_CRC_MspDeInit could be implemented in the user file
//  207    */
//  208 }
//  209 
//  210 /**
//  211   * @}
//  212   */
//  213 
//  214 /** @defgroup CRC_Exported_Functions_Group2 Peripheral Control functions 
//  215  *  @brief    management functions. 
//  216  *
//  217 @verbatim   
//  218   ==============================================================================
//  219                       ##### Peripheral Control functions #####
//  220   ==============================================================================  
//  221     [..]  This section provides functions allowing to:
//  222       (+) Compute the 32-bit CRC value of 32-bit data buffer,
//  223           using combination of the previous CRC value and the new one.
//  224       (+) Compute the 32-bit CRC value of 32-bit data buffer,
//  225           independently of the previous CRC value.
//  226 
//  227 @endverbatim
//  228   * @{
//  229   */
//  230 
//  231 /**
//  232   * @brief  Computes the 32-bit CRC of 32-bit data buffer using combination
//  233   *         of the previous CRC value and the new one.
//  234   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  235   *         the configuration information for CRC
//  236   * @param  pBuffer: pointer to the buffer containing the data to be computed
//  237   * @param  BufferLength: length of the buffer to be computed (defined in word, 4 bytes)
//  238   * @retval 32-bit CRC
//  239   */
//  240 uint32_t HAL_CRC_Accumulate(CRC_HandleTypeDef *hcrc, uint32_t pBuffer[], uint32_t BufferLength)
//  241 {
//  242   uint32_t index = 0;
//  243 
//  244   /* Process Locked */
//  245   __HAL_LOCK(hcrc);
//  246 
//  247   /* Change CRC peripheral state */
//  248   hcrc->State = HAL_CRC_STATE_BUSY;
//  249 
//  250   /* Enter Data to the CRC calculator */
//  251   for(index = 0; index < BufferLength; index++)
//  252   {
//  253     hcrc->Instance->DR = pBuffer[index];
//  254   }
//  255 
//  256   /* Change CRC peripheral state */
//  257   hcrc->State = HAL_CRC_STATE_READY;
//  258 
//  259   /* Process Unlocked */
//  260   __HAL_UNLOCK(hcrc);
//  261 
//  262   /* Return the CRC computed value */
//  263   return hcrc->Instance->DR;
//  264 }
//  265 
//  266 /**
//  267   * @brief  Computes the 32-bit CRC of 32-bit data buffer independently
//  268   *         of the previous CRC value.
//  269   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  270   *         the configuration information for CRC
//  271   * @param  pBuffer: Pointer to the buffer containing the data to be computed
//  272   * @param  BufferLength: Length of the buffer to be computed (defined in word, 4 bytes)
//  273   * @retval 32-bit CRC
//  274   */
//  275 uint32_t HAL_CRC_Calculate(CRC_HandleTypeDef *hcrc, uint32_t pBuffer[], uint32_t BufferLength)
//  276 {
//  277   uint32_t index = 0;
//  278 
//  279   /* Process Locked */
//  280   __HAL_LOCK(hcrc); 
//  281 
//  282   /* Change CRC peripheral state */
//  283   hcrc->State = HAL_CRC_STATE_BUSY;
//  284 
//  285   /* Reset CRC Calculation Unit */
//  286   __HAL_CRC_DR_RESET(hcrc);
//  287 
//  288   /* Enter Data to the CRC calculator */
//  289   for(index = 0; index < BufferLength; index++)
//  290   {
//  291     hcrc->Instance->DR = pBuffer[index];
//  292   }
//  293 
//  294   /* Change CRC peripheral state */
//  295   hcrc->State = HAL_CRC_STATE_READY;
//  296 
//  297   /* Process Unlocked */
//  298   __HAL_UNLOCK(hcrc);
//  299 
//  300   /* Return the CRC computed value */
//  301   return hcrc->Instance->DR;
//  302 }
//  303 
//  304 /**
//  305   * @}
//  306   */
//  307 
//  308 /** @defgroup CRC_Exported_Functions_Group3 Peripheral State functions 
//  309  *  @brief    Peripheral State functions. 
//  310  *
//  311 @verbatim   
//  312   ==============================================================================
//  313                       ##### Peripheral State functions #####
//  314   ==============================================================================  
//  315     [..]
//  316     This subsection permits to get in run-time the status of the peripheral 
//  317     and the data flow.
//  318 
//  319 @endverbatim
//  320   * @{
//  321   */
//  322 
//  323 /**
//  324   * @brief  Returns the CRC state.
//  325   * @param  hcrc: pointer to a CRC_HandleTypeDef structure that contains
//  326   *         the configuration information for CRC
//  327   * @retval HAL state
//  328   */
//  329 HAL_CRC_StateTypeDef HAL_CRC_GetState(CRC_HandleTypeDef *hcrc)
//  330 {
//  331   return hcrc->State;
//  332 }
//  333 
//  334 /**
//  335   * @}
//  336   */
//  337 
//  338 /**
//  339   * @}
//  340   */
//  341 
//  342 #endif /* HAL_CRC_MODULE_ENABLED */
//  343 /**
//  344   * @}
//  345   */
//  346 
//  347 /**
//  348   * @}
//  349   */
//  350 
//  351 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
