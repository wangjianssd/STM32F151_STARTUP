///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_smartcard.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_smartcard.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_smartcard.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_smartcard.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_smartcard.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   SMARTCARD HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the SMARTCARD peripheral:
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
//   20     The SMARTCARD HAL driver can be used as follows:
//   21 
//   22     (#) Declare a SMARTCARD_HandleTypeDef handle structure.
//   23     (#) Initialize the SMARTCARD low level resources by implementing the HAL_SMARTCARD_MspInit() API:
//   24         (##) Enable the interface clock of the USARTx associated to the SMARTCARD.
//   25         (##) SMARTCARD pins configuration:
//   26             (+++) Enable the clock for the SMARTCARD GPIOs.
//   27             (+++) Configure the SMARTCARD pins as alternate function pull-up.
//   28         (##) NVIC configuration if you need to use interrupt process (HAL_SMARTCARD_Transmit_IT()
//   29              and HAL_SMARTCARD_Receive_IT() APIs):
//   30             (+++) Configure the USARTx interrupt priority.
//   31             (+++) Enable the NVIC USART IRQ handle.
//   32         (##) DMA Configuration if you need to use DMA process (HAL_SMARTCARD_Transmit_DMA()
//   33              and HAL_SMARTCARD_Receive_DMA() APIs):
//   34             (+++) Declare a DMA handle structure for the Tx/Rx channel.
//   35             (+++) Enable the DMAx interface clock.
//   36             (+++) Configure the declared DMA handle structure with the required Tx/Rx parameters.
//   37             (+++) Configure the DMA Tx/Rx channel.
//   38             (+++) Associate the initilalized DMA handle to the SMARTCARD DMA Tx/Rx handle.
//   39             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on the DMA Tx/Rx channel.
//   40             (+++) Configure the USARTx interrupt priority and enable the NVIC USART IRQ handle
//   41                   (used for last byte sending completion detection in DMA non circular mode)
//   42 
//   43     (#) Program the Baud Rate, Word Length , Stop Bit, Parity, Hardware 
//   44         flow control and Mode(Receiver/Transmitter) in the SMARTCARD Init structure.
//   45 
//   46     (#) Initialize the SMARTCARD registers by calling the HAL_SMARTCARD_Init() API:
//   47         (++) This API configures also the low level Hardware GPIO, CLOCK, CORTEX...etc)
//   48              by calling the customed HAL_SMARTCARD_MspInit(&hsc) API.
//   49 
//   50         -@@- The specific SMARTCARD interrupts (Transmission complete interrupt, 
//   51              RXNE interrupt and Error Interrupts) will be managed using the macros
//   52              __HAL_SMARTCARD_ENABLE_IT() and __HAL_SMARTCARD_DISABLE_IT() inside the transmit and receive process.
//   53           
//   54     (#) Three operation modes are available within this driver :
//   55  
//   56      *** Polling mode IO operation ***
//   57      =================================
//   58      [..]    
//   59        (+) Send an amount of data in blocking mode using HAL_SMARTCARD_Transmit() 
//   60        (+) Receive an amount of data in blocking mode using HAL_SMARTCARD_Receive()
//   61        
//   62      *** Interrupt mode IO operation ***    
//   63      ===================================
//   64      [..]    
//   65        (+) Send an amount of data in non blocking mode using HAL_SMARTCARD_Transmit_IT() 
//   66        (+) At transmission end of transfer HAL_SMARTCARD_TxCpltCallback is executed and user can 
//   67             add his own code by customization of function pointer HAL_SMARTCARD_TxCpltCallback
//   68        (+) Receive an amount of data in non blocking mode using HAL_SMARTCARD_Receive_IT() 
//   69        (+) At reception end of transfer HAL_SMARTCARD_RxCpltCallback is executed and user can 
//   70             add his own code by customization of function pointer HAL_SMARTCARD_RxCpltCallback                                      
//   71        (+) In case of transfer Error, HAL_SMARTCARD_ErrorCallback() function is executed and user can 
//   72             add his own code by customization of function pointer HAL_SMARTCARD_ErrorCallback
//   73 
//   74      *** DMA mode IO operation ***    
//   75      ==============================
//   76      [..] 
//   77        (+) Send an amount of data in non blocking mode (DMA) using HAL_SMARTCARD_Transmit_DMA() 
//   78        (+) At transmission end of transfer HAL_SMARTCARD_TxCpltCallback is executed and user can 
//   79             add his own code by customization of function pointer HAL_SMARTCARD_TxCpltCallback
//   80        (+) Receive an amount of data in non blocking mode (DMA) using HAL_SMARTCARD_Receive_DMA() 
//   81        (+) At reception end of transfer HAL_SMARTCARD_RxCpltCallback is executed and user can 
//   82             add his own code by customization of function pointer HAL_SMARTCARD_RxCpltCallback                                      
//   83        (+) In case of transfer Error, HAL_SMARTCARD_ErrorCallback() function is executed and user can 
//   84             add his own code by customization of function pointer HAL_SMARTCARD_ErrorCallback
//   85 
//   86      *** SMARTCARD HAL driver macros list ***
//   87      ========================================
//   88      [..]
//   89        Below the list of most used macros in SMARTCARD HAL driver.
//   90        
//   91        (+) __HAL_SMARTCARD_ENABLE: Enable the SMARTCARD peripheral 
//   92        (+) __HAL_SMARTCARD_DISABLE: Disable the SMARTCARD peripheral     
//   93        (+) __HAL_SMARTCARD_GET_FLAG : Check whether the specified SMARTCARD flag is set or not
//   94        (+) __HAL_SMARTCARD_CLEAR_FLAG : Clear the specified SMARTCARD pending flag
//   95        (+) __HAL_SMARTCARD_ENABLE_IT: Enable the specified SMARTCARD interrupt
//   96        (+) __HAL_SMARTCARD_DISABLE_IT: Disable the specified SMARTCARD interrupt
//   97        (+) __HAL_SMARTCARD_GET_IT_SOURCE: Check whether the specified SMARTCARD interrupt has occurred or not
//   98       
//   99      [..] 
//  100        (@) You can refer to the SMARTCARD HAL driver header file for more useful macros
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
//  140 /** @defgroup SMARTCARD SMARTCARD
//  141   * @brief HAL SMARTCARD module driver
//  142   * @{
//  143   */
//  144 
//  145 #ifdef HAL_SMARTCARD_MODULE_ENABLED
//  146 
//  147 /* Private typedef -----------------------------------------------------------*/
//  148 /* Private define ------------------------------------------------------------*/
//  149 /* Private macros --------------------------------------------------------*/
//  150 /* Private variables ---------------------------------------------------------*/
//  151 /* Private function prototypes -----------------------------------------------*/
//  152 /** @addtogroup SMARTCARD_Private_Functions   SMARTCARD Private Functions
//  153   * @{
//  154   */
//  155 static HAL_StatusTypeDef SMARTCARD_Transmit_IT(SMARTCARD_HandleTypeDef *hsc);
//  156 static HAL_StatusTypeDef SMARTCARD_EndTransmit_IT(SMARTCARD_HandleTypeDef *hsmartcard);
//  157 static HAL_StatusTypeDef SMARTCARD_Receive_IT(SMARTCARD_HandleTypeDef *hsc);
//  158 static void SMARTCARD_SetConfig (SMARTCARD_HandleTypeDef *hsc);
//  159 static void SMARTCARD_DMATransmitCplt(DMA_HandleTypeDef *hdma);
//  160 static void SMARTCARD_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
//  161 static void SMARTCARD_DMAError(DMA_HandleTypeDef *hdma);
//  162 static HAL_StatusTypeDef SMARTCARD_WaitOnFlagUntilTimeout(SMARTCARD_HandleTypeDef *hsc, uint32_t Flag, FlagStatus Status, uint32_t Timeout);
//  163 /**
//  164   * @}
//  165   */
//  166 
//  167 /* Exported functions ---------------------------------------------------------*/
//  168 
//  169 /** @defgroup SMARTCARD_Exported_Functions SMARTCARD Exported Functions
//  170   * @{
//  171   */
//  172 
//  173 /** @defgroup SMARTCARD_Exported_Functions_Group1 Initialization and de-initialization functions 
//  174   *  @brief    Initialization and Configuration functions 
//  175   *
//  176 @verbatim
//  177 
//  178   ==============================================================================
//  179               ##### Initialization and Configuration functions #####
//  180   ==============================================================================
//  181   [..]
//  182   This subsection provides a set of functions allowing to initialize the USART 
//  183   in Smartcard mode.
//  184   [..]
//  185   The Smartcard interface is designed to support asynchronous protocol Smartcards as
//  186   defined in the ISO 7816-3 standard.
//  187   [..]
//  188   The USART can provide a clock to the smartcard through the SCLK output.
//  189   In smartcard mode, SCLK is not associated to the communication but is simply derived 
//  190   from the internal peripheral input clock through a 5-bit prescaler.
//  191   [..]
//  192   (+) For the Smartcard mode only these parameters can be configured:
//  193       (++) Baud Rate
//  194       (++) Word Length => Should be 9 bits (8 bits + parity)
//  195       (++) Stop Bit
//  196       (++) Parity: => Should be enabled 
//  197       (++) USART polarity
//  198       (++) USART phase
//  199       (++) USART LastBit
//  200       (++) Receiver/transmitter modes
//  201       (++) Prescaler
//  202       (++) GuardTime
//  203       (++) NACKState: The Smartcard NACK state
//  204 
//  205      (+) Recommended SmartCard interface configuration to get the Answer to Reset from the Card:
//  206         (++) Word Length = 9 Bits
//  207         (++) 1.5 Stop Bit
//  208         (++) Even parity
//  209         (++) BaudRate = 12096 baud
//  210         (++) Tx and Rx enabled
//  211   [..]
//  212   Please refer to the ISO 7816-3 specification for more details.
//  213 
//  214     (@) It is also possible to choose 0.5 stop bit for receiving but it is recommended 
//  215         to use 1.5 stop bits for both transmitting and receiving to avoid switching 
//  216         between the two configurations.
//  217   [..]
//  218   The HAL_SMARTCARD_Init() function follows the USART  SmartCard configuration 
//  219   procedure (details for the procedure are available in reference manual (RM0038)).
//  220 
//  221 @endverbatim
//  222   * @{
//  223   */
//  224 
//  225 /*
//  226   Additionnal remark on the smartcard frame:
//  227    +-------------------------------------------------------------+
//  228    |   M bit |  PCE bit  |        SMARTCARD frame                |
//  229    |---------------------|---------------------------------------|
//  230    |    1    |    1      |    | SB | 8 bit data | PB | STB |     |
//  231    +-------------------------------------------------------------+
//  232 */
//  233 
//  234 /**
//  235   * @brief  Initializes the SmartCard mode according to the specified
//  236   *         parameters in the SMARTCARD_HandleTypeDef and create the associated handle.
//  237   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  238   *              the configuration information for the specified SMARTCARD module.
//  239   * @retval HAL status
//  240   */
//  241 HAL_StatusTypeDef HAL_SMARTCARD_Init(SMARTCARD_HandleTypeDef *hsc)
//  242 {
//  243   /* Check the SMARTCARD handle allocation */
//  244   if(hsc == NULL)
//  245   {
//  246     return HAL_ERROR;
//  247   }
//  248 
//  249   /* Check Wordlength, Parity and Stop bits parameters */
//  250   if (  (!(IS_SMARTCARD_WORD_LENGTH(hsc->Init.WordLength)))
//  251       ||(!(IS_SMARTCARD_STOPBITS(hsc->Init.StopBits)))
//  252       ||(!(IS_SMARTCARD_PARITY(hsc->Init.Parity)))  )
//  253   {
//  254     return HAL_ERROR;
//  255   }
//  256 
//  257   /* Check the parameters */
//  258   assert_param(IS_SMARTCARD_INSTANCE(hsc->Instance));
//  259   assert_param(IS_SMARTCARD_NACK_STATE(hsc->Init.NACKState));
//  260   assert_param(IS_SMARTCARD_PRESCALER(hsc->Init.Prescaler));
//  261 
//  262   if(hsc->State == HAL_SMARTCARD_STATE_RESET)
//  263   {  
//  264     /* Allocate lock resource and initialize it */
//  265     hsc->Lock = HAL_UNLOCKED;
//  266 
//  267     /* Init the low level hardware */
//  268     HAL_SMARTCARD_MspInit(hsc);
//  269   }
//  270   
//  271   hsc->State = HAL_SMARTCARD_STATE_BUSY;
//  272 
//  273   /* Disable the Peripheral */
//  274   __HAL_SMARTCARD_DISABLE(hsc);
//  275   
//  276   /* Set the Prescaler */
//  277   MODIFY_REG(hsc->Instance->GTPR, USART_GTPR_PSC, hsc->Init.Prescaler);
//  278 
//  279   /* Set the Guard Time */
//  280   MODIFY_REG(hsc->Instance->GTPR, USART_GTPR_GT, ((hsc->Init.GuardTime)<<8));
//  281 
//  282   /* Set the Smartcard Communication parameters */
//  283   SMARTCARD_SetConfig(hsc);
//  284 
//  285   /* In SmartCard mode, the following bits must be kept cleared: 
//  286   - LINEN bit in the USART_CR2 register
//  287   - HDSEL and IREN bits in the USART_CR3 register.*/
//  288   CLEAR_BIT(hsc->Instance->CR2, USART_CR2_LINEN);
//  289   CLEAR_BIT(hsc->Instance->CR3, (USART_CR3_IREN | USART_CR3_HDSEL));
//  290 
//  291   /* Enable the Peripharal */
//  292   __HAL_SMARTCARD_ENABLE(hsc);
//  293 
//  294   /* Configure the Smartcard NACK state */
//  295   MODIFY_REG(hsc->Instance->CR3, USART_CR3_NACK, hsc->Init.NACKState);
//  296 
//  297   /* Enable the SC mode by setting the SCEN bit in the CR3 register */
//  298   SET_BIT(hsc->Instance->CR3, USART_CR3_SCEN);
//  299 
//  300   /* Initialize the SMARTCARD state*/
//  301   hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  302   hsc->State= HAL_SMARTCARD_STATE_READY;
//  303 
//  304   return HAL_OK;
//  305 }
//  306 
//  307 /**
//  308   * @brief  DeInitializes the SMARTCARD peripheral
//  309   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  310   *              the configuration information for the specified SMARTCARD module.
//  311   * @retval HAL status
//  312   */
//  313 HAL_StatusTypeDef HAL_SMARTCARD_DeInit(SMARTCARD_HandleTypeDef *hsc)
//  314 {
//  315   /* Check the SMARTCARD handle allocation */
//  316   if(hsc == NULL)
//  317   {
//  318     return HAL_ERROR;
//  319   }
//  320 
//  321   /* Check the parameters */
//  322   assert_param(IS_SMARTCARD_INSTANCE(hsc->Instance));
//  323 
//  324   hsc->State = HAL_SMARTCARD_STATE_BUSY;
//  325 
//  326   /* Disable the Peripheral */
//  327   __HAL_SMARTCARD_DISABLE(hsc);
//  328 
//  329   hsc->Instance->CR1 = 0x0;
//  330   hsc->Instance->CR2 = 0x0;
//  331   hsc->Instance->CR3 = 0x0;
//  332   hsc->Instance->BRR = 0x0;
//  333   hsc->Instance->GTPR = 0x0;
//  334   
//  335   /* DeInit the low level hardware */
//  336   HAL_SMARTCARD_MspDeInit(hsc);
//  337 
//  338   hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  339   hsc->State = HAL_SMARTCARD_STATE_RESET;
//  340 
//  341   /* Release Lock */
//  342   __HAL_UNLOCK(hsc);
//  343 
//  344   return HAL_OK;
//  345 }
//  346 
//  347 /**
//  348   * @brief  SMARTCARD MSP Init.
//  349   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  350   *                the configuration information for the specified SMARTCARD module.
//  351   * @retval None
//  352   */
//  353 __weak void HAL_SMARTCARD_MspInit(SMARTCARD_HandleTypeDef *hsc)
//  354 {
//  355   /* Prevent unused argument(s) compilation warning */
//  356   UNUSED(hsc);
//  357 
//  358   /* NOTE: This function should not be modified, when the callback is needed,
//  359            the HAL_SMARTCARD_MspInit can be implemented in the user file
//  360    */ 
//  361 }
//  362 
//  363 /**
//  364   * @brief  SMARTCARD MSP DeInit.
//  365   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  366   *                the configuration information for the specified SMARTCARD module.
//  367   * @retval None
//  368   */
//  369 __weak void HAL_SMARTCARD_MspDeInit(SMARTCARD_HandleTypeDef *hsc)
//  370 {
//  371   /* Prevent unused argument(s) compilation warning */
//  372   UNUSED(hsc);
//  373 
//  374   /* NOTE: This function should not be modified, when the callback is needed,
//  375            the HAL_SMARTCARD_MspDeInit can be implemented in the user file
//  376    */ 
//  377 }
//  378 
//  379 /**
//  380   * @}
//  381   */
//  382 
//  383 /** @defgroup SMARTCARD_Exported_Functions_Group2 IO operation functions 
//  384   *  @brief   SMARTCARD Transmit and Receive functions 
//  385   *
//  386 @verbatim
//  387   ==============================================================================
//  388                          ##### IO operation functions #####
//  389   ==============================================================================
//  390   [..]
//  391     This subsection provides a set of functions allowing to manage the SMARTCARD data transfers.
//  392 
//  393   [..]
//  394     (#) Smartcard is a single wire half duplex communication protocol. 
//  395     The Smartcard interface is designed to support asynchronous protocol Smartcards as
//  396     defined in the ISO 7816-3 standard. 
//  397     (#) The USART should be configured as:
//  398         (++) 8 bits plus parity: where M=1 and PCE=1 in the USART_CR1 register
//  399         (++) 1.5 stop bits when transmitting and receiving: where STOP=11 in the USART_CR2 register.
//  400 
//  401     (#) There are two modes of transfer:
//  402         (++) Blocking mode: The communication is performed in polling mode. 
//  403              The HAL status of all data processing is returned by the same function 
//  404              after finishing transfer.  
//  405         (++) No-Blocking mode: The communication is performed using Interrupts 
//  406              or DMA, the relevant API's return the HAL status.
//  407              The end of the data processing will be indicated through the 
//  408              dedicated SMARTCARD IRQ when using Interrupt mode or the DMA IRQ when 
//  409              using DMA mode.
//  410              The HAL_SMARTCARD_TxCpltCallback(), HAL_SMARTCARD_RxCpltCallback() user callbacks 
//  411              will be executed respectively at the end of the Transmit or Receive process
//  412              The HAL_SMARTCARD_ErrorCallback() user callback will be executed when a communication 
//  413              error is detected.
//  414 
//  415     (#) Blocking mode APIs are :
//  416         (++) HAL_SMARTCARD_Transmit()
//  417         (++) HAL_SMARTCARD_Receive()
//  418 
//  419     (#) Non Blocking mode APIs with Interrupt are :
//  420         (++) HAL_SMARTCARD_Transmit_IT()
//  421         (++) HAL_SMARTCARD_Receive_IT()
//  422         (++) HAL_SMARTCARD_IRQHandler()
//  423 
//  424     (#) Non Blocking mode functions with DMA are :
//  425         (++) HAL_SMARTCARD_Transmit_DMA()
//  426         (++) HAL_SMARTCARD_Receive_DMA()
//  427 
//  428     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
//  429         (++) HAL_SMARTCARD_TxCpltCallback()
//  430         (++) HAL_SMARTCARD_RxCpltCallback()
//  431         (++) HAL_SMARTCARD_ErrorCallback()
//  432 
//  433 @endverbatim
//  434   * @{
//  435   */
//  436 
//  437 /**
//  438   * @brief  Sends an amount of data in blocking mode.
//  439   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  440   *                the configuration information for the specified SMARTCARD module.
//  441   * @param  pData: Pointer to data buffer
//  442   * @param  Size: Amount of data to be sent
//  443   * @param  Timeout: Specify timeout value  
//  444   * @retval HAL status
//  445   */
//  446 HAL_StatusTypeDef HAL_SMARTCARD_Transmit(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  447 {
//  448   uint32_t tmp_state = 0;
//  449   
//  450   tmp_state = hsc->State;
//  451   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_RX))
//  452   {
//  453     if((pData == NULL) || (Size == 0)) 
//  454     {
//  455       return  HAL_ERROR;
//  456     }
//  457 
//  458     /* Process Locked */
//  459     __HAL_LOCK(hsc);
//  460 
//  461     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  462     /* Check if a non-blocking receive process is ongoing or not */
//  463     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_RX) 
//  464     {
//  465       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  466     }
//  467     else
//  468     {
//  469       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
//  470     }
//  471     
//  472     hsc->TxXferSize = Size;
//  473     hsc->TxXferCount = Size;
//  474     while(hsc->TxXferCount > 0)
//  475     {
//  476       if(SMARTCARD_WaitOnFlagUntilTimeout(hsc, SMARTCARD_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  477       {
//  478         return HAL_TIMEOUT;
//  479       }
//  480       WRITE_REG(hsc->Instance->DR, (*pData++ & (uint8_t)0xFF));
//  481       hsc->TxXferCount--;
//  482     }
//  483 
//  484     if(SMARTCARD_WaitOnFlagUntilTimeout(hsc, SMARTCARD_FLAG_TC, RESET, Timeout) != HAL_OK)
//  485     {
//  486       return HAL_TIMEOUT;
//  487     }
//  488 
//  489     /* Check if a non-blocking receive process is ongoing or not */
//  490     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX_RX) 
//  491     {
//  492       hsc->State = HAL_SMARTCARD_STATE_BUSY_RX;
//  493     }
//  494     else
//  495     {
//  496       hsc->State = HAL_SMARTCARD_STATE_READY;
//  497     }
//  498     /* Process Unlocked */
//  499     __HAL_UNLOCK(hsc);
//  500 
//  501     return HAL_OK;
//  502   }
//  503   else
//  504   {
//  505     return HAL_BUSY;
//  506   }
//  507 }
//  508 
//  509 /**
//  510   * @brief  Receive an amount of data in blocking mode. 
//  511   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  512   *                the configuration information for the specified SMARTCARD module.
//  513   * @param  pData: Pointer to data buffer
//  514   * @param  Size: Amount of data to be received
//  515   * @param  Timeout: Specify timeout value    
//  516   * @retval HAL status
//  517   */
//  518 HAL_StatusTypeDef HAL_SMARTCARD_Receive(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  519 {
//  520   uint32_t tmp_state = 0;
//  521   
//  522   tmp_state = hsc->State;
//  523   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_TX))
//  524   {
//  525     if((pData == NULL) || (Size == 0)) 
//  526     {
//  527       return  HAL_ERROR;
//  528     }
//  529 
//  530     /* Process Locked */
//  531     __HAL_LOCK(hsc);
//  532     
//  533     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  534 
//  535     /* Check if a non-blocking transmit process is ongoing or not */
//  536     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX) 
//  537     {
//  538       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  539     }
//  540     else
//  541     {
//  542       hsc->State = HAL_SMARTCARD_STATE_BUSY_RX;
//  543     }
//  544 
//  545     hsc->RxXferSize = Size;
//  546     hsc->RxXferCount = Size;
//  547     /* Check the remain data to be received */
//  548     while(hsc->RxXferCount > 0)
//  549     {
//  550       if(SMARTCARD_WaitOnFlagUntilTimeout(hsc, SMARTCARD_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  551       {
//  552         return HAL_TIMEOUT;
//  553       }
//  554       *pData++ = (uint8_t)(hsc->Instance->DR & (uint8_t)0x00FF);              
//  555       hsc->RxXferCount--;
//  556     }
//  557 
//  558     /* Check if a non-blocking transmit process is ongoing or not */
//  559     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX_RX) 
//  560     {
//  561       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
//  562     }
//  563     else
//  564     {
//  565       hsc->State = HAL_SMARTCARD_STATE_READY;
//  566     }
//  567 
//  568     /* Process Unlocked */
//  569     __HAL_UNLOCK(hsc);
//  570 
//  571     return HAL_OK;
//  572   }
//  573   else
//  574   {
//  575     return HAL_BUSY;
//  576   }
//  577 }
//  578 
//  579 /**
//  580   * @brief  Sends an amount of data in non-blocking mode. 
//  581   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  582   *                the configuration information for the specified SMARTCARD module.
//  583   * @param  pData: Pointer to data buffer
//  584   * @param  Size: Amount of data to be sent
//  585   * @retval HAL status
//  586   */
//  587 HAL_StatusTypeDef HAL_SMARTCARD_Transmit_IT(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size)
//  588 {
//  589   uint32_t tmp_state = 0;
//  590   
//  591   tmp_state = hsc->State;
//  592   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_RX))
//  593   {
//  594     if((pData == NULL) || (Size == 0))
//  595     {
//  596       return HAL_ERROR;
//  597     }
//  598 
//  599     /* Process Locked */
//  600     __HAL_LOCK(hsc);
//  601 
//  602     hsc->pTxBuffPtr = pData;
//  603     hsc->TxXferSize = Size;
//  604     hsc->TxXferCount = Size;
//  605 
//  606     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  607     /* Check if a non-blocking receive process is ongoing or not */
//  608     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_RX) 
//  609     {
//  610       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  611     }
//  612     else
//  613     {
//  614       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
//  615     }
//  616 
//  617     /* Process Unlocked */
//  618     __HAL_UNLOCK(hsc);
//  619 
//  620     /* Enable the SMARTCARD Error Interrupt: (Frame error, noise error, overrun error) */
//  621     __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_ERR);
//  622 
//  623     /* Enable the SMARTCARD Transmit data register empty Interrupt */
//  624     __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_TXE);
//  625 
//  626     return HAL_OK;
//  627   }
//  628   else
//  629   {
//  630     return HAL_BUSY;
//  631   }
//  632 }
//  633 
//  634 /**
//  635   * @brief  Receives an amount of data in non-blocking mode. 
//  636   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  637   *                the configuration information for the specified SMARTCARD module.
//  638   * @param  pData: Pointer to data buffer
//  639   * @param  Size: Amount of data to be received
//  640   * @retval HAL status
//  641   */
//  642 HAL_StatusTypeDef HAL_SMARTCARD_Receive_IT(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size)
//  643 {
//  644   uint32_t tmp_state = 0;
//  645   
//  646   tmp_state = hsc->State;
//  647   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_TX))
//  648   {
//  649     if((pData == NULL) || (Size == 0))
//  650     {
//  651       return HAL_ERROR;
//  652     }
//  653 
//  654     /* Process Locked */
//  655     __HAL_LOCK(hsc);
//  656 
//  657     hsc->pRxBuffPtr = pData;
//  658     hsc->RxXferSize = Size;
//  659     hsc->RxXferCount = Size;
//  660 
//  661     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  662     /* Check if a non-blocking transmit process is ongoing or not */
//  663     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX) 
//  664     {
//  665       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  666     }
//  667     else
//  668     {
//  669       hsc->State = HAL_SMARTCARD_STATE_BUSY_RX;
//  670     }
//  671 
//  672     /* Process Unlocked */
//  673     __HAL_UNLOCK(hsc);
//  674 
//  675     /* Enable the SMARTCARD Data Register not empty Interrupt */
//  676     __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_RXNE); 
//  677 
//  678     /* Enable the SMARTCARD Parity Error Interrupt */
//  679     __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_PE);
//  680 
//  681     /* Enable the SMARTCARD Error Interrupt: (Frame error, noise error, overrun error) */
//  682     __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_ERR);
//  683 
//  684     return HAL_OK;
//  685   }
//  686   else
//  687   {
//  688     return HAL_BUSY;
//  689   }
//  690 }
//  691 
//  692 /**
//  693   * @brief  Sends an amount of data in non-blocking mode. 
//  694   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  695   *                the configuration information for the specified SMARTCARD module.
//  696   * @param  pData: Pointer to data buffer
//  697   * @param  Size: Amount of data to be sent
//  698   * @retval HAL status
//  699   */
//  700 HAL_StatusTypeDef HAL_SMARTCARD_Transmit_DMA(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size)
//  701 {
//  702   uint32_t *tmp = 0;
//  703   uint32_t tmp_state = 0;
//  704   
//  705   tmp_state = hsc->State;
//  706   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_RX))
//  707   {
//  708     if((pData == NULL) || (Size == 0)) 
//  709     {
//  710       return HAL_ERROR;
//  711     }
//  712 
//  713     /* Process Locked */
//  714     __HAL_LOCK(hsc);
//  715 
//  716     hsc->pTxBuffPtr = pData;
//  717     hsc->TxXferSize = Size;
//  718     hsc->TxXferCount = Size;
//  719 
//  720     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  721     /* Check if a non-blocking receive process is ongoing or not */
//  722     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_RX) 
//  723     {
//  724       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  725     }
//  726     else
//  727     {
//  728       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
//  729     }
//  730 
//  731     /* Set the SMARTCARD DMA transfer complete callback */
//  732     hsc->hdmatx->XferCpltCallback = SMARTCARD_DMATransmitCplt;
//  733 
//  734     /* Set the DMA error callback */
//  735     hsc->hdmatx->XferErrorCallback = SMARTCARD_DMAError;
//  736 
//  737     /* Enable the SMARTCARD transmit DMA channel */
//  738     tmp = (uint32_t*)&pData;
//  739     HAL_DMA_Start_IT(hsc->hdmatx, *(uint32_t*)tmp, (uint32_t)&hsc->Instance->DR, Size);
//  740 
//  741      /* Clear the TC flag in the SR register by writing 0 to it */
//  742     __HAL_SMARTCARD_CLEAR_FLAG(hsc, SMARTCARD_FLAG_TC);
//  743 
//  744     /* Enable the DMA transfer for transmit request by setting the DMAT bit
//  745     in the SMARTCARD CR3 register */
//  746     SET_BIT(hsc->Instance->CR3,USART_CR3_DMAT);
//  747 
//  748     /* Process Unlocked */
//  749     __HAL_UNLOCK(hsc);
//  750 
//  751     return HAL_OK;
//  752   }
//  753   else
//  754   {
//  755     return HAL_BUSY;
//  756   }
//  757 }
//  758 
//  759 /**
//  760   * @brief  Receive an amount of data in non-blocking mode. 
//  761   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  762   *                the configuration information for the specified SMARTCARD module.
//  763   * @param  pData: Pointer to data buffer
//  764   * @param  Size: Amount of data to be received
//  765   * @note   When the SMARTCARD parity is enabled (PCE = 1) the data received contain the parity bit.
//  766   * @retval HAL status
//  767   */
//  768 HAL_StatusTypeDef HAL_SMARTCARD_Receive_DMA(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size)
//  769 {
//  770   uint32_t *tmp = 0;
//  771   uint32_t tmp_state = 0;
//  772   
//  773   tmp_state = hsc->State;
//  774   if((tmp_state == HAL_SMARTCARD_STATE_READY) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_TX))
//  775   {
//  776     if((pData == NULL) || (Size == 0))
//  777     {
//  778       return HAL_ERROR;
//  779     }
//  780 
//  781     /* Process Locked */
//  782     __HAL_LOCK(hsc);
//  783 
//  784     hsc->pRxBuffPtr = pData;
//  785     hsc->RxXferSize = Size;
//  786 
//  787     hsc->ErrorCode = HAL_SMARTCARD_ERROR_NONE;
//  788     /* Check if a non-blocking transmit process is ongoing or not */
//  789     if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX) 
//  790     {
//  791       hsc->State = HAL_SMARTCARD_STATE_BUSY_TX_RX;
//  792     }
//  793     else
//  794     {
//  795       hsc->State = HAL_SMARTCARD_STATE_BUSY_RX;
//  796     }
//  797 
//  798     /* Set the SMARTCARD DMA transfer complete callback */
//  799     hsc->hdmarx->XferCpltCallback = SMARTCARD_DMAReceiveCplt;
//  800 
//  801     /* Set the DMA error callback */
//  802     hsc->hdmarx->XferErrorCallback = SMARTCARD_DMAError;
//  803 
//  804     /* Enable the DMA channel */
//  805     tmp = (uint32_t*)&pData;
//  806     HAL_DMA_Start_IT(hsc->hdmarx, (uint32_t)&hsc->Instance->DR, *(uint32_t*)tmp, Size);
//  807 
//  808     /* Enable the DMA transfer for the receiver request by setting the DMAR bit 
//  809     in the SMARTCARD CR3 register */
//  810     SET_BIT(hsc->Instance->CR3,USART_CR3_DMAR);
//  811 
//  812     /* Process Unlocked */
//  813     __HAL_UNLOCK(hsc);
//  814 
//  815     return HAL_OK;
//  816   }
//  817   else
//  818   {
//  819     return HAL_BUSY;
//  820   }
//  821 }
//  822 
//  823 /**
//  824   * @brief  This function handles SMARTCARD interrupt request.
//  825   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  826   *                the configuration information for the specified SMARTCARD module.
//  827   * @retval None
//  828   */
//  829 void HAL_SMARTCARD_IRQHandler(SMARTCARD_HandleTypeDef *hsc)
//  830 {
//  831   uint32_t  tmp_flag = 0, tmp_it_source = 0;
//  832   
//  833   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_PE);
//  834   tmp_it_source = __HAL_SMARTCARD_GET_IT_SOURCE(hsc, SMARTCARD_IT_PE);
//  835   /* SMARTCARD parity error interrupt occurred -----------------------------------*/
//  836   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  837   {
//  838     hsc->ErrorCode |= HAL_SMARTCARD_ERROR_PE;
//  839   }
//  840 
//  841   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_FE);
//  842   tmp_it_source = __HAL_SMARTCARD_GET_IT_SOURCE(hsc, SMARTCARD_IT_ERR);
//  843   /* SMARTCARD frame error interrupt occurred ------------------------------------*/
//  844   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  845   {
//  846     hsc->ErrorCode |= HAL_SMARTCARD_ERROR_FE;
//  847   }
//  848 
//  849   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_NE);
//  850   /* SMARTCARD noise error interrupt occurred ------------------------------------*/
//  851   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  852   {
//  853     hsc->ErrorCode |= HAL_SMARTCARD_ERROR_NE;
//  854   }
//  855 
//  856   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_ORE);
//  857   /* SMARTCARD Over-Run interrupt occurred ---------------------------------------*/
//  858   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  859   {
//  860     hsc->ErrorCode |= HAL_SMARTCARD_ERROR_ORE;
//  861   }
//  862   
//  863   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_RXNE);
//  864   tmp_it_source = __HAL_SMARTCARD_GET_IT_SOURCE(hsc, SMARTCARD_IT_RXNE);
//  865   /* SMARTCARD in mode Receiver --------------------------------------------------*/
//  866   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  867   {
//  868     SMARTCARD_Receive_IT(hsc);
//  869   }
//  870 
//  871   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_TXE);
//  872   tmp_it_source = __HAL_SMARTCARD_GET_IT_SOURCE(hsc, SMARTCARD_IT_TXE);
//  873   /* SMARTCARD in mode Transmitter -----------------------------------------------*/
//  874   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  875   {
//  876     SMARTCARD_Transmit_IT(hsc);
//  877   }
//  878   
//  879   tmp_flag = __HAL_SMARTCARD_GET_FLAG(hsc, SMARTCARD_FLAG_TC);
//  880   tmp_it_source = __HAL_SMARTCARD_GET_IT_SOURCE(hsc, SMARTCARD_IT_TC);
//  881   /* SMARTCARD in mode Transmitter (transmission end) ------------------------*/
//  882   if((tmp_flag != RESET) && (tmp_it_source != RESET))
//  883   {
//  884     SMARTCARD_EndTransmit_IT(hsc);
//  885   } 
//  886 
//  887   /* Call the Error call Back in case of Errors */
//  888   if(hsc->ErrorCode != HAL_SMARTCARD_ERROR_NONE)
//  889   {
//  890     /* Clear all the error flag at once */
//  891     __HAL_SMARTCARD_CLEAR_PEFLAG(hsc);
//  892 
//  893     /* Set the SMARTCARD state ready to be able to start again the process */
//  894     hsc->State= HAL_SMARTCARD_STATE_READY;
//  895     HAL_SMARTCARD_ErrorCallback(hsc);
//  896   }
//  897 }
//  898 
//  899 /**
//  900   * @brief  Tx Transfer completed callback.
//  901   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  902   *                the configuration information for the specified SMARTCARD module.
//  903   * @retval None
//  904   */
//  905  __weak void HAL_SMARTCARD_TxCpltCallback(SMARTCARD_HandleTypeDef *hsc)
//  906 {
//  907   /* Prevent unused argument(s) compilation warning */
//  908   UNUSED(hsc);
//  909 
//  910   /* NOTE: This function should not be modified, when the callback is needed,
//  911            the HAL_SMARTCARD_TxCpltCallback can be implemented in the user file
//  912    */
//  913 }
//  914 
//  915 /**
//  916   * @brief  Rx Transfer completed callback.
//  917   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  918   *                the configuration information for the specified SMARTCARD module.
//  919   * @retval None
//  920   */
//  921 __weak void HAL_SMARTCARD_RxCpltCallback(SMARTCARD_HandleTypeDef *hsc)
//  922 {
//  923   /* Prevent unused argument(s) compilation warning */
//  924   UNUSED(hsc);
//  925 
//  926   /* NOTE: This function should not be modified, when the callback is needed,
//  927            the HAL_SMARTCARD_RxCpltCallback can be implemented in the user file
//  928    */
//  929 }
//  930 
//  931 /**
//  932   * @brief  SMARTCARD error callback.
//  933   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  934   *                the configuration information for the specified SMARTCARD module.
//  935   * @retval None
//  936   */
//  937  __weak void HAL_SMARTCARD_ErrorCallback(SMARTCARD_HandleTypeDef *hsc)
//  938 {
//  939   /* Prevent unused argument(s) compilation warning */
//  940   UNUSED(hsc);
//  941 
//  942   /* NOTE: This function should not be modified, when the callback is needed,
//  943            the HAL_SMARTCARD_ErrorCallback can be implemented in the user file
//  944    */ 
//  945 }
//  946 
//  947 /**
//  948   * @}
//  949   */
//  950 
//  951 /** @defgroup SMARTCARD_Exported_Functions_Group3 Peripheral State and Errors functions 
//  952   *  @brief   SMARTCARD State and Errors functions 
//  953   *
//  954 @verbatim   
//  955   ==============================================================================
//  956                   ##### Peripheral State and Errors functions #####
//  957   ==============================================================================  
//  958   [..]
//  959     This subsection provides a set of functions allowing to return the State of SmartCard 
//  960     communication process and also return Peripheral Errors occurred during communication process
//  961      (+) HAL_SMARTCARD_GetState() API can be helpful to check in run-time the state 
//  962          of the SMARTCARD peripheral.
//  963      (+) HAL_SMARTCARD_GetError() check in run-time errors that could be occurred during 
//  964          communication.
//  965 
//  966 @endverbatim
//  967   * @{
//  968   */
//  969 
//  970 /**
//  971   * @brief  Returns the SMARTCARD state.
//  972   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  973   *                the configuration information for the specified SMARTCARD module.
//  974   * @retval HAL state
//  975   */
//  976 HAL_SMARTCARD_StateTypeDef HAL_SMARTCARD_GetState(SMARTCARD_HandleTypeDef *hsc)
//  977 {
//  978   return hsc->State;
//  979 }
//  980 
//  981 /**
//  982   * @brief  Return the SMARTCARD error code
//  983   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
//  984   *                the configuration information for the specified SMARTCARD module.
//  985   * @retval SMARTCARD Error Code
//  986   */
//  987 uint32_t HAL_SMARTCARD_GetError(SMARTCARD_HandleTypeDef *hsc)
//  988 {
//  989   return hsc->ErrorCode;
//  990 }
//  991 
//  992 /**
//  993   * @}
//  994   */
//  995   
//  996 /**
//  997   * @}
//  998   */
//  999 
// 1000 /** @defgroup SMARTCARD_Private_Functions   SMARTCARD Private Functions
// 1001   *  @brief   SMARTCARD Private functions 
// 1002   * @{
// 1003   */
// 1004 /**
// 1005   * @brief  DMA SMARTCARD transmit process complete callback. 
// 1006   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1007   *               the configuration information for the specified DMA module.
// 1008   * @retval None
// 1009   */
// 1010 static void SMARTCARD_DMATransmitCplt(DMA_HandleTypeDef *hdma)
// 1011 {
// 1012   SMARTCARD_HandleTypeDef* hsc = ( SMARTCARD_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1013 
// 1014   hsc->TxXferCount = 0;
// 1015 
// 1016   /* Disable the DMA transfer for transmit request by setting the DMAT bit
// 1017      in the SMARTCARD CR3 register */
// 1018   CLEAR_BIT(hsc->Instance->CR3, USART_CR3_DMAT);
// 1019 
// 1020   /* Enable the SMARTCARD Transmit Complete Interrupt */    
// 1021   __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_TC);
// 1022 }
// 1023 
// 1024 /**
// 1025   * @brief  DMA SMARTCARD receive process complete callback. 
// 1026   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1027   *               the configuration information for the specified DMA module.
// 1028   * @retval None
// 1029   */
// 1030 static void SMARTCARD_DMAReceiveCplt(DMA_HandleTypeDef *hdma)   
// 1031 {
// 1032   SMARTCARD_HandleTypeDef* hsc = ( SMARTCARD_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1033 
// 1034   hsc->RxXferCount = 0;
// 1035 
// 1036   /* Disable the DMA transfer for the receiver request by setting the DMAR bit 
// 1037      in the USART CR3 register */
// 1038   CLEAR_BIT(hsc->Instance->CR3, USART_CR3_DMAR);
// 1039 
// 1040   /* Check if a non-blocking transmit process is ongoing or not */
// 1041   if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX_RX) 
// 1042   {
// 1043     hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
// 1044   }
// 1045   else
// 1046   {
// 1047     hsc->State = HAL_SMARTCARD_STATE_READY;
// 1048   }
// 1049 
// 1050   HAL_SMARTCARD_RxCpltCallback(hsc);
// 1051 }
// 1052 
// 1053 /**
// 1054   * @brief  DMA SMARTCARD communication error callback. 
// 1055   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
// 1056   *               the configuration information for the specified DMA module.
// 1057   * @retval None
// 1058   */
// 1059 static void SMARTCARD_DMAError(DMA_HandleTypeDef *hdma)   
// 1060 {
// 1061   SMARTCARD_HandleTypeDef* hsc = ( SMARTCARD_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1062   
// 1063   hsc->RxXferCount = 0;
// 1064   hsc->TxXferCount = 0;
// 1065   hsc->ErrorCode = HAL_SMARTCARD_ERROR_DMA; 
// 1066   hsc->State= HAL_SMARTCARD_STATE_READY;
// 1067   
// 1068   HAL_SMARTCARD_ErrorCallback(hsc);
// 1069 }
// 1070 
// 1071 /**
// 1072   * @brief  This function handles SMARTCARD Communication Timeout.
// 1073   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
// 1074   *                the configuration information for the specified SMARTCARD module.
// 1075   * @param  Flag: specifies the SMARTCARD flag to check.
// 1076   * @param  Status: The new Flag status (SET or RESET).
// 1077   * @param  Timeout: Timeout duration
// 1078   * @retval HAL status
// 1079   */
// 1080 static HAL_StatusTypeDef SMARTCARD_WaitOnFlagUntilTimeout(SMARTCARD_HandleTypeDef *hsc, uint32_t Flag, FlagStatus Status, uint32_t Timeout)
// 1081 {
// 1082   uint32_t tickstart = 0;
// 1083 
// 1084   /* Get tick */ 
// 1085   tickstart = HAL_GetTick();
// 1086 
// 1087   /* Wait until flag is set */
// 1088   if(Status == RESET)
// 1089   {
// 1090     while(__HAL_SMARTCARD_GET_FLAG(hsc, Flag) == RESET)
// 1091     {
// 1092       /* Check for the Timeout */
// 1093       if(Timeout != HAL_MAX_DELAY)
// 1094       {
// 1095         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1096         {
// 1097           /* Disable TXE and RXNE interrupts for the interrupt process */
// 1098           __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_TXE);
// 1099           __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_RXNE);
// 1100 
// 1101           hsc->State= HAL_SMARTCARD_STATE_READY;
// 1102 
// 1103           /* Process Unlocked */
// 1104           __HAL_UNLOCK(hsc);
// 1105 
// 1106           return HAL_TIMEOUT;
// 1107         }
// 1108       }
// 1109     }
// 1110   }
// 1111   else
// 1112   {
// 1113     while(__HAL_SMARTCARD_GET_FLAG(hsc, Flag) != RESET)
// 1114     {
// 1115       /* Check for the Timeout */
// 1116       if(Timeout != HAL_MAX_DELAY)
// 1117       {
// 1118         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1119         {
// 1120           /* Disable TXE and RXNE interrupts for the interrupt process */
// 1121           __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_TXE);
// 1122           __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_RXNE);
// 1123 
// 1124           hsc->State= HAL_SMARTCARD_STATE_READY;
// 1125 
// 1126           /* Process Unlocked */
// 1127           __HAL_UNLOCK(hsc);
// 1128         
// 1129           return HAL_TIMEOUT;
// 1130         }
// 1131       }
// 1132     }
// 1133   }
// 1134   return HAL_OK;
// 1135 }
// 1136 
// 1137 /**
// 1138   * @brief  Send an amount of data in non-blocking mode. 
// 1139   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
// 1140   *                the configuration information for the specified SMARTCARD module.
// 1141   *         Function called under interruption only, once
// 1142   *         interruptions have been enabled by HAL_SMARTCARD_Transmit_IT()      
// 1143   * @retval HAL status
// 1144   */
// 1145 static HAL_StatusTypeDef SMARTCARD_Transmit_IT(SMARTCARD_HandleTypeDef *hsc)
// 1146 {
// 1147   uint32_t tmp_state = 0;
// 1148 
// 1149   tmp_state = hsc->State;
// 1150   if((tmp_state == HAL_SMARTCARD_STATE_BUSY_TX) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_TX_RX))
// 1151   {
// 1152     WRITE_REG(hsc->Instance->DR, (*hsc->pTxBuffPtr++ & (uint8_t)0xFF));
// 1153     
// 1154     if(--hsc->TxXferCount == 0)
// 1155     {
// 1156       /* Disable the SMARTCARD Transmit Data Register Empty Interrupt */
// 1157       __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_TXE);
// 1158 
// 1159       /* Enable the SMARTCARD Transmit Complete Interrupt */    
// 1160       __HAL_SMARTCARD_ENABLE_IT(hsc, SMARTCARD_IT_TC);
// 1161     }
// 1162     
// 1163     return HAL_OK;
// 1164   }
// 1165   else
// 1166   {
// 1167     return HAL_BUSY;
// 1168   }
// 1169 }
// 1170 
// 1171 
// 1172 /**
// 1173   * @brief  Wraps up transmission in non blocking mode.
// 1174   * @param  hsmartcard: pointer to a SMARTCARD_HandleTypeDef structure that contains
// 1175   *                the configuration information for the specified SMARTCARD module.
// 1176   * @retval HAL status
// 1177   */
// 1178 static HAL_StatusTypeDef SMARTCARD_EndTransmit_IT(SMARTCARD_HandleTypeDef *hsmartcard)
// 1179 {
// 1180   /* Disable the SMARTCARD Transmit Complete Interrupt */    
// 1181   __HAL_SMARTCARD_DISABLE_IT(hsmartcard, SMARTCARD_IT_TC);
// 1182   
// 1183   /* Check if a receive process is ongoing or not */
// 1184   if(hsmartcard->State == HAL_SMARTCARD_STATE_BUSY_TX_RX) 
// 1185   {
// 1186     hsmartcard->State = HAL_SMARTCARD_STATE_BUSY_RX;
// 1187   }
// 1188   else
// 1189   {
// 1190     /* Disable the SMARTCARD Error Interrupt: (Frame error, noise error, overrun error) */
// 1191     __HAL_SMARTCARD_DISABLE_IT(hsmartcard, SMARTCARD_IT_ERR);
// 1192     
// 1193     hsmartcard->State = HAL_SMARTCARD_STATE_READY;
// 1194   }
// 1195   
// 1196   HAL_SMARTCARD_TxCpltCallback(hsmartcard);
// 1197   
// 1198   return HAL_OK;
// 1199 }
// 1200 
// 1201 
// 1202 /**
// 1203   * @brief  Receive an amount of data in non-blocking mode. 
// 1204   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
// 1205   *                the configuration information for the specified SMARTCARD module.
// 1206   * @retval HAL status
// 1207   */
// 1208 static HAL_StatusTypeDef SMARTCARD_Receive_IT(SMARTCARD_HandleTypeDef *hsc)
// 1209 {
// 1210   uint32_t tmp_state = 0;
// 1211 
// 1212   tmp_state = hsc->State;
// 1213   if((tmp_state == HAL_SMARTCARD_STATE_BUSY_RX) || (tmp_state == HAL_SMARTCARD_STATE_BUSY_TX_RX))
// 1214   {
// 1215     *hsc->pRxBuffPtr++ = (uint8_t)(hsc->Instance->DR & (uint8_t)0xFF);
// 1216     
// 1217     if(--hsc->RxXferCount == 0)
// 1218     {
// 1219       __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_RXNE);
// 1220       
// 1221       /* Disable the SMARTCARD Parity Error Interrupt */
// 1222       __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_PE);
// 1223 
// 1224       /* Disable the SMARTCARD Error Interrupt: (Frame error, noise error, overrun error) */
// 1225       __HAL_SMARTCARD_DISABLE_IT(hsc, SMARTCARD_IT_ERR);
// 1226 
// 1227       /* Check if a non-blocking transmit process is ongoing or not */
// 1228       if(hsc->State == HAL_SMARTCARD_STATE_BUSY_TX_RX) 
// 1229       {
// 1230         hsc->State = HAL_SMARTCARD_STATE_BUSY_TX;
// 1231       }
// 1232       else
// 1233       {
// 1234         hsc->State = HAL_SMARTCARD_STATE_READY;
// 1235       }
// 1236 
// 1237       HAL_SMARTCARD_RxCpltCallback(hsc);
// 1238 
// 1239       return HAL_OK;
// 1240     }
// 1241     return HAL_OK;
// 1242   }
// 1243   else
// 1244   {
// 1245     return HAL_BUSY; 
// 1246   }
// 1247 }
// 1248 
// 1249 /**
// 1250   * @brief  Configures the SMARTCARD peripheral. 
// 1251   * @param  hsc: Pointer to a SMARTCARD_HandleTypeDef structure that contains
// 1252   *                the configuration information for the specified SMARTCARD module.
// 1253   * @retval None
// 1254   */
// 1255 static void SMARTCARD_SetConfig(SMARTCARD_HandleTypeDef *hsc)
// 1256 {
// 1257   /* Check the parameters */
// 1258   assert_param(IS_SMARTCARD_POLARITY(hsc->Init.CLKPolarity));
// 1259   assert_param(IS_SMARTCARD_PHASE(hsc->Init.CLKPhase));
// 1260   assert_param(IS_SMARTCARD_LASTBIT(hsc->Init.CLKLastBit));
// 1261   assert_param(IS_SMARTCARD_BAUDRATE(hsc->Init.BaudRate));  
// 1262   assert_param(IS_SMARTCARD_WORD_LENGTH(hsc->Init.WordLength));
// 1263   assert_param(IS_SMARTCARD_STOPBITS(hsc->Init.StopBits));
// 1264   assert_param(IS_SMARTCARD_PARITY(hsc->Init.Parity));
// 1265   assert_param(IS_SMARTCARD_MODE(hsc->Init.Mode));
// 1266   assert_param(IS_SMARTCARD_NACK_STATE(hsc->Init.NACKState));
// 1267 
// 1268   /* The LBCL, CPOL and CPHA bits have to be selected when both the transmitter and the
// 1269      receiver are disabled (TE=RE=0) to ensure that the clock pulses function correctly. */
// 1270   CLEAR_BIT(hsc->Instance->CR1, (uint32_t)(USART_CR1_TE | USART_CR1_RE));
// 1271   
// 1272   /*------ SMARTCARD-associated USART registers setting : CR2 Configuration ------*/
// 1273   /* Clear CLKEN, CPOL, CPHA and LBCL bits */
// 1274   /* Configure the SMARTCARD Clock, CPOL, CPHA and LastBit -----------------------*/
// 1275   /* Set CPOL bit according to hsc->Init.CLKPolarity value */
// 1276   /* Set CPHA bit according to hsc->Init.CLKPhase value */
// 1277   /* Set LBCL bit according to hsc->Init.CLKLastBit value */
// 1278   MODIFY_REG(hsc->Instance->CR2, 
// 1279              ((uint32_t)(USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_CLKEN | USART_CR2_LBCL)),
// 1280              ((uint32_t)(USART_CR2_CLKEN | hsc->Init.CLKPolarity | hsc->Init.CLKPhase| hsc->Init.CLKLastBit)) );
// 1281   
// 1282   /* Set Stop Bits: Set STOP[13:12] bits according to hsc->Init.StopBits value */
// 1283   MODIFY_REG(hsc->Instance->CR2, USART_CR2_STOP,(uint32_t)(hsc->Init.StopBits));
// 1284 
// 1285   /*------ SMARTCARD-associated USART registers setting : CR1 Configuration ------*/
// 1286   /* Clear M, PCE, PS, TE and RE bits */
// 1287   /* Configure the SMARTCARD Word Length, Parity and mode: 
// 1288      Set the M according to hsc->Init.WordLength value (forced to 1 as 9B data frame should be selected)
// 1289      Set PCE and PS bits according to hsc->Init.Parity value (PCE bit forced to 1 as parity control should always be enabled)
// 1290      Set TE and RE bits according to hsc->Init.Mode value */
// 1291   MODIFY_REG(hsc->Instance->CR1, 
// 1292              ((uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE)),
// 1293              ((uint32_t)(USART_CR1_M | USART_CR1_PCE | hsc->Init.Parity | hsc->Init.Mode)) );
// 1294 
// 1295   /*------ SMARTCARD-associated USART registers setting : CR3 Configuration ------*/
// 1296   /* Clear CTSE and RTSE bits */
// 1297   CLEAR_BIT(hsc->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE));
// 1298 
// 1299   /*------ SMARTCARD-associated USART registers setting : BRR Configuration ------*/
// 1300   if(hsc->Instance == USART1)
// 1301   {
// 1302     hsc->Instance->BRR = SMARTCARD_BRR(HAL_RCC_GetPCLK2Freq(), hsc->Init.BaudRate);
// 1303   }
// 1304   else
// 1305   {
// 1306     hsc->Instance->BRR = SMARTCARD_BRR(HAL_RCC_GetPCLK1Freq(), hsc->Init.BaudRate);
// 1307   }
// 1308 }
// 1309 
// 1310 /**
// 1311   * @}
// 1312   */
// 1313 
// 1314 #endif /* HAL_SMARTCARD_MODULE_ENABLED */
// 1315 /**
// 1316   * @}
// 1317   */
// 1318 
// 1319 /**
// 1320   * @}
// 1321   */
// 1322 
// 1323 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
