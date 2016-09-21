///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_uart.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_uart.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_uart.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_DMA_Abort
        EXTERN HAL_DMA_Start_IT
        EXTERN HAL_GetTick
        EXTERN HAL_RCC_GetPCLK1Freq
        EXTERN HAL_RCC_GetPCLK2Freq

        PUBLIC HAL_HalfDuplex_EnableReceiver
        PUBLIC HAL_HalfDuplex_EnableTransmitter
        PUBLIC HAL_HalfDuplex_Init
        PUBLIC HAL_LIN_Init
        PUBLIC HAL_LIN_SendBreak
        PUBLIC HAL_MultiProcessor_EnterMuteMode
        PUBLIC HAL_MultiProcessor_ExitMuteMode
        PUBLIC HAL_MultiProcessor_Init
        PUBLIC HAL_UART_DMAPause
        PUBLIC HAL_UART_DMAResume
        PUBLIC HAL_UART_DMAStop
        PUBLIC HAL_UART_DeInit
        PUBWEAK HAL_UART_ErrorCallback
        PUBLIC HAL_UART_GetError
        PUBLIC HAL_UART_GetState
        PUBLIC HAL_UART_IRQHandler
        PUBLIC HAL_UART_Init
        PUBWEAK HAL_UART_MspDeInit
        PUBWEAK HAL_UART_MspInit
        PUBLIC HAL_UART_Receive
        PUBLIC HAL_UART_Receive_DMA
        PUBLIC HAL_UART_Receive_IT
        PUBWEAK HAL_UART_RxCpltCallback
        PUBWEAK HAL_UART_RxHalfCpltCallback
        PUBLIC HAL_UART_Transmit
        PUBLIC HAL_UART_Transmit_DMA
        PUBLIC HAL_UART_Transmit_IT
        PUBWEAK HAL_UART_TxCpltCallback
        PUBWEAK HAL_UART_TxHalfCpltCallback
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_uart.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_uart.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   UART HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Universal Asynchronous Receiver Transmitter (UART) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral Control functions 
//   13   *           + Peripheral State and Errors functions  
//   14   @verbatim
//   15   ==============================================================================
//   16                         ##### How to use this driver #####
//   17   ==============================================================================
//   18   [..]
//   19     The UART HAL driver can be used as follows:
//   20     
//   21     (#) Declare a UART_HandleTypeDef handle structure.
//   22 
//   23     (#) Initialize the UART low level resources by implementing the HAL_UART_MspInit() API:
//   24         (##) Enable the USARTx interface clock.
//   25         (##) UART pins configuration:
//   26             (+++) Enable the clock for the UART GPIOs.
//   27             (+++) Configure the UART pins as alternate function pull-up.
//   28         (##) NVIC configuration if you need to use interrupt process (HAL_UART_Transmit_IT()
//   29              and HAL_UART_Receive_IT() APIs):
//   30             (+++) Configure the USARTx interrupt priority.
//   31             (+++) Enable the NVIC USART IRQ handle.
//   32         (##) DMA Configuration if you need to use DMA process (HAL_UART_Transmit_DMA()
//   33              and HAL_UART_Receive_DMA() APIs):
//   34             (+++) Declare a DMA handle structure for the Tx/Rx channel.
//   35             (+++) Enable the DMAx interface clock.
//   36             (+++) Configure the declared DMA handle structure with the required 
//   37                   Tx/Rx parameters.                
//   38             (+++) Configure the DMA Tx/Rx channel.
//   39             (+++) Associate the initialized DMA handle to the UART DMA Tx/Rx handle.
//   40             (+++) Configure the priority and enable the NVIC for the transfer complete 
//   41                   interrupt on the DMA Tx/Rx channel.
//   42             (+++) Configure the USARTx interrupt priority and enable the NVIC USART IRQ handle
//   43                   (used for last byte sending completion detection in DMA non circular mode)
//   44 
//   45     (#) Program the Baud Rate, Word Length, Stop Bit, Parity, Hardware 
//   46         flow control and Mode(Receiver/Transmitter) in the huart Init structure.
//   47 
//   48     (#) For the UART asynchronous mode, initialize the UART registers by calling
//   49         the HAL_UART_Init() API.
//   50 
//   51     (#) For the UART Half duplex mode, initialize the UART registers by calling 
//   52         the HAL_HalfDuplex_Init() API.
//   53 
//   54     (#) For the LIN mode, initialize the UART registers by calling the HAL_LIN_Init() API.
//   55 
//   56     (#) For the Multi-Processor mode, initialize the UART registers by calling 
//   57         the HAL_MultiProcessor_Init() API.
//   58 
//   59      [..] 
//   60        (@) The specific UART interrupts (Transmission complete interrupt, 
//   61             RXNE interrupt and Error Interrupts) will be managed using the macros
//   62             __HAL_UART_ENABLE_IT() and __HAL_UART_DISABLE_IT() inside the transmit 
//   63             and receive process.
//   64 
//   65      [..] 
//   66        (@) These APIs (HAL_UART_Init() and HAL_HalfDuplex_Init()) configure also the 
//   67             low level Hardware GPIO, CLOCK, CORTEX...etc) by calling the customed 
//   68             HAL_UART_MspInit() API.
//   69 
//   70      [..] 
//   71         Three operation modes are available within this driver :
//   72 
//   73      *** Polling mode IO operation ***
//   74      =================================
//   75      [..]    
//   76        (+) Send an amount of data in blocking mode using HAL_UART_Transmit() 
//   77        (+) Receive an amount of data in blocking mode using HAL_UART_Receive()
//   78        
//   79      *** Interrupt mode IO operation ***
//   80      ===================================
//   81      [..]
//   82        (+) Send an amount of data in non blocking mode using HAL_UART_Transmit_IT() 
//   83        (+) At transmission end of transfer HAL_UART_TxCpltCallback is executed and user can 
//   84             add his own code by customization of function pointer HAL_UART_TxCpltCallback
//   85        (+) Receive an amount of data in non blocking mode using HAL_UART_Receive_IT() 
//   86        (+) At reception end of transfer HAL_UART_RxCpltCallback is executed and user can 
//   87             add his own code by customization of function pointer HAL_UART_RxCpltCallback
//   88        (+) In case of transfer Error, HAL_UART_ErrorCallback() function is executed and user can 
//   89             add his own code by customization of function pointer HAL_UART_ErrorCallback
//   90 
//   91      *** DMA mode IO operation ***
//   92      ==============================
//   93      [..] 
//   94        (+) Send an amount of data in non blocking mode (DMA) using HAL_UART_Transmit_DMA() 
//   95        (+) At transmission end of half transfer HAL_UART_TxHalfCpltCallback is executed and user can 
//   96             add his own code by customization of function pointer HAL_UART_TxHalfCpltCallback 
//   97        (+) At transmission end of transfer HAL_UART_TxCpltCallback is executed and user can 
//   98             add his own code by customization of function pointer HAL_UART_TxCpltCallback
//   99        (+) Receive an amount of data in non blocking mode (DMA) using HAL_UART_Receive_DMA() 
//  100        (+) At reception end of half transfer HAL_UART_RxHalfCpltCallback is executed and user can 
//  101             add his own code by customization of function pointer HAL_UART_RxHalfCpltCallback 
//  102        (+) At reception end of transfer HAL_UART_RxCpltCallback is executed and user can 
//  103             add his own code by customization of function pointer HAL_UART_RxCpltCallback
//  104        (+) In case of transfer Error, HAL_UART_ErrorCallback() function is executed and user can 
//  105             add his own code by customization of function pointer HAL_UART_ErrorCallback
//  106        (+) Pause the DMA Transfer using HAL_UART_DMAPause()
//  107        (+) Resume the DMA Transfer using HAL_UART_DMAResume()
//  108        (+) Stop the DMA Transfer using HAL_UART_DMAStop()
//  109 
//  110      *** UART HAL driver macros list ***
//  111      =============================================
//  112      [..]
//  113        Below the list of most used macros in UART HAL driver.
//  114 
//  115       (+) __HAL_UART_ENABLE: Enable the UART peripheral 
//  116       (+) __HAL_UART_DISABLE: Disable the UART peripheral
//  117       (+) __HAL_UART_GET_FLAG : Check whether the specified UART flag is set or not
//  118       (+) __HAL_UART_CLEAR_FLAG : Clear the specified UART pending flag
//  119       (+) __HAL_UART_ENABLE_IT: Enable the specified UART interrupt
//  120       (+) __HAL_UART_DISABLE_IT: Disable the specified UART interrupt
//  121       (+) __HAL_UART_GET_IT_SOURCE: Check whether the specified UART interrupt has occurred or not
//  122 
//  123      [..]
//  124        (@) You can refer to the UART HAL driver header file for more useful macros 
//  125       
//  126   @endverbatim
//  127   ******************************************************************************
//  128   * @attention
//  129   *
//  130   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  131   *
//  132   * Redistribution and use in source and binary forms, with or without modification,
//  133   * are permitted provided that the following conditions are met:
//  134   *   1. Redistributions of source code must retain the above copyright notice,
//  135   *      this list of conditions and the following disclaimer.
//  136   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  137   *      this list of conditions and the following disclaimer in the documentation
//  138   *      and/or other materials provided with the distribution.
//  139   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  140   *      may be used to endorse or promote products derived from this software
//  141   *      without specific prior written permission.
//  142   *
//  143   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  144   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  145   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  146   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  147   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  148   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  149   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  150   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  151   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  152   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  153   *
//  154   ******************************************************************************
//  155   */
//  156 
//  157 /* Includes ------------------------------------------------------------------*/
//  158 #include "stm32l1xx_hal.h"
//  159 
//  160 /** @addtogroup STM32L1xx_HAL_Driver
//  161   * @{
//  162   */
//  163 
//  164 /** @defgroup UART UART
//  165   * @brief HAL UART module driver
//  166   * @{
//  167   */
//  168 #ifdef HAL_UART_MODULE_ENABLED
//  169     
//  170 /* Private typedef -----------------------------------------------------------*/
//  171 /* Private define ------------------------------------------------------------*/
//  172 /* Private macros ------------------------------------------------------------*/
//  173 /* Private variables ---------------------------------------------------------*/
//  174 /* Private function prototypes -----------------------------------------------*/
//  175 /** @addtogroup UART_Private_Functions   UART Private Functions
//  176   * @{
//  177   */
//  178 static void UART_SetConfig (UART_HandleTypeDef *huart);
//  179 static HAL_StatusTypeDef UART_Transmit_IT(UART_HandleTypeDef *huart);
//  180 static HAL_StatusTypeDef UART_EndTransmit_IT(UART_HandleTypeDef *huart);
//  181 static HAL_StatusTypeDef UART_Receive_IT(UART_HandleTypeDef *huart);
//  182 static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma);
//  183 static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma);
//  184 static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
//  185 static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma);
//  186 static void UART_DMAError(DMA_HandleTypeDef *hdma); 
//  187 static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Timeout);
//  188 /**
//  189   * @}
//  190   */
//  191 
//  192 /* Exported functions ---------------------------------------------------------*/
//  193 
//  194 /** @defgroup UART_Exported_Functions UART Exported Functions
//  195   * @{
//  196   */
//  197 
//  198 /** @defgroup UART_Exported_Functions_Group1 Initialization and de-initialization functions 
//  199   *  @brief    Initialization and Configuration functions 
//  200   *
//  201 @verbatim
//  202 ===============================================================================
//  203             ##### Initialization and Configuration functions #####
//  204  ===============================================================================  
//  205     [..]
//  206     This subsection provides a set of functions allowing to initialize the USARTx or the UARTy 
//  207     in asynchronous mode.
//  208       (+) For the asynchronous mode only these parameters can be configured: 
//  209         (++) Baud Rate
//  210         (++) Word Length 
//  211         (++) Stop Bit
//  212         (++) Parity
//  213         (++) Hardware flow control
//  214         (++) Receiver/transmitter modes
//  215         (++) Over Sampling Methode
//  216     [..]
//  217     The HAL_UART_Init(), HAL_HalfDuplex_Init(), HAL_LIN_Init() and HAL_MultiProcessor_Init() APIs 
//  218     follow respectively the UART asynchronous, UART Half duplex, LIN and Multi-Processor
//  219     configuration procedures (details for the procedures are available in reference manual (RM0038)).
//  220 
//  221 @endverbatim
//  222   * @{
//  223   */
//  224 
//  225 /*
//  226   Additionnal remark: If the parity is enabled, then the MSB bit of the data written
//  227                       in the data register is transmitted but is changed by the parity bit.
//  228                       Depending on the frame length defined by the M bit (8-bits or 9-bits),
//  229                       the possible UART frame formats are as listed in the following table:
//  230     +-------------------------------------------------------------+
//  231     |   M bit |  PCE bit  |            UART frame                 |
//  232     |---------------------|---------------------------------------|
//  233     |    0    |    0      |    | SB | 8 bit data | STB |          |
//  234     |---------|-----------|---------------------------------------|
//  235     |    0    |    1      |    | SB | 7 bit data | PB | STB |     |
//  236     |---------|-----------|---------------------------------------|
//  237     |    1    |    0      |    | SB | 9 bit data | STB |          |
//  238     |---------|-----------|---------------------------------------|
//  239     |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
//  240     +-------------------------------------------------------------+
//  241 */
//  242 
//  243 /**
//  244   * @brief  Initializes the UART mode according to the specified parameters in
//  245   *         the UART_InitTypeDef and create the associated handle.
//  246   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  247   *                the configuration information for the specified UART module.
//  248   * @retval HAL status
//  249   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_UART_Init
        THUMB
//  250 HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
//  251 {
HAL_UART_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  252   /* Check the UART handle allocation */
//  253   if(huart == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_UART_Init_0
//  254   {
//  255     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_UART_Init_1
//  256   }
//  257 
//  258   /* Check the parameters */
//  259   if(huart->Init.HwFlowCtl != UART_HWCONTROL_NONE)
??HAL_UART_Init_0:
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??HAL_UART_Init_2
//  260   {
//  261     /* The hardware flow control is available only for USART1, USART2, USART3 */
//  262     assert_param(IS_UART_HWFLOW_INSTANCE(huart->Instance));
//  263     assert_param(IS_UART_HARDWARE_FLOW_CONTROL(huart->Init.HwFlowCtl));
//  264   }
//  265   else
//  266   {
//  267     assert_param(IS_UART_INSTANCE(huart->Instance));
//  268   }
//  269   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
//  270   assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
//  271   
//  272   if(huart->State == HAL_UART_STATE_RESET)
??HAL_UART_Init_3:
??HAL_UART_Init_2:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+0
        BNE.N    ??HAL_UART_Init_4
