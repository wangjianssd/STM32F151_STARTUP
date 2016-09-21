///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_irda.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_irda.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_irda.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_irda.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_irda.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   IRDA HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the IrDA SIR ENDEC block (IrDA):
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral State and Errors functions
//   13   *           + Peripheral Control functions
//   14   *
//   15   @verbatim
//   16   ==============================================================================
//   17                         ##### How to use this driver #####
//   18   ==============================================================================
//   19   [..]
//   20     The IRDA HAL driver can be used as follows:
//   21 
//   22     (#) Declare a IRDA_HandleTypeDef handle structure.
//   23     (#) Initialize the IRDA low level resources by implementing the HAL_IRDA_MspInit() API:
//   24         (##) Enable the USARTx interface clock.
//   25         (##) IRDA pins configuration:
//   26             (+++) Enable the clock for the IRDA GPIOs.
//   27             (+++) Configure the IRDA pins as alternate function pull-up.
//   28         (##) NVIC configuration if you need to use interrupt process (HAL_IRDA_Transmit_IT()
//   29              and HAL_IRDA_Receive_IT() APIs):
//   30             (+++) Configure the USARTx interrupt priority.
//   31             (+++) Enable the NVIC USART IRQ handle.
//   32         (##) DMA Configuration if you need to use DMA process (HAL_IRDA_Transmit_DMA()
//   33              and HAL_IRDA_Receive_DMA() APIs):
//   34             (+++) Declare a DMA handle structure for the Tx/Rx channel.
//   35             (+++) Enable the DMAx interface clock.
//   36             (+++) Configure the declared DMA handle structure with the required Tx/Rx parameters.
//   37             (+++) Configure the DMA Tx/Rx channel.
//   38             (+++) Associate the initilalized DMA handle to the IRDA DMA Tx/Rx handle.
//   39             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on the DMA Tx/Rx channel.
//   40             (+++) Configure the USARTx interrupt priority and enable the NVIC USART IRQ handle
//   41 			      (used for last byte sending completion detection in DMA non circular mode)
//   42 
//   43     (#) Program the Baud Rate, Word Length, Parity, IrDA Mode, Prescaler 
//   44         and Mode(Receiver/Transmitter) in the hirda Init structure.
//   45 
//   46     (#) Initialize the IRDA registers by calling the HAL_IRDA_Init() API:
//   47         (++) This API configures also the low level Hardware GPIO, CLOCK, CORTEX...etc)
//   48              by calling the customed HAL_IRDA_MspInit() API.
//   49 
//   50         -@@- The specific IRDA interrupts (Transmission complete interrupt, 
//   51              RXNE interrupt and Error Interrupts) will be managed using the macros
//   52              __HAL_IRDA_ENABLE_IT() and __HAL_IRDA_DISABLE_IT() inside the transmit and receive process.
//   53           
//   54     (#) Three operation modes are available within this driver :
//   55  
//   56      *** Polling mode IO operation ***
//   57      =================================
//   58      [..]    
//   59        (+) Send an amount of data in blocking mode using HAL_IRDA_Transmit() 
//   60        (+) Receive an amount of data in blocking mode using HAL_IRDA_Receive()
//   61        
//   62      *** Interrupt mode IO operation ***    
//   63      ===================================
//   64      [..]    
//   65        (+) Send an amount of data in non blocking mode using HAL_IRDA_Transmit_IT() 
//   66        (+) At transmission end of transfer HAL_IRDA_TxCpltCallback is executed and user can 
//   67             add his own code by customization of function pointer HAL_IRDA_TxCpltCallback
//   68        (+) Receive an amount of data in non blocking mode using HAL_IRDA_Receive_IT() 
//   69        (+) At reception end of transfer HAL_IRDA_RxCpltCallback is executed and user can 
//   70             add his own code by customization of function pointer HAL_IRDA_RxCpltCallback                                      
//   71        (+) In case of transfer Error, HAL_IRDA_ErrorCallback() function is executed and user can 
//   72             add his own code by customization of function pointer HAL_IRDA_ErrorCallback
//   73 
//   74      *** DMA mode IO operation ***    
//   75      ==============================
//   76      [..] 
//   77        (+) Send an amount of data in non blocking mode (DMA) using HAL_IRDA_Transmit_DMA() 
//   78        (+) At transmission end of transfer HAL_IRDA_TxCpltCallback is executed and user can 
//   79             add his own code by customization of function pointer HAL_IRDA_TxCpltCallback
//   80        (+) Receive an amount of data in non blocking mode (DMA) using HAL_IRDA_Receive_DMA() 
//   81        (+) At reception end of transfer HAL_IRDA_RxCpltCallback is executed and user can 
//   82             add his own code by customization of function pointer HAL_IRDA_RxCpltCallback                                      
//   83        (+) In case of transfer Error, HAL_IRDA_ErrorCallback() function is executed and user can 
//   84             add his own code by customization of function pointer HAL_IRDA_ErrorCallback
//   85 
//   86      *** IRDA HAL driver macros list ***
//   87      ====================================
//   88      [..]
//   89        Below the list of most used macros in IRDA HAL driver.
//   90        
//   91        (+) __HAL_IRDA_ENABLE: Enable the IRDA peripheral 
//   92        (+) __HAL_IRDA_DISABLE: Disable the IRDA peripheral     
//   93        (+) __HAL_IRDA_GET_FLAG : Check whether the specified IRDA flag is set or not
//   94        (+) __HAL_IRDA_CLEAR_FLAG : Clear the specified IRDA pending flag
//   95        (+) __HAL_IRDA_ENABLE_IT: Enable the specified IRDA interrupt
//   96        (+) __HAL_IRDA_DISABLE_IT: Disable the specified IRDA interrupt
//   97        (+) __HAL_IRDA_GET_IT_SOURCE: Check whether the specified IRDA interrupt has occurred or not
//   98       
//   99      [..] 
//  100        (@) You can refer to the IRDA HAL driver header file for more useful macros
//  101 
//  102   @endverbatim
//  103   ******************************************************************************
//  104   * @attention
//  105   *
//  106   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  107   *
//  108   * Redistribution and use in source and binary forms, with or without modification,
//  109   * are permitted provided that the following conditions are met:
//  110   *   1. Redistributions of source code must retain the above copyright notice,
//  111   *      this list of conditions and the following disclaimer.
//  112   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  113   *      this list of conditions and the following disclaimer in the documentation
//  114   *      and/or other materials provided with the distribution.
//  115   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  116   *      may be used to endorse or promote products derived from this software
//  117   *      without specific prior written permission.
//  118   *
//  119   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  120   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  121   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  122   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  123   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  124   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  125   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  126   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  127   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  128   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  129   *
//  130   ******************************************************************************
//  131   */
//  132 
//  133 /* Includes ------------------------------------------------------------------*/
//  134 #include "stm32l1xx_hal.h"
//  135 
//  136 /** @addtogroup STM32L1xx_HAL_Driver
//  137   * @{
//  138   */
//  139 
//  140 /** @defgroup IRDA IRDA
//  141   * @brief HAL IRDA module driver
//  142   * @{
//  143   */
//  144 
//  145 #ifdef HAL_IRDA_MODULE_ENABLED
//  146 
//  147 /* Private typedef -----------------------------------------------------------*/
//  148 /* Private define ------------------------------------------------------------*/
//  149 /** @defgroup IRDA_Private_Constants   IRDA Private Constants
//  150   * @{
//  151   */
//  152 #define IRDA_DR_MASK_U16_8DATABITS  (uint16_t)0x00FF
//  153 #define IRDA_DR_MASK_U16_9DATABITS  (uint16_t)0x01FF
//  154 
//  155 #define IRDA_DR_MASK_U8_7DATABITS  (uint8_t)0x7F
//  156 #define IRDA_DR_MASK_U8_8DATABITS  (uint8_t)0xFF
//  157 
//  158 
//  159 /**
//  160   * @}
//  161   */
//  162 
//  163 /* Private macros ------------------------------------------------------------*/
//  164 /* Private variables ---------------------------------------------------------*/
//  165 /* Private function prototypes -----------------------------------------------*/
//  166 /** @addtogroup IRDA_Private_Functions   IRDA Private Functions
//  167   * @{
//  168   */
//  169 static HAL_StatusTypeDef IRDA_Transmit_IT(IRDA_HandleTypeDef *hirda);
//  170 static HAL_StatusTypeDef IRDA_EndTransmit_IT(IRDA_HandleTypeDef *hirda);
//  171 static HAL_StatusTypeDef IRDA_Receive_IT(IRDA_HandleTypeDef *hirda);
//  172 static void IRDA_SetConfig (IRDA_HandleTypeDef *hirda);
//  173 static void IRDA_DMATransmitCplt(DMA_HandleTypeDef *hdma);
//  174 static void IRDA_DMATransmitHalfCplt(DMA_HandleTypeDef *hdma);
//  175 static void IRDA_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
//  176 static void IRDA_DMAReceiveHalfCplt(DMA_HandleTypeDef *hdma);
//  177 static void IRDA_DMAError(DMA_HandleTypeDef *hdma);
//  178 static HAL_StatusTypeDef IRDA_WaitOnFlagUntilTimeout(IRDA_HandleTypeDef *hirda, uint32_t Flag, FlagStatus Status, uint32_t Timeout);
//  179 /**
//  180   * @}
//  181   */
//  182 
//  183 /* Exported functions ---------------------------------------------------------*/
//  184 
//  185 /** @defgroup IRDA_Exported_Functions IRDA Exported Functions
//  186   * @{
//  187   */
//  188 
//  189 /** @defgroup IRDA_Exported_Functions_Group1 Initialization and de-initialization functions 
//  190   *  @brief    Initialization and Configuration functions 
//  191   *
//  192 @verbatim
//  193   ==============================================================================
//  194               ##### Initialization and Configuration functions #####
//  195   ==============================================================================
//  196   [..]
//  197   This subsection provides a set of functions allowing to initialize the USARTx or the UARTy 
//  198   in IrDA mode.
//  199   (+) For the asynchronous mode only these parameters can be configured: 
//  200       (++) Baud Rate
//  201       (++) Word Length 
//  202       (++) Parity
//  203       (++) Prescaler: A pulse of width less than two and greater than one PSC period(s) may or may
//  204            not be rejected. The receiver set up time should be managed by software. The IrDA physical layer
//  205            specification specifies a minimum of 10 ms delay between transmission and 
//  206            reception (IrDA is a half duplex protocol).
//  207       (++) Mode: Receiver/transmitter modes
//  208       (++) IrDAMode: the IrDA can operate in the Normal mode or in the Low power mode.
//  209 
//  210   [..]
//  211     The HAL_IRDA_Init() function follows IRDA configuration procedures (details for the procedures
//  212     are available in reference manual (RM0038)).
//  213 
//  214 @endverbatim
//  215   * @{
//  216   */
//  217 
//  218 
//  219 /*
//  220   Additionnal remark: If the parity is enabled, then the MSB bit of the data written
//  221                       in the data register is transmitted but is changed by the parity bit.
//  222                       Depending on the frame length defined by the M bit (8-bits or 9-bits),
//  223                       the possible IRDA frame formats are as listed in the following table:
//  224     +-------------------------------------------------------------+
//  225     |   M bit |  PCE bit  |            IRDA frame                 |
//  226     |---------------------|---------------------------------------|
//  227     |    0    |    0      |    | SB | 8 bit data | STB |          |
//  228     |---------|-----------|---------------------------------------|
//  229     |    0    |    1      |    | SB | 7 bit data | PB | STB |     |
//  230     |---------|-----------|---------------------------------------|
//  231     |    1    |    0      |    | SB | 9 bit data | STB |          |
//  232     |---------|-----------|---------------------------------------|
//  233     |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
//  234     +-------------------------------------------------------------+
//  235 */
//  236 
//  237 /**
//  238   * @brief  Initializes the IRDA mode according to the specified
//  239   *         parameters in the IRDA_InitTypeDef and create the associated handle.
//  240   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  241   *                the configuration information for the specified IRDA module.
//  242   * @retval HAL status
//  243   */
//  244 HAL_StatusTypeDef HAL_IRDA_Init(IRDA_HandleTypeDef *hirda)
//  245 {
//  246   /* Check the IRDA handle allocation */
//  247   if(hirda == NULL)
//  248   {
//  249     return HAL_ERROR;
//  250   }
//  251   
//  252   /* Check the IRDA instance parameters */
//  253   assert_param(IS_IRDA_INSTANCE(hirda->Instance));
//  254   /* Check the IRDA mode parameter in the IRDA handle */
//  255   assert_param(IS_IRDA_POWERMODE(hirda->Init.IrDAMode)); 
//  256   
//  257   if(hirda->State == HAL_IRDA_STATE_RESET)
//  258   {
//  259     /* Allocate lock resource and initialize it */
//  260     hirda->Lock = HAL_UNLOCKED;
//  261 
//  262     /* Init the low level hardware */
//  263     HAL_IRDA_MspInit(hirda);
//  264   }
//  265   
//  266   hirda->State = HAL_IRDA_STATE_BUSY;
//  267   
//  268   /* Disable the IRDA peripheral */
//  269   __HAL_IRDA_DISABLE(hirda);
//  270   
//  271   /* Set the IRDA communication parameters */
//  272   IRDA_SetConfig(hirda);
//  273   
//  274   /* In IrDA mode, the following bits must be kept cleared: 
//  275      - LINEN, STOP and CLKEN bits in the USART_CR2 register,
//  276      - SCEN and HDSEL bits in the USART_CR3 register.*/
//  277   CLEAR_BIT(hirda->Instance->CR2, (USART_CR2_LINEN | USART_CR2_STOP | USART_CR2_CLKEN));
//  278   CLEAR_BIT(hirda->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL));
//  279   
//  280   /* Enable the IRDA peripheral */
//  281   __HAL_IRDA_ENABLE(hirda);
//  282   
//  283   /* Set the prescaler */
//  284   MODIFY_REG(hirda->Instance->GTPR, USART_GTPR_PSC, hirda->Init.Prescaler);
//  285   
//  286   /* Configure the IrDA mode */
//  287   MODIFY_REG(hirda->Instance->CR3, USART_CR3_IRLP, hirda->Init.IrDAMode);
//  288   
//  289   /* Enable the IrDA mode by setting the IREN bit in the CR3 register */
//  290   SET_BIT(hirda->Instance->CR3, USART_CR3_IREN);
//  291   
//  292   /* Initialize the IRDA state*/
//  293   hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  294   hirda->State= HAL_IRDA_STATE_READY;
//  295   
//  296   return HAL_OK;
//  297 }
//  298 
//  299 /**
//  300   * @brief  DeInitializes the IRDA peripheral
//  301   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  302   *                the configuration information for the specified IRDA module.
//  303   * @retval HAL status
//  304   */
//  305 HAL_StatusTypeDef HAL_IRDA_DeInit(IRDA_HandleTypeDef *hirda)
//  306 {
//  307   /* Check the IRDA handle allocation */
//  308   if(hirda == NULL)
//  309   {
//  310     return HAL_ERROR;
//  311   }
//  312 
//  313   /* Check the parameters */
//  314   assert_param(IS_IRDA_INSTANCE(hirda->Instance));
//  315 
//  316   hirda->State = HAL_IRDA_STATE_BUSY;
//  317 
//  318   /* Disable the Peripheral */
//  319   __HAL_IRDA_DISABLE(hirda);
//  320 
//  321   /* DeInit the low level hardware */
//  322   HAL_IRDA_MspDeInit(hirda);
//  323 
//  324   hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  325   hirda->State = HAL_IRDA_STATE_RESET;
//  326 
//  327   /* Release Lock */
//  328   __HAL_UNLOCK(hirda);
//  329 
//  330   return HAL_OK;
//  331 }
//  332 
//  333 /**
//  334   * @brief  IRDA MSP Init.
//  335   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  336   *                the configuration information for the specified IRDA module.
//  337   * @retval None
//  338   */
//  339  __weak void HAL_IRDA_MspInit(IRDA_HandleTypeDef *hirda)
//  340 {
//  341   /* Prevent unused argument(s) compilation warning */
//  342   UNUSED(hirda);
//  343 
//  344   /* NOTE: This function should not be modified, when the callback is needed,
//  345            the HAL_IRDA_MspInit can be implemented in the user file
//  346    */ 
//  347 }
//  348 
//  349 /**
//  350   * @brief  IRDA MSP DeInit.
//  351   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  352   *                the configuration information for the specified IRDA module.
//  353   * @retval None
//  354   */
//  355  __weak void HAL_IRDA_MspDeInit(IRDA_HandleTypeDef *hirda)
//  356 {
//  357   /* Prevent unused argument(s) compilation warning */
//  358   UNUSED(hirda);
//  359 
//  360   /* NOTE: This function should not be modified, when the callback is needed,
//  361            the HAL_IRDA_MspDeInit can be implemented in the user file
//  362    */ 
//  363 }
//  364 
//  365 /**
//  366   * @}
//  367   */
//  368 
//  369 /** @defgroup IRDA_Exported_Functions_Group2 IO operation functions 
//  370   *  @brief   IRDA Transmit and Receive functions 
//  371   *
//  372 @verbatim
//  373   ==============================================================================
//  374                          ##### IO operation functions #####
//  375   ==============================================================================
//  376   [..]
//  377     This subsection provides a set of functions allowing to manage the IRDA data transfers.
//  378 
//  379   [..]
//  380     IrDA is a half duplex communication protocol. If the Transmitter is busy, any data
//  381     on the IrDA receive line will be ignored by the IrDA decoder and if the Receiver 
//  382     is busy, data on the TX from the USART to IrDA will not be encoded by IrDA.
//  383     While receiving data, transmission should be avoided as the data to be transmitted
//  384     could be corrupted.
//  385 
//  386     (#) There are two modes of transfer:
//  387         (++) Blocking mode: The communication is performed in polling mode. 
//  388              The HAL status of all data processing is returned by the same function 
//  389              after finishing transfer.  
//  390         (++) No-Blocking mode: The communication is performed using Interrupts 
//  391              or DMA, These API's return the HAL status.
//  392              The end of the data processing will be indicated through the 
//  393              dedicated IRDA IRQ when using Interrupt mode or the DMA IRQ when 
//  394              using DMA mode.
//  395              The HAL_IRDA_TxCpltCallback(), HAL_IRDA_RxCpltCallback() user callbacks 
//  396              will be executed respectively at the end of the transmit or Receive process
//  397              The HAL_IRDA_ErrorCallback() user callback will be executed when a communication 
//  398              error is detected
//  399 
//  400     (#) Blocking mode APIs are :
//  401         (++) HAL_IRDA_Transmit()
//  402         (++) HAL_IRDA_Receive()
//  403         
//  404     (#) Non Blocking mode APIs with Interrupt are :
//  405         (++) HAL_IRDA_Transmit_IT()
//  406         (++) HAL_IRDA_Receive_IT()
//  407         (++) HAL_IRDA_IRQHandler()
//  408 
//  409     (#) Non Blocking mode functions with DMA are :
//  410         (++) HAL_IRDA_Transmit_DMA()
//  411         (++) HAL_IRDA_Receive_DMA()
//  412         (++) HAL_IRDA_DMAPause()
//  413         (++) HAL_IRDA_DMAResume()
//  414         (++) HAL_IRDA_DMAStop()
//  415 
//  416     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
//  417         (++) HAL_IRDA_TxHalfCpltCallback()
//  418         (++) HAL_IRDA_TxCpltCallback()
//  419         (++) HAL_IRDA_RxHalfCpltCallback()
//  420         (++) HAL_IRDA_RxCpltCallback()
//  421         (++) HAL_IRDA_ErrorCallback()
//  422 
//  423 @endverbatim
//  424   * @{
//  425   */
//  426 
//  427 /**
//  428   * @brief  Sends an amount of data in blocking mode.
//  429   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  430   *                the configuration information for the specified IRDA module.
//  431   * @param  pData: Pointer to data buffer
//  432   * @param  Size: Amount of data to be sent
//  433   * @param  Timeout: Specify timeout value  
//  434   * @retval HAL status
//  435   */
//  436 HAL_StatusTypeDef HAL_IRDA_Transmit(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  437 {
//  438   uint16_t* tmp = 0;
//  439   uint32_t  tmp_state = 0;
//  440 
//  441   tmp_state = hirda->State;
//  442   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_RX))
//  443   {
//  444     if((pData == NULL) || (Size == 0)) 
//  445     {
//  446       return  HAL_ERROR;
//  447     }
//  448     
//  449     /* Process Locked */
//  450     __HAL_LOCK(hirda);
//  451     
//  452     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  453     if(hirda->State == HAL_IRDA_STATE_BUSY_RX) 
//  454     {
//  455       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  456     }
//  457     else
//  458     {
//  459       hirda->State = HAL_IRDA_STATE_BUSY_TX;
//  460     }
//  461 
//  462     hirda->TxXferSize = Size;
//  463     hirda->TxXferCount = Size;
//  464     while(hirda->TxXferCount > 0)
//  465     {
//  466       if(hirda->Init.WordLength == IRDA_WORDLENGTH_9B)
//  467       {
//  468         if(IRDA_WaitOnFlagUntilTimeout(hirda, IRDA_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  469         {
//  470           return HAL_TIMEOUT;
//  471         }
//  472         tmp = (uint16_t*) pData;
//  473         WRITE_REG(hirda->Instance->DR,(*tmp & IRDA_DR_MASK_U16_9DATABITS));
//  474         if(hirda->Init.Parity == IRDA_PARITY_NONE)
//  475         {
//  476           pData +=2;
//  477         }
//  478         else
//  479         {
//  480           pData +=1;
//  481         }
//  482       }
//  483       else
//  484       {
//  485         if(IRDA_WaitOnFlagUntilTimeout(hirda, IRDA_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  486         {
//  487           return HAL_TIMEOUT;
//  488         }
//  489         WRITE_REG(hirda->Instance->DR, (*pData++ & IRDA_DR_MASK_U8_8DATABITS));
//  490       }
//  491       hirda->TxXferCount--;
//  492     }
//  493 
//  494     if(IRDA_WaitOnFlagUntilTimeout(hirda, IRDA_FLAG_TC, RESET, Timeout) != HAL_OK)
//  495     {
//  496       return HAL_TIMEOUT;
//  497     }
//  498 
//  499     if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX) 
//  500     {
//  501       hirda->State = HAL_IRDA_STATE_BUSY_RX;
//  502     }
//  503     else
//  504     {
//  505       hirda->State = HAL_IRDA_STATE_READY;
//  506     }
//  507 
//  508     /* Process Unlocked */
//  509     __HAL_UNLOCK(hirda);
//  510 
//  511     return HAL_OK;
//  512   }
//  513   else
//  514   {
//  515     return HAL_BUSY;
//  516   }
//  517 }
//  518 
//  519 /**
//  520   * @brief  Receive an amount of data in blocking mode. 
//  521   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  522   *                the configuration information for the specified IRDA module.
//  523   * @param  pData: Pointer to data buffer
//  524   * @param  Size: Amount of data to be received
//  525   * @param  Timeout: Specify timeout value    
//  526   * @retval HAL status
//  527   */
//  528 HAL_StatusTypeDef HAL_IRDA_Receive(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  529 {
//  530   uint16_t* tmp = 0;
//  531   uint32_t  tmp_state = 0;
//  532 
//  533   tmp_state = hirda->State;
//  534   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_TX))
//  535   {
//  536     if((pData == NULL) || (Size == 0)) 
//  537     {
//  538       return  HAL_ERROR;
//  539     }
//  540     
//  541     /* Process Locked */
//  542     __HAL_LOCK(hirda);
//  543     
//  544     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  545     if(hirda->State == HAL_IRDA_STATE_BUSY_TX) 
//  546     {
//  547       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  548     }
//  549     else
//  550     {
//  551       hirda->State = HAL_IRDA_STATE_BUSY_RX;
//  552     }
//  553     hirda->RxXferSize = Size;
//  554     hirda->RxXferCount = Size;
//  555     /* Check the remain data to be received */
//  556     while(hirda->RxXferCount > 0)
//  557     {
//  558       if(hirda->Init.WordLength == IRDA_WORDLENGTH_9B)
//  559       {
//  560         if(IRDA_WaitOnFlagUntilTimeout(hirda, IRDA_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  561         { 
//  562           return HAL_TIMEOUT;
//  563         }
//  564         tmp = (uint16_t*) pData ;
//  565         if(hirda->Init.Parity == IRDA_PARITY_NONE)
//  566         {
//  567           *tmp = (uint16_t)(hirda->Instance->DR & IRDA_DR_MASK_U16_9DATABITS);
//  568           pData +=2;
//  569         }
//  570         else
//  571         {
//  572           *tmp = (uint16_t)(hirda->Instance->DR & IRDA_DR_MASK_U16_8DATABITS);
//  573           pData +=1;
//  574         }
//  575       } 
//  576       else
//  577       {
//  578         if(IRDA_WaitOnFlagUntilTimeout(hirda, IRDA_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  579         { 
//  580           return HAL_TIMEOUT;
//  581         }
//  582         if(hirda->Init.Parity == IRDA_PARITY_NONE)
//  583         {
//  584           *pData++ = (uint8_t)(hirda->Instance->DR & IRDA_DR_MASK_U8_8DATABITS);
//  585         }
//  586         else
//  587         {
//  588           *pData++ = (uint8_t)(hirda->Instance->DR & IRDA_DR_MASK_U8_7DATABITS);
//  589         }
//  590       }
//  591       hirda->RxXferCount--;
//  592     }
//  593     if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX) 
//  594     {
//  595       hirda->State = HAL_IRDA_STATE_BUSY_TX;
//  596     }
//  597     else
//  598     {
//  599       hirda->State = HAL_IRDA_STATE_READY;
//  600     }
//  601     
//  602     /* Process Unlocked */
//  603     __HAL_UNLOCK(hirda);
//  604     
//  605     return HAL_OK;
//  606   }
//  607   else
//  608   {
//  609     return HAL_BUSY;   
//  610   }
//  611 }
//  612 
//  613 /**
//  614   * @brief  Sends an amount of data in non-blocking mode. 
//  615   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  616   *                the configuration information for the specified IRDA module.
//  617   * @param  pData: Pointer to data buffer
//  618   * @param  Size: Amount of data to be sent
//  619   * @retval HAL status
//  620   */
//  621 HAL_StatusTypeDef HAL_IRDA_Transmit_IT(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size)
//  622 {
//  623   uint32_t tmp_state = 0;
//  624   
//  625   tmp_state = hirda->State;
//  626   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_RX))
//  627   {
//  628     if((pData == NULL) || (Size == 0))
//  629     {
//  630       return HAL_ERROR;
//  631     }
//  632     /* Process Locked */
//  633     __HAL_LOCK(hirda);
//  634     
//  635     hirda->pTxBuffPtr = pData;
//  636     hirda->TxXferSize = Size;
//  637     hirda->TxXferCount = Size;
//  638 
//  639     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  640     if(hirda->State == HAL_IRDA_STATE_BUSY_RX) 
//  641     {
//  642       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  643     }
//  644     else
//  645     {
//  646       hirda->State = HAL_IRDA_STATE_BUSY_TX;
//  647     }
//  648 
//  649     /* Process Unlocked */
//  650     __HAL_UNLOCK(hirda);
//  651 
//  652     /* Enable the IRDA Error Interrupt: (Frame error, noise error, overrun error) */
//  653     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_ERR);
//  654 
//  655     /* Enable the IRDA Transmit Data Register Empty Interrupt */
//  656     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_TXE);
//  657     
//  658     return HAL_OK;
//  659   }
//  660   else
//  661   {
//  662     return HAL_BUSY;
//  663   }
//  664 }
//  665 
//  666 /**
//  667   * @brief  Receives an amount of data in non-blocking mode. 
//  668   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  669   *                the configuration information for the specified IRDA module.
//  670   * @param  pData: Pointer to data buffer
//  671   * @param  Size: Amount of data to be received
//  672   * @retval HAL status
//  673   */
//  674 HAL_StatusTypeDef HAL_IRDA_Receive_IT(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size)
//  675 {
//  676   uint32_t tmp_state = 0;
//  677   
//  678   tmp_state = hirda->State;
//  679   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_TX))
//  680   {
//  681     if((pData == NULL) || (Size == 0))
//  682     {
//  683       return HAL_ERROR;
//  684     }
//  685 
//  686     /* Process Locked */
//  687     __HAL_LOCK(hirda);
//  688 
//  689     hirda->pRxBuffPtr = pData;
//  690     hirda->RxXferSize = Size;
//  691     hirda->RxXferCount = Size;
//  692 
//  693     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  694     if(hirda->State == HAL_IRDA_STATE_BUSY_TX)
//  695     {
//  696       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  697     }
//  698     else
//  699     {
//  700       hirda->State = HAL_IRDA_STATE_BUSY_RX;
//  701     }
//  702 
//  703     /* Process Unlocked */
//  704     __HAL_UNLOCK(hirda);
//  705 
//  706     /* Enable the IRDA Data Register not empty Interrupt */
//  707     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_RXNE); 
//  708 
//  709     /* Enable the IRDA Parity Error Interrupt */
//  710     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_PE);
//  711 
//  712     /* Enable the IRDA Error Interrupt: (Frame error, noise error, overrun error) */
//  713     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_ERR);
//  714 
//  715     return HAL_OK;
//  716   }
//  717   else
//  718   {
//  719     return HAL_BUSY;
//  720   }
//  721 }
//  722 
//  723 /**
//  724   * @brief  Sends an amount of data in non-blocking mode. 
//  725   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  726   *                the configuration information for the specified IRDA module.
//  727   * @param  pData: Pointer to data buffer
//  728   * @param  Size: Amount of data to be sent
//  729   * @retval HAL status
//  730   */
//  731 HAL_StatusTypeDef HAL_IRDA_Transmit_DMA(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size)
//  732 {
//  733   uint32_t *tmp = 0;
//  734   uint32_t  tmp_state = 0;
//  735 
//  736   tmp_state = hirda->State;
//  737   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_RX))
//  738   {
//  739     if((pData == NULL) || (Size == 0)) 
//  740     {
//  741       return HAL_ERROR;
//  742     }
//  743 
//  744     /* Process Locked */
//  745     __HAL_LOCK(hirda);
//  746 
//  747     hirda->pTxBuffPtr = pData;
//  748     hirda->TxXferSize = Size;
//  749     hirda->TxXferCount = Size;
//  750     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  751 
//  752     if(hirda->State == HAL_IRDA_STATE_BUSY_RX)
//  753     {
//  754       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  755     }
//  756     else
//  757     {
//  758       hirda->State = HAL_IRDA_STATE_BUSY_TX;
//  759     }
//  760 
//  761     /* Set the IRDA DMA transfer complete callback */
//  762     hirda->hdmatx->XferCpltCallback = IRDA_DMATransmitCplt;
//  763 
//  764     /* Set the IRDA DMA half transfert complete callback */
//  765     hirda->hdmatx->XferHalfCpltCallback = IRDA_DMATransmitHalfCplt;
//  766 
//  767     /* Set the DMA error callback */
//  768     hirda->hdmatx->XferErrorCallback = IRDA_DMAError;
//  769 
//  770     /* Enable the IRDA transmit DMA channel */
//  771     tmp = (uint32_t*)&pData;
//  772     HAL_DMA_Start_IT(hirda->hdmatx, *(uint32_t*)tmp, (uint32_t)&hirda->Instance->DR, Size);
//  773 
//  774     /* Clear the TC flag in the SR register by writing 0 to it */
//  775     __HAL_IRDA_CLEAR_FLAG(hirda, IRDA_FLAG_TC);
//  776 
//  777     /* Enable the DMA transfer for transmit request by setting the DMAT bit
//  778        in the USART CR3 register */
//  779     SET_BIT(hirda->Instance->CR3, USART_CR3_DMAT);
//  780 
//  781     /* Process Unlocked */
//  782     __HAL_UNLOCK(hirda);
//  783 
//  784     return HAL_OK;
//  785   }
//  786   else
//  787   {
//  788     return HAL_BUSY;
//  789   }
//  790 }
//  791 
//  792 /**
//  793   * @brief  Receive an amount of data in non-blocking mode. 
//  794   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  795   *                the configuration information for the specified IRDA module.
//  796   * @param  pData: Pointer to data buffer
//  797   * @param  Size: Amount of data to be received
//  798   * @note   When the IRDA parity is enabled (PCE = 1) the data received contain the parity bit.
//  799   * @retval HAL status
//  800   */
//  801 HAL_StatusTypeDef HAL_IRDA_Receive_DMA(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size)
//  802 {
//  803   uint32_t *tmp = 0;
//  804   uint32_t tmp_state = 0;
//  805 
//  806   tmp_state = hirda->State;
//  807   if((tmp_state == HAL_IRDA_STATE_READY) || (tmp_state == HAL_IRDA_STATE_BUSY_TX))
//  808   {
//  809     if((pData == NULL) || (Size == 0))
//  810     {
//  811       return HAL_ERROR;
//  812     }
//  813 
//  814     /* Process Locked */
//  815     __HAL_LOCK(hirda);
//  816 
//  817     hirda->pRxBuffPtr = pData;
//  818     hirda->RxXferSize = Size;
//  819     hirda->ErrorCode = HAL_IRDA_ERROR_NONE;
//  820     if(hirda->State == HAL_IRDA_STATE_BUSY_TX)
//  821     {
//  822       hirda->State = HAL_IRDA_STATE_BUSY_TX_RX;
//  823     }
//  824     else
//  825     {
//  826       hirda->State = HAL_IRDA_STATE_BUSY_RX;
//  827     }
//  828 
//  829     /* Set the IRDA DMA transfer complete callback */
//  830     hirda->hdmarx->XferCpltCallback = IRDA_DMAReceiveCplt;
//  831 
//  832     /* Set the IRDA DMA half transfert complete callback */
//  833     hirda->hdmarx->XferHalfCpltCallback = IRDA_DMAReceiveHalfCplt;
//  834 
//  835     /* Set the DMA error callback */
//  836     hirda->hdmarx->XferErrorCallback = IRDA_DMAError;
//  837 
//  838     /* Enable the DMA channel */
//  839     tmp = (uint32_t*)&pData;
//  840     HAL_DMA_Start_IT(hirda->hdmarx, (uint32_t)&hirda->Instance->DR, *(uint32_t*)tmp, Size);
//  841 
//  842     /* Enable the DMA transfer for the receiver request by setting the DMAR bit 
//  843        in the USART CR3 register */
//  844     SET_BIT(hirda->Instance->CR3, USART_CR3_DMAR);
//  845 
//  846     /* Process Unlocked */
//  847     __HAL_UNLOCK(hirda);
//  848 
//  849     return HAL_OK;
//  850   }
//  851   else
//  852   {
//  853     return HAL_BUSY;
//  854   }
//  855 }
//  856 
//  857 /**
//  858   * @brief Pauses the DMA Transfer.
//  859   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  860   *                the configuration information for the specified IRDA module.
//  861   * @retval HAL status
//  862   */
//  863 HAL_StatusTypeDef HAL_IRDA_DMAPause(IRDA_HandleTypeDef *hirda)
//  864 {
//  865   /* Process Locked */
//  866   __HAL_LOCK(hirda);
//  867   
//  868   if(hirda->State == HAL_IRDA_STATE_BUSY_TX)
//  869   {
//  870     /* Disable the IRDA DMA Tx request */
//  871     CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAT);
//  872   }
//  873   else if(hirda->State == HAL_IRDA_STATE_BUSY_RX)
//  874   {
//  875     /* Disable the IRDA DMA Rx request */
//  876     CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAR);
//  877   }
//  878   else if (hirda->State == HAL_IRDA_STATE_BUSY_TX_RX)
//  879   {
//  880     /* Disable the IRDA DMA Tx & Rx requests */
//  881     CLEAR_BIT(hirda->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
//  882   }
//  883   else
//  884   {
//  885     /* Process Unlocked */
//  886     __HAL_UNLOCK(hirda);
//  887   
//  888     return HAL_ERROR; 
//  889   }
//  890 
//  891   /* Process Unlocked */
//  892   __HAL_UNLOCK(hirda);
//  893   
//  894   return HAL_OK; 
//  895 }
//  896 
//  897 /**
//  898   * @brief Resumes the DMA Transfer.
//  899   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  900   *                the configuration information for the specified UART module.
//  901   * @retval HAL status
//  902   */
//  903 HAL_StatusTypeDef HAL_IRDA_DMAResume(IRDA_HandleTypeDef *hirda)
//  904 {
//  905   /* Process Locked */
//  906   __HAL_LOCK(hirda);
//  907   
//  908   if(hirda->State == HAL_IRDA_STATE_BUSY_TX)
//  909   {
//  910     /* Enable the IRDA DMA Tx request */
//  911     SET_BIT(hirda->Instance->CR3, USART_CR3_DMAT);
//  912   }
//  913   else if(hirda->State == HAL_IRDA_STATE_BUSY_RX)
//  914   {
//  915     /* Clear the Overrun flag before resumming the Rx transfer*/
//  916     __HAL_IRDA_CLEAR_OREFLAG(hirda);
//  917     /* Enable the IRDA DMA Rx request */
//  918     SET_BIT(hirda->Instance->CR3, USART_CR3_DMAR);
//  919   }
//  920   else if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX)
//  921   {
//  922     /* Clear the Overrun flag before resumming the Rx transfer*/
//  923     __HAL_IRDA_CLEAR_OREFLAG(hirda);
//  924     /* Enable the IRDA DMA Tx & Rx request */
//  925     SET_BIT(hirda->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
//  926   }
//  927   else
//  928   {
//  929     /* Process Unlocked */
//  930     __HAL_UNLOCK(hirda);
//  931   
//  932     return HAL_ERROR; 
//  933   }
//  934   
//  935   /* Process Unlocked */
//  936   __HAL_UNLOCK(hirda);
//  937   
//  938   return HAL_OK;
//  939 }
//  940 
//  941 /**
//  942   * @brief Stops the DMA Transfer.
//  943   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  944   *                the configuration information for the specified UART module.
//  945   * @retval HAL status
//  946   */
//  947 HAL_StatusTypeDef HAL_IRDA_DMAStop(IRDA_HandleTypeDef *hirda)
//  948 {
//  949   /* The Lock is not implemented on this API to allow the user application
//  950      to call the HAL IRDA API under callbacks HAL_IRDA_TxCpltCallback() / HAL_IRDA_RxCpltCallback():
//  951      when calling HAL_DMA_Abort() API the DMA TX/RX Transfer complete interrupt is generated
//  952      and the correspond call back is executed HAL_IRDA_TxCpltCallback() / HAL_IRDA_RxCpltCallback()
//  953      */
//  954 
//  955   /* Disable the IRDA Tx/Rx DMA requests */
//  956   CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAT);
//  957   CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAR);
//  958   
//  959   /* Abort the IRDA DMA tx channel */
//  960   if(hirda->hdmatx != NULL)
//  961   {
//  962     HAL_DMA_Abort(hirda->hdmatx);
//  963   }
//  964   /* Abort the IRDA DMA rx channel */
//  965   if(hirda->hdmarx != NULL)
//  966   {
//  967     HAL_DMA_Abort(hirda->hdmarx);
//  968   }
//  969   
//  970   hirda->State = HAL_IRDA_STATE_READY;
//  971 
//  972   return HAL_OK;
//  973 }
//  974 
//  975 /**
//  976   * @brief  This function handles IRDA interrupt request.
//  977   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
//  978   *                the configuration information for the specified IRDA module.
//  979   * @retval None
//  980   */
//  981 void HAL_IRDA_IRQHandler(IRDA_HandleTypeDef *hirda)
//  982 {
//  983   uint32_t  tmp_flag = 0, tmp_it_source = 0;
//  984   
//  985   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_PE);
//  986   tmp_it_source = __HAL_IRDA_GET_IT_SOURCE(hirda, IRDA_IT_PE);
//  987   /* IRDA parity error interrupt occurred -----------------------------------*/
//  988   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  989   {
//  990     hirda->ErrorCode |= HAL_IRDA_ERROR_PE;
//  991   }
//  992 
//  993   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_FE);
//  994   tmp_it_source = __HAL_IRDA_GET_IT_SOURCE(hirda, IRDA_IT_ERR);
//  995   /* IRDA frame error interrupt occurred ------------------------------------*/
//  996   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  997   {
//  998     hirda->ErrorCode |= HAL_IRDA_ERROR_FE;
//  999   }
// 1000 
// 1001   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_NE);
// 1002   /* IRDA noise error interrupt occurred ------------------------------------*/
// 1003   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1004   {
// 1005     hirda->ErrorCode |= HAL_IRDA_ERROR_NE;
// 1006   }
// 1007 
// 1008   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_ORE);
// 1009   /* IRDA Over-Run interrupt occurred ---------------------------------------*/
// 1010   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1011   {
// 1012     hirda->ErrorCode |= HAL_IRDA_ERROR_ORE;
// 1013   }
// 1014 
// 1015   /* Call the Error call Back in case of Errors */
// 1016   if(hirda->ErrorCode != HAL_IRDA_ERROR_NONE)
// 1017   {
// 1018     /* Disable PE and ERR interrupt */
// 1019     __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_ERR);
// 1020     __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_PE);
// 1021     __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_TXE);
// 1022     
// 1023     /* Clear all the error flag at once */
// 1024     __HAL_IRDA_CLEAR_PEFLAG(hirda);
// 1025 
// 1026     /* Set the IRDA state ready to be able to start again the process */
// 1027     hirda->State = HAL_IRDA_STATE_READY;
// 1028     HAL_IRDA_ErrorCallback(hirda);
// 1029   }
// 1030 
// 1031   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_RXNE);
// 1032   tmp_it_source = __HAL_IRDA_GET_IT_SOURCE(hirda, IRDA_IT_RXNE);
// 1033   /* IRDA in mode Receiver --------------------------------------------------*/
// 1034   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1035   {
// 1036     IRDA_Receive_IT(hirda);
// 1037   }
// 1038 
// 1039   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_TXE);
// 1040   tmp_it_source = __HAL_IRDA_GET_IT_SOURCE(hirda, IRDA_IT_TXE);
// 1041   /* IRDA in mode Transmitter -----------------------------------------------*/
// 1042   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1043   {
// 1044     IRDA_Transmit_IT(hirda);
// 1045   }
// 1046 
// 1047   tmp_flag = __HAL_IRDA_GET_FLAG(hirda, IRDA_FLAG_TC);
// 1048   tmp_it_source = __HAL_IRDA_GET_IT_SOURCE(hirda, IRDA_IT_TC);
// 1049   /* IRDA in mode Transmitter (transmission end) -----------------------------*/
// 1050   if((tmp_flag != RESET) && (tmp_it_source != RESET))
// 1051   {
// 1052     IRDA_EndTransmit_IT(hirda);
// 1053   }   
// 1054   
// 1055 }
// 1056 
// 1057 /**
// 1058   * @brief  Tx Transfer completed callbacks.
// 1059   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1060   *                the configuration information for the specified IRDA module.
// 1061   * @retval None
// 1062   */
// 1063  __weak void HAL_IRDA_TxCpltCallback(IRDA_HandleTypeDef *hirda)
// 1064 {
// 1065   /* Prevent unused argument(s) compilation warning */
// 1066   UNUSED(hirda);
// 1067 
// 1068   /* NOTE: This function should not be modified, when the callback is needed,
// 1069            the HAL_IRDA_TxCpltCallback can be implemented in the user file
// 1070    */
// 1071 }
// 1072 
// 1073 /**
// 1074   * @brief  Tx Half Transfer completed callbacks.
// 1075   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1076   *                the configuration information for the specified USART module.
// 1077   * @retval None
// 1078   */
// 1079  __weak void HAL_IRDA_TxHalfCpltCallback(IRDA_HandleTypeDef *hirda)
// 1080 {
// 1081   /* Prevent unused argument(s) compilation warning */
// 1082   UNUSED(hirda);
// 1083 
// 1084   /* NOTE: This function should not be modified, when the callback is needed,
// 1085            the HAL_IRDA_TxHalfCpltCallback can be implemented in the user file
// 1086    */
// 1087 }
// 1088 
// 1089 /**
// 1090   * @brief  Rx Transfer completed callbacks.
// 1091   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1092   *                the configuration information for the specified IRDA module.
// 1093   * @retval None
// 1094   */
// 1095 __weak void HAL_IRDA_RxCpltCallback(IRDA_HandleTypeDef *hirda)
// 1096 {
// 1097   /* Prevent unused argument(s) compilation warning */
// 1098   UNUSED(hirda);
// 1099 
// 1100   /* NOTE: This function should not be modified, when the callback is needed,
// 1101            the HAL_IRDA_RxCpltCallback can be implemented in the user file
// 1102    */
// 1103 }
// 1104 
// 1105 /**
// 1106   * @brief  Rx Half Transfer complete callbacks.
// 1107   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1108   *                the configuration information for the specified IRDA module.
// 1109   * @retval None
// 1110   */
// 1111 __weak void HAL_IRDA_RxHalfCpltCallback(IRDA_HandleTypeDef *hirda)
// 1112 {
// 1113   /* Prevent unused argument(s) compilation warning */
// 1114   UNUSED(hirda);
// 1115 
// 1116   /* NOTE : This function should not be modified, when the callback is needed,
// 1117             the HAL_IRDA_RxHalfCpltCallback can be implemented in the user file
// 1118    */
// 1119 }
// 1120 
// 1121 /**
// 1122   * @brief  IRDA error callbacks.
// 1123   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1124   *                the configuration information for the specified IRDA module.
// 1125   * @retval None
// 1126   */
// 1127  __weak void HAL_IRDA_ErrorCallback(IRDA_HandleTypeDef *hirda)
// 1128 {
// 1129   /* Prevent unused argument(s) compilation warning */
// 1130   UNUSED(hirda);
// 1131 
// 1132   /* NOTE: This function should not be modified, when the callback is needed,
// 1133            the HAL_IRDA_ErrorCallback can be implemented in the user file
// 1134    */ 
// 1135 }
// 1136 
// 1137 /**
// 1138   * @}
// 1139   */
// 1140 
// 1141 /** @defgroup IRDA_Exported_Functions_Group3 Peripheral State and Errors functions 
// 1142   *  @brief   IRDA State and Errors functions 
// 1143   *
// 1144 @verbatim   
// 1145   ==============================================================================
// 1146                   ##### Peripheral State and Errors functions #####
// 1147   ==============================================================================  
// 1148   [..]
// 1149     This subsection provides a set of functions allowing to return the State of IrDA 
// 1150     communication process and also return Peripheral Errors occurred during communication process
// 1151      (+) HAL_IRDA_GetState() API can be helpful to check in run-time the state 
// 1152          of the IRDA peripheral.
// 1153      (+) HAL_IRDA_GetError() check in run-time errors that could be occurred during 
// 1154          communication.
// 1155 
// 1156 @endverbatim
// 1157   * @{
// 1158   */
// 1159 
// 1160 /**
// 1161   * @brief  Returns the IRDA state.
// 1162   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1163   *                the configuration information for the specified IRDA module.
// 1164   * @retval HAL state
// 1165   */
// 1166 HAL_IRDA_StateTypeDef HAL_IRDA_GetState(IRDA_HandleTypeDef *hirda)
// 1167 {
// 1168   return hirda->State;
// 1169 }
// 1170 
// 1171 /**
// 1172   * @brief  Return the IRDA error code
// 1173   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1174   *                the configuration information for the specified IRDA module.
// 1175   * @retval IRDA Error Code
// 1176   */
// 1177 uint32_t HAL_IRDA_GetError(IRDA_HandleTypeDef *hirda)
// 1178 {
// 1179   return hirda->ErrorCode;
// 1180 }
// 1181 
// 1182 /**
// 1183   * @}
// 1184   */
// 1185   
// 1186 /**
// 1187   * @}
// 1188   */
// 1189 
// 1190 /** @defgroup IRDA_Private_Functions   IRDA Private Functions
// 1191   *  @brief   IRDA Private functions 
// 1192   * @{
// 1193   */
// 1194 /**
// 1195   * @brief  DMA IRDA transmit process complete callback. 
// 1196   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1197   *               the configuration information for the specified DMA module.
// 1198   * @retval None
// 1199   */
// 1200 static void IRDA_DMATransmitCplt(DMA_HandleTypeDef *hdma)
// 1201 {
// 1202   IRDA_HandleTypeDef* hirda = ( IRDA_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1203   /* DMA Normal mode */
// 1204   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
// 1205   {
// 1206     hirda->TxXferCount = 0;
// 1207 
// 1208     /* Disable the DMA transfer for transmit request by setting the DMAT bit
// 1209        in the IRDA CR3 register */
// 1210     CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAT);
// 1211 
// 1212     /* Enable the IRDA Transmit Complete Interrupt */    
// 1213     __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_TC);
// 1214   }
// 1215   /* DMA Circular mode */
// 1216   else
// 1217   {
// 1218     HAL_IRDA_TxCpltCallback(hirda);
// 1219   }
// 1220 }
// 1221 
// 1222 /**
// 1223   * @brief DMA IRDA receive process half complete callback 
// 1224   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1225   *               the configuration information for the specified DMA module.
// 1226   * @retval None
// 1227   */
// 1228 static void IRDA_DMATransmitHalfCplt(DMA_HandleTypeDef *hdma)
// 1229 {
// 1230   IRDA_HandleTypeDef* hirda = ( IRDA_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1231 
// 1232   HAL_IRDA_TxHalfCpltCallback(hirda); 
// 1233 }
// 1234 
// 1235 /**
// 1236   * @brief  DMA IRDA receive process complete callback. 
// 1237   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1238   *               the configuration information for the specified DMA module.
// 1239   * @retval None
// 1240   */
// 1241 static void IRDA_DMAReceiveCplt(DMA_HandleTypeDef *hdma)   
// 1242 {
// 1243   IRDA_HandleTypeDef* hirda = ( IRDA_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1244   /* DMA Normal mode */
// 1245   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
// 1246   {
// 1247     hirda->RxXferCount = 0;
// 1248 
// 1249     /* Disable the DMA transfer for the receiver request by setting the DMAR bit 
// 1250        in the IRDA CR3 register */
// 1251     CLEAR_BIT(hirda->Instance->CR3, USART_CR3_DMAR);
// 1252 
// 1253     if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX) 
// 1254     {
// 1255       hirda->State = HAL_IRDA_STATE_BUSY_TX;
// 1256     }
// 1257     else
// 1258     {
// 1259       hirda->State = HAL_IRDA_STATE_READY;
// 1260     }
// 1261   }
// 1262 
// 1263   HAL_IRDA_RxCpltCallback(hirda);
// 1264 }
// 1265 
// 1266 /**
// 1267   * @brief DMA IRDA receive process half complete callback 
// 1268   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1269   *               the configuration information for the specified DMA module.
// 1270   * @retval None
// 1271   */
// 1272 static void IRDA_DMAReceiveHalfCplt(DMA_HandleTypeDef *hdma)
// 1273 {
// 1274   IRDA_HandleTypeDef* hirda = ( IRDA_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1275 
// 1276   HAL_IRDA_RxHalfCpltCallback(hirda); 
// 1277 }
// 1278 
// 1279 /**
// 1280   * @brief  DMA IRDA communication error callback. 
// 1281   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1282   *               the configuration information for the specified DMA module.
// 1283   * @retval None
// 1284   */
// 1285 static void IRDA_DMAError(DMA_HandleTypeDef *hdma)   
// 1286 {
// 1287   IRDA_HandleTypeDef* hirda = ( IRDA_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1288   
// 1289   hirda->RxXferCount = 0;
// 1290   hirda->TxXferCount = 0;
// 1291   hirda->ErrorCode |= HAL_IRDA_ERROR_DMA; 
// 1292   hirda->State= HAL_IRDA_STATE_READY;
// 1293   
// 1294   HAL_IRDA_ErrorCallback(hirda);
// 1295 }
// 1296 
// 1297 /**
// 1298   * @brief  This function handles IRDA Communication Timeout.
// 1299   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1300   *                the configuration information for the specified IRDA module.
// 1301   * @param  Flag: specifies the IRDA flag to check.
// 1302   * @param  Status: The new Flag status (SET or RESET).
// 1303   * @param  Timeout: Timeout duration
// 1304   * @retval HAL status
// 1305   */
// 1306 static HAL_StatusTypeDef IRDA_WaitOnFlagUntilTimeout(IRDA_HandleTypeDef *hirda, uint32_t Flag, FlagStatus Status, uint32_t Timeout)
// 1307 {
// 1308   uint32_t tickstart = 0;
// 1309 
// 1310   /* Get tick */
// 1311   tickstart = HAL_GetTick();
// 1312 
// 1313   /* Wait until flag is set */
// 1314   if(Status == RESET)
// 1315   {
// 1316     while(__HAL_IRDA_GET_FLAG(hirda, Flag) == RESET)
// 1317     {
// 1318       /* Check for the Timeout */
// 1319       if(Timeout != HAL_MAX_DELAY)
// 1320       {
// 1321         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1322         {
// 1323           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1324           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_TXE);
// 1325           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_RXNE);
// 1326           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_PE);
// 1327           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_ERR);
// 1328 
// 1329           hirda->State= HAL_IRDA_STATE_READY;
// 1330 
// 1331           /* Process Unlocked */
// 1332           __HAL_UNLOCK(hirda);
// 1333 
// 1334           return HAL_TIMEOUT;
// 1335         }
// 1336       }
// 1337     }
// 1338   }
// 1339   else
// 1340   {
// 1341     while(__HAL_IRDA_GET_FLAG(hirda, Flag) != RESET)
// 1342     {
// 1343       /* Check for the Timeout */
// 1344       if(Timeout != HAL_MAX_DELAY)
// 1345       {
// 1346         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1347         {
// 1348           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1349           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_TXE);
// 1350           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_RXNE);
// 1351           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_PE);
// 1352           __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_ERR);
// 1353 
// 1354           hirda->State= HAL_IRDA_STATE_READY;
// 1355 
// 1356           /* Process Unlocked */
// 1357           __HAL_UNLOCK(hirda);
// 1358         
// 1359           return HAL_TIMEOUT;
// 1360         }
// 1361       }
// 1362     }
// 1363   }
// 1364   return HAL_OK;
// 1365 }
// 1366 
// 1367 /**
// 1368   * @brief  Send an amount of data in non-blocking mode. 
// 1369   *         Function called under interruption only, once
// 1370   *         interruptions have been enabled by HAL_IRDA_Transmit_IT()      
// 1371   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1372   *                the configuration information for the specified IRDA module.
// 1373   * @retval HAL status
// 1374   */
// 1375 static HAL_StatusTypeDef IRDA_Transmit_IT(IRDA_HandleTypeDef *hirda)
// 1376 {
// 1377   uint16_t* tmp = 0;
// 1378   uint32_t  tmp_state = 0;
// 1379 
// 1380   tmp_state = hirda->State;
// 1381   if((tmp_state == HAL_IRDA_STATE_BUSY_TX) || (tmp_state == HAL_IRDA_STATE_BUSY_TX_RX))
// 1382   {
// 1383     if(hirda->Init.WordLength == IRDA_WORDLENGTH_9B)
// 1384     {
// 1385       tmp = (uint16_t*) hirda->pTxBuffPtr;
// 1386       WRITE_REG(hirda->Instance->DR, (uint16_t)(*tmp & IRDA_DR_MASK_U16_9DATABITS));
// 1387       if(hirda->Init.Parity == IRDA_PARITY_NONE)
// 1388       {
// 1389         hirda->pTxBuffPtr += 2;
// 1390       }
// 1391       else
// 1392       {
// 1393         hirda->pTxBuffPtr += 1;
// 1394       }
// 1395     } 
// 1396     else
// 1397     {
// 1398       WRITE_REG(hirda->Instance->DR, (uint8_t)(*hirda->pTxBuffPtr++ & IRDA_DR_MASK_U8_8DATABITS));
// 1399     }
// 1400     
// 1401     if(--hirda->TxXferCount == 0)
// 1402     {
// 1403       /* Disable the IRDA Transmit Data Register Empty Interrupt */
// 1404       __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_TXE);
// 1405      
// 1406       /* Enable the IRDA Transmit Complete Interrupt */    
// 1407       __HAL_IRDA_ENABLE_IT(hirda, IRDA_IT_TC);
// 1408     }
// 1409 
// 1410     return HAL_OK;
// 1411   }
// 1412   else
// 1413   {
// 1414     return HAL_BUSY;
// 1415   }
// 1416 }
// 1417 
// 1418 /**
// 1419   * @brief  Wraps up transmission in non blocking mode.
// 1420   * @param  hirda: pointer to a IRDA_HandleTypeDef structure that contains
// 1421   *                the configuration information for the specified IRDA module.
// 1422   * @retval HAL status
// 1423   */
// 1424 static HAL_StatusTypeDef IRDA_EndTransmit_IT(IRDA_HandleTypeDef *hirda)
// 1425 {
// 1426   /* Disable the IRDA Transmit Complete Interrupt */    
// 1427   __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_TC);
// 1428   
// 1429   /* Check if a receive process is ongoing or not */
// 1430   if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX) 
// 1431   {
// 1432     hirda->State = HAL_IRDA_STATE_BUSY_RX;
// 1433   }
// 1434   else
// 1435   {
// 1436     /* Disable the IRDA Error Interrupt: (Frame error, noise error, overrun error) */
// 1437     __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_ERR);
// 1438 
// 1439     hirda->State = HAL_IRDA_STATE_READY;
// 1440   }
// 1441   
// 1442   HAL_IRDA_TxCpltCallback(hirda);
// 1443   
// 1444   return HAL_OK;
// 1445 }
// 1446 
// 1447 
// 1448 /**
// 1449   * @brief  Receive an amount of data in non-blocking mode. 
// 1450   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1451   *                the configuration information for the specified IRDA module.
// 1452   * @retval HAL status
// 1453   */
// 1454 static HAL_StatusTypeDef IRDA_Receive_IT(IRDA_HandleTypeDef *hirda)
// 1455 {
// 1456   uint16_t* tmp = 0;
// 1457   uint32_t tmp_state = 0;
// 1458 
// 1459   tmp_state = hirda->State;  
// 1460   if((tmp_state == HAL_IRDA_STATE_BUSY_RX) || (tmp_state == HAL_IRDA_STATE_BUSY_TX_RX))
// 1461   {
// 1462     if(hirda->Init.WordLength == IRDA_WORDLENGTH_9B)
// 1463     {
// 1464       tmp = (uint16_t*) hirda->pRxBuffPtr;
// 1465       if(hirda->Init.Parity == IRDA_PARITY_NONE)
// 1466       {
// 1467         *tmp = (uint16_t)(hirda->Instance->DR & IRDA_DR_MASK_U16_9DATABITS);
// 1468         hirda->pRxBuffPtr += 2;
// 1469       }
// 1470       else
// 1471       {
// 1472         *tmp = (uint16_t)(hirda->Instance->DR & IRDA_DR_MASK_U16_8DATABITS);
// 1473         hirda->pRxBuffPtr += 1;
// 1474       }
// 1475     } 
// 1476     else
// 1477     {
// 1478       if(hirda->Init.Parity == IRDA_PARITY_NONE)
// 1479       {
// 1480         *hirda->pRxBuffPtr++ = (uint8_t)(hirda->Instance->DR & IRDA_DR_MASK_U8_8DATABITS);
// 1481       }
// 1482       else
// 1483       {
// 1484         *hirda->pRxBuffPtr++ = (uint8_t)(hirda->Instance->DR & IRDA_DR_MASK_U8_7DATABITS);
// 1485       }
// 1486     }
// 1487 
// 1488     if(--hirda->RxXferCount == 0)
// 1489     {
// 1490 
// 1491       __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_RXNE);
// 1492       
// 1493       if(hirda->State == HAL_IRDA_STATE_BUSY_TX_RX) 
// 1494       {
// 1495         hirda->State = HAL_IRDA_STATE_BUSY_TX;
// 1496       }
// 1497       else
// 1498       {
// 1499         /* Disable the IRDA Parity Error Interrupt */
// 1500         __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_PE);
// 1501 
// 1502         /* Disable the IRDA Error Interrupt: (Frame error, noise error, overrun error) */
// 1503         __HAL_IRDA_DISABLE_IT(hirda, IRDA_IT_ERR);
// 1504 
// 1505         hirda->State = HAL_IRDA_STATE_READY;
// 1506       }
// 1507       HAL_IRDA_RxCpltCallback(hirda);
// 1508 
// 1509       return HAL_OK;
// 1510     }
// 1511     return HAL_OK;
// 1512   }
// 1513   else
// 1514   {
// 1515     return HAL_BUSY; 
// 1516   }
// 1517 }
// 1518 
// 1519 /**
// 1520   * @brief  Configures the IRDA peripheral. 
// 1521   * @param  hirda: Pointer to a IRDA_HandleTypeDef structure that contains
// 1522   *                the configuration information for the specified IRDA module.
// 1523   * @retval None
// 1524   */
// 1525 static void IRDA_SetConfig(IRDA_HandleTypeDef *hirda)
// 1526 {
// 1527   /* Check the parameters */
// 1528   assert_param(IS_IRDA_BAUDRATE(hirda->Init.BaudRate));  
// 1529   assert_param(IS_IRDA_WORD_LENGTH(hirda->Init.WordLength));
// 1530   assert_param(IS_IRDA_PARITY(hirda->Init.Parity));
// 1531   assert_param(IS_IRDA_MODE(hirda->Init.Mode));
// 1532   
// 1533   /*------- IRDA-associated USART registers setting : CR2 Configuration ------*/
// 1534   /* Clear STOP[13:12] bits */
// 1535   CLEAR_BIT(hirda->Instance->CR2, USART_CR2_STOP);
// 1536   
// 1537   /*------- IRDA-associated USART registers setting : CR1 Configuration ------*/
// 1538   /* Configure the USART Word Length, Parity and mode: 
// 1539      Set the M bits according to hirda->Init.WordLength value 
// 1540      Set PCE and PS bits according to hirda->Init.Parity value
// 1541      Set TE and RE bits according to hirda->Init.Mode value */
// 1542   MODIFY_REG(hirda->Instance->CR1,
// 1543              ((uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE)),
// 1544              (uint32_t)hirda->Init.WordLength | hirda->Init.Parity | hirda->Init.Mode);
// 1545   
// 1546   /*------- IRDA-associated USART registers setting : CR3 Configuration ------*/
// 1547   /* Clear CTSE and RTSE bits */
// 1548   CLEAR_BIT(hirda->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE));
// 1549   
// 1550   /*------- IRDA-associated USART registers setting : BRR Configuration ------*/
// 1551   if(hirda->Instance == USART1)
// 1552   {
// 1553     hirda->Instance->BRR = IRDA_BRR(HAL_RCC_GetPCLK2Freq(), hirda->Init.BaudRate);
// 1554   }
// 1555   else
// 1556   {
// 1557     hirda->Instance->BRR = IRDA_BRR(HAL_RCC_GetPCLK1Freq(), hirda->Init.BaudRate);
// 1558   }
// 1559 }
// 1560 /**
// 1561   * @}
// 1562   */
// 1563 
// 1564 #endif /* HAL_IRDA_MODULE_ENABLED */
// 1565 /**
// 1566   * @}
// 1567   */
// 1568 
// 1569 /**
// 1570   * @}
// 1571   */
// 1572 
// 1573 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
