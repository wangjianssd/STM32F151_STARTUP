///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_usart.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_usart.c
//        -D USE_HAL_DRIVER -D STM32L151xD -lC
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List -lA
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List -o
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M3 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\INC\c\DLib_Config_Full.h" -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Apps/Config\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Inc\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Core\CMSIS\RTOS\Template\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Config\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc/Legacy\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/portable/IAR/ARM_CM3\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/RTT\
//        -I D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../BSP/Inc/\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -Ol
//    List file    =  
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_usart.s
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
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_usart.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_usart.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   USART HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Universal Synchronous Asynchronous Receiver Transmitter (USART) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral Control functions 
//   13   *           + Peripheral State and Errors functions  
//   14   @verbatim
//   15   ==============================================================================
//   16                         ##### How to use this driver #####
//   17   ==============================================================================
//   18   [..]
//   19     The USART HAL driver can be used as follows:
//   20 
//   21     (#) Declare a USART_HandleTypeDef handle structure.
//   22     (#) Initialize the USART low level resources by implementing the HAL_USART_MspInit() API:
//   23         (##) Enable the USARTx interface clock.
//   24         (##) USART pins configuration:
//   25              (+++) Enable the clock for the USART GPIOs.
//   26              (+++) Configure the USART pins as alternate function pull-up.
//   27         (##) NVIC configuration if you need to use interrupt process (HAL_USART_Transmit_IT(),
//   28              HAL_USART_Receive_IT() and HAL_USART_TransmitReceive_IT() APIs):
//   29              (+++) Configure the USARTx interrupt priority.
//   30              (+++) Enable the NVIC USART IRQ handle.
//   31         (##) DMA Configuration if you need to use DMA process (HAL_USART_Transmit_DMA()
//   32              HAL_USART_Receive_DMA() and HAL_USART_TransmitReceive_DMA() APIs):
//   33              (+++) Declare a DMA handle structure for the Tx/Rx channel.
//   34              (+++) Enable the DMAx interface clock.
//   35              (+++) Configure the declared DMA handle structure with the required Tx/Rx parameters.
//   36              (+++) Configure the DMA Tx/Rx channel.
//   37              (+++) Associate the initilalized DMA handle to the USART DMA Tx/Rx handle.
//   38              (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on the DMA Tx/Rx channel.
//   39             (+++) Configure the USARTx interrupt priority and enable the NVIC USART IRQ handle
//   40 			      (used for last byte sending completion detection in DMA non circular mode)
//   41 
//   42     (#) Program the Baud Rate, Word Length, Stop Bit, Parity, Hardware 
//   43         flow control and Mode(Receiver/Transmitter) in the husart Init structure.
//   44 
//   45     (#) Initialize the USART registers by calling the HAL_USART_Init() API:
//   46         (++) These APIs configures also the low level Hardware GPIO, CLOCK, CORTEX...etc)
//   47              by calling the customed HAL_USART_MspInit(&husart) API.
//   48                     
//   49         -@@- The specific USART interrupts (Transmission complete interrupt, 
//   50              RXNE interrupt and Error Interrupts) will be managed using the macros
//   51              __HAL_USART_ENABLE_IT() and __HAL_USART_DISABLE_IT() inside the transmit and receive process.
//   52           
//   53     (#) Three operation modes are available within this driver :     
//   54   
//   55      *** Polling mode IO operation ***
//   56      =================================
//   57      [..]    
//   58        (+) Send an amount of data in blocking mode using HAL_USART_Transmit() 
//   59        (+) Receive an amount of data in blocking mode using HAL_USART_Receive()
//   60        
//   61      *** Interrupt mode IO operation ***    
//   62      ===================================
//   63      [..]    
//   64        (+) Send an amount of data in non blocking mode using HAL_USART_Transmit_IT() 
//   65        (+) At transmission end of transfer HAL_USART_TxCpltCallback is executed and user can 
//   66             add his own code by customization of function pointer HAL_USART_TxCpltCallback
//   67        (+) Receive an amount of data in non blocking mode using HAL_USART_Receive_IT() 
//   68        (+) At reception end of transfer HAL_USART_RxCpltCallback is executed and user can 
//   69             add his own code by customization of function pointer HAL_USART_RxCpltCallback                                      
//   70        (+) In case of transfer Error, HAL_USART_ErrorCallback() function is executed and user can 
//   71             add his own code by customization of function pointer HAL_USART_ErrorCallback
//   72     
//   73      *** DMA mode IO operation ***    
//   74      ==============================
//   75      [..] 
//   76        (+) Send an amount of data in non blocking mode (DMA) using HAL_USART_Transmit_DMA() 
//   77        (+) At transmission end of half transfer HAL_USART_TxHalfCpltCallback is executed and user can 
//   78             add his own code by customization of function pointer HAL_USART_TxHalfCpltCallback 
//   79        (+) At transmission end of transfer HAL_USART_TxCpltCallback is executed and user can 
//   80             add his own code by customization of function pointer HAL_USART_TxCpltCallback
//   81        (+) Receive an amount of data in non blocking mode (DMA) using HAL_USART_Receive_DMA() 
//   82        (+) At reception end of half transfer HAL_USART_RxHalfCpltCallback is executed and user can 
//   83             add his own code by customization of function pointer HAL_USART_RxHalfCpltCallback 
//   84        (+) At reception end of transfer HAL_USART_RxCpltCallback is executed and user can 
//   85             add his own code by customization of function pointer HAL_USART_RxCpltCallback                                      
//   86        (+) In case of transfer Error, HAL_USART_ErrorCallback() function is executed and user can 
//   87             add his own code by customization of function pointer HAL_USART_ErrorCallback
//   88        (+) Pause the DMA Transfer using HAL_USART_DMAPause()      
//   89        (+) Resume the DMA Transfer using HAL_USART_DMAResume()  
//   90        (+) Stop the DMA Transfer using HAL_USART_DMAStop()      
//   91      
//   92      *** USART HAL driver macros list ***
//   93      ============================================= 
//   94      [..]
//   95        Below the list of most used macros in USART HAL driver.
//   96        
//   97        (+) __HAL_USART_ENABLE: Enable the USART peripheral 
//   98        (+) __HAL_USART_DISABLE: Disable the USART peripheral     
//   99        (+) __HAL_USART_GET_FLAG : Check whether the specified USART flag is set or not
//  100        (+) __HAL_USART_CLEAR_FLAG : Clear the specified USART pending flag
//  101        (+) __HAL_USART_ENABLE_IT: Enable the specified USART interrupt
//  102        (+) __HAL_USART_DISABLE_IT: Disable the specified USART interrupt
//  103        (+) __HAL_USART_GET_IT_SOURCE: Check whether the specified USART interrupt has occurred or not
//  104       
//  105      [..] 
//  106        (@) You can refer to the USART HAL driver header file for more useful macros
//  107 
//  108   @endverbatim
//  109   ******************************************************************************
//  110   * @attention
//  111   *
//  112   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  113   *
//  114   * Redistribution and use in source and binary forms, with or without modification,
//  115   * are permitted provided that the following conditions are met:
//  116   *   1. Redistributions of source code must retain the above copyright notice,
//  117   *      this list of conditions and the following disclaimer.
//  118   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  119   *      this list of conditions and the following disclaimer in the documentation
//  120   *      and/or other materials provided with the distribution.
//  121   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  122   *      may be used to endorse or promote products derived from this software
//  123   *      without specific prior written permission.
//  124   *
//  125   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  126   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  127   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  128   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  129   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  130   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  131   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  132   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  133   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  134   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  135   *
//  136   ******************************************************************************
//  137   */
//  138 
//  139 /* Includes ------------------------------------------------------------------*/
//  140 #include "stm32l1xx_hal.h"
//  141 
//  142 /** @addtogroup STM32L1xx_HAL_Driver
//  143   * @{
//  144   */
//  145 
//  146 /** @defgroup USART USART
//  147   * @brief HAL USART Synchronous module driver
//  148   * @{
//  149   */
//  150 #ifdef HAL_USART_MODULE_ENABLED
//  151 /* Private typedef -----------------------------------------------------------*/
//  152 /* Private define ------------------------------------------------------------*/
//  153 /** @defgroup USART_Private_Constants   USART Private Constants
//  154   * @{
//  155   */
//  156 #define DUMMY_DATA      0xFFFF
//  157 /**
//  158   * @}
//  159   */
//  160 
//  161 /* Private macros ------------------------------------------------------------*/
//  162 /* Private variables ---------------------------------------------------------*/
//  163 /* Private function prototypes -----------------------------------------------*/
//  164 /** @addtogroup USART_Private_Functions   USART Private Functions
//  165   * @{
//  166   */
//  167 static HAL_StatusTypeDef USART_Transmit_IT(USART_HandleTypeDef *husart);
//  168 static HAL_StatusTypeDef USART_EndTransmit_IT(USART_HandleTypeDef *husart);
//  169 static HAL_StatusTypeDef USART_Receive_IT(USART_HandleTypeDef *husart);
//  170 static HAL_StatusTypeDef USART_TransmitReceive_IT(USART_HandleTypeDef *husart);
//  171 static void USART_SetConfig (USART_HandleTypeDef *husart);
//  172 static void USART_DMATransmitCplt(DMA_HandleTypeDef *hdma);
//  173 static void USART_DMATxHalfCplt(DMA_HandleTypeDef *hdma);
//  174 static void USART_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
//  175 static void USART_DMARxHalfCplt(DMA_HandleTypeDef *hdma);
//  176 static void USART_DMAError(DMA_HandleTypeDef *hdma); 
//  177 static HAL_StatusTypeDef USART_WaitOnFlagUntilTimeout(USART_HandleTypeDef *husart, uint32_t Flag, FlagStatus Status, uint32_t Timeout);
//  178 /**
//  179   * @}
//  180   */
//  181 
//  182 /* Exported functions ---------------------------------------------------------*/
//  183 
//  184 
//  185 /** @defgroup USART_Exported_Functions USART Exported Functions
//  186   * @{
//  187   */
//  188 
//  189 /** @defgroup USART_Exported_Functions_Group1 Initialization and de-initialization functions 
//  190   *  @brief    Initialization and Configuration functions 
//  191   *
//  192 @verbatim
//  193   ==============================================================================
//  194               ##### Initialization and Configuration functions #####
//  195   ==============================================================================
//  196   [..]
//  197   This subsection provides a set of functions allowing to initialize the USART 
//  198   in asynchronous and in synchronous modes.
//  199   (+) For the asynchronous mode only these parameters can be configured: 
//  200       (++) Baud Rate
//  201       (++) Word Length 
//  202       (++) Stop Bit
//  203       (++) Parity
//  204       (++) USART polarity
//  205       (++) USART phase
//  206       (++) USART LastBit
//  207       (++) Receiver/transmitter modes
//  208 
//  209   [..]
//  210     The HAL_USART_Init() function follows the USART  synchronous configuration 
//  211     procedure (details for the procedure are available in reference manual (RM0038)).
//  212 
//  213 @endverbatim
//  214   * @{
//  215   */
//  216   
//  217 /*
//  218   Additionnal remark: If the parity is enabled, then the MSB bit of the data written
//  219                       in the data register is transmitted but is changed by the parity bit.
//  220                       Depending on the frame length defined by the M bit (8-bits or 9-bits),
//  221                       the possible USART frame formats are as listed in the following table:
//  222     +-------------------------------------------------------------+
//  223     |   M bit |  PCE bit  |            USART frame                |
//  224     |---------------------|---------------------------------------|
//  225     |    0    |    0      |    | SB | 8 bit data | STB |          |
//  226     |---------|-----------|---------------------------------------|
//  227     |    0    |    1      |    | SB | 7 bit data | PB | STB |     |
//  228     |---------|-----------|---------------------------------------|
//  229     |    1    |    0      |    | SB | 9 bit data | STB |          |
//  230     |---------|-----------|---------------------------------------|
//  231     |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
//  232     +-------------------------------------------------------------+
//  233 */
//  234 
//  235 /**
//  236   * @brief  Initializes the USART mode according to the specified
//  237   *         parameters in the USART_InitTypeDef and create the associated handle.
//  238   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  239   *                 the configuration information for the specified USART module.
//  240   * @retval HAL status
//  241   */
//  242 HAL_StatusTypeDef HAL_USART_Init(USART_HandleTypeDef *husart)
//  243 {
//  244   /* Check the USART handle allocation */
//  245   if(husart == NULL)
//  246   {
//  247     return HAL_ERROR;
//  248   }
//  249 
//  250   /* Check the parameters */
//  251   assert_param(IS_USART_INSTANCE(husart->Instance));
//  252 
//  253   if(husart->State == HAL_USART_STATE_RESET)
//  254   {
//  255     /* Allocate lock resource and initialize it */
//  256     husart->Lock = HAL_UNLOCKED;
//  257 
//  258     /* Init the low level hardware */
//  259     HAL_USART_MspInit(husart);
//  260   }
//  261   
//  262   husart->State = HAL_USART_STATE_BUSY;
//  263 
//  264   /* Set the USART Communication parameters */
//  265   USART_SetConfig(husart);
//  266 
//  267   /* In USART mode, the following bits must be kept cleared: 
//  268      - LINEN bit in the USART_CR2 register
//  269      - HDSEL, SCEN and IREN bits in the USART_CR3 register */
//  270   CLEAR_BIT(husart->Instance->CR2, USART_CR2_LINEN);
//  271   CLEAR_BIT(husart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN | USART_CR3_HDSEL));
//  272 
//  273   /* Enable the Peripheral */
//  274   __HAL_USART_ENABLE(husart);
//  275 
//  276   /* Initialize the USART state */
//  277   husart->ErrorCode = HAL_USART_ERROR_NONE;
//  278   husart->State= HAL_USART_STATE_READY;
//  279 
//  280   return HAL_OK;
//  281 }
//  282 
//  283 /**
//  284   * @brief  DeInitializes the USART peripheral.
//  285   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  286   *                 the configuration information for the specified USART module.
//  287   * @retval HAL status
//  288   */
//  289 HAL_StatusTypeDef HAL_USART_DeInit(USART_HandleTypeDef *husart)
//  290 {
//  291    /* Check the USART handle allocation */
//  292   if(husart == NULL)
//  293   {
//  294     return HAL_ERROR;
//  295   }
//  296 
//  297   /* Check the parameters */
//  298   assert_param(IS_USART_INSTANCE(husart->Instance));
//  299 
//  300   husart->State = HAL_USART_STATE_BUSY;
//  301 
//  302   /* Disable the Peripheral */
//  303   __HAL_USART_DISABLE(husart);
//  304 
//  305   /* DeInit the low level hardware */
//  306   HAL_USART_MspDeInit(husart);
//  307 
//  308   husart->ErrorCode = HAL_USART_ERROR_NONE;
//  309   husart->State = HAL_USART_STATE_RESET;
//  310 
//  311   /* Release Lock */
//  312   __HAL_UNLOCK(husart);
//  313 
//  314   return HAL_OK;
//  315 }
//  316 
//  317 /**
//  318   * @brief  USART MSP Init.
//  319   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  320   *                 the configuration information for the specified USART module.
//  321   * @retval None
//  322   */
//  323  __weak void HAL_USART_MspInit(USART_HandleTypeDef *husart)
//  324 {
//  325   /* Prevent unused argument(s) compilation warning */
//  326   UNUSED(husart);
//  327 
//  328   /* NOTE: This function should not be modified, when the callback is needed,
//  329            the HAL_USART_MspInit can be implemented in the user file
//  330    */ 
//  331 }
//  332 
//  333 /**
//  334   * @brief  USART MSP DeInit.
//  335   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  336   *                 the configuration information for the specified USART module.
//  337   * @retval None
//  338   */
//  339  __weak void HAL_USART_MspDeInit(USART_HandleTypeDef *husart)
//  340 {
//  341   /* Prevent unused argument(s) compilation warning */
//  342   UNUSED(husart);
//  343 
//  344   /* NOTE: This function should not be modified, when the callback is needed,
//  345            the HAL_USART_MspDeInit can be implemented in the user file
//  346    */ 
//  347 }
//  348 
//  349 /**
//  350   * @}
//  351   */
//  352 
//  353 /** @defgroup USART_Exported_Functions_Group2 IO operation functions 
//  354   *  @brief   USART Transmit and Receive functions 
//  355   *
//  356 @verbatim
//  357   ==============================================================================
//  358                          ##### IO operation functions #####
//  359   ==============================================================================
//  360   [..]
//  361     This subsection provides a set of functions allowing to manage the USART synchronous
//  362     data transfers.
//  363       
//  364   [..] 
//  365     The USART supports master mode only: it cannot receive or send data related to an input
//  366     clock (SCLK is always an output).
//  367 
//  368     (#) There are two modes of transfer:
//  369         (++) Blocking mode: The communication is performed in polling mode. 
//  370              The HAL status of all data processing is returned by the same function 
//  371              after finishing transfer.  
//  372         (++) No-Blocking mode: The communication is performed using Interrupts 
//  373              or DMA, These API's return the HAL status.
//  374              The end of the data processing will be indicated through the 
//  375              dedicated USART IRQ when using Interrupt mode or the DMA IRQ when 
//  376              using DMA mode.
//  377              The HAL_USART_TxCpltCallback(), HAL_USART_RxCpltCallback() and HAL_USART_TxRxCpltCallback() 
//  378              user callbacks 
//  379              will be executed respectively at the end of the transmit or Receive process
//  380              The HAL_USART_ErrorCallback() user callback will be executed when a communication 
//  381              error is detected
//  382 
//  383     (#) Blocking mode APIs are :
//  384         (++) HAL_USART_Transmit() in simplex mode
//  385         (++) HAL_USART_Receive() in full duplex receive only
//  386         (++) HAL_USART_TransmitReceive() in full duplex mode
//  387 
//  388     (#) Non Blocking mode APIs with Interrupt are :
//  389         (++) HAL_USART_Transmit_IT()in simplex mode
//  390         (++) HAL_USART_Receive_IT() in full duplex receive only
//  391         (++) HAL_USART_TransmitReceive_IT() in full duplex mode
//  392         (++) HAL_USART_IRQHandler()
//  393 
//  394     (#) Non Blocking mode functions with DMA are :
//  395         (++) HAL_USART_Transmit_DMA()in simplex mode
//  396         (++) HAL_USART_Receive_DMA() in full duplex receive only
//  397         (++) HAL_USART_TransmitReceive_DMA() in full duplex mode
//  398         (++) HAL_USART_DMAPause()
//  399         (++) HAL_USART_DMAResume()
//  400         (++) HAL_USART_DMAStop()
//  401 
//  402     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
//  403         (++) HAL_USART_TxHalfCpltCallback()
//  404         (++) HAL_USART_TxCpltCallback()
//  405         (++) HAL_USART_RxHalfCpltCallback()
//  406         (++) HAL_USART_RxCpltCallback()
//  407         (++) HAL_USART_ErrorCallback()
//  408         (++) HAL_USART_TxRxCpltCallback()
//  409 
//  410 @endverbatim
//  411   * @{
//  412   */
//  413 
//  414 /**
//  415   * @brief  Simplex Send an amount of data in blocking mode. 
//  416   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  417   *                 the configuration information for the specified USART module.
//  418   * @param  pTxData: Pointer to data buffer
//  419   * @param  Size: Amount of data to be sent
//  420   * @param  Timeout: Timeout duration
//  421   * @retval HAL status
//  422   */
//  423 HAL_StatusTypeDef HAL_USART_Transmit(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size, uint32_t Timeout)
//  424 {
//  425   uint16_t* tmp=0;
//  426 
//  427   if(husart->State == HAL_USART_STATE_READY)
//  428   {
//  429     if((pTxData == NULL) || (Size == 0)) 
//  430     {
//  431       return  HAL_ERROR;
//  432     }
//  433 
//  434     /* Process Locked */
//  435     __HAL_LOCK(husart);
//  436 
//  437     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  438     husart->State = HAL_USART_STATE_BUSY_TX;
//  439 
//  440     husart->TxXferSize = Size;
//  441     husart->TxXferCount = Size;
//  442     while(husart->TxXferCount > 0)
//  443     {
//  444       husart->TxXferCount--;
//  445       if(husart->Init.WordLength == USART_WORDLENGTH_9B)
//  446       {
//  447         /* Wait for TC flag in order to write data in DR */
//  448         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  449         {
//  450           return HAL_TIMEOUT;
//  451         }
//  452         tmp = (uint16_t*) pTxData;
//  453         WRITE_REG(husart->Instance->DR, (*tmp & (uint16_t)0x01FF));
//  454         if(husart->Init.Parity == USART_PARITY_NONE)
//  455         {
//  456           pTxData += 2;
//  457         }
//  458         else
//  459         {
//  460           pTxData += 1;
//  461         }
//  462       }
//  463       else
//  464       {
//  465         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  466         {
//  467           return HAL_TIMEOUT;
//  468         }
//  469         WRITE_REG(husart->Instance->DR, (*pTxData++ & (uint8_t)0xFF));
//  470       }
//  471     }
//  472 
//  473     if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TC, RESET, Timeout) != HAL_OK)
//  474     { 
//  475       return HAL_TIMEOUT;
//  476     }
//  477 
//  478     husart->State = HAL_USART_STATE_READY;
//  479 
//  480     /* Process Unlocked */
//  481     __HAL_UNLOCK(husart);
//  482 
//  483     return HAL_OK;
//  484   }
//  485   else
//  486   {
//  487     return HAL_BUSY;
//  488   }
//  489 }
//  490 
//  491 /**
//  492   * @brief  Full-Duplex Receive an amount of data in blocking mode. 
//  493   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  494   *                 the configuration information for the specified USART module.
//  495   * @param  pRxData: Pointer to data buffer
//  496   * @param  Size: Amount of data to be received
//  497   * @param  Timeout: Timeout duration
//  498   * @retval HAL status
//  499   */
//  500 HAL_StatusTypeDef HAL_USART_Receive(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size, uint32_t Timeout)
//  501 {
//  502   uint16_t* tmp=0;
//  503 
//  504   if(husart->State == HAL_USART_STATE_READY)
//  505   {
//  506     if((pRxData == NULL) || (Size == 0)) 
//  507     {
//  508       return  HAL_ERROR;
//  509     }
//  510     
//  511     /* Process Locked */
//  512     __HAL_LOCK(husart);
//  513 
//  514     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  515     husart->State = HAL_USART_STATE_BUSY_RX;
//  516 
//  517     husart->RxXferSize = Size;
//  518     husart->RxXferCount = Size;
//  519     /* Check the remain data to be received */
//  520     while(husart->RxXferCount > 0)
//  521     {
//  522       husart->RxXferCount--;
//  523       if(husart->Init.WordLength == USART_WORDLENGTH_9B)
//  524       {
//  525         /* Wait until TXE flag is set to send dummy byte in order to generate the clock for the slave to send data */
//  526         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  527         { 
//  528           return HAL_TIMEOUT;
//  529         }
//  530         /* Send dummy byte in order to generate clock */
//  531         WRITE_REG(husart->Instance->DR, (DUMMY_DATA & (uint16_t)0x01FF));
//  532         
//  533         /* Wait for RXNE Flag */
//  534         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  535         { 
//  536           return HAL_TIMEOUT;
//  537         }
//  538         tmp = (uint16_t*) pRxData ;
//  539         if(husart->Init.Parity == USART_PARITY_NONE)
//  540         {
//  541           *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x01FF);
//  542           pRxData +=2;
//  543         }
//  544         else
//  545         {
//  546           *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x00FF);
//  547           pRxData +=1;
//  548         }
//  549       }
//  550       else
//  551       {
//  552         /* Wait until TXE flag is set to send dummy byte in order to generate the clock for the slave to send data */
//  553         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  554         { 
//  555           return HAL_TIMEOUT;
//  556         }
//  557 
//  558         /* Send Dummy Byte in order to generate clock */
//  559         WRITE_REG(husart->Instance->DR, (DUMMY_DATA & (uint16_t)0x00FF));
//  560 
//  561         /* Wait until RXNE flag is set to receive the byte */
//  562         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  563         {
//  564           return HAL_TIMEOUT;
//  565         }
//  566         if(husart->Init.Parity == USART_PARITY_NONE)
//  567         {
//  568           /* Receive data */
//  569           *pRxData++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x00FF);
//  570         }
//  571         else
//  572         {
//  573           /* Receive data */
//  574           *pRxData++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x007F);
//  575         }
//  576         
//  577       }
//  578     }
//  579 
//  580     husart->State = HAL_USART_STATE_READY;
//  581 
//  582     /* Process Unlocked */
//  583     __HAL_UNLOCK(husart);
//  584 
//  585     return HAL_OK;
//  586   }
//  587   else
//  588   {
//  589     return HAL_BUSY;
//  590   }
//  591 }
//  592 
//  593 /**
//  594   * @brief  Full-Duplex Send receive an amount of data in full-duplex mode (blocking mode). 
//  595   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  596   *                 the configuration information for the specified USART module.
//  597   * @param  pTxData: Pointer to data transmitted buffer
//  598   * @param  pRxData: Pointer to data received buffer  
//  599   * @param  Size: Amount of data to be sent
//  600   * @param  Timeout: Timeout duration
//  601   * @retval HAL status
//  602   */
//  603 HAL_StatusTypeDef HAL_USART_TransmitReceive(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size, uint32_t Timeout)
//  604 {
//  605   uint16_t* tmp=0;
//  606 
//  607   if(husart->State == HAL_USART_STATE_READY)
//  608   {
//  609     if((pTxData == NULL) || (pRxData == NULL) || (Size == 0)) 
//  610     {
//  611       return  HAL_ERROR;
//  612     }
//  613     /* Process Locked */
//  614     __HAL_LOCK(husart);
//  615 
//  616     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  617     husart->State = HAL_USART_STATE_BUSY_RX;
//  618 
//  619     husart->RxXferSize = Size;
//  620     husart->TxXferSize = Size;
//  621     husart->TxXferCount = Size;
//  622     husart->RxXferCount = Size;
//  623 
//  624     /* Check the remain data to be received */
//  625     while(husart->TxXferCount > 0)
//  626     {
//  627       husart->TxXferCount--;
//  628       husart->RxXferCount--;
//  629       if(husart->Init.WordLength == USART_WORDLENGTH_9B)
//  630       {
//  631         /* Wait for TC flag in order to write data in DR */
//  632         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  633         {
//  634           return HAL_TIMEOUT;
//  635         }
//  636         tmp = (uint16_t*) pTxData;
//  637         WRITE_REG(husart->Instance->DR, (*tmp & (uint16_t)0x01FF));
//  638         if(husart->Init.Parity == USART_PARITY_NONE)
//  639         {
//  640           pTxData += 2;
//  641         }
//  642         else
//  643         {
//  644           pTxData += 1;
//  645         }
//  646         
//  647         /* Wait for RXNE Flag */
//  648         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  649         {
//  650           return HAL_TIMEOUT;
//  651         }
//  652         tmp = (uint16_t*) pRxData ;
//  653         if(husart->Init.Parity == USART_PARITY_NONE)
//  654         {
//  655           *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x01FF);
//  656           pRxData += 2;
//  657         }
//  658         else
//  659         {
//  660           *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x00FF);
//  661           pRxData += 1;
//  662         }
//  663       } 
//  664       else
//  665       {
//  666         /* Wait for TC flag in order to write data in DR */
//  667         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  668         {
//  669           return HAL_TIMEOUT;
//  670         }
//  671         WRITE_REG(husart->Instance->DR, (*pTxData++ & (uint8_t)0x00FF));
//  672 
//  673         /* Wait for RXNE Flag */
//  674         if(USART_WaitOnFlagUntilTimeout(husart, USART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  675         {
//  676           return HAL_TIMEOUT;
//  677         }
//  678         if(husart->Init.Parity == USART_PARITY_NONE)
//  679         {
//  680           /* Receive data */
//  681           *pRxData++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x00FF);
//  682         }
//  683         else
//  684         {
//  685           /* Receive data */
//  686           *pRxData++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x007F);
//  687         }
//  688       }
//  689     }
//  690 
//  691     husart->State = HAL_USART_STATE_READY;
//  692 
//  693     /* Process Unlocked */
//  694     __HAL_UNLOCK(husart);
//  695 
//  696     return HAL_OK;
//  697   }
//  698   else
//  699   {
//  700     return HAL_BUSY;
//  701   }
//  702 }
//  703 
//  704 /**
//  705   * @brief  Simplex Send an amount of data in non-blocking mode. 
//  706   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  707   *                the configuration information for the specified USART module.
//  708   * @param  pTxData: Pointer to data buffer
//  709   * @param  Size: Amount of data to be sent
//  710   * @retval HAL status
//  711   * @note   The USART errors are not managed to avoid the overrun error.
//  712   */
//  713 HAL_StatusTypeDef HAL_USART_Transmit_IT(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size)
//  714 {
//  715   if(husart->State == HAL_USART_STATE_READY)
//  716   {
//  717     if((pTxData == NULL) || (Size == 0)) 
//  718     {
//  719       return HAL_ERROR;
//  720     }
//  721 
//  722     /* Process Locked */
//  723     __HAL_LOCK(husart);
//  724 
//  725     husart->pTxBuffPtr = pTxData;
//  726     husart->TxXferSize = Size;
//  727     husart->TxXferCount = Size;
//  728 
//  729     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  730     husart->State = HAL_USART_STATE_BUSY_TX;
//  731 
//  732     /* The USART Error Interrupts: (Frame error, Noise error, Overrun error) 
//  733        are not managed by the USART transmit process to avoid the overrun interrupt
//  734        when the USART mode is configured for transmit and receive "USART_MODE_TX_RX"
//  735        to benefit for the frame error and noise interrupts the USART mode should be
//  736        configured only for transmit "USART_MODE_TX"
//  737        The __HAL_USART_ENABLE_IT(husart, USART_IT_ERR) can be used to enable the Frame error,
//  738        Noise error interrupt */
//  739 
//  740     /* Process Unlocked */
//  741     __HAL_UNLOCK(husart);
//  742 
//  743     /* Enable the USART Transmit Data Register Empty Interrupt */
//  744     __HAL_USART_ENABLE_IT(husart, USART_IT_TXE);
//  745 
//  746     return HAL_OK;
//  747   }
//  748   else
//  749   {
//  750     return HAL_BUSY;
//  751   }
//  752 }
//  753 
//  754 /**
//  755   * @brief  Simplex Receive an amount of data in non-blocking mode. 
//  756   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  757   *                 the configuration information for the specified USART module.
//  758   * @param  pRxData: Pointer to data buffer
//  759   * @param  Size: Amount of data to be received
//  760   * @retval HAL status
//  761   */
//  762 HAL_StatusTypeDef HAL_USART_Receive_IT(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size)
//  763 {
//  764   if(husart->State == HAL_USART_STATE_READY)
//  765   {
//  766     if((pRxData == NULL) || (Size == 0)) 
//  767     {
//  768       return HAL_ERROR;
//  769     }
//  770     /* Process Locked */
//  771     __HAL_LOCK(husart);
//  772 
//  773     husart->pRxBuffPtr = pRxData;
//  774     husart->RxXferSize = Size;
//  775     husart->RxXferCount = Size;
//  776 
//  777     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  778     husart->State = HAL_USART_STATE_BUSY_RX;
//  779 
//  780     /* Process Unlocked */
//  781     __HAL_UNLOCK(husart);
//  782 
//  783     /* Enable the USART Data Register not empty Interrupt */
//  784     __HAL_USART_ENABLE_IT(husart, USART_IT_RXNE); 
//  785 
//  786     /* Enable the USART Parity Error Interrupt */
//  787     __HAL_USART_ENABLE_IT(husart, USART_IT_PE);
//  788 
//  789     /* Enable the USART Error Interrupt: (Frame error, noise error, overrun error) */
//  790     __HAL_USART_ENABLE_IT(husart, USART_IT_ERR);
//  791 
//  792     /* Send dummy byte in order to generate the clock for the slave to send data */
//  793     WRITE_REG(husart->Instance->DR, (DUMMY_DATA & (uint16_t)0x01FF));    
//  794 
//  795     return HAL_OK;
//  796   }
//  797   else
//  798   {
//  799     return HAL_BUSY;
//  800   }
//  801 }
//  802 
//  803 /**
//  804   * @brief  Full-Duplex Send receive an amount of data in full-duplex mode (non-blocking). 
//  805   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  806   *                 the configuration information for the specified USART module.
//  807   * @param  pTxData: Pointer to data transmitted buffer
//  808   * @param  pRxData: Pointer to data received buffer 
//  809   * @param  Size: Amount of data to be received
//  810   * @retval HAL status
//  811   */
//  812 HAL_StatusTypeDef HAL_USART_TransmitReceive_IT(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData,  uint16_t Size)
//  813 {
//  814   if(husart->State == HAL_USART_STATE_READY)
//  815   {
//  816     if((pTxData == NULL) || (pRxData == NULL) || (Size == 0)) 
//  817     {
//  818       return HAL_ERROR;
//  819     }
//  820     /* Process Locked */
//  821     __HAL_LOCK(husart);
//  822 
//  823     husart->pRxBuffPtr = pRxData;
//  824     husart->RxXferSize = Size;
//  825     husart->RxXferCount = Size;
//  826     husart->pTxBuffPtr = pTxData;
//  827     husart->TxXferSize = Size;
//  828     husart->TxXferCount = Size;
//  829 
//  830     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  831     husart->State = HAL_USART_STATE_BUSY_TX_RX;
//  832 
//  833     /* Process Unlocked */
//  834     __HAL_UNLOCK(husart);
//  835 
//  836     /* Enable the USART Data Register not empty Interrupt */
//  837     __HAL_USART_ENABLE_IT(husart, USART_IT_RXNE); 
//  838 
//  839     /* Enable the USART Parity Error Interrupt */
//  840     __HAL_USART_ENABLE_IT(husart, USART_IT_PE);
//  841 
//  842     /* Enable the USART Error Interrupt: (Frame error, noise error, overrun error) */
//  843     __HAL_USART_ENABLE_IT(husart, USART_IT_ERR);
//  844 
//  845     /* Enable the USART Transmit Data Register Empty Interrupt */
//  846     __HAL_USART_ENABLE_IT(husart, USART_IT_TXE);
//  847 
//  848     return HAL_OK;
//  849   }
//  850   else
//  851   {
//  852     return HAL_BUSY; 
//  853   }
//  854 }
//  855 
//  856 /**
//  857   * @brief  Simplex Send an amount of data in non-blocking mode. 
//  858   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  859   *                 the configuration information for the specified USART module.
//  860   * @param  pTxData: Pointer to data buffer
//  861   * @param  Size: Amount of data to be sent
//  862   * @retval HAL status
//  863   */
//  864 HAL_StatusTypeDef HAL_USART_Transmit_DMA(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size)
//  865 {
//  866   uint32_t *tmp=0;
//  867   
//  868   if(husart->State == HAL_USART_STATE_READY)
//  869   {
//  870     if((pTxData == NULL) || (Size == 0)) 
//  871     {
//  872       return HAL_ERROR;
//  873     }
//  874     /* Process Locked */
//  875     __HAL_LOCK(husart);  
//  876 
//  877     husart->pTxBuffPtr = pTxData;
//  878     husart->TxXferSize = Size;
//  879     husart->TxXferCount = Size;
//  880 
//  881     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  882     husart->State = HAL_USART_STATE_BUSY_TX;
//  883 
//  884     /* Set the USART DMA transfer complete callback */
//  885     husart->hdmatx->XferCpltCallback = USART_DMATransmitCplt;
//  886 
//  887     /* Set the USART DMA Half transfer complete callback */
//  888     husart->hdmatx->XferHalfCpltCallback = USART_DMATxHalfCplt;
//  889 
//  890     /* Set the DMA error callback */
//  891     husart->hdmatx->XferErrorCallback = USART_DMAError;
//  892 
//  893     /* Enable the USART transmit DMA channel */
//  894     tmp = (uint32_t*)&pTxData;
//  895     HAL_DMA_Start_IT(husart->hdmatx, *(uint32_t*)tmp, (uint32_t)&husart->Instance->DR, Size);
//  896 
//  897     /* Clear the TC flag in the SR register by writing 0 to it */
//  898     __HAL_USART_CLEAR_FLAG(husart, USART_FLAG_TC);
//  899 
//  900     /* Enable the DMA transfer for transmit request by setting the DMAT bit
//  901        in the USART CR3 register */
//  902     SET_BIT(husart->Instance->CR3, USART_CR3_DMAT);
//  903 
//  904     /* Process Unlocked */
//  905     __HAL_UNLOCK(husart);
//  906 
//  907     return HAL_OK;
//  908   }
//  909   else
//  910   {
//  911     return HAL_BUSY;
//  912   }
//  913 }
//  914 
//  915 /**
//  916   * @brief  Full-Duplex Receive an amount of data in non-blocking mode. 
//  917   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  918   *                 the configuration information for the specified USART module.
//  919   * @param  pRxData: Pointer to data buffer
//  920   * @param  Size: Amount of data to be received
//  921   * @retval HAL status
//  922   * @note   The USART DMA transmit channel must be configured in order to generate the clock for the slave.
//  923   * @note   When the USART parity is enabled (PCE = 1) the data received contain the parity bit.
//  924   */
//  925 HAL_StatusTypeDef HAL_USART_Receive_DMA(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size)
//  926 {
//  927   uint32_t *tmp=0;
//  928   
//  929   if(husart->State == HAL_USART_STATE_READY)
//  930   {
//  931     if((pRxData == NULL) || (Size == 0)) 
//  932     {
//  933       return HAL_ERROR;
//  934     }
//  935 
//  936     /* Process Locked */
//  937     __HAL_LOCK(husart);
//  938 
//  939     husart->pRxBuffPtr = pRxData;
//  940     husart->RxXferSize = Size;
//  941     husart->pTxBuffPtr = pRxData;
//  942     husart->TxXferSize = Size;
//  943 
//  944     husart->ErrorCode = HAL_USART_ERROR_NONE;
//  945     husart->State = HAL_USART_STATE_BUSY_RX;
//  946 
//  947     /* Set the USART DMA Rx transfer complete callback */
//  948     husart->hdmarx->XferCpltCallback = USART_DMAReceiveCplt;
//  949 
//  950     /* Set the USART DMA Half transfer complete callback */
//  951     husart->hdmarx->XferHalfCpltCallback = USART_DMARxHalfCplt;
//  952 
//  953     /* Set the USART DMA Rx transfer error callback */
//  954     husart->hdmarx->XferErrorCallback = USART_DMAError;
//  955 
//  956     /* Enable the USART receive DMA channel */
//  957     tmp = (uint32_t*)&pRxData;
//  958     HAL_DMA_Start_IT(husart->hdmarx, (uint32_t)&husart->Instance->DR, *(uint32_t*)tmp, Size);
//  959 
//  960     /* Enable the USART transmit DMA channel: the transmit channel is used in order
//  961        to generate in the non-blocking mode the clock to the slave device, 
//  962        this mode isn't a simplex receive mode but a full-duplex receive one */
//  963     HAL_DMA_Start_IT(husart->hdmatx, *(uint32_t*)tmp, (uint32_t)&husart->Instance->DR, Size);
//  964 
//  965     /* Clear the Overrun flag just before enabling the DMA Rx request: mandatory for the second transfer
//  966        when using the USART in circular mode */
//  967     __HAL_USART_CLEAR_OREFLAG(husart);
//  968     
//  969     /* Enable the DMA transfer for the receiver request by setting the DMAR bit 
//  970        in the USART CR3 register */
//  971     SET_BIT(husart->Instance->CR3, USART_CR3_DMAR);
//  972 
//  973     /* Enable the DMA transfer for transmit request by setting the DMAT bit
//  974        in the USART CR3 register */
//  975     SET_BIT(husart->Instance->CR3, USART_CR3_DMAT);
//  976 
//  977     /* Process Unlocked */
//  978     __HAL_UNLOCK(husart);
//  979 
//  980     return HAL_OK;
//  981   }
//  982   else
//  983   {
//  984     return HAL_BUSY;
//  985   }
//  986 }
//  987 
//  988 /**
//  989   * @brief  Full-Duplex Transmit Receive an amount of data in non-blocking mode. 
//  990   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
//  991   *                 the configuration information for the specified USART module.
//  992   * @param  pTxData: Pointer to data transmitted buffer
//  993   * @param  pRxData: Pointer to data received buffer 
//  994   * @param  Size: Amount of data to be received
//  995   * @note   When the USART parity is enabled (PCE = 1) the data received contain the parity bit.
//  996   * @retval HAL status
//  997   */
//  998 HAL_StatusTypeDef HAL_USART_TransmitReceive_DMA(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size)
//  999 {
// 1000   uint32_t *tmp=0;
// 1001   
// 1002   if(husart->State == HAL_USART_STATE_READY)
// 1003   {
// 1004     if((pTxData == NULL) || (pRxData == NULL) || (Size == 0)) 
// 1005     {
// 1006       return HAL_ERROR;
// 1007     }
// 1008     /* Process Locked */
// 1009     __HAL_LOCK(husart);
// 1010 
// 1011     husart->pRxBuffPtr = pRxData;
// 1012     husart->RxXferSize = Size;
// 1013     husart->pTxBuffPtr = pTxData;
// 1014     husart->TxXferSize = Size;
// 1015 
// 1016     husart->ErrorCode = HAL_USART_ERROR_NONE;
// 1017     husart->State = HAL_USART_STATE_BUSY_TX_RX;
// 1018 
// 1019     /* Set the USART DMA Rx transfer complete callback */
// 1020     husart->hdmarx->XferCpltCallback = USART_DMAReceiveCplt;
// 1021 
// 1022     /* Set the USART DMA Half transfer complete callback */
// 1023     husart->hdmarx->XferHalfCpltCallback = USART_DMARxHalfCplt;
// 1024 
// 1025     /* Set the USART DMA Tx transfer complete callback */
// 1026     husart->hdmatx->XferCpltCallback = USART_DMATransmitCplt;
// 1027 
// 1028     /* Set the USART DMA Half transfer complete callback */
// 1029     husart->hdmatx->XferHalfCpltCallback = USART_DMATxHalfCplt;
// 1030 
// 1031     /* Set the USART DMA Tx transfer error callback */
// 1032     husart->hdmatx->XferErrorCallback = USART_DMAError;
// 1033 
// 1034     /* Set the USART DMA Rx transfer error callback */
// 1035     husart->hdmarx->XferErrorCallback = USART_DMAError;
// 1036 
// 1037     /* Enable the USART receive DMA channel */
// 1038     tmp = (uint32_t*)&pRxData;
// 1039     HAL_DMA_Start_IT(husart->hdmarx, (uint32_t)&husart->Instance->DR, *(uint32_t*)tmp, Size);
// 1040 
// 1041     /* Enable the USART transmit DMA channel */
// 1042     tmp = (uint32_t*)&pTxData;
// 1043     HAL_DMA_Start_IT(husart->hdmatx, *(uint32_t*)tmp, (uint32_t)&husart->Instance->DR, Size);
// 1044     
// 1045     /* Clear the TC flag in the SR register by writing 0 to it */
// 1046     __HAL_USART_CLEAR_FLAG(husart, USART_FLAG_TC);
// 1047 
// 1048     /* Clear the Overrun flag: mandatory for the second transfer in circular mode */
// 1049     __HAL_USART_CLEAR_OREFLAG(husart);
// 1050     
// 1051     /* Enable the DMA transfer for the receiver request by setting the DMAR bit 
// 1052        in the USART CR3 register */
// 1053     SET_BIT(husart->Instance->CR3, USART_CR3_DMAR);
// 1054 
// 1055     /* Enable the DMA transfer for transmit request by setting the DMAT bit
// 1056        in the USART CR3 register */
// 1057     SET_BIT(husart->Instance->CR3, USART_CR3_DMAT);
// 1058 
// 1059     /* Process Unlocked */
// 1060     __HAL_UNLOCK(husart);
// 1061 
// 1062     return HAL_OK;
// 1063   }
// 1064   else
// 1065   {
// 1066     return HAL_BUSY;
// 1067   }
// 1068 }
// 1069 
// 1070 /**
// 1071   * @brief Pauses the DMA Transfer.
// 1072   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1073   *                 the configuration information for the specified USART module.
// 1074   * @retval HAL status
// 1075   */
// 1076 HAL_StatusTypeDef HAL_USART_DMAPause(USART_HandleTypeDef *husart)
// 1077 {
// 1078   /* Process Locked */
// 1079   __HAL_LOCK(husart);
// 1080   
// 1081   /* Disable the USART DMA Tx request */
// 1082   CLEAR_BIT(husart->Instance->CR3, (uint32_t)(USART_CR3_DMAT));
// 1083   
// 1084   /* Process Unlocked */
// 1085   __HAL_UNLOCK(husart);
// 1086 
// 1087   return HAL_OK; 
// 1088 }
// 1089 
// 1090 /**
// 1091   * @brief Resumes the DMA Transfer.
// 1092   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1093   *                 the configuration information for the specified USART module.
// 1094   * @retval HAL status
// 1095   */
// 1096 HAL_StatusTypeDef HAL_USART_DMAResume(USART_HandleTypeDef *husart)
// 1097 {
// 1098   /* Process Locked */
// 1099   __HAL_LOCK(husart);
// 1100   
// 1101   /* Enable the USART DMA Tx request */
// 1102   SET_BIT(husart->Instance->CR3, USART_CR3_DMAT);
// 1103   
// 1104   /* Process Unlocked */
// 1105   __HAL_UNLOCK(husart);
// 1106 
// 1107   return HAL_OK;
// 1108 }
// 1109 
// 1110 /**
// 1111   * @brief Stops the DMA Transfer.
// 1112   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1113   *                 the configuration information for the specified USART module.
// 1114   * @retval HAL status
// 1115   */
// 1116 HAL_StatusTypeDef HAL_USART_DMAStop(USART_HandleTypeDef *husart)
// 1117 {
// 1118   /* The Lock is not implemented on this API to allow the user application
// 1119      to call the HAL USART API under callbacks HAL_USART_TxCpltCallback() / HAL_USART_RxCpltCallback():
// 1120      when calling HAL_DMA_Abort() API the DMA TX/RX Transfer complete interrupt is generated
// 1121      and the correspond call back is executed HAL_USART_TxCpltCallback() / HAL_USART_RxCpltCallback()
// 1122      */
// 1123 
// 1124   /* Abort the USART DMA Tx channel */
// 1125   if(husart->hdmatx != NULL)
// 1126   {
// 1127     HAL_DMA_Abort(husart->hdmatx);
// 1128   }
// 1129   /* Abort the USART DMA Rx channel */
// 1130   if(husart->hdmarx != NULL)
// 1131   {  
// 1132     HAL_DMA_Abort(husart->hdmarx);
// 1133   }
// 1134   
// 1135   /* Disable the USART Tx/Rx DMA requests */
// 1136   CLEAR_BIT(husart->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
// 1137 
// 1138   husart->State = HAL_USART_STATE_READY;
// 1139 
// 1140   return HAL_OK;
// 1141 }
// 1142 
// 1143 /**
// 1144   * @brief  This function handles USART interrupt request.
// 1145   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1146   *                 the configuration information for the specified USART module.
// 1147   * @retval None
// 1148   */
// 1149 void HAL_USART_IRQHandler(USART_HandleTypeDef *husart)
// 1150 {
// 1151   uint32_t tmp_flag = 0, tmp_it_source = 0;
// 1152   
// 1153   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_PE);
// 1154   tmp_it_source = __HAL_USART_GET_IT_SOURCE(husart, USART_IT_PE);
// 1155   /* USART parity error interrupt occurred -----------------------------------*/
// 1156   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1157   {
// 1158     husart->ErrorCode |= HAL_USART_ERROR_PE;
// 1159   }
// 1160 
// 1161   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_FE);
// 1162   tmp_it_source = __HAL_USART_GET_IT_SOURCE(husart, USART_IT_ERR);
// 1163   /* USART frame error interrupt occurred ------------------------------------*/
// 1164   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1165   {
// 1166     husart->ErrorCode |= HAL_USART_ERROR_FE;
// 1167   }
// 1168 
// 1169   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_NE);
// 1170   /* USART noise error interrupt occurred ------------------------------------*/
// 1171   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1172   {
// 1173     husart->ErrorCode |= HAL_USART_ERROR_NE;
// 1174   }
// 1175 
// 1176   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_ORE);
// 1177   /* USART Over-Run interrupt occurred ---------------------------------------*/
// 1178   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1179   {
// 1180     husart->ErrorCode |= HAL_USART_ERROR_ORE;
// 1181   }
// 1182 
// 1183   if(husart->ErrorCode != HAL_USART_ERROR_NONE)
// 1184   {
// 1185     /* Clear all the error flag at once */
// 1186     __HAL_USART_CLEAR_PEFLAG(husart);
// 1187 
// 1188     /* Set the USART state ready to be able to start again the process */
// 1189     husart->State = HAL_USART_STATE_READY;
// 1190     
// 1191     HAL_USART_ErrorCallback(husart);
// 1192   }
// 1193 
// 1194   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_RXNE);
// 1195   tmp_it_source = __HAL_USART_GET_IT_SOURCE(husart, USART_IT_RXNE);
// 1196   /* USART in mode Receiver --------------------------------------------------*/
// 1197   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1198   {
// 1199     if(husart->State == HAL_USART_STATE_BUSY_RX)
// 1200     {
// 1201       USART_Receive_IT(husart);
// 1202     }
// 1203     else
// 1204     {
// 1205       USART_TransmitReceive_IT(husart);
// 1206     }
// 1207   }
// 1208 
// 1209   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_TXE);
// 1210   tmp_it_source = __HAL_USART_GET_IT_SOURCE(husart, USART_IT_TXE);
// 1211   /* USART in mode Transmitter -----------------------------------------------*/
// 1212   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1213   {
// 1214     if(husart->State == HAL_USART_STATE_BUSY_TX)
// 1215     {
// 1216       USART_Transmit_IT(husart);
// 1217     }
// 1218     else
// 1219     {
// 1220       USART_TransmitReceive_IT(husart);
// 1221     }
// 1222   }
// 1223   
// 1224   tmp_flag = __HAL_USART_GET_FLAG(husart, USART_FLAG_TC);
// 1225   tmp_it_source = __HAL_USART_GET_IT_SOURCE(husart, USART_IT_TC);
// 1226   /* USART in mode Transmitter (transmission end) -----------------------------*/
// 1227   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1228   {
// 1229     USART_EndTransmit_IT(husart);
// 1230   } 
// 1231 
// 1232 }
// 1233 
// 1234 
// 1235 /**
// 1236   * @brief  Tx Transfer completed callbacks.
// 1237   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1238   *                 the configuration information for the specified USART module.
// 1239   * @retval None
// 1240   */
// 1241  __weak void HAL_USART_TxCpltCallback(USART_HandleTypeDef *husart)
// 1242 {
// 1243   /* Prevent unused argument(s) compilation warning */
// 1244   UNUSED(husart);
// 1245 
// 1246   /* NOTE: This function should not be modified, when the callback is needed,
// 1247            the HAL_USART_TxCpltCallback can be implemented in the user file
// 1248    */
// 1249 }
// 1250 
// 1251 /**
// 1252   * @brief  Tx Half Transfer completed callbacks.
// 1253   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1254   *                 the configuration information for the specified USART module.
// 1255   * @retval None
// 1256   */
// 1257  __weak void HAL_USART_TxHalfCpltCallback(USART_HandleTypeDef *husart)
// 1258 {
// 1259   /* Prevent unused argument(s) compilation warning */
// 1260   UNUSED(husart);
// 1261 
// 1262   /* NOTE: This function should not be modified, when the callback is needed,
// 1263            the HAL_USART_TxHalfCpltCallback can be implemented in the user file
// 1264    */
// 1265 }
// 1266 
// 1267 /**
// 1268   * @brief  Rx Transfer completed callbacks.
// 1269   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1270   *                 the configuration information for the specified USART module.
// 1271   * @retval None
// 1272   */
// 1273 __weak void HAL_USART_RxCpltCallback(USART_HandleTypeDef *husart)
// 1274 {
// 1275   /* Prevent unused argument(s) compilation warning */
// 1276   UNUSED(husart);
// 1277 
// 1278   /* NOTE: This function should not be modified, when the callback is needed,
// 1279            the HAL_USART_RxCpltCallback can be implemented in the user file
// 1280    */
// 1281 }
// 1282 
// 1283 /**
// 1284   * @brief  Rx Half Transfer completed callbacks.
// 1285   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1286   *                 the configuration information for the specified USART module.
// 1287   * @retval None
// 1288   */
// 1289 __weak void HAL_USART_RxHalfCpltCallback(USART_HandleTypeDef *husart)
// 1290 {
// 1291   /* Prevent unused argument(s) compilation warning */
// 1292   UNUSED(husart);
// 1293 
// 1294   /* NOTE: This function should not be modified, when the callback is needed,
// 1295            the HAL_USART_RxHalfCpltCallback can be implemented in the user file
// 1296    */
// 1297 }
// 1298 
// 1299 /**
// 1300   * @brief  Tx/Rx Transfers completed callback for the non-blocking process.
// 1301   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1302   *                 the configuration information for the specified USART module.
// 1303   * @retval None
// 1304   */
// 1305 __weak void HAL_USART_TxRxCpltCallback(USART_HandleTypeDef *husart)
// 1306 {
// 1307   /* Prevent unused argument(s) compilation warning */
// 1308   UNUSED(husart);
// 1309 
// 1310   /* NOTE: This function should not be modified, when the callback is needed,
// 1311            the HAL_USART_TxRxCpltCallback can be implemented in the user file
// 1312    */
// 1313 }
// 1314 
// 1315 /**
// 1316   * @brief  USART error callbacks.
// 1317   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1318   *                 the configuration information for the specified USART module.
// 1319   * @retval None
// 1320   */
// 1321  __weak void HAL_USART_ErrorCallback(USART_HandleTypeDef *husart)
// 1322 {
// 1323   /* Prevent unused argument(s) compilation warning */
// 1324   UNUSED(husart);
// 1325 
// 1326   /* NOTE: This function should not be modified, when the callback is needed,
// 1327            the HAL_USART_ErrorCallback can be implemented in the user file
// 1328    */ 
// 1329 }
// 1330 
// 1331 /**
// 1332   * @}
// 1333   */
// 1334 
// 1335 /** @defgroup USART_Exported_Functions_Group3 Peripheral State and Errors functions 
// 1336   *  @brief   USART State and Errors functions 
// 1337   *
// 1338 @verbatim   
// 1339   ==============================================================================
// 1340                   ##### Peripheral State and Errors functions #####
// 1341   ==============================================================================  
// 1342   [..]
// 1343     This subsection provides a set of functions allowing to return the State of 
// 1344     USART communication
// 1345     process, return Peripheral Errors occurred during communication process
// 1346      (+) HAL_USART_GetState() API can be helpful to check in run-time the state 
// 1347          of the USART peripheral.
// 1348      (+) HAL_USART_GetError() check in run-time errors that could be occurred during 
// 1349          communication. 
// 1350 @endverbatim
// 1351   * @{
// 1352   */
// 1353 
// 1354 /**
// 1355   * @brief  Returns the USART state.
// 1356   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1357   *                 the configuration information for the specified USART module.
// 1358   * @retval HAL state
// 1359   */
// 1360 HAL_USART_StateTypeDef HAL_USART_GetState(USART_HandleTypeDef *husart)
// 1361 {
// 1362   return husart->State;
// 1363 }
// 1364 
// 1365 /**
// 1366   * @brief  Return the USART error code
// 1367   * @param  husart : pointer to a USART_HandleTypeDef structure that contains
// 1368   *              the configuration information for the specified USART.
// 1369   * @retval USART Error Code
// 1370   */
// 1371 uint32_t HAL_USART_GetError(USART_HandleTypeDef *husart)
// 1372 {
// 1373   return husart->ErrorCode;
// 1374 }
// 1375 
// 1376 /**
// 1377   * @}
// 1378   */
// 1379 
// 1380 /**
// 1381   * @}
// 1382   */
// 1383 
// 1384 /** @defgroup USART_Private_Functions   USART Private Functions
// 1385   *  @brief   USART Private functions 
// 1386   * @{
// 1387   */
// 1388 /**
// 1389   * @brief  DMA USART transmit process complete callback. 
// 1390   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1391   *               the configuration information for the specified DMA module.
// 1392   * @retval None
// 1393   */
// 1394 static void USART_DMATransmitCplt(DMA_HandleTypeDef *hdma)
// 1395 {
// 1396   USART_HandleTypeDef* husart = ( USART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1397 
// 1398   /* DMA Normal mode */
// 1399   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
// 1400   {
// 1401     husart->TxXferCount = 0;
// 1402 
// 1403     if(husart->State == HAL_USART_STATE_BUSY_TX)
// 1404     {
// 1405       /* Disable the DMA transfer for transmit request by resetting the DMAT bit
// 1406          in the USART CR3 register */
// 1407       CLEAR_BIT(husart->Instance->CR3, USART_CR3_DMAT);
// 1408       
// 1409       /* Enable the USART Transmit Complete Interrupt */    
// 1410       __HAL_USART_ENABLE_IT(husart, USART_IT_TC);
// 1411     }
// 1412   }
// 1413   /* DMA Circular mode */
// 1414   else
// 1415   {
// 1416     if(husart->State == HAL_USART_STATE_BUSY_TX)
// 1417     {
// 1418       HAL_USART_TxCpltCallback(husart);
// 1419     }
// 1420   }
// 1421 }
// 1422 
// 1423 /**
// 1424   * @brief DMA USART transmit process half complete callback 
// 1425   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1426   *               the configuration information for the specified DMA module.
// 1427   * @retval None
// 1428   */
// 1429 static void USART_DMATxHalfCplt(DMA_HandleTypeDef *hdma)
// 1430 {
// 1431   USART_HandleTypeDef* husart = (USART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1432 
// 1433   HAL_USART_TxHalfCpltCallback(husart);
// 1434 }
// 1435 
// 1436 /**
// 1437   * @brief  DMA USART receive process complete callback. 
// 1438   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1439   *               the configuration information for the specified DMA module.
// 1440   * @retval None
// 1441   */
// 1442 static void USART_DMAReceiveCplt(DMA_HandleTypeDef *hdma)
// 1443 {
// 1444   USART_HandleTypeDef* husart = ( USART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1445 
// 1446   /* DMA Normal mode */
// 1447   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
// 1448   {
// 1449     husart->RxXferCount = 0;
// 1450     if(husart->State == HAL_USART_STATE_BUSY_RX)
// 1451     {
// 1452       /* Disable the DMA transfer for the receiver requests by setting the DMAR bit 
// 1453          in the USART CR3 register */
// 1454       CLEAR_BIT(husart->Instance->CR3, USART_CR3_DMAR);
// 1455 
// 1456       husart->State= HAL_USART_STATE_READY;
// 1457       HAL_USART_RxCpltCallback(husart);
// 1458     }
// 1459     /* the usart state is HAL_USART_STATE_BUSY_TX_RX*/
// 1460     else
// 1461     {
// 1462       /* Disable the DMA transfer for the Transmit/receiver requests by setting the DMAT/DMAR bit 
// 1463          in the USART CR3 register */
// 1464       CLEAR_BIT(husart->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
// 1465 
// 1466       husart->State= HAL_USART_STATE_READY;
// 1467       HAL_USART_TxRxCpltCallback(husart);
// 1468     }
// 1469   }
// 1470   /* DMA circular mode */
// 1471   else
// 1472   {
// 1473     if(husart->State == HAL_USART_STATE_BUSY_RX)
// 1474     {
// 1475       HAL_USART_RxCpltCallback(husart);
// 1476     }
// 1477     /* the usart state is HAL_USART_STATE_BUSY_TX_RX*/
// 1478     else
// 1479     {
// 1480       HAL_USART_TxRxCpltCallback(husart);
// 1481     }
// 1482   }
// 1483 }
// 1484 
// 1485 /**
// 1486   * @brief DMA USART receive process half complete callback 
// 1487   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1488   *               the configuration information for the specified DMA module.
// 1489   * @retval None
// 1490   */
// 1491 static void USART_DMARxHalfCplt(DMA_HandleTypeDef *hdma)
// 1492 {
// 1493   USART_HandleTypeDef* husart = (USART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1494 
// 1495   HAL_USART_RxHalfCpltCallback(husart); 
// 1496 }
// 1497 
// 1498 /**
// 1499   * @brief  DMA USART communication error callback. 
// 1500   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1501   *               the configuration information for the specified DMA module.
// 1502   * @retval None
// 1503   */
// 1504 static void USART_DMAError(DMA_HandleTypeDef *hdma)   
// 1505 {
// 1506   USART_HandleTypeDef* husart = ( USART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1507 
// 1508   husart->RxXferCount = 0;
// 1509   husart->TxXferCount = 0;
// 1510   husart->ErrorCode |= HAL_USART_ERROR_DMA;
// 1511   husart->State= HAL_USART_STATE_READY;
// 1512   
// 1513   HAL_USART_ErrorCallback(husart);
// 1514 }
// 1515 
// 1516 /**
// 1517   * @brief  This function handles USART Communication Timeout.
// 1518   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1519   *                 the configuration information for the specified USART module.
// 1520   * @param  Flag: specifies the USART flag to check.
// 1521   * @param  Status: The new Flag status (SET or RESET).
// 1522   * @param  Timeout: Timeout duration
// 1523   * @retval HAL status
// 1524   */
// 1525 static HAL_StatusTypeDef USART_WaitOnFlagUntilTimeout(USART_HandleTypeDef *husart, uint32_t Flag, FlagStatus Status, uint32_t Timeout)
// 1526 {
// 1527   uint32_t tickstart = 0;
// 1528 
// 1529   /* Get tick */ 
// 1530   tickstart = HAL_GetTick();
// 1531 
// 1532   /* Wait until flag is set */
// 1533   if(Status == RESET)
// 1534   {
// 1535     while(__HAL_USART_GET_FLAG(husart, Flag) == RESET)
// 1536     {
// 1537       /* Check for the Timeout */
// 1538       if(Timeout != HAL_MAX_DELAY)
// 1539       {
// 1540         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1541         {
// 1542           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1543           __HAL_USART_DISABLE_IT(husart, USART_IT_TXE);
// 1544           __HAL_USART_DISABLE_IT(husart, USART_IT_RXNE);
// 1545           __HAL_USART_DISABLE_IT(husart, USART_IT_PE);
// 1546           __HAL_USART_DISABLE_IT(husart, USART_IT_ERR);
// 1547 
// 1548           husart->State= HAL_USART_STATE_READY;
// 1549 
// 1550           /* Process Unlocked */
// 1551           __HAL_UNLOCK(husart);
// 1552 
// 1553           return HAL_TIMEOUT;
// 1554         }
// 1555       }
// 1556     }
// 1557   }
// 1558   else
// 1559   {
// 1560     while(__HAL_USART_GET_FLAG(husart, Flag) != RESET)
// 1561     {
// 1562       /* Check for the Timeout */
// 1563       if(Timeout != HAL_MAX_DELAY)
// 1564       {
// 1565         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1566         {
// 1567           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1568           __HAL_USART_DISABLE_IT(husart, USART_IT_TXE);
// 1569           __HAL_USART_DISABLE_IT(husart, USART_IT_RXNE);
// 1570           __HAL_USART_DISABLE_IT(husart, USART_IT_PE);
// 1571           __HAL_USART_DISABLE_IT(husart, USART_IT_ERR);
// 1572 
// 1573           husart->State= HAL_USART_STATE_READY;
// 1574 
// 1575           /* Process Unlocked */
// 1576           __HAL_UNLOCK(husart);
// 1577 
// 1578           return HAL_TIMEOUT;
// 1579         }
// 1580       }
// 1581     }
// 1582   }
// 1583   return HAL_OK;
// 1584 }
// 1585 
// 1586 /**
// 1587   * @brief  Simplex Send an amount of data in non-blocking mode. 
// 1588   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1589   *                 the configuration information for the specified USART module.
// 1590   * @retval HAL status
// 1591   * @note   The USART errors are not managed to avoid the overrun error.
// 1592   */
// 1593 static HAL_StatusTypeDef USART_Transmit_IT(USART_HandleTypeDef *husart)
// 1594 {
// 1595   uint16_t* tmp=0;
// 1596  
// 1597   if(husart->State == HAL_USART_STATE_BUSY_TX)
// 1598   {
// 1599     if(husart->Init.WordLength == USART_WORDLENGTH_9B)
// 1600     {
// 1601       tmp = (uint16_t*) husart->pTxBuffPtr;
// 1602       WRITE_REG(husart->Instance->DR, (uint16_t)(*tmp & (uint16_t)0x01FF));
// 1603       if(husart->Init.Parity == USART_PARITY_NONE)
// 1604       {
// 1605         husart->pTxBuffPtr += 2;
// 1606       }
// 1607       else
// 1608       {
// 1609         husart->pTxBuffPtr += 1;
// 1610       }
// 1611     } 
// 1612     else
// 1613     { 
// 1614       WRITE_REG(husart->Instance->DR, (uint8_t)(*husart->pTxBuffPtr++ & (uint8_t)0x00FF));
// 1615     }
// 1616     
// 1617     if(--husart->TxXferCount == 0)
// 1618     {
// 1619       /* Disable the USART Transmit data register empty Interrupt */
// 1620       __HAL_USART_DISABLE_IT(husart, USART_IT_TXE);
// 1621 
// 1622       /* Enable the USART Transmit Complete Interrupt */    
// 1623       __HAL_USART_ENABLE_IT(husart, USART_IT_TC);
// 1624     }
// 1625     return HAL_OK;
// 1626   }
// 1627   else
// 1628   {
// 1629     return HAL_BUSY;
// 1630   }
// 1631 }
// 1632 
// 1633 
// 1634 /**
// 1635   * @brief  Wraps up transmission in non blocking mode.
// 1636   * @param  husart: pointer to a USART_HandleTypeDef structure that contains
// 1637   *                the configuration information for the specified USART module.
// 1638   * @retval HAL status
// 1639   */
// 1640 static HAL_StatusTypeDef USART_EndTransmit_IT(USART_HandleTypeDef *husart)
// 1641 {
// 1642   /* Disable the USART Transmit Complete Interrupt */    
// 1643   __HAL_USART_DISABLE_IT(husart, USART_IT_TC);
// 1644   
// 1645   /* Disable the USART Error Interrupt: (Frame error, noise error, overrun error) */
// 1646   __HAL_USART_DISABLE_IT(husart, USART_IT_ERR);
// 1647     
// 1648   husart->State = HAL_USART_STATE_READY;
// 1649    
// 1650   HAL_USART_TxCpltCallback(husart);
// 1651   
// 1652   return HAL_OK;
// 1653 }
// 1654 
// 1655 
// 1656 /**
// 1657   * @brief  Simplex Receive an amount of data in non-blocking mode. 
// 1658   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1659   *                 the configuration information for the specified USART module.
// 1660   * @retval HAL status
// 1661   */
// 1662 static HAL_StatusTypeDef USART_Receive_IT(USART_HandleTypeDef *husart)
// 1663 {
// 1664   uint16_t* tmp=0;
// 1665   if(husart->State == HAL_USART_STATE_BUSY_RX)
// 1666   {
// 1667     if(husart->Init.WordLength == USART_WORDLENGTH_9B)
// 1668     {
// 1669       tmp = (uint16_t*) husart->pRxBuffPtr;
// 1670       if(husart->Init.Parity == USART_PARITY_NONE)
// 1671       {
// 1672         *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x01FF);
// 1673         husart->pRxBuffPtr += 2;
// 1674       }
// 1675       else
// 1676       {
// 1677         *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x00FF);
// 1678         husart->pRxBuffPtr += 1;
// 1679       }
// 1680       if(--husart->RxXferCount != 0x00) 
// 1681       {
// 1682         /* Send dummy byte in order to generate the clock for the slave to send the next data */
// 1683         WRITE_REG(husart->Instance->DR, (DUMMY_DATA & (uint16_t)0x01FF)); 
// 1684       }
// 1685     } 
// 1686     else
// 1687     {
// 1688       if(husart->Init.Parity == USART_PARITY_NONE)
// 1689       {
// 1690         *husart->pRxBuffPtr++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x00FF);
// 1691       }
// 1692       else
// 1693       {
// 1694         *husart->pRxBuffPtr++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x007F);
// 1695       }
// 1696 
// 1697       if(--husart->RxXferCount != 0x00) 
// 1698       {
// 1699         /* Send dummy byte in order to generate the clock for the slave to send the next data */
// 1700         WRITE_REG(husart->Instance->DR, (DUMMY_DATA & (uint16_t)0x00FF));  
// 1701       }
// 1702     }
// 1703 
// 1704     if(husart->RxXferCount == 0)
// 1705     {
// 1706       /* Disable the USART RXNE Interrupt */
// 1707       __HAL_USART_DISABLE_IT(husart, USART_IT_RXNE);
// 1708 
// 1709       /* Disable the USART Parity Error Interrupt */
// 1710       __HAL_USART_DISABLE_IT(husart, USART_IT_PE);
// 1711 
// 1712       /* Disable the USART Error Interrupt: (Frame error, noise error, overrun error) */
// 1713       __HAL_USART_DISABLE_IT(husart, USART_IT_ERR);
// 1714 
// 1715       husart->State = HAL_USART_STATE_READY;
// 1716       HAL_USART_RxCpltCallback(husart);
// 1717       
// 1718       return HAL_OK;
// 1719     }
// 1720     return HAL_OK;
// 1721   }
// 1722   else
// 1723   {
// 1724     return HAL_BUSY; 
// 1725   }
// 1726 }
// 1727 
// 1728 /**
// 1729   * @brief  Full-Duplex Send receive an amount of data in full-duplex mode (non-blocking). 
// 1730   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1731   *                 the configuration information for the specified USART module.
// 1732   * @retval HAL status
// 1733   */
// 1734 static HAL_StatusTypeDef USART_TransmitReceive_IT(USART_HandleTypeDef *husart)
// 1735 {
// 1736   uint16_t* tmp=0;
// 1737 
// 1738   if(husart->State == HAL_USART_STATE_BUSY_TX_RX)
// 1739   {
// 1740     if(husart->TxXferCount != 0x00)
// 1741     {
// 1742       if(__HAL_USART_GET_FLAG(husart, USART_FLAG_TXE) != RESET)
// 1743       {
// 1744         if(husart->Init.WordLength == USART_WORDLENGTH_9B)
// 1745         {
// 1746           tmp = (uint16_t*) husart->pTxBuffPtr;
// 1747           WRITE_REG(husart->Instance->DR, (uint16_t)(*tmp & (uint16_t)0x01FF));
// 1748           if(husart->Init.Parity == USART_PARITY_NONE)
// 1749           {
// 1750             husart->pTxBuffPtr += 2;
// 1751           }
// 1752           else
// 1753           {
// 1754             husart->pTxBuffPtr += 1;
// 1755           }
// 1756         } 
// 1757         else
// 1758         {
// 1759           WRITE_REG(husart->Instance->DR, (uint8_t)(*husart->pTxBuffPtr++ & (uint8_t)0x00FF));
// 1760         }
// 1761         husart->TxXferCount--;
// 1762 
// 1763         /* Check the latest data transmitted */
// 1764         if(husart->TxXferCount == 0)
// 1765         {
// 1766            __HAL_USART_DISABLE_IT(husart, USART_IT_TXE);
// 1767         }
// 1768       }
// 1769     }
// 1770 
// 1771     if(husart->RxXferCount != 0x00)
// 1772     {
// 1773       if(__HAL_USART_GET_FLAG(husart, USART_FLAG_RXNE) != RESET)
// 1774       {
// 1775         if(husart->Init.WordLength == USART_WORDLENGTH_9B)
// 1776         {
// 1777           tmp = (uint16_t*) husart->pRxBuffPtr;
// 1778           if(husart->Init.Parity == USART_PARITY_NONE)
// 1779           {
// 1780             *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x01FF);
// 1781             husart->pRxBuffPtr += 2;
// 1782           }
// 1783           else
// 1784           {
// 1785             *tmp = (uint16_t)(husart->Instance->DR & (uint16_t)0x00FF);
// 1786             husart->pRxBuffPtr += 1;
// 1787           }
// 1788         } 
// 1789         else
// 1790         {
// 1791           if(husart->Init.Parity == USART_PARITY_NONE)
// 1792           {
// 1793             *husart->pRxBuffPtr++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x00FF);
// 1794           }
// 1795           else
// 1796           {
// 1797             *husart->pRxBuffPtr++ = (uint8_t)(husart->Instance->DR & (uint8_t)0x007F);
// 1798           }
// 1799         }
// 1800         husart->RxXferCount--;
// 1801       }
// 1802     }
// 1803 
// 1804     /* Check the latest data received */
// 1805     if(husart->RxXferCount == 0)
// 1806     {
// 1807       __HAL_USART_DISABLE_IT(husart, USART_IT_RXNE);
// 1808 
// 1809       /* Disable the USART Parity Error Interrupt */
// 1810       __HAL_USART_DISABLE_IT(husart, USART_IT_PE);
// 1811 
// 1812       /* Disable the USART Error Interrupt: (Frame error, noise error, overrun error) */
// 1813       __HAL_USART_DISABLE_IT(husart, USART_IT_ERR);
// 1814 
// 1815       husart->State = HAL_USART_STATE_READY;
// 1816 
// 1817       HAL_USART_TxRxCpltCallback(husart);
// 1818 
// 1819       return HAL_OK;
// 1820     }
// 1821 
// 1822     return HAL_OK;
// 1823   }
// 1824   else
// 1825   {
// 1826     return HAL_BUSY; 
// 1827   }
// 1828 }
// 1829 
// 1830 /**
// 1831   * @brief  Configures the USART peripheral. 
// 1832   * @param  husart: Pointer to a USART_HandleTypeDef structure that contains
// 1833   *                 the configuration information for the specified USART module.
// 1834   * @retval None
// 1835   */
// 1836 static void USART_SetConfig(USART_HandleTypeDef *husart)
// 1837 {
// 1838   /* Check the parameters */
// 1839   assert_param(IS_USART_POLARITY(husart->Init.CLKPolarity));
// 1840   assert_param(IS_USART_PHASE(husart->Init.CLKPhase));
// 1841   assert_param(IS_USART_LASTBIT(husart->Init.CLKLastBit));
// 1842   assert_param(IS_USART_BAUDRATE(husart->Init.BaudRate));  
// 1843   assert_param(IS_USART_WORD_LENGTH(husart->Init.WordLength));
// 1844   assert_param(IS_USART_STOPBITS(husart->Init.StopBits));
// 1845   assert_param(IS_USART_PARITY(husart->Init.Parity));
// 1846   assert_param(IS_USART_MODE(husart->Init.Mode));
// 1847 
// 1848   /* The LBCL, CPOL and CPHA bits have to be selected when both the transmitter and the
// 1849      receiver are disabled (TE=RE=0) to ensure that the clock pulses function correctly. */
// 1850   CLEAR_BIT(husart->Instance->CR1, ((uint32_t)(USART_CR1_TE | USART_CR1_RE)));
// 1851 
// 1852   /*---------------------------- USART CR2 Configuration ---------------------*/
// 1853   /* Configure the USART Clock, CPOL, CPHA and LastBit -----------------------*/
// 1854   /* Set CPOL bit according to husart->Init.CLKPolarity value */
// 1855   /* Set CPHA bit according to husart->Init.CLKPhase value */
// 1856   /* Set LBCL bit according to husart->Init.CLKLastBit value */
// 1857   /* Set Stop Bits: Set STOP[13:12] bits according to husart->Init.StopBits value */
// 1858   /* Write to USART CR2 */
// 1859   MODIFY_REG(husart->Instance->CR2, 
// 1860              (uint32_t)(USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_CLKEN | USART_CR2_LBCL | USART_CR2_STOP),
// 1861              ((uint32_t)(USART_CLOCK_ENABLE| husart->Init.CLKPolarity | husart->Init.CLKPhase| husart->Init.CLKLastBit | husart->Init.StopBits)));
// 1862 
// 1863   /*-------------------------- USART CR1 Configuration -----------------------*/
// 1864   /* Configure the USART Word Length, Parity and mode: 
// 1865      Set the M bits according to husart->Init.WordLength value 
// 1866      Set PCE and PS bits according to husart->Init.Parity value
// 1867      Set TE and RE bits according to husart->Init.Mode value
// 1868      Force OVER8 bit to 1 in order to reach the max USART frequencies */
// 1869   MODIFY_REG(husart->Instance->CR1, 
// 1870              (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
// 1871              (uint32_t)husart->Init.WordLength | husart->Init.Parity | husart->Init.Mode | USART_CR1_OVER8);
// 1872 
// 1873   /*-------------------------- USART CR3 Configuration -----------------------*/  
// 1874   /* Clear CTSE and RTSE bits */
// 1875   CLEAR_BIT(husart->Instance->CR3, (uint32_t)(USART_CR3_RTSE | USART_CR3_CTSE));
// 1876 
// 1877   /*-------------------------- USART BRR Configuration -----------------------*/
// 1878   if((husart->Instance == USART1))
// 1879   {
// 1880     husart->Instance->BRR = USART_BRR(HAL_RCC_GetPCLK2Freq(), husart->Init.BaudRate);
// 1881   }
// 1882   else
// 1883   {
// 1884     husart->Instance->BRR = USART_BRR(HAL_RCC_GetPCLK1Freq(), husart->Init.BaudRate);
// 1885   }
// 1886 }
// 1887 
// 1888 /**
// 1889   * @}
// 1890   */
// 1891 
// 1892 #endif /* HAL_USART_MODULE_ENABLED */
// 1893 /**
// 1894   * @}
// 1895   */
// 1896 
// 1897 /**
// 1898   * @}
// 1899   */
// 1900 
// 1901 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none