//  273   {  
//  274     /* Allocate lock resource and initialize it */
//  275     huart->Lock = HAL_UNLOCKED;
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  276 
//  277     /* Init the low level hardware */
//  278     HAL_UART_MspInit(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_MspInit
        BL       HAL_UART_MspInit
//  279   }
//  280 
//  281   huart->State = HAL_UART_STATE_BUSY;
??HAL_UART_Init_4:
        MOVS     R0,#+2
        STRB     R0,[R4, #+57]
//  282 
//  283   /* Disable the peripheral */
//  284   __HAL_UART_DISABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  285   
//  286   /* Set the UART Communication parameters */
//  287   UART_SetConfig(huart);
        MOVS     R0,R4
          CFI FunCall UART_SetConfig
        BL       UART_SetConfig
//  288   
//  289   /* In asynchronous mode, the following bits must be kept cleared: 
//  290      - LINEN and CLKEN bits in the USART_CR2 register,
//  291      - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
//  292   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x4800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  293   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x2A
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  294   
//  295   /* Enable the peripheral */
//  296   __HAL_UART_ENABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  297   
//  298   /* Initialize the UART state */
//  299   huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  300   huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  301   
//  302   return HAL_OK;
        MOVS     R0,#+0
??HAL_UART_Init_1:
        POP      {R4,PC}          ;; return
//  303 }
          CFI EndBlock cfiBlock0
//  304 
//  305 /**
//  306   * @brief  Initializes the half-duplex mode according to the specified
//  307   *         parameters in the UART_InitTypeDef and create the associated handle.
//  308   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  309   *                the configuration information for the specified UART module.
//  310   * @retval HAL status
//  311   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_HalfDuplex_Init
        THUMB
//  312 HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart)
//  313 {
HAL_HalfDuplex_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  314   /* Check the UART handle allocation */
//  315   if(huart == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_HalfDuplex_Init_0
//  316   {
//  317     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_HalfDuplex_Init_1
//  318   }
//  319   
//  320   /* Check UART instance */
//  321   assert_param(IS_UART_HALFDUPLEX_INSTANCE(huart->Instance));
//  322   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
//  323   assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
//  324 
//  325   if(huart->State == HAL_UART_STATE_RESET)
??HAL_HalfDuplex_Init_0:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+0
        BNE.N    ??HAL_HalfDuplex_Init_2
//  326   {   
//  327     /* Allocate lock resource and initialize it */
//  328     huart->Lock = HAL_UNLOCKED;
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  329 
//  330     /* Init the low level hardware */
//  331     HAL_UART_MspInit(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_MspInit
        BL       HAL_UART_MspInit
//  332   }
//  333 
//  334   huart->State = HAL_UART_STATE_BUSY;
??HAL_HalfDuplex_Init_2:
        MOVS     R0,#+2
        STRB     R0,[R4, #+57]
//  335 
//  336   /* Disable the peripheral */
//  337   __HAL_UART_DISABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  338   
//  339   /* Set the UART Communication parameters */
//  340   UART_SetConfig(huart);
        MOVS     R0,R4
          CFI FunCall UART_SetConfig
        BL       UART_SetConfig
//  341   
//  342   /* In half-duplex mode, the following bits must be kept cleared: 
//  343      - LINEN and CLKEN bits in the USART_CR2 register,
//  344      - SCEN and IREN bits in the USART_CR3 register.*/
//  345   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x4800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  346   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x22
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  347   
//  348   /* Enable the Half-Duplex mode by setting the HDSEL bit in the CR3 register */
//  349   SET_BIT(huart->Instance->CR3, USART_CR3_HDSEL);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ORRS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  350  
//  351   /* Enable the peripheral */
//  352   __HAL_UART_ENABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  353   
//  354   /* Initialize the UART state*/
//  355   huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  356   huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  357   
//  358   return HAL_OK;
        MOVS     R0,#+0
??HAL_HalfDuplex_Init_1:
        POP      {R4,PC}          ;; return
//  359 }
          CFI EndBlock cfiBlock1
//  360 
//  361 /**
//  362   * @brief  Initializes the LIN mode according to the specified
//  363   *         parameters in the UART_InitTypeDef and create the associated handle.
//  364   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  365   *                the configuration information for the specified UART module.
//  366   * @param  BreakDetectLength: Specifies the LIN break detection length.
//  367   *         This parameter can be one of the following values:
//  368   *            @arg UART_LINBREAKDETECTLENGTH_10B: 10-bit break detection
//  369   *            @arg UART_LINBREAKDETECTLENGTH_11B: 11-bit break detection
//  370   * @retval HAL status
//  371   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_LIN_Init
        THUMB
//  372 HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength)
//  373 {
HAL_LIN_Init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  374   /* Check the UART handle allocation */
//  375   if(huart == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_LIN_Init_0
//  376   {
//  377     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_LIN_Init_1
//  378   }
//  379   
//  380   /* Check the LIN UART instance */  
//  381   assert_param(IS_UART_LIN_INSTANCE(huart->Instance));
//  382   /* Check the Break detection length parameter */
//  383   assert_param(IS_UART_LIN_BREAK_DETECT_LENGTH(BreakDetectLength));
//  384   assert_param(IS_UART_LIN_WORD_LENGTH(huart->Init.WordLength));
//  385   assert_param(IS_UART_LIN_OVERSAMPLING(huart->Init.OverSampling));
//  386   
//  387   if(huart->State == HAL_UART_STATE_RESET)
??HAL_LIN_Init_0:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+0
        BNE.N    ??HAL_LIN_Init_2
//  388   {   
//  389     /* Allocate lock resource and initialize it */
//  390     huart->Lock = HAL_UNLOCKED;
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  391 
//  392     /* Init the low level hardware */
//  393     HAL_UART_MspInit(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_MspInit
        BL       HAL_UART_MspInit
//  394   }
//  395 
//  396   huart->State = HAL_UART_STATE_BUSY;
??HAL_LIN_Init_2:
        MOVS     R0,#+2
        STRB     R0,[R4, #+57]
//  397 
//  398   /* Disable the peripheral */
//  399   __HAL_UART_DISABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  400   
//  401   /* Set the UART Communication parameters */
//  402   UART_SetConfig(huart);
        MOVS     R0,R4
          CFI FunCall UART_SetConfig
        BL       UART_SetConfig
//  403   
//  404   /* In LIN mode, the following bits must be kept cleared: 
//  405      - CLKEN bits in the USART_CR2 register,
//  406      - SCEN and IREN bits in the USART_CR3 register.*/
//  407   CLEAR_BIT(huart->Instance->CR2, USART_CR2_CLKEN);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  408   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x2A
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  409   
//  410   /* Enable the LIN mode by setting the LINEN bit in the CR2 register */
//  411   SET_BIT(huart->Instance->CR2, USART_CR2_LINEN);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        ORRS     R0,R0,#0x4000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  412   
//  413   /* Set the USART LIN Break detection length. */
//  414   MODIFY_REG(huart->Instance->CR2, USART_CR2_LBDL, BreakDetectLength);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x20
        ORRS     R0,R5,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  415   
//  416   /* Enable the peripheral */
//  417   __HAL_UART_ENABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  418   
//  419   /* Initialize the UART state*/
//  420   huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  421   huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  422   
//  423   return HAL_OK;
        MOVS     R0,#+0
??HAL_LIN_Init_1:
        POP      {R1,R4,R5,PC}    ;; return
//  424 }
          CFI EndBlock cfiBlock2
//  425 
//  426 /**
//  427   * @brief  Initializes the Multi-Processor mode according to the specified
//  428   *         parameters in the UART_InitTypeDef and create the associated handle.
//  429   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  430   *                the configuration information for the specified UART module.
//  431   * @param  Address: UART node address
//  432   * @param  WakeUpMethod: specifies the UART wakeup method.
//  433   *         This parameter can be one of the following values:
//  434   *            @arg UART_WAKEUPMETHOD_IDLELINE: Wakeup by an idle line detection
//  435   *            @arg UART_WAKEUPMETHOD_ADDRESSMARK: Wakeup by an address mark
//  436   * @retval HAL status
//  437   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_MultiProcessor_Init
        THUMB
//  438 HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod)
//  439 {
HAL_MultiProcessor_Init:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  440   /* Check the UART handle allocation */
//  441   if(huart == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_MultiProcessor_Init_0
//  442   {
//  443     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_MultiProcessor_Init_1
//  444   }
//  445 
//  446   /* Check UART instance capabilities */  
//  447   assert_param(IS_UART_MULTIPROCESSOR_INSTANCE(huart->Instance));
//  448 
//  449   /* Check the Address & wake up method parameters */
//  450   assert_param(IS_UART_WAKEUPMETHOD(WakeUpMethod));
//  451   assert_param(IS_UART_ADDRESS(Address));
//  452   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
//  453   assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));
//  454 
//  455   if(huart->State == HAL_UART_STATE_RESET)
??HAL_MultiProcessor_Init_0:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+0
        BNE.N    ??HAL_MultiProcessor_Init_2
//  456   {   
//  457     /* Allocate lock resource and initialize it */
//  458     huart->Lock = HAL_UNLOCKED;
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  459 
//  460     /* Init the low level hardware */
//  461     HAL_UART_MspInit(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_MspInit
        BL       HAL_UART_MspInit
//  462   }
//  463 
//  464   huart->State = HAL_UART_STATE_BUSY;
??HAL_MultiProcessor_Init_2:
        MOVS     R0,#+2
        STRB     R0,[R4, #+57]
//  465 
//  466   /* Disable the peripheral */
//  467   __HAL_UART_DISABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  468   
//  469   /* Set the UART Communication parameters */
//  470   UART_SetConfig(huart);
        MOVS     R0,R4
          CFI FunCall UART_SetConfig
        BL       UART_SetConfig
//  471   
//  472   /* In Multi-Processor mode, the following bits must be kept cleared: 
//  473      - LINEN and CLKEN bits in the USART_CR2 register,
//  474      - SCEN, HDSEL and IREN  bits in the USART_CR3 register */
//  475   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x4800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  476   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x2A
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  477   
//  478   /* Set the USART address node */
//  479   MODIFY_REG(huart->Instance->CR2, USART_CR2_ADD, Address);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R5,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  480   
//  481   /* Set the wake up method by setting the WAKE bit in the CR1 register */
//  482   MODIFY_REG(huart->Instance->CR1, USART_CR1_WAKE, WakeUpMethod);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x800
        ORRS     R0,R6,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  483   
//  484   /* Enable the peripheral */
//  485   __HAL_UART_ENABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  486   
//  487   /* Initialize the UART state */
//  488   huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  489   huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  490   
//  491   return HAL_OK;
        MOVS     R0,#+0
??HAL_MultiProcessor_Init_1:
        POP      {R4-R6,PC}       ;; return
//  492 }
          CFI EndBlock cfiBlock3
//  493 
//  494 /**
//  495   * @brief  DeInitializes the UART peripheral. 
//  496   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  497   *                the configuration information for the specified UART module.
//  498   * @retval HAL status
//  499   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_UART_DeInit
        THUMB
//  500 HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart)
//  501 {
HAL_UART_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  502   /* Check the UART handle allocation */
//  503   if(huart == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_UART_DeInit_0
//  504   {
//  505     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_UART_DeInit_1
//  506   }
//  507   
//  508   /* Check the parameters */
//  509   assert_param(IS_UART_INSTANCE(huart->Instance));
//  510 
//  511   huart->State = HAL_UART_STATE_BUSY;
??HAL_UART_DeInit_0:
        MOVS     R0,#+2
        STRB     R0,[R4, #+57]
//  512   
//  513   /* Disable the Peripheral */
//  514   __HAL_UART_DISABLE(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x2000
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  515   
//  516   huart->Instance->CR1 = 0x0;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  517   huart->Instance->CR2 = 0x0;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  518   huart->Instance->CR3 = 0x0;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  519   
//  520   /* DeInit the low level hardware */
//  521   HAL_UART_MspDeInit(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_MspDeInit
        BL       HAL_UART_MspDeInit
//  522 
//  523   huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  524   huart->State = HAL_UART_STATE_RESET;
        MOVS     R0,#+0
        STRB     R0,[R4, #+57]
//  525 
//  526   /* Process Unlock */
//  527   __HAL_UNLOCK(huart);
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  528 
//  529   return HAL_OK;
        MOVS     R0,#+0
??HAL_UART_DeInit_1:
        POP      {R4,PC}          ;; return
//  530 }
          CFI EndBlock cfiBlock4
//  531 
//  532 /**
//  533   * @brief  UART MSP Init.
//  534   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  535   *                the configuration information for the specified UART module.
//  536   * @retval None
//  537   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_UART_MspInit
          CFI NoCalls
        THUMB
//  538  __weak void HAL_UART_MspInit(UART_HandleTypeDef *huart)
//  539 {
//  540   /* Prevent unused argument(s) compilation warning */
//  541   UNUSED(huart);
//  542 
//  543   /* NOTE: This function should not be modified, when the callback is needed,
//  544            the HAL_UART_MspInit can be implemented in the user file
//  545    */ 
//  546 }
HAL_UART_MspInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  547 
//  548 /**
//  549   * @brief  UART MSP DeInit.
//  550   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  551   *                the configuration information for the specified UART module.
//  552   * @retval None
//  553   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_UART_MspDeInit
          CFI NoCalls
        THUMB
//  554  __weak void HAL_UART_MspDeInit(UART_HandleTypeDef *huart)
//  555 {
//  556   /* Prevent unused argument(s) compilation warning */
//  557   UNUSED(huart);
//  558 
//  559   /* NOTE: This function should not be modified, when the callback is needed,
//  560            the HAL_UART_MspDeInit can be implemented in the user file
//  561    */ 
//  562 }
HAL_UART_MspDeInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  563 
//  564 /**
//  565   * @}
//  566   */
//  567 
//  568 /** @defgroup UART_Exported_Functions_Group2 IO operation functions 
//  569   *  @brief UART Transmit and Receive functions 
//  570   *
//  571 @verbatim
//  572   ==============================================================================
//  573                       ##### IO operation functions #####
//  574   ==============================================================================  
//  575   [..]
//  576     This subsection provides a set of functions allowing to manage the UART asynchronous
//  577     and Half duplex data transfers.
//  578 
//  579     (#) There are two modes of transfer:
//  580        (++) Blocking mode: The communication is performed in polling mode. 
//  581             The HAL status of all data processing is returned by the same function 
//  582             after finishing transfer.  
//  583        (++) Non blocking mode: The communication is performed using Interrupts 
//  584             or DMA, these APIs return the HAL status.
//  585             The end of the data processing will be indicated through the 
//  586             dedicated UART IRQ when using Interrupt mode or the DMA IRQ when 
//  587             using DMA mode.
//  588             The HAL_UART_TxCpltCallback(), HAL_UART_RxCpltCallback() user callbacks 
//  589             will be executed respectively at the end of the transmit or receive process.
//  590             The HAL_UART_ErrorCallback() user callback will be executed when 
//  591             a communication error is detected.
//  592 
//  593     (#) Blocking mode APIs are:
//  594         (++) HAL_UART_Transmit()
//  595         (++) HAL_UART_Receive() 
//  596 
//  597     (#) Non Blocking mode APIs with Interrupt are:
//  598         (++) HAL_UART_Transmit_IT()
//  599         (++) HAL_UART_Receive_IT()
//  600         (++) HAL_UART_IRQHandler()
//  601 
//  602     (#) Non Blocking mode functions with DMA are:
//  603         (++) HAL_UART_Transmit_DMA()
//  604         (++) HAL_UART_Receive_DMA()
//  605         (++) HAL_UART_DMAPause()
//  606         (++) HAL_UART_DMAResume()
//  607         (++) HAL_UART_DMAStop()
//  608 
//  609     (#) A set of Transfer Complete Callbacks are provided in non blocking mode:
//  610         (++) HAL_UART_TxHalfCpltCallback()
//  611         (++) HAL_UART_TxCpltCallback()
//  612         (++) HAL_UART_RxHalfCpltCallback()
//  613         (++) HAL_UART_RxCpltCallback()
//  614         (++) HAL_UART_ErrorCallback()
//  615 
//  616     [..] 
//  617       (@) In the Half duplex communication, it is forbidden to run the transmit 
//  618           and receive process in parallel, the UART state HAL_UART_STATE_BUSY_TX_RX 
//  619           can't be useful.
//  620       
//  621 @endverbatim
//  622   * @{
//  623   */
//  624 
//  625 /**
//  626   * @brief  Sends an amount of data in blocking mode. 
//  627   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  628   *                the configuration information for the specified UART module.
//  629   * @param  pData: Pointer to data buffer
//  630   * @param  Size: Amount of data to be sent
//  631   * @param  Timeout: Timeout duration  
//  632   * @retval HAL status
//  633   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_UART_Transmit
        THUMB
//  634 HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  635 {
HAL_UART_Transmit:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
//  636   uint16_t* tmp;
//  637   uint32_t tmp_state = 0;
        MOVS     R0,#+0
//  638   
//  639   tmp_state = huart->State;
        LDRB     R0,[R4, #+57]
//  640   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_RX))
        CMP      R0,#+1
        BEQ.N    ??HAL_UART_Transmit_0
        CMP      R0,#+34
        BNE.N    ??HAL_UART_Transmit_1
//  641   {
//  642     if((pData == NULL) || (Size == 0))
??HAL_UART_Transmit_0:
        CMP      R5,#+0
        BEQ.N    ??HAL_UART_Transmit_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Transmit_3
//  643     {
//  644       return  HAL_ERROR;
??HAL_UART_Transmit_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Transmit_4
//  645     }
//  646 
//  647     /* Process Locked */
//  648     __HAL_LOCK(huart);
??HAL_UART_Transmit_3:
        LDRB     R0,[R4, #+56]
        CMP      R0,#+1
        BNE.N    ??HAL_UART_Transmit_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Transmit_4
??HAL_UART_Transmit_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+56]
//  649 
//  650     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  651     /* Check if a non-blocking receive process is ongoing or not */
//  652     if(huart->State == HAL_UART_STATE_BUSY_RX) 
        LDRB     R0,[R4, #+57]
        CMP      R0,#+34
        BNE.N    ??HAL_UART_Transmit_6
//  653     {
//  654       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R0,#+50
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Transmit_7
//  655     }
//  656     else
//  657     {
//  658       huart->State = HAL_UART_STATE_BUSY_TX;
??HAL_UART_Transmit_6:
        MOVS     R0,#+18
        STRB     R0,[R4, #+57]
//  659     }
//  660 
//  661     huart->TxXferSize = Size;
??HAL_UART_Transmit_7:
        STRH     R2,[R4, #+36]
//  662     huart->TxXferCount = Size;
        STRH     R2,[R4, #+38]
        B.N      ??HAL_UART_Transmit_8
//  663     while(huart->TxXferCount > 0)
//  664     {
//  665       huart->TxXferCount--;
//  666       if(huart->Init.WordLength == UART_WORDLENGTH_9B)
//  667       {
//  668         if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  669         {
//  670           return HAL_TIMEOUT;
//  671         }
//  672         tmp = (uint16_t*) pData;
//  673         huart->Instance->DR = (*tmp & (uint16_t)0x01FF);
//  674         if(huart->Init.Parity == UART_PARITY_NONE)
//  675         {
//  676           pData +=2;
//  677         }
//  678         else
//  679         { 
//  680           pData +=1;
//  681         }
//  682       } 
//  683       else
//  684       {
//  685         if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  686         {
//  687           return HAL_TIMEOUT;
//  688         }
//  689         huart->Instance->DR = (*pData++ & (uint8_t)0xFF);
??HAL_UART_Transmit_9:
        LDRB     R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
        ADDS     R5,R5,#+1
??HAL_UART_Transmit_8:
        LDRH     R0,[R4, #+38]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Transmit_10
        LDRH     R0,[R4, #+38]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+38]
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_UART_Transmit_11
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+128
        MOVS     R0,R4
          CFI FunCall UART_WaitOnFlagUntilTimeout
        BL       UART_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Transmit_12
        MOVS     R0,#+3
        B.N      ??HAL_UART_Transmit_4
??HAL_UART_Transmit_12:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??HAL_UART_Transmit_13
        ADDS     R5,R5,#+2
        B.N      ??HAL_UART_Transmit_8
??HAL_UART_Transmit_13:
        ADDS     R5,R5,#+1
        B.N      ??HAL_UART_Transmit_8
??HAL_UART_Transmit_11:
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+128
        MOVS     R0,R4
          CFI FunCall UART_WaitOnFlagUntilTimeout
        BL       UART_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Transmit_9
        MOVS     R0,#+3
        B.N      ??HAL_UART_Transmit_4
//  690       }
//  691     }
//  692 
//  693     if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, Timeout) != HAL_OK)
??HAL_UART_Transmit_10:
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+64
        MOVS     R0,R4
          CFI FunCall UART_WaitOnFlagUntilTimeout
        BL       UART_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Transmit_14
//  694     { 
//  695       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_UART_Transmit_4
//  696     }
//  697 
//  698     /* Check if a non-blocking receive process is ongoing or not */
//  699     if(huart->State == HAL_UART_STATE_BUSY_TX_RX) 
??HAL_UART_Transmit_14:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+50
        BNE.N    ??HAL_UART_Transmit_15
//  700     {
//  701       huart->State = HAL_UART_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Transmit_16
//  702     }
//  703     else
//  704     {
//  705       huart->State = HAL_UART_STATE_READY;
??HAL_UART_Transmit_15:
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  706     }
//  707 
//  708     /* Process Unlocked */
//  709     __HAL_UNLOCK(huart);
??HAL_UART_Transmit_16:
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  710 
//  711     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Transmit_4
//  712   }
//  713   else
//  714   {
//  715     return HAL_BUSY;
??HAL_UART_Transmit_1:
        MOVS     R0,#+2
??HAL_UART_Transmit_4:
        POP      {R4-R6,PC}       ;; return
//  716   }
//  717 }
          CFI EndBlock cfiBlock7
//  718 
//  719 /**
//  720   * @brief  Receives an amount of data in blocking mode. 
//  721   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  722   *                the configuration information for the specified UART module.
//  723   * @param  pData: Pointer to data buffer
//  724   * @param  Size: Amount of data to be received
//  725   * @param  Timeout: Timeout duration
//  726   * @retval HAL status
//  727   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_UART_Receive
        THUMB
//  728 HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  729 {
HAL_UART_Receive:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R3
//  730   uint16_t* tmp;
//  731   uint32_t  tmp_state = 0;
        MOVS     R0,#+0
//  732 
//  733   tmp_state = huart->State;
        LDRB     R0,[R4, #+57]
//  734   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_TX))
        CMP      R0,#+1
        BEQ.N    ??HAL_UART_Receive_0
        CMP      R0,#+18
        BNE.N    ??HAL_UART_Receive_1
//  735   {
//  736     if((pData == NULL ) || (Size == 0))
??HAL_UART_Receive_0:
        CMP      R5,#+0
        BEQ.N    ??HAL_UART_Receive_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Receive_3
//  737     {
//  738       return  HAL_ERROR;
??HAL_UART_Receive_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Receive_4
//  739     }
//  740 
//  741     /* Process Locked */
//  742     __HAL_LOCK(huart);
??HAL_UART_Receive_3:
        LDRB     R0,[R4, #+56]
        CMP      R0,#+1
        BNE.N    ??HAL_UART_Receive_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Receive_4
??HAL_UART_Receive_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+56]
//  743 
//  744     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  745     /* Check if a non-blocking transmit process is ongoing or not */
//  746     if(huart->State == HAL_UART_STATE_BUSY_TX)
        LDRB     R0,[R4, #+57]
        CMP      R0,#+18
        BNE.N    ??HAL_UART_Receive_6
//  747     {
//  748       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R0,#+50
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Receive_7
//  749     }
//  750     else
//  751     {
//  752       huart->State = HAL_UART_STATE_BUSY_RX;
??HAL_UART_Receive_6:
        MOVS     R0,#+34
        STRB     R0,[R4, #+57]
//  753     }
//  754 
//  755     huart->RxXferSize = Size;
??HAL_UART_Receive_7:
        STRH     R2,[R4, #+44]
//  756     huart->RxXferCount = Size;
        STRH     R2,[R4, #+46]
        B.N      ??HAL_UART_Receive_8
//  757 
//  758     /* Check the remain data to be received */
//  759     while(huart->RxXferCount > 0)
//  760     {
//  761       huart->RxXferCount--;
//  762       if(huart->Init.WordLength == UART_WORDLENGTH_9B)
//  763       {
//  764         if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  765         {
//  766           return HAL_TIMEOUT;
//  767         }
//  768         tmp = (uint16_t*) pData ;
//  769         if(huart->Init.Parity == UART_PARITY_NONE)
//  770         {
//  771           *tmp = (uint16_t)(huart->Instance->DR & (uint16_t)0x01FF);
??HAL_UART_Receive_9:
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+4]
        LSLS     R1,R1,#+23       ;; ZeroExtS R1,R1,#+23,#+23
        LSRS     R1,R1,#+23
        STRH     R1,[R0, #+0]
//  772           pData +=2;
        ADDS     R5,R5,#+2
//  773         }
??HAL_UART_Receive_8:
        LDRH     R0,[R4, #+46]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Receive_10
        LDRH     R0,[R4, #+46]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+46]
        LDR      R0,[R4, #+8]
        CMP      R0,#+4096
        BNE.N    ??HAL_UART_Receive_11
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+32
        MOVS     R0,R4
          CFI FunCall UART_WaitOnFlagUntilTimeout
        BL       UART_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Receive_12
        MOVS     R0,#+3
        B.N      ??HAL_UART_Receive_4
??HAL_UART_Receive_12:
        MOVS     R0,R5
        LDR      R1,[R4, #+16]
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_Receive_9
//  774         else
//  775         {
//  776           *tmp = (uint16_t)(huart->Instance->DR & (uint16_t)0x00FF);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STRH     R1,[R0, #+0]
//  777           pData +=1;
        ADDS     R5,R5,#+1
        B.N      ??HAL_UART_Receive_8
//  778         }
//  779 
//  780       }
//  781       else
//  782       {
//  783         if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, Timeout) != HAL_OK)
??HAL_UART_Receive_11:
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+32
        MOVS     R0,R4
          CFI FunCall UART_WaitOnFlagUntilTimeout
        BL       UART_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Receive_13
//  784         {
//  785           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_UART_Receive_4
//  786         }
//  787         if(huart->Init.Parity == UART_PARITY_NONE)
??HAL_UART_Receive_13:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??HAL_UART_Receive_14
//  788         {
//  789           *pData++ = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??HAL_UART_Receive_8
//  790         }
//  791         else
//  792         {
//  793           *pData++ = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
??HAL_UART_Receive_14:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??HAL_UART_Receive_8
//  794         }
//  795 
//  796       }
//  797     }
//  798 
//  799     /* Check if a non-blocking transmit process is ongoing or not */
//  800     if(huart->State == HAL_UART_STATE_BUSY_TX_RX) 
??HAL_UART_Receive_10:
        LDRB     R0,[R4, #+57]
        CMP      R0,#+50
        BNE.N    ??HAL_UART_Receive_15
//  801     {
//  802       huart->State = HAL_UART_STATE_BUSY_TX;
        MOVS     R0,#+18
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Receive_16
//  803     }
//  804     else
//  805     {
//  806       huart->State = HAL_UART_STATE_READY;
??HAL_UART_Receive_15:
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
//  807     }
//  808     /* Process Unlocked */
//  809     __HAL_UNLOCK(huart);
??HAL_UART_Receive_16:
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  810 
//  811     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Receive_4
//  812   }
//  813   else
//  814   {
//  815     return HAL_BUSY;
??HAL_UART_Receive_1:
        MOVS     R0,#+2
??HAL_UART_Receive_4:
        POP      {R4-R6,PC}       ;; return
//  816   }
//  817 }
          CFI EndBlock cfiBlock8
//  818 
//  819 /**
//  820   * @brief  Sends an amount of data in non blocking mode.
//  821   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  822   *                the configuration information for the specified UART module.
//  823   * @param  pData: Pointer to data buffer
//  824   * @param  Size: Amount of data to be sent
//  825   * @retval HAL status
//  826   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_UART_Transmit_IT
          CFI NoCalls
        THUMB
//  827 HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
//  828 {
//  829   uint32_t tmp_state = 0;
HAL_UART_Transmit_IT:
        MOVS     R3,#+0
//  830 
//  831   tmp_state = huart->State;
        LDRB     R3,[R0, #+57]
//  832   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_RX))
        CMP      R3,#+1
        BEQ.N    ??HAL_UART_Transmit_IT_0
        CMP      R3,#+34
        BNE.N    ??HAL_UART_Transmit_IT_1
//  833   {
//  834     if((pData == NULL ) || (Size == 0))
??HAL_UART_Transmit_IT_0:
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_Transmit_IT_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Transmit_IT_3
//  835     {
//  836       return HAL_ERROR;
??HAL_UART_Transmit_IT_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Transmit_IT_4
//  837     }
//  838     
//  839     /* Process Locked */
//  840     __HAL_LOCK(huart);
??HAL_UART_Transmit_IT_3:
        LDRB     R3,[R0, #+56]
        CMP      R3,#+1
        BNE.N    ??HAL_UART_Transmit_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Transmit_IT_4
??HAL_UART_Transmit_IT_5:
        MOVS     R3,#+1
        STRB     R3,[R0, #+56]
//  841     
//  842     huart->pTxBuffPtr = pData;
        STR      R1,[R0, #+32]
//  843     huart->TxXferSize = Size;
        STRH     R2,[R0, #+36]
//  844     huart->TxXferCount = Size;
        STRH     R2,[R0, #+38]
//  845 
//  846     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
//  847     /* Check if a receive process is ongoing or not */
//  848     if(huart->State == HAL_UART_STATE_BUSY_RX) 
        LDRB     R1,[R0, #+57]
        CMP      R1,#+34
        BNE.N    ??HAL_UART_Transmit_IT_6
//  849     {
//  850       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R1,#+50
        STRB     R1,[R0, #+57]
        B.N      ??HAL_UART_Transmit_IT_7
//  851     }
//  852     else
//  853     {
//  854       huart->State = HAL_UART_STATE_BUSY_TX;
??HAL_UART_Transmit_IT_6:
        MOVS     R1,#+18
        STRB     R1,[R0, #+57]
//  855     }
//  856 
//  857     /* Process Unlocked */
//  858     __HAL_UNLOCK(huart);
??HAL_UART_Transmit_IT_7:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
//  859 
//  860     /* Enable the UART Transmit data register empty Interrupt */
//  861     __HAL_UART_ENABLE_IT(huart, UART_IT_TXE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x80
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
//  862     
//  863     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Transmit_IT_4
//  864   }
//  865   else
//  866   {
//  867     return HAL_BUSY;
??HAL_UART_Transmit_IT_1:
        MOVS     R0,#+2
??HAL_UART_Transmit_IT_4:
        BX       LR               ;; return
//  868   }
//  869 }
          CFI EndBlock cfiBlock9
//  870 
//  871 /**
//  872   * @brief  Receives an amount of data in non blocking mode 
//  873   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  874   *                the configuration information for the specified UART module.
//  875   * @param  pData: Pointer to data buffer
//  876   * @param  Size: Amount of data to be received
//  877   * @retval HAL status
//  878   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_UART_Receive_IT
          CFI NoCalls
        THUMB
//  879 HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
//  880 {
//  881   uint32_t tmp_state = 0;
HAL_UART_Receive_IT:
        MOVS     R3,#+0
//  882   
//  883   tmp_state = huart->State;
        LDRB     R3,[R0, #+57]
//  884   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_TX))
        CMP      R3,#+1
        BEQ.N    ??HAL_UART_Receive_IT_0
        CMP      R3,#+18
        BNE.N    ??HAL_UART_Receive_IT_1
//  885   {
//  886     if((pData == NULL ) || (Size == 0))
??HAL_UART_Receive_IT_0:
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_Receive_IT_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Receive_IT_3
//  887     {
//  888       return HAL_ERROR;
??HAL_UART_Receive_IT_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Receive_IT_4
//  889     }
//  890 
//  891     /* Process Locked */
//  892     __HAL_LOCK(huart);
??HAL_UART_Receive_IT_3:
        LDRB     R3,[R0, #+56]
        CMP      R3,#+1
        BNE.N    ??HAL_UART_Receive_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Receive_IT_4
??HAL_UART_Receive_IT_5:
        MOVS     R3,#+1
        STRB     R3,[R0, #+56]
//  893 
//  894     huart->pRxBuffPtr = pData;
        STR      R1,[R0, #+40]
//  895     huart->RxXferSize = Size;
        STRH     R2,[R0, #+44]
//  896     huart->RxXferCount = Size;
        STRH     R2,[R0, #+46]
//  897 
//  898     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
//  899     /* Check if a transmit process is ongoing or not */
//  900     if(huart->State == HAL_UART_STATE_BUSY_TX)
        LDRB     R1,[R0, #+57]
        CMP      R1,#+18
        BNE.N    ??HAL_UART_Receive_IT_6
//  901     {
//  902       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R1,#+50
        STRB     R1,[R0, #+57]
        B.N      ??HAL_UART_Receive_IT_7
//  903     }
//  904     else
//  905     {
//  906       huart->State = HAL_UART_STATE_BUSY_RX;
??HAL_UART_Receive_IT_6:
        MOVS     R1,#+34
        STRB     R1,[R0, #+57]
//  907     }
//  908 
//  909     /* Process Unlocked */
//  910     __HAL_UNLOCK(huart);
??HAL_UART_Receive_IT_7:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
//  911 
//  912     /* Enable the UART Parity Error Interrupt */
//  913     __HAL_UART_ENABLE_IT(huart, UART_IT_PE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
//  914 
//  915     /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
//  916     __HAL_UART_ENABLE_IT(huart, UART_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
//  917 
//  918     /* Enable the UART Data Register not empty Interrupt */
//  919     __HAL_UART_ENABLE_IT(huart, UART_IT_RXNE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x20
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
//  920 
//  921     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Receive_IT_4
//  922   }
//  923   else
//  924   {
//  925     return HAL_BUSY;
??HAL_UART_Receive_IT_1:
        MOVS     R0,#+2
??HAL_UART_Receive_IT_4:
        BX       LR               ;; return
//  926   }
//  927 }
          CFI EndBlock cfiBlock10
//  928 
//  929 /**
//  930   * @brief  Sends an amount of data in non blocking mode. 
//  931   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
//  932   *                the configuration information for the specified UART module.
//  933   * @param  pData: Pointer to data buffer
//  934   * @param  Size: Amount of data to be sent
//  935   * @retval HAL status
//  936   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_UART_Transmit_DMA
        THUMB
//  937 HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
//  938 {
HAL_UART_Transmit_DMA:
        PUSH     {R0,R1,R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
        MOVS     R4,R0
//  939   uint32_t *tmp;
//  940   uint32_t tmp_state = 0;
        MOVS     R0,#+0
//  941 
//  942   tmp_state = huart->State;
        LDRB     R0,[R4, #+57]
//  943   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_RX))
        CMP      R0,#+1
        BEQ.N    ??HAL_UART_Transmit_DMA_0
        CMP      R0,#+34
        BNE.N    ??HAL_UART_Transmit_DMA_1
//  944   {
//  945     if((pData == NULL ) || (Size == 0)) 
??HAL_UART_Transmit_DMA_0:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Transmit_DMA_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Transmit_DMA_3
//  946     {
//  947       return HAL_ERROR;
??HAL_UART_Transmit_DMA_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Transmit_DMA_4
//  948     }
//  949 
//  950     /* Process Locked */
//  951     __HAL_LOCK(huart);
??HAL_UART_Transmit_DMA_3:
        LDRB     R0,[R4, #+56]
        CMP      R0,#+1
        BNE.N    ??HAL_UART_Transmit_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Transmit_DMA_4
??HAL_UART_Transmit_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+56]
//  952 
//  953     huart->pTxBuffPtr = pData;
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+32]
//  954     huart->TxXferSize = Size;
        STRH     R2,[R4, #+36]
//  955     huart->TxXferCount = Size;
        STRH     R2,[R4, #+38]
//  956 
//  957     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
//  958     /* Check if a receive process is ongoing or not */
//  959     if(huart->State == HAL_UART_STATE_BUSY_RX)
        LDRB     R0,[R4, #+57]
        CMP      R0,#+34
        BNE.N    ??HAL_UART_Transmit_DMA_6
//  960     {
//  961       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R0,#+50
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Transmit_DMA_7
//  962     }
//  963     else
//  964     {
//  965       huart->State = HAL_UART_STATE_BUSY_TX;
??HAL_UART_Transmit_DMA_6:
        MOVS     R0,#+18
        STRB     R0,[R4, #+57]
//  966     }
//  967 
//  968     /* Set the UART DMA transfer complete callback */
//  969     huart->hdmatx->XferCpltCallback = UART_DMATransmitCplt;
??HAL_UART_Transmit_DMA_7:
        ADR.W    R0,UART_DMATransmitCplt
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+40]
//  970 
//  971     /* Set the UART DMA Half transfer complete callback */
//  972     huart->hdmatx->XferHalfCpltCallback = UART_DMATxHalfCplt;
        ADR.W    R0,UART_DMATxHalfCplt
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+44]
//  973 
//  974     /* Set the DMA error callback */
//  975     huart->hdmatx->XferErrorCallback = UART_DMAError;
        ADR.W    R0,UART_DMAError
        LDR      R1,[R4, #+48]
        STR      R0,[R1, #+48]
//  976 
//  977     /* Enable the UART transmit DMA channel */
//  978     tmp = (uint32_t*)&pData;
        ADD      R0,SP,#+4
//  979     HAL_DMA_Start_IT(huart->hdmatx, *(uint32_t*)tmp, (uint32_t)&huart->Instance->DR, Size);
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R3,R2
        LDR      R1,[R4, #+0]
        ADDS     R2,R1,#+4
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+48]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
//  980 
//  981     /* Clear the TC flag in the SR register by writing 0 to it */
//  982     __HAL_UART_CLEAR_FLAG(huart, UART_FLAG_TC);
        MVNS     R0,#+64
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  983 
//  984     /* Enable the DMA transfer for transmit request by setting the DMAT bit
//  985        in the UART CR3 register */
//  986     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ORRS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  987 
//  988     /* Process Unlocked */
//  989     __HAL_UNLOCK(huart);
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
//  990 
//  991     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Transmit_DMA_4
//  992   }
//  993   else
//  994   {
//  995     return HAL_BUSY;
??HAL_UART_Transmit_DMA_1:
        MOVS     R0,#+2
??HAL_UART_Transmit_DMA_4:
        POP      {R1,R2,R4,PC}    ;; return
//  996   }
//  997 }
          CFI EndBlock cfiBlock11
//  998 
//  999 /**
// 1000   * @brief  Receives an amount of data in non blocking mode. 
// 1001   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1002   *                the configuration information for the specified UART module.
// 1003   * @param  pData: Pointer to data buffer
// 1004   * @param  Size: Amount of data to be received
// 1005   * @note   When the UART parity is enabled (PCE = 1), the received data contain 
// 1006   *         the parity bit (MSB position)     
// 1007   * @retval HAL status
// 1008   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_UART_Receive_DMA
        THUMB
// 1009 HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
// 1010 {
HAL_UART_Receive_DMA:
        PUSH     {R0,R1,R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
        MOVS     R4,R0
// 1011   uint32_t *tmp;
// 1012   uint32_t tmp_state = 0;
        MOVS     R0,#+0
// 1013 
// 1014   tmp_state = huart->State;
        LDRB     R0,[R4, #+57]
// 1015   if((tmp_state == HAL_UART_STATE_READY) || (tmp_state == HAL_UART_STATE_BUSY_TX))
        CMP      R0,#+1
        BEQ.N    ??HAL_UART_Receive_DMA_0
        CMP      R0,#+18
        BNE.N    ??HAL_UART_Receive_DMA_1
// 1016   {
// 1017     if((pData == NULL ) || (Size == 0))
??HAL_UART_Receive_DMA_0:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_Receive_DMA_2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_UART_Receive_DMA_3
// 1018     {
// 1019       return HAL_ERROR;
??HAL_UART_Receive_DMA_2:
        MOVS     R0,#+1
        B.N      ??HAL_UART_Receive_DMA_4
// 1020     }
// 1021 
// 1022     /* Process Locked */
// 1023     __HAL_LOCK(huart);
??HAL_UART_Receive_DMA_3:
        LDRB     R0,[R4, #+56]
        CMP      R0,#+1
        BNE.N    ??HAL_UART_Receive_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_UART_Receive_DMA_4
??HAL_UART_Receive_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R4, #+56]
// 1024 
// 1025     huart->pRxBuffPtr = pData;
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+40]
// 1026     huart->RxXferSize = Size;
        STRH     R2,[R4, #+44]
// 1027 
// 1028     huart->ErrorCode = HAL_UART_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+60]
// 1029     /* Check if a transmit process is ongoing or not */
// 1030     if(huart->State == HAL_UART_STATE_BUSY_TX)
        LDRB     R0,[R4, #+57]
        CMP      R0,#+18
        BNE.N    ??HAL_UART_Receive_DMA_6
// 1031     {
// 1032       huart->State = HAL_UART_STATE_BUSY_TX_RX;
        MOVS     R0,#+50
        STRB     R0,[R4, #+57]
        B.N      ??HAL_UART_Receive_DMA_7
// 1033     }
// 1034     else
// 1035     {
// 1036       huart->State = HAL_UART_STATE_BUSY_RX;
??HAL_UART_Receive_DMA_6:
        MOVS     R0,#+34
        STRB     R0,[R4, #+57]
// 1037     }
// 1038 
// 1039     /* Set the UART DMA transfer complete callback */
// 1040     huart->hdmarx->XferCpltCallback = UART_DMAReceiveCplt;
??HAL_UART_Receive_DMA_7:
        ADR.W    R0,UART_DMAReceiveCplt
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+40]
// 1041 
// 1042     /* Set the UART DMA Half transfer complete callback */
// 1043     huart->hdmarx->XferHalfCpltCallback = UART_DMARxHalfCplt;
        ADR.W    R0,UART_DMARxHalfCplt
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+44]
// 1044 
// 1045     /* Set the DMA error callback */
// 1046     huart->hdmarx->XferErrorCallback = UART_DMAError;
        ADR.W    R0,UART_DMAError
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+48]
// 1047 
// 1048     /* Enable the DMA channel */
// 1049     tmp = (uint32_t*)&pData;
        ADD      R0,SP,#+4
// 1050     HAL_DMA_Start_IT(huart->hdmarx, (uint32_t)&huart->Instance->DR, *(uint32_t*)tmp, Size);
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R3,R2
        LDR      R2,[R0, #+0]
        LDR      R0,[R4, #+0]
        ADDS     R1,R0,#+4
        LDR      R0,[R4, #+52]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 1051 
// 1052     /* Enable the DMA transfer for the receiver request by setting the DMAR bit 
// 1053        in the UART CR3 register */
// 1054     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ORRS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1055 
// 1056     /* Process Unlocked */
// 1057     __HAL_UNLOCK(huart);
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
// 1058 
// 1059     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_UART_Receive_DMA_4
// 1060   }
// 1061   else
// 1062   {
// 1063     return HAL_BUSY;
??HAL_UART_Receive_DMA_1:
        MOVS     R0,#+2
??HAL_UART_Receive_DMA_4:
        POP      {R1,R2,R4,PC}    ;; return
// 1064   }
// 1065 }
          CFI EndBlock cfiBlock12
// 1066     
// 1067 /**
// 1068   * @brief Pauses the DMA Transfer.
// 1069   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1070   *                the configuration information for the specified UART module.
// 1071   * @retval HAL status
// 1072   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_UART_DMAPause
          CFI NoCalls
        THUMB
// 1073 HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart)
// 1074 {
// 1075   /* Process Locked */
// 1076   __HAL_LOCK(huart);
HAL_UART_DMAPause:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_UART_DMAPause_0
        MOVS     R0,#+2
        B.N      ??HAL_UART_DMAPause_1
??HAL_UART_DMAPause_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1077   
// 1078   if(huart->State == HAL_UART_STATE_BUSY_TX)
        LDRB     R1,[R0, #+57]
        CMP      R1,#+18
        BNE.N    ??HAL_UART_DMAPause_2
// 1079   {
// 1080     /* Disable the UART DMA Tx request */
// 1081     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        BICS     R1,R1,#0x80
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 1082   }
// 1083   else if(huart->State == HAL_UART_STATE_BUSY_RX)
// 1084   {
// 1085     /* Disable the UART DMA Rx request */
// 1086     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
// 1087   }
// 1088   else if (huart->State == HAL_UART_STATE_BUSY_TX_RX)
// 1089   {
// 1090     /* Disable the UART DMA Tx & Rx requests */
// 1091     CLEAR_BIT(huart->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
// 1092   }
// 1093   else
// 1094   {
// 1095     /* Process Unlocked */
// 1096     __HAL_UNLOCK(huart);
// 1097   
// 1098     return HAL_ERROR; 
// 1099   }
// 1100   
// 1101   /* Process Unlocked */
// 1102   __HAL_UNLOCK(huart);
??HAL_UART_DMAPause_3:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1103 
// 1104   return HAL_OK; 
        MOVS     R0,#+0
??HAL_UART_DMAPause_1:
        BX       LR               ;; return
??HAL_UART_DMAPause_2:
        LDRB     R1,[R0, #+57]
        CMP      R1,#+34
        BNE.N    ??HAL_UART_DMAPause_4
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        BICS     R1,R1,#0x40
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
        B.N      ??HAL_UART_DMAPause_3
??HAL_UART_DMAPause_4:
        LDRB     R1,[R0, #+57]
        CMP      R1,#+50
        BNE.N    ??HAL_UART_DMAPause_5
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        BICS     R1,R1,#0xC0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
        B.N      ??HAL_UART_DMAPause_3
??HAL_UART_DMAPause_5:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
        MOVS     R0,#+1
        B.N      ??HAL_UART_DMAPause_1
// 1105 }
          CFI EndBlock cfiBlock13
// 1106 
// 1107 /**
// 1108   * @brief Resumes the DMA Transfer.
// 1109   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1110   *                the configuration information for the specified UART module.
// 1111   * @retval HAL status
// 1112   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_UART_DMAResume
          CFI NoCalls
        THUMB
// 1113 HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart)
// 1114 {
HAL_UART_DMAResume:
        SUB      SP,SP,#+4
          CFI CFA R13+4
// 1115   /* Process Locked */
// 1116   __HAL_LOCK(huart);
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_UART_DMAResume_0
        MOVS     R0,#+2
        B.N      ??HAL_UART_DMAResume_1
??HAL_UART_DMAResume_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1117 
// 1118   if(huart->State == HAL_UART_STATE_BUSY_TX)
        LDRB     R1,[R0, #+57]
        CMP      R1,#+18
        BNE.N    ??HAL_UART_DMAResume_2
// 1119   {
// 1120     /* Enable the UART DMA Tx request */
// 1121     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x80
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 1122   }
// 1123   else if(huart->State == HAL_UART_STATE_BUSY_RX)
// 1124   {
// 1125     /* Clear the Overrun flag before resumming the Rx transfer*/
// 1126     __HAL_UART_CLEAR_OREFLAG(huart);
// 1127     /* Enable the UART DMA Rx request */
// 1128     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
// 1129   }
// 1130   else if(huart->State == HAL_UART_STATE_BUSY_TX_RX)
// 1131   {
// 1132     /* Clear the Overrun flag before resumming the Rx transfer*/
// 1133     __HAL_UART_CLEAR_OREFLAG(huart);
// 1134     /* Enable the UART DMA Tx & Rx request */
// 1135     SET_BIT(huart->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
// 1136   }
// 1137   else
// 1138   {
// 1139     /* Process Unlocked */
// 1140     __HAL_UNLOCK(huart);
// 1141 
// 1142     return HAL_ERROR; 
// 1143   }
// 1144 
// 1145   /* Process Unlocked */
// 1146   __HAL_UNLOCK(huart);
??HAL_UART_DMAResume_3:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1147 
// 1148   return HAL_OK;
        MOVS     R0,#+0
??HAL_UART_DMAResume_1:
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI CFA R13+4
??HAL_UART_DMAResume_2:
        LDRB     R1,[R0, #+57]
        CMP      R1,#+34
        BNE.N    ??HAL_UART_DMAResume_4
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x40
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
        B.N      ??HAL_UART_DMAResume_3
??HAL_UART_DMAResume_4:
        LDRB     R1,[R0, #+57]
        CMP      R1,#+50
        BNE.N    ??HAL_UART_DMAResume_5
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0xC0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
        B.N      ??HAL_UART_DMAResume_3
??HAL_UART_DMAResume_5:
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
        MOVS     R0,#+1
        B.N      ??HAL_UART_DMAResume_1
// 1149 }
          CFI EndBlock cfiBlock14
// 1150 
// 1151 /**
// 1152   * @brief Stops the DMA Transfer.
// 1153   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1154   *                the configuration information for the specified UART module.
// 1155   * @retval HAL status
// 1156   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_UART_DMAStop
        THUMB
// 1157 HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart)
// 1158 {
HAL_UART_DMAStop:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 1159   /* The Lock is not implemented on this API to allow the user application
// 1160      to call the HAL UART API under callbacks HAL_UART_TxCpltCallback() / HAL_UART_RxCpltCallback():
// 1161      when calling HAL_DMA_Abort() API the DMA TX/RX Transfer complete interrupt is generated
// 1162      and the correspond call back is executed HAL_UART_TxCpltCallback() / HAL_UART_RxCpltCallback()
// 1163      */
// 1164   
// 1165   /* Disable the UART Tx/Rx DMA requests */
// 1166   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_DMAT | USART_CR3_DMAR));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0xC0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1167   
// 1168   /* Abort the UART DMA tx channel */
// 1169   if(huart->hdmatx != NULL)
        LDR      R0,[R4, #+48]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_DMAStop_0
// 1170   {
// 1171     HAL_DMA_Abort(huart->hdmatx);
        LDR      R0,[R4, #+48]
          CFI FunCall HAL_DMA_Abort
        BL       HAL_DMA_Abort
// 1172   }
// 1173   /* Abort the UART DMA rx channel */
// 1174   if(huart->hdmarx != NULL)
??HAL_UART_DMAStop_0:
        LDR      R0,[R4, #+52]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_DMAStop_1
// 1175   {
// 1176     HAL_DMA_Abort(huart->hdmarx);
        LDR      R0,[R4, #+52]
          CFI FunCall HAL_DMA_Abort
        BL       HAL_DMA_Abort
// 1177   }
// 1178   
// 1179   huart->State = HAL_UART_STATE_READY;
??HAL_UART_DMAStop_1:
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
// 1180   
// 1181   return HAL_OK;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
// 1182 }
          CFI EndBlock cfiBlock15
// 1183 
// 1184 /**
// 1185   * @brief  This function handles UART interrupt request.
// 1186   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1187   *                the configuration information for the specified UART module.
// 1188   * @retval None
// 1189   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_UART_IRQHandler
        THUMB
// 1190 void HAL_UART_IRQHandler(UART_HandleTypeDef *huart)
// 1191 {
HAL_UART_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOVS     R4,R0
// 1192   uint32_t tmp_flag = 0, tmp_it_source = 0;
        MOVS     R0,#+0
        MOVS     R1,#+0
// 1193 
// 1194   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_PE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
// 1195   tmp_it_source = __HAL_UART_GET_IT_SOURCE(huart, UART_IT_PE);  
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        ANDS     R1,R1,#0x100
// 1196   /* UART parity error interrupt occurred ------------------------------------*/
// 1197   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_0
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_0
// 1198   { 
// 1199     huart->ErrorCode |= HAL_UART_ERROR_PE;
        LDR      R0,[R4, #+60]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+60]
// 1200   }
// 1201   
// 1202   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_FE);
??HAL_UART_IRQHandler_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        ANDS     R0,R0,#0x1
// 1203   tmp_it_source = __HAL_UART_GET_IT_SOURCE(huart, UART_IT_ERR);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+20]
        ANDS     R1,R1,#0x1
// 1204   /* UART frame error interrupt occurred -------------------------------------*/
// 1205   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_1
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_1
// 1206   {
// 1207     huart->ErrorCode |= HAL_UART_ERROR_FE;
        LDR      R0,[R4, #+60]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+60]
// 1208   }
// 1209   
// 1210   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_NE);
??HAL_UART_IRQHandler_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        ANDS     R0,R0,#0x1
// 1211   /* UART noise error interrupt occurred -------------------------------------*/
// 1212   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_2
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_2
// 1213   {
// 1214     huart->ErrorCode |= HAL_UART_ERROR_NE;
        LDR      R0,[R4, #+60]
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+60]
// 1215   }
// 1216   
// 1217   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_ORE);
??HAL_UART_IRQHandler_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+3
        ANDS     R0,R0,#0x1
// 1218   /* UART Over-Run interrupt occurred ----------------------------------------*/
// 1219   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_3
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_3
// 1220   {
// 1221     huart->ErrorCode |= HAL_UART_ERROR_ORE;
        LDR      R0,[R4, #+60]
        ORRS     R0,R0,#0x8
        STR      R0,[R4, #+60]
// 1222   }
// 1223   
// 1224   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_RXNE);
??HAL_UART_IRQHandler_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+5
        ANDS     R0,R0,#0x1
// 1225   tmp_it_source = __HAL_UART_GET_IT_SOURCE(huart, UART_IT_RXNE);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        ANDS     R1,R1,#0x20
// 1226   /* UART in mode Receiver ---------------------------------------------------*/
// 1227   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_4
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_4
// 1228   { 
// 1229     UART_Receive_IT(huart);
        MOVS     R0,R4
          CFI FunCall UART_Receive_IT
        BL       UART_Receive_IT
// 1230   }
// 1231   
// 1232   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_TXE);
??HAL_UART_IRQHandler_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0x1
// 1233   tmp_it_source = __HAL_UART_GET_IT_SOURCE(huart, UART_IT_TXE);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        ANDS     R1,R1,#0x80
// 1234   /* UART in mode Transmitter ------------------------------------------------*/
// 1235   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_5
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_5
// 1236   {
// 1237     UART_Transmit_IT(huart);
        MOVS     R0,R4
          CFI FunCall UART_Transmit_IT
        BL       UART_Transmit_IT
// 1238   }
// 1239 
// 1240   tmp_flag = __HAL_UART_GET_FLAG(huart, UART_FLAG_TC);
??HAL_UART_IRQHandler_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+6
        ANDS     R0,R0,#0x1
// 1241   tmp_it_source = __HAL_UART_GET_IT_SOURCE(huart, UART_IT_TC);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        ANDS     R1,R1,#0x40
// 1242   /* UART in mode Transmitter end --------------------------------------------*/
// 1243   if((tmp_flag != RESET) && (tmp_it_source != RESET))
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_6
        CMP      R1,#+0
        BEQ.N    ??HAL_UART_IRQHandler_6
// 1244   {
// 1245     UART_EndTransmit_IT(huart);
        MOVS     R0,R4
          CFI FunCall UART_EndTransmit_IT
        BL       UART_EndTransmit_IT
// 1246   }  
// 1247 
// 1248   if(huart->ErrorCode != HAL_UART_ERROR_NONE)
??HAL_UART_IRQHandler_6:
        LDR      R0,[R4, #+60]
        CMP      R0,#+0
        BEQ.N    ??HAL_UART_IRQHandler_7
// 1249   {
// 1250     /* Clear all the error flag at once */
// 1251     __HAL_UART_CLEAR_PEFLAG(huart);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 1252     
// 1253     /* Set the UART state ready to be able to start again the process */
// 1254     huart->State = HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
// 1255     
// 1256     HAL_UART_ErrorCallback(huart);
        MOVS     R0,R4
          CFI FunCall HAL_UART_ErrorCallback
        BL       HAL_UART_ErrorCallback
// 1257   }  
// 1258 }
??HAL_UART_IRQHandler_7:
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock16
// 1259 
// 1260 /**
// 1261   * @brief  Tx Transfer completed callbacks.
// 1262   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1263   *                the configuration information for the specified UART module.
// 1264   * @retval None
// 1265   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function HAL_UART_TxCpltCallback
          CFI NoCalls
        THUMB
// 1266  __weak void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart)
// 1267 {
// 1268   /* Prevent unused argument(s) compilation warning */
// 1269   UNUSED(huart);
// 1270 
// 1271   /* NOTE: This function should not be modified, when the callback is needed,
// 1272            the HAL_UART_TxCpltCallback can be implemented in the user file
// 1273    */ 
// 1274 }
HAL_UART_TxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
// 1275 
// 1276 /**
// 1277   * @brief  Tx Half Transfer completed callbacks.
// 1278   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1279   *                the configuration information for the specified UART module.
// 1280   * @retval None
// 1281   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function HAL_UART_TxHalfCpltCallback
          CFI NoCalls
        THUMB
// 1282  __weak void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart)
// 1283 {
// 1284   /* Prevent unused argument(s) compilation warning */
// 1285   UNUSED(huart);
// 1286 
// 1287   /* NOTE: This function should not be modified, when the callback is needed,
// 1288            the HAL_UART_TxHalfCpltCallback can be implemented in the user file
// 1289    */ 
// 1290 }
HAL_UART_TxHalfCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
// 1291 
// 1292 /**
// 1293   * @brief  Rx Transfer completed callbacks.
// 1294   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1295   *                the configuration information for the specified UART module.
// 1296   * @retval None
// 1297   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function HAL_UART_RxCpltCallback
          CFI NoCalls
        THUMB
// 1298 __weak void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
// 1299 {
// 1300   /* Prevent unused argument(s) compilation warning */
// 1301   UNUSED(huart);
// 1302 
// 1303   /* NOTE: This function should not be modified, when the callback is needed,
// 1304            the HAL_UART_RxCpltCallback can be implemented in the user file
// 1305    */
// 1306 }
HAL_UART_RxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 1307 
// 1308 /**
// 1309   * @brief  Rx Half Transfer completed callbacks.
// 1310   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1311   *                the configuration information for the specified UART module.
// 1312   * @retval None
// 1313   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function HAL_UART_RxHalfCpltCallback
          CFI NoCalls
        THUMB
// 1314 __weak void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart)
// 1315 {
// 1316   /* Prevent unused argument(s) compilation warning */
// 1317   UNUSED(huart);
// 1318 
// 1319   /* NOTE: This function should not be modified, when the callback is needed,
// 1320            the HAL_UART_RxHalfCpltCallback can be implemented in the user file
// 1321    */
// 1322 }
HAL_UART_RxHalfCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 1323 
// 1324 /**
// 1325   * @brief  UART error callbacks.
// 1326   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1327   *                the configuration information for the specified UART module.
// 1328   * @retval None
// 1329   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function HAL_UART_ErrorCallback
          CFI NoCalls
        THUMB
// 1330  __weak void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart)
// 1331 {
// 1332   /* Prevent unused argument(s) compilation warning */
// 1333   UNUSED(huart);
// 1334 
// 1335   /* NOTE: This function should not be modified, when the callback is needed,
// 1336            the HAL_UART_ErrorCallback can be implemented in the user file
// 1337    */ 
// 1338 }
HAL_UART_ErrorCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
// 1339 
// 1340 /**
// 1341   * @}
// 1342   */
// 1343 
// 1344 /** @defgroup UART_Exported_Functions_Group3 Peripheral Control functions 
// 1345   *  @brief   UART control functions 
// 1346   *
// 1347 @verbatim   
// 1348   ==============================================================================
// 1349                       ##### Peripheral Control functions #####
// 1350   ==============================================================================  
// 1351   [..]
// 1352     This subsection provides a set of functions allowing to control the UART:
// 1353     (+) HAL_LIN_SendBreak() API can be helpful to transmit the break character.
// 1354     (+) HAL_MultiProcessor_EnterMuteMode() API can be helpful to enter the UART in mute mode. 
// 1355     (+) HAL_MultiProcessor_ExitMuteMode() API can be helpful to exit the UART mute mode by software.
// 1356     (+) HAL_HalfDuplex_EnableTransmitter() API to enable the UART transmitter and disables the UART receiver in Half Duplex mode
// 1357     (+) HAL_HalfDuplex_EnableReceiver() API to enable the UART receiver and disables the UART transmitter in Half Duplex mode
// 1358     
// 1359 @endverbatim
// 1360   * @{
// 1361   */
// 1362 
// 1363 /**
// 1364   * @brief  Transmits break characters.
// 1365   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1366   *                the configuration information for the specified UART module.
// 1367   * @retval HAL status
// 1368   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function HAL_LIN_SendBreak
          CFI NoCalls
        THUMB
// 1369 HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart)
// 1370 {
// 1371   /* Check the parameters */
// 1372   assert_param(IS_UART_LIN_INSTANCE(huart->Instance));
// 1373   
// 1374   /* Process Locked */
// 1375   __HAL_LOCK(huart);
HAL_LIN_SendBreak:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_LIN_SendBreak_0
        MOVS     R0,#+2
        B.N      ??HAL_LIN_SendBreak_1
??HAL_LIN_SendBreak_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1376   
// 1377   huart->State = HAL_UART_STATE_BUSY;
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 1378   
// 1379   /* Send break characters */
// 1380   SET_BIT(huart->Instance->CR1, USART_CR1_SBK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1381  
// 1382   huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1383   
// 1384   /* Process Unlocked */
// 1385   __HAL_UNLOCK(huart);
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1386   
// 1387   return HAL_OK; 
        MOVS     R0,#+0
??HAL_LIN_SendBreak_1:
        BX       LR               ;; return
// 1388 }
          CFI EndBlock cfiBlock22
// 1389 
// 1390 /**
// 1391   * @brief  Enters the UART in mute mode. 
// 1392   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1393   *                the configuration information for the specified UART module.
// 1394   * @retval HAL status
// 1395   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function HAL_MultiProcessor_EnterMuteMode
          CFI NoCalls
        THUMB
// 1396 HAL_StatusTypeDef HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart)
// 1397 {
// 1398   /* Check the parameters */
// 1399   assert_param(IS_UART_INSTANCE(huart->Instance));
// 1400   
// 1401   /* Process Locked */
// 1402   __HAL_LOCK(huart);
HAL_MultiProcessor_EnterMuteMode:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_MultiProcessor_EnterMuteMode_0
        MOVS     R0,#+2
        B.N      ??HAL_MultiProcessor_EnterMuteMode_1
??HAL_MultiProcessor_EnterMuteMode_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1403   
// 1404   huart->State = HAL_UART_STATE_BUSY;
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 1405   
// 1406   /* Enable the USART mute mode  by setting the RWU bit in the CR1 register */
// 1407   SET_BIT(huart->Instance->CR1, USART_CR1_RWU);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x2
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1408   
// 1409   huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1410   
// 1411   /* Process Unlocked */
// 1412   __HAL_UNLOCK(huart);
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1413   
// 1414   return HAL_OK; 
        MOVS     R0,#+0
??HAL_MultiProcessor_EnterMuteMode_1:
        BX       LR               ;; return
// 1415 }
          CFI EndBlock cfiBlock23
// 1416 
// 1417 /**
// 1418   * @brief  Exits the UART mute mode: wake up software. 
// 1419   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1420   *                the configuration information for the specified UART module.
// 1421   * @retval HAL status
// 1422   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function HAL_MultiProcessor_ExitMuteMode
          CFI NoCalls
        THUMB
// 1423 HAL_StatusTypeDef HAL_MultiProcessor_ExitMuteMode(UART_HandleTypeDef *huart)
// 1424 {
// 1425   /* Check the parameters */
// 1426   assert_param(IS_UART_INSTANCE(huart->Instance));
// 1427   
// 1428   /* Process Locked */
// 1429   __HAL_LOCK(huart);
HAL_MultiProcessor_ExitMuteMode:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_MultiProcessor_ExitMuteMode_0
        MOVS     R0,#+2
        B.N      ??HAL_MultiProcessor_ExitMuteMode_1
??HAL_MultiProcessor_ExitMuteMode_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1430   
// 1431   huart->State = HAL_UART_STATE_BUSY;
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 1432   
// 1433   /* Disable the USART mute mode by clearing the RWU bit in the CR1 register */
// 1434   CLEAR_BIT(huart->Instance->CR1, USART_CR1_RWU);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x2
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1435   
// 1436   huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1437   
// 1438   /* Process Unlocked */
// 1439   __HAL_UNLOCK(huart);
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1440   
// 1441   return HAL_OK; 
        MOVS     R0,#+0
??HAL_MultiProcessor_ExitMuteMode_1:
        BX       LR               ;; return
// 1442 }
          CFI EndBlock cfiBlock24
// 1443 
// 1444 /**
// 1445   * @brief  Enables the UART transmitter and disables the UART receiver.
// 1446   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1447   *                the configuration information for the specified UART module.
// 1448   * @retval HAL status
// 1449   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function HAL_HalfDuplex_EnableTransmitter
          CFI NoCalls
        THUMB
// 1450 HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart)
// 1451 {
// 1452   /* Process Locked */
// 1453   __HAL_LOCK(huart);
HAL_HalfDuplex_EnableTransmitter:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_HalfDuplex_EnableTransmitter_0
        MOVS     R0,#+2
        B.N      ??HAL_HalfDuplex_EnableTransmitter_1
??HAL_HalfDuplex_EnableTransmitter_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1454   
// 1455   huart->State = HAL_UART_STATE_BUSY;
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 1456 
// 1457   /*-------------------------- USART CR1 Configuration -----------------------*/
// 1458   /* Clear TE and RE bits */
// 1459   /* Enable the USART's transmit interface by setting the TE bit in the USART CR1 register */
// 1460   MODIFY_REG(huart->Instance->CR1, (uint32_t)(USART_CR1_TE | USART_CR1_RE), USART_CR1_TE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0xC
        ORRS     R1,R1,#0x8
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1461  
// 1462   huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1463   
// 1464   /* Process Unlocked */
// 1465   __HAL_UNLOCK(huart);
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1466   
// 1467   return HAL_OK; 
        MOVS     R0,#+0
??HAL_HalfDuplex_EnableTransmitter_1:
        BX       LR               ;; return
// 1468 }
          CFI EndBlock cfiBlock25
// 1469 
// 1470 /**
// 1471   * @brief  Enables the UART receiver and disables the UART transmitter.
// 1472   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1473   *                the configuration information for the specified UART module.
// 1474   * @retval HAL status
// 1475   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function HAL_HalfDuplex_EnableReceiver
          CFI NoCalls
        THUMB
// 1476 HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart)
// 1477 {
// 1478   /* Process Locked */
// 1479   __HAL_LOCK(huart);
HAL_HalfDuplex_EnableReceiver:
        LDRB     R1,[R0, #+56]
        CMP      R1,#+1
        BNE.N    ??HAL_HalfDuplex_EnableReceiver_0
        MOVS     R0,#+2
        B.N      ??HAL_HalfDuplex_EnableReceiver_1
??HAL_HalfDuplex_EnableReceiver_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+56]
// 1480   
// 1481   huart->State = HAL_UART_STATE_BUSY;
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 1482 
// 1483   /*-------------------------- USART CR1 Configuration -----------------------*/
// 1484   /* Clear TE and RE bits */
// 1485   /* Enable the USART's receive interface by setting the RE bit in the USART CR1 register */
// 1486   MODIFY_REG(huart->Instance->CR1, (uint32_t)(USART_CR1_TE | USART_CR1_RE), USART_CR1_RE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0xC
        ORRS     R1,R1,#0x4
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1487   
// 1488   huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1489   
// 1490   /* Process Unlocked */
// 1491   __HAL_UNLOCK(huart);
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
// 1492   
// 1493   return HAL_OK; 
        MOVS     R0,#+0
??HAL_HalfDuplex_EnableReceiver_1:
        BX       LR               ;; return
// 1494 }
          CFI EndBlock cfiBlock26
// 1495 
// 1496 /**
// 1497   * @}
// 1498   */
// 1499 
// 1500 /** @defgroup UART_Exported_Functions_Group4 Peripheral State and Errors functions 
// 1501   *  @brief   UART State and Errors functions 
// 1502   *
// 1503 @verbatim   
// 1504   ==============================================================================
// 1505                  ##### Peripheral State and Errors functions #####
// 1506   ==============================================================================  
// 1507  [..]
// 1508    This subsection provides a set of functions allowing to return the State of 
// 1509    UART communication process, return Peripheral Errors occurred during communication 
// 1510    process
// 1511    (+) HAL_UART_GetState() API can be helpful to check in run-time the state of the UART peripheral.
// 1512    (+) HAL_UART_GetError() check in run-time errors that could be occurred during communication. 
// 1513 
// 1514 @endverbatim
// 1515   * @{
// 1516   */
// 1517   
// 1518 /**
// 1519   * @brief  Returns the UART state.
// 1520   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1521   *                the configuration information for the specified UART module.
// 1522   * @retval HAL state
// 1523   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function HAL_UART_GetState
          CFI NoCalls
        THUMB
// 1524 HAL_UART_StateTypeDef HAL_UART_GetState(UART_HandleTypeDef *huart)
// 1525 {
// 1526   return huart->State;
HAL_UART_GetState:
        LDRB     R0,[R0, #+57]
        BX       LR               ;; return
// 1527 }
          CFI EndBlock cfiBlock27
// 1528 
// 1529 /**
// 1530 * @brief  Return the UART error code
// 1531 * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1532   *              the configuration information for the specified UART.
// 1533 * @retval UART Error Code
// 1534 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function HAL_UART_GetError
          CFI NoCalls
        THUMB
// 1535 uint32_t HAL_UART_GetError(UART_HandleTypeDef *huart)
// 1536 {
// 1537   return huart->ErrorCode;
HAL_UART_GetError:
        LDR      R0,[R0, #+60]
        BX       LR               ;; return
// 1538 }
          CFI EndBlock cfiBlock28
// 1539 
// 1540 /**
// 1541   * @}
// 1542   */
// 1543 
// 1544 /**
// 1545   * @}
// 1546   */
// 1547 
// 1548 /** @defgroup UART_Private_Functions   UART Private Functions
// 1549   *  @brief   UART Private functions 
// 1550   * @{
// 1551   */
// 1552 /**
// 1553   * @brief  DMA UART transmit process complete callback. 
// 1554   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1555   *               the configuration information for the specified DMA module.
// 1556   * @retval None
// 1557   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function UART_DMATransmitCplt
        THUMB
// 1558 static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma)     
// 1559 {
UART_DMATransmitCplt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1560   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
        LDR      R1,[R0, #+36]
// 1561   /* DMA Normal mode*/
// 1562   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BMI.N    ??UART_DMATransmitCplt_0
// 1563   {
// 1564     huart->TxXferCount = 0;
        MOVS     R0,#+0
        STRH     R0,[R1, #+38]
// 1565 
// 1566     /* Disable the DMA transfer for transmit request by setting the DMAT bit
// 1567        in the UART CR3 register */
// 1568     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x80
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+20]
// 1569 
// 1570     /* Enable the UART Transmit Complete Interrupt */    
// 1571     __HAL_UART_ENABLE_IT(huart, UART_IT_TC);
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
        B.N      ??UART_DMATransmitCplt_1
// 1572   }
// 1573   /* DMA Circular mode */
// 1574   else
// 1575   {
// 1576     HAL_UART_TxCpltCallback(huart);
??UART_DMATransmitCplt_0:
        MOVS     R0,R1
          CFI FunCall HAL_UART_TxCpltCallback
        BL       HAL_UART_TxCpltCallback
// 1577   }
// 1578 }
??UART_DMATransmitCplt_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock29
// 1579 
// 1580 /**
// 1581   * @brief DMA UART transmit process half complete callback 
// 1582   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1583   *               the configuration information for the specified DMA module.
// 1584   * @retval None
// 1585   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function UART_DMATxHalfCplt
        THUMB
// 1586 static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma)
// 1587 {
UART_DMATxHalfCplt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1588   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
        LDR      R0,[R0, #+36]
// 1589 
// 1590   HAL_UART_TxHalfCpltCallback(huart);
          CFI FunCall HAL_UART_TxHalfCpltCallback
        BL       HAL_UART_TxHalfCpltCallback
// 1591 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock30
// 1592 
// 1593 /**
// 1594   * @brief  DMA UART receive process complete callback. 
// 1595   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1596   *               the configuration information for the specified DMA module.
// 1597   * @retval None
// 1598   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function UART_DMAReceiveCplt
        THUMB
// 1599 static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma)  
// 1600 {
UART_DMAReceiveCplt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1601   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
        LDR      R1,[R0, #+36]
// 1602   /* DMA Normal mode*/
// 1603   if ( HAL_IS_BIT_CLR(hdma->Instance->CCR, DMA_CCR_CIRC) )
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BMI.N    ??UART_DMAReceiveCplt_0
// 1604   {
// 1605     huart->RxXferCount = 0;
        MOVS     R0,#+0
        STRH     R0,[R1, #+46]
// 1606   
// 1607     /* Disable the DMA transfer for the receiver request by setting the DMAR bit 
// 1608        in the UART CR3 register */
// 1609     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x40
        LDR      R2,[R1, #+0]
        STR      R0,[R2, #+20]
// 1610 
// 1611     /* Check if a transmit process is ongoing or not */
// 1612     if(huart->State == HAL_UART_STATE_BUSY_TX_RX) 
        LDRB     R0,[R1, #+57]
        CMP      R0,#+50
        BNE.N    ??UART_DMAReceiveCplt_1
// 1613     {
// 1614       huart->State = HAL_UART_STATE_BUSY_TX;
        MOVS     R0,#+18
        STRB     R0,[R1, #+57]
        B.N      ??UART_DMAReceiveCplt_0
// 1615     }
// 1616     else
// 1617     {
// 1618       huart->State = HAL_UART_STATE_READY;
??UART_DMAReceiveCplt_1:
        MOVS     R0,#+1
        STRB     R0,[R1, #+57]
// 1619     }
// 1620   }
// 1621   HAL_UART_RxCpltCallback(huart);
??UART_DMAReceiveCplt_0:
        MOVS     R0,R1
          CFI FunCall HAL_UART_RxCpltCallback
        BL       HAL_UART_RxCpltCallback
// 1622 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31
// 1623 
// 1624 /**
// 1625   * @brief DMA UART receive process half complete callback 
// 1626   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1627   *               the configuration information for the specified DMA module.
// 1628   * @retval None
// 1629   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function UART_DMARxHalfCplt
        THUMB
// 1630 static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma)
// 1631 {
UART_DMARxHalfCplt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1632   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
        LDR      R0,[R0, #+36]
// 1633 
// 1634   HAL_UART_RxHalfCpltCallback(huart); 
          CFI FunCall HAL_UART_RxHalfCpltCallback
        BL       HAL_UART_RxHalfCpltCallback
// 1635 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock32
// 1636 
// 1637 /**
// 1638   * @brief  DMA UART communication error callback.
// 1639   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1640   *               the configuration information for the specified DMA module.
// 1641   * @retval None
// 1642   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function UART_DMAError
        THUMB
// 1643 static void UART_DMAError(DMA_HandleTypeDef *hdma)   
// 1644 {
UART_DMAError:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1645   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
        LDR      R0,[R0, #+36]
// 1646   huart->RxXferCount = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+46]
// 1647   huart->TxXferCount = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+38]
// 1648   huart->State= HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1649   huart->ErrorCode |= HAL_UART_ERROR_DMA;
        LDR      R1,[R0, #+60]
        ORRS     R1,R1,#0x10
        STR      R1,[R0, #+60]
// 1650   HAL_UART_ErrorCallback(huart);
          CFI FunCall HAL_UART_ErrorCallback
        BL       HAL_UART_ErrorCallback
// 1651 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock33
// 1652 
// 1653 /**
// 1654   * @brief  This function handles UART Communication Timeout.
// 1655   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1656   *                the configuration information for the specified UART module.
// 1657   * @param  Flag: specifies the UART flag to check.
// 1658   * @param  Status: The new Flag status (SET or RESET).
// 1659   * @param  Timeout: Timeout duration
// 1660   * @retval HAL status
// 1661   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function UART_WaitOnFlagUntilTimeout
        THUMB
// 1662 static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Timeout)
// 1663 {
UART_WaitOnFlagUntilTimeout:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R8,R2
        MOVS     R6,R3
// 1664   uint32_t tickstart = 0;
        MOVS     R7,#+0
// 1665 
// 1666   /* Get tick */ 
// 1667   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
// 1668 
// 1669   /* Wait until flag is set */
// 1670   if(Status == RESET)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??UART_WaitOnFlagUntilTimeout_0
// 1671   {
// 1672     while(__HAL_UART_GET_FLAG(huart, Flag) == RESET)
??UART_WaitOnFlagUntilTimeout_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R5,R0
        CMP      R0,R5
        BEQ.N    ??UART_WaitOnFlagUntilTimeout_2
// 1673     {
// 1674       /* Check for the Timeout */
// 1675       if(Timeout != HAL_MAX_DELAY)
        CMN      R6,#+1
        BEQ.N    ??UART_WaitOnFlagUntilTimeout_1
// 1676       {
// 1677         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
        CMP      R6,#+0
        BEQ.N    ??UART_WaitOnFlagUntilTimeout_3
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R6,R0
        BCS.N    ??UART_WaitOnFlagUntilTimeout_1
// 1678         {
// 1679           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1680           __HAL_UART_DISABLE_IT(huart, UART_IT_TXE);
??UART_WaitOnFlagUntilTimeout_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1681           __HAL_UART_DISABLE_IT(huart, UART_IT_RXNE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x20
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1682           __HAL_UART_DISABLE_IT(huart, UART_IT_PE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1683           __HAL_UART_DISABLE_IT(huart, UART_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1684 
// 1685           huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
// 1686 
// 1687           /* Process Unlocked */
// 1688           __HAL_UNLOCK(huart);
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
// 1689 
// 1690           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??UART_WaitOnFlagUntilTimeout_4
// 1691         }
// 1692       }
// 1693     }
// 1694   }
// 1695   else
// 1696   {
// 1697     while(__HAL_UART_GET_FLAG(huart, Flag) != RESET)
??UART_WaitOnFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R5,R0
        CMP      R0,R5
        BNE.N    ??UART_WaitOnFlagUntilTimeout_2
// 1698     {
// 1699       /* Check for the Timeout */
// 1700       if(Timeout != HAL_MAX_DELAY)
        CMN      R6,#+1
        BEQ.N    ??UART_WaitOnFlagUntilTimeout_0
// 1701       {
// 1702         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
        CMP      R6,#+0
        BEQ.N    ??UART_WaitOnFlagUntilTimeout_5
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R6,R0
        BCS.N    ??UART_WaitOnFlagUntilTimeout_0
// 1703         {
// 1704           /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
// 1705           __HAL_UART_DISABLE_IT(huart, UART_IT_TXE);
??UART_WaitOnFlagUntilTimeout_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1706           __HAL_UART_DISABLE_IT(huart, UART_IT_RXNE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x20
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1707           __HAL_UART_DISABLE_IT(huart, UART_IT_PE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1708           __HAL_UART_DISABLE_IT(huart, UART_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1709 
// 1710           huart->State= HAL_UART_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+57]
// 1711 
// 1712           /* Process Unlocked */
// 1713           __HAL_UNLOCK(huart);
        MOVS     R0,#+0
        STRB     R0,[R4, #+56]
// 1714 
// 1715           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??UART_WaitOnFlagUntilTimeout_4
// 1716         }
// 1717       }
// 1718     }
// 1719   }
// 1720   return HAL_OK;
??UART_WaitOnFlagUntilTimeout_2:
        MOVS     R0,#+0
??UART_WaitOnFlagUntilTimeout_4:
        POP      {R4-R8,PC}       ;; return
// 1721 }
          CFI EndBlock cfiBlock34
// 1722 
// 1723 /**
// 1724   * @brief  Sends an amount of data in non blocking mode.
// 1725   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1726   *                the configuration information for the specified UART module.
// 1727   * @retval HAL status
// 1728   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function UART_Transmit_IT
          CFI NoCalls
        THUMB
// 1729 static HAL_StatusTypeDef UART_Transmit_IT(UART_HandleTypeDef *huart)
// 1730 {
// 1731   uint16_t* tmp;
// 1732   uint32_t tmp_state = 0;
UART_Transmit_IT:
        MOVS     R1,#+0
// 1733   
// 1734   tmp_state = huart->State;
        LDRB     R1,[R0, #+57]
// 1735   if((tmp_state == HAL_UART_STATE_BUSY_TX) || (tmp_state == HAL_UART_STATE_BUSY_TX_RX))
        CMP      R1,#+18
        BEQ.N    ??UART_Transmit_IT_0
        CMP      R1,#+50
        BNE.N    ??UART_Transmit_IT_1
// 1736   {
// 1737     if(huart->Init.WordLength == UART_WORDLENGTH_9B)
??UART_Transmit_IT_0:
        LDR      R1,[R0, #+8]
        CMP      R1,#+4096
        BNE.N    ??UART_Transmit_IT_2
// 1738     {
// 1739       tmp = (uint16_t*) huart->pTxBuffPtr;
        LDR      R1,[R0, #+32]
// 1740       huart->Instance->DR = (uint16_t)(*tmp & (uint16_t)0x01FF);
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+23       ;; ZeroExtS R1,R1,#+23,#+23
        LSRS     R1,R1,#+23
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 1741       if(huart->Init.Parity == UART_PARITY_NONE)
        LDR      R1,[R0, #+16]
        CMP      R1,#+0
        BNE.N    ??UART_Transmit_IT_3
// 1742       {
// 1743         huart->pTxBuffPtr += 2;
        LDR      R1,[R0, #+32]
        ADDS     R1,R1,#+2
        STR      R1,[R0, #+32]
        B.N      ??UART_Transmit_IT_4
// 1744       }
// 1745       else
// 1746       {
// 1747         huart->pTxBuffPtr += 1;
??UART_Transmit_IT_3:
        LDR      R1,[R0, #+32]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+32]
        B.N      ??UART_Transmit_IT_4
// 1748       }
// 1749     } 
// 1750     else
// 1751     {
// 1752       huart->Instance->DR = (uint8_t)(*huart->pTxBuffPtr++ & (uint8_t)0x00FF);
??UART_Transmit_IT_2:
        LDR      R1,[R0, #+32]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+32]
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 1753     }
// 1754 
// 1755     if(--huart->TxXferCount == 0)
??UART_Transmit_IT_4:
        LDRH     R1,[R0, #+38]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+38]
        LDRH     R1,[R0, #+38]
        CMP      R1,#+0
        BNE.N    ??UART_Transmit_IT_5
// 1756     {
// 1757       /* Disable the UART Transmit Complete Interrupt */
// 1758       __HAL_UART_DISABLE_IT(huart, UART_IT_TXE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x80
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1759 
// 1760       /* Enable the UART Transmit Complete Interrupt */    
// 1761       __HAL_UART_ENABLE_IT(huart, UART_IT_TC);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x40
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
// 1762     }
// 1763     return HAL_OK;
??UART_Transmit_IT_5:
        MOVS     R0,#+0
        B.N      ??UART_Transmit_IT_6
// 1764   }
// 1765   else
// 1766   {
// 1767     return HAL_BUSY;
??UART_Transmit_IT_1:
        MOVS     R0,#+2
??UART_Transmit_IT_6:
        BX       LR               ;; return
// 1768   }
// 1769 }
          CFI EndBlock cfiBlock35
// 1770 
// 1771 
// 1772 /**
// 1773   * @brief  Wraps up transmission in non blocking mode.
// 1774   * @param  huart: pointer to a UART_HandleTypeDef structure that contains
// 1775   *                the configuration information for the specified UART module.
// 1776   * @retval HAL status
// 1777   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function UART_EndTransmit_IT
        THUMB
// 1778 static HAL_StatusTypeDef UART_EndTransmit_IT(UART_HandleTypeDef *huart)
// 1779 {
UART_EndTransmit_IT:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1780   /* Disable the UART Transmit Complete Interrupt */    
// 1781   __HAL_UART_DISABLE_IT(huart, UART_IT_TC);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x40
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1782   
// 1783   /* Check if a receive process is ongoing or not */
// 1784   if(huart->State == HAL_UART_STATE_BUSY_TX_RX) 
        LDRB     R1,[R0, #+57]
        CMP      R1,#+50
        BNE.N    ??UART_EndTransmit_IT_0
// 1785   {
// 1786     huart->State = HAL_UART_STATE_BUSY_RX;
        MOVS     R1,#+34
        STRB     R1,[R0, #+57]
        B.N      ??UART_EndTransmit_IT_1
// 1787   }
// 1788   else
// 1789   {
// 1790     huart->State = HAL_UART_STATE_READY;
??UART_EndTransmit_IT_0:
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1791   }
// 1792   
// 1793   HAL_UART_TxCpltCallback(huart);
??UART_EndTransmit_IT_1:
          CFI FunCall HAL_UART_TxCpltCallback
        BL       HAL_UART_TxCpltCallback
// 1794   
// 1795   return HAL_OK;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 1796 }
          CFI EndBlock cfiBlock36
// 1797 
// 1798 /**
// 1799   * @brief  Receives an amount of data in non blocking mode 
// 1800   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1801   *                the configuration information for the specified UART module.
// 1802   * @retval HAL status
// 1803   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function UART_Receive_IT
        THUMB
// 1804 static HAL_StatusTypeDef UART_Receive_IT(UART_HandleTypeDef *huart)
// 1805 {
UART_Receive_IT:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1806   uint16_t* tmp;
// 1807   uint32_t tmp_state = 0;
        MOVS     R1,#+0
// 1808   
// 1809   tmp_state = huart->State; 
        LDRB     R1,[R0, #+57]
// 1810   if((tmp_state == HAL_UART_STATE_BUSY_RX) || (tmp_state == HAL_UART_STATE_BUSY_TX_RX))
        CMP      R1,#+34
        BEQ.N    ??UART_Receive_IT_0
        CMP      R1,#+50
        BNE.N    ??UART_Receive_IT_1
// 1811   {
// 1812     if(huart->Init.WordLength == UART_WORDLENGTH_9B)
??UART_Receive_IT_0:
        LDR      R1,[R0, #+8]
        CMP      R1,#+4096
        BNE.N    ??UART_Receive_IT_2
// 1813     {
// 1814       tmp = (uint16_t*) huart->pRxBuffPtr;
        LDR      R1,[R0, #+40]
// 1815       if(huart->Init.Parity == UART_PARITY_NONE)
        LDR      R2,[R0, #+16]
        CMP      R2,#+0
        BNE.N    ??UART_Receive_IT_3
// 1816       {
// 1817         *tmp = (uint16_t)(huart->Instance->DR & (uint16_t)0x01FF);
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+4]
        LSLS     R2,R2,#+23       ;; ZeroExtS R2,R2,#+23,#+23
        LSRS     R2,R2,#+23
        STRH     R2,[R1, #+0]
// 1818         huart->pRxBuffPtr += 2;
        LDR      R1,[R0, #+40]
        ADDS     R1,R1,#+2
        STR      R1,[R0, #+40]
        B.N      ??UART_Receive_IT_4
// 1819       }
// 1820       else
// 1821       {
// 1822         *tmp = (uint16_t)(huart->Instance->DR & (uint16_t)0x00FF);
??UART_Receive_IT_3:
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+4]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R2,[R1, #+0]
// 1823         huart->pRxBuffPtr += 1;
        LDR      R1,[R0, #+40]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+40]
        B.N      ??UART_Receive_IT_4
// 1824       }
// 1825     }
// 1826     else
// 1827     {
// 1828       if(huart->Init.Parity == UART_PARITY_NONE)
??UART_Receive_IT_2:
        LDR      R1,[R0, #+16]
        CMP      R1,#+0
        BNE.N    ??UART_Receive_IT_5
// 1829       {
// 1830         *huart->pRxBuffPtr++ = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
        LDR      R1,[R0, #+40]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+40]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+4]
        STRB     R2,[R1, #+0]
        B.N      ??UART_Receive_IT_4
// 1831       }
// 1832       else
// 1833       {
// 1834         *huart->pRxBuffPtr++ = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
??UART_Receive_IT_5:
        LDR      R1,[R0, #+40]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+40]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+4]
        ANDS     R2,R2,#0x7F
        STRB     R2,[R1, #+0]
// 1835       }
// 1836     }
// 1837 
// 1838     if(--huart->RxXferCount == 0)
??UART_Receive_IT_4:
        LDRH     R1,[R0, #+46]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+46]
        LDRH     R1,[R0, #+46]
        CMP      R1,#+0
        BNE.N    ??UART_Receive_IT_6
// 1839     {
// 1840       __HAL_UART_DISABLE_IT(huart, UART_IT_RXNE);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x20
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1841 
// 1842       /* Check if a transmit process is ongoing or not */
// 1843       if(huart->State == HAL_UART_STATE_BUSY_TX_RX) 
        LDRB     R1,[R0, #+57]
        CMP      R1,#+50
        BNE.N    ??UART_Receive_IT_7
// 1844       {
// 1845         huart->State = HAL_UART_STATE_BUSY_TX;
        MOVS     R1,#+18
        STRB     R1,[R0, #+57]
        B.N      ??UART_Receive_IT_8
// 1846       }
// 1847       else
// 1848       {
// 1849         /* Disable the UART Parity Error Interrupt */
// 1850         __HAL_UART_DISABLE_IT(huart, UART_IT_PE);
??UART_Receive_IT_7:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
// 1851 
// 1852         /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) */
// 1853         __HAL_UART_DISABLE_IT(huart, UART_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 1854 
// 1855         huart->State = HAL_UART_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1856       }
// 1857       HAL_UART_RxCpltCallback(huart);
??UART_Receive_IT_8:
          CFI FunCall HAL_UART_RxCpltCallback
        BL       HAL_UART_RxCpltCallback
// 1858 
// 1859       return HAL_OK;
        MOVS     R0,#+0
        B.N      ??UART_Receive_IT_9
// 1860     }
// 1861     return HAL_OK;
??UART_Receive_IT_6:
        MOVS     R0,#+0
        B.N      ??UART_Receive_IT_9
// 1862   }
// 1863   else
// 1864   {
// 1865     return HAL_BUSY; 
??UART_Receive_IT_1:
        MOVS     R0,#+2
??UART_Receive_IT_9:
        POP      {R1,PC}          ;; return
// 1866   }
// 1867 }
          CFI EndBlock cfiBlock37
// 1868 
// 1869 /**
// 1870   * @brief  Configures the UART peripheral. 
// 1871   * @param  huart: Pointer to a UART_HandleTypeDef structure that contains
// 1872   *                the configuration information for the specified UART module.
// 1873   * @retval None
// 1874   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function UART_SetConfig
        THUMB
// 1875 static void UART_SetConfig(UART_HandleTypeDef *huart)
// 1876 {
UART_SetConfig:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
// 1877   uint32_t tmpreg = 0x00;
        MOVS     R0,#+0
// 1878   
// 1879   /* Check the parameters */
// 1880   assert_param(IS_UART_BAUDRATE(huart->Init.BaudRate));  
// 1881   assert_param(IS_UART_STOPBITS(huart->Init.StopBits));
// 1882   assert_param(IS_UART_PARITY(huart->Init.Parity));
// 1883   assert_param(IS_UART_MODE(huart->Init.Mode));
// 1884 
// 1885   /*------- UART-associated USART registers setting : CR2 Configuration ------*/
// 1886   /* Configure the UART Stop Bits: Set STOP[13:12] bits according 
// 1887    * to huart->Init.StopBits value */
// 1888   MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+16]
        BICS     R0,R0,#0x3000
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 1889 
// 1890   /*------- UART-associated USART registers setting : CR1 Configuration ------*/
// 1891   /* Configure the UART Word Length, Parity and mode: 
// 1892      Set the M bits according to huart->Init.WordLength value 
// 1893      Set PCE and PS bits according to huart->Init.Parity value
// 1894      Set TE and RE bits according to huart->Init.Mode value
// 1895      Set OVER8 bit according to huart->Init.OverSampling value */
// 1896   tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
        LDR      R0,[R4, #+8]
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+20]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+28]
        ORRS     R0,R1,R0
// 1897   MODIFY_REG(huart->Instance->CR1, 
// 1898              (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8), 
// 1899              tmpreg);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+12]
        LDR.N    R2,??DataTable0  ;; 0xffff69f3
        ANDS     R1,R2,R1
        ORRS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
// 1900   
// 1901   /*------- UART-associated USART registers setting : CR3 Configuration ------*/
// 1902   /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
// 1903   MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x300
        LDR      R1,[R4, #+24]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1904   
// 1905   /* Check the Over Sampling */
// 1906   if(huart->Init.OverSampling == UART_OVERSAMPLING_8)
        LDR      R0,[R4, #+28]
        CMP      R0,#+32768
        BNE.W    ??UART_SetConfig_0
// 1907   {
// 1908     /*------- UART-associated USART registers setting : BRR Configuration ------*/
// 1909     if((huart->Instance == USART1))
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_1  ;; 0x40013800
        CMP      R0,R1
        BNE.N    ??UART_SetConfig_1
// 1910     {
// 1911       huart->Instance->BRR = UART_BRR_SAMPLING8(HAL_RCC_GetPCLK2Freq(), huart->Init.BaudRate);
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOV      R8,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R6,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R7,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R5,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R1,#+25
        MUL      R1,R1,R8
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+1
        UDIV     R1,R1,R2
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        MOVS     R2,#+25
        MUL      R2,R2,R6
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MUL      R3,R3,R7
        LDR      R6,[R4, #+4]
        LSLS     R6,R6,#+1
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        MLS      R2,R6,R3,R2
        LSLS     R2,R2,#+3
        ADDS     R2,R2,#+50
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        ANDS     R2,R2,#0xF8
        LSLS     R2,R2,#+1
        ADDS     R1,R2,R1, LSL #+4
        MOVS     R2,#+25
        MUL      R2,R2,R5
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MULS     R0,R3,R0
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        MLS      R0,R3,R0,R2
        LSLS     R0,R0,#+3
        ADDS     R0,R0,#+50
        MOVS     R2,#+100
        UDIV     R0,R0,R2
        ANDS     R0,R0,#0x7
        ADDS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        B.N      ??UART_SetConfig_2
// 1912     }
// 1913     else
// 1914     {
// 1915       huart->Instance->BRR = UART_BRR_SAMPLING8(HAL_RCC_GetPCLK1Freq(), huart->Init.BaudRate);
??UART_SetConfig_1:
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOV      R8,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R6,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R7,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R5,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R1,#+25
        MUL      R1,R1,R8
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+1
        UDIV     R1,R1,R2
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        MOVS     R2,#+25
        MUL      R2,R2,R6
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MUL      R3,R3,R7
        LDR      R6,[R4, #+4]
        LSLS     R6,R6,#+1
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        MLS      R2,R6,R3,R2
        LSLS     R2,R2,#+3
        ADDS     R2,R2,#+50
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        ANDS     R2,R2,#0xF8
        LSLS     R2,R2,#+1
        ADDS     R1,R2,R1, LSL #+4
        MOVS     R2,#+25
        MUL      R2,R2,R5
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MULS     R0,R3,R0
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+1
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        MLS      R0,R3,R0,R2
        LSLS     R0,R0,#+3
        ADDS     R0,R0,#+50
        MOVS     R2,#+100
        UDIV     R0,R0,R2
        ANDS     R0,R0,#0x7
        ADDS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        B.N      ??UART_SetConfig_2
// 1916     }
// 1917   }
// 1918   else
// 1919   {
// 1920     /*------- UART-associated USART registers setting : BRR Configuration ------*/
// 1921     if((huart->Instance == USART1))
??UART_SetConfig_0:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable0_1  ;; 0x40013800
        CMP      R0,R1
        BNE.N    ??UART_SetConfig_3
// 1922     {
// 1923       huart->Instance->BRR = UART_BRR_SAMPLING16(HAL_RCC_GetPCLK2Freq(), huart->Init.BaudRate);
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOV      R8,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R6,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R7,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R5,R0
          CFI FunCall HAL_RCC_GetPCLK2Freq
        BL       HAL_RCC_GetPCLK2Freq
        MOVS     R1,#+25
        MUL      R1,R1,R8
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+2
        UDIV     R1,R1,R2
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        MOVS     R2,#+25
        MUL      R2,R2,R6
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MUL      R3,R3,R7
        LDR      R6,[R4, #+4]
        LSLS     R6,R6,#+2
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        MLS      R2,R6,R3,R2
        LSLS     R2,R2,#+4
        ADDS     R2,R2,#+50
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        ANDS     R2,R2,#0xF0
        ADDS     R1,R2,R1, LSL #+4
        MOVS     R2,#+25
        MUL      R2,R2,R5
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MULS     R0,R3,R0
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        MLS      R0,R3,R0,R2
        LSLS     R0,R0,#+4
        ADDS     R0,R0,#+50
        MOVS     R2,#+100
        UDIV     R0,R0,R2
        ANDS     R0,R0,#0xF
        ADDS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
        B.N      ??UART_SetConfig_2
// 1924     }
// 1925     else
// 1926     {
// 1927       huart->Instance->BRR = UART_BRR_SAMPLING16(HAL_RCC_GetPCLK1Freq(), huart->Init.BaudRate);
??UART_SetConfig_3:
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOV      R8,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R6,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R7,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R5,R0
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
        MOVS     R1,#+25
        MUL      R1,R1,R8
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+2
        UDIV     R1,R1,R2
        MOVS     R2,#+100
        UDIV     R1,R1,R2
        MOVS     R2,#+25
        MUL      R2,R2,R6
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MUL      R3,R3,R7
        LDR      R6,[R4, #+4]
        LSLS     R6,R6,#+2
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        UDIV     R3,R3,R6
        MOVS     R6,#+100
        MLS      R2,R6,R3,R2
        LSLS     R2,R2,#+4
        ADDS     R2,R2,#+50
        MOVS     R3,#+100
        UDIV     R2,R2,R3
        ANDS     R2,R2,#0xF0
        ADDS     R1,R2,R1, LSL #+4
        MOVS     R2,#+25
        MUL      R2,R2,R5
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R2,R2,R3
        MOVS     R3,#+25
        MULS     R0,R3,R0
        LDR      R3,[R4, #+4]
        LSLS     R3,R3,#+2
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        UDIV     R0,R0,R3
        MOVS     R3,#+100
        MLS      R0,R3,R0,R2
        LSLS     R0,R0,#+4
        ADDS     R0,R0,#+50
        MOVS     R2,#+100
        UDIV     R0,R0,R2
        ANDS     R0,R0,#0xF
        ADDS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
// 1928     }
// 1929   }
// 1930 }
??UART_SetConfig_2:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0xffff69f3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40013800

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1931 /**
// 1932   * @}
// 1933   */
// 1934 
// 1935 #endif /* HAL_UART_MODULE_ENABLED */
// 1936 /**
// 1937   * @}
// 1938   */
// 1939 
// 1940 /**
// 1941   * @}
// 1942   */
// 1943 
// 1944 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 3 938 bytes in section .text
// 
// 3 938 bytes of CODE memory
//
//Errors: none
//Warnings: none
