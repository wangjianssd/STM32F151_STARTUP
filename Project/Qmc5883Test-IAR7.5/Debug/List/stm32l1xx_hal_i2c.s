///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2c.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2c.c
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
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_i2c.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_DMA_Abort_IT
        EXTERN HAL_DMA_Start_IT
        EXTERN HAL_GetTick
        EXTERN HAL_RCC_GetPCLK1Freq
        EXTERN SystemCoreClock

        PUBWEAK HAL_I2C_AbortCpltCallback
        PUBWEAK HAL_I2C_AddrCallback
        PUBLIC HAL_I2C_DeInit
        PUBLIC HAL_I2C_DisableListen_IT
        PUBLIC HAL_I2C_ER_IRQHandler
        PUBLIC HAL_I2C_EV_IRQHandler
        PUBLIC HAL_I2C_EnableListen_IT
        PUBWEAK HAL_I2C_ErrorCallback
        PUBLIC HAL_I2C_GetError
        PUBLIC HAL_I2C_GetMode
        PUBLIC HAL_I2C_GetState
        PUBLIC HAL_I2C_Init
        PUBLIC HAL_I2C_IsDeviceReady
        PUBWEAK HAL_I2C_ListenCpltCallback
        PUBWEAK HAL_I2C_MasterRxCpltCallback
        PUBWEAK HAL_I2C_MasterTxCpltCallback
        PUBLIC HAL_I2C_Master_Abort_IT
        PUBLIC HAL_I2C_Master_Receive
        PUBLIC HAL_I2C_Master_Receive_DMA
        PUBLIC HAL_I2C_Master_Receive_IT
        PUBLIC HAL_I2C_Master_Sequential_Receive_IT
        PUBLIC HAL_I2C_Master_Sequential_Transmit_IT
        PUBLIC HAL_I2C_Master_Transmit
        PUBLIC HAL_I2C_Master_Transmit_DMA
        PUBLIC HAL_I2C_Master_Transmit_IT
        PUBWEAK HAL_I2C_MemRxCpltCallback
        PUBWEAK HAL_I2C_MemTxCpltCallback
        PUBLIC HAL_I2C_Mem_Read
        PUBLIC HAL_I2C_Mem_Read_DMA
        PUBLIC HAL_I2C_Mem_Read_IT
        PUBLIC HAL_I2C_Mem_Write
        PUBLIC HAL_I2C_Mem_Write_DMA
        PUBLIC HAL_I2C_Mem_Write_IT
        PUBWEAK HAL_I2C_MspDeInit
        PUBWEAK HAL_I2C_MspInit
        PUBWEAK HAL_I2C_SlaveRxCpltCallback
        PUBWEAK HAL_I2C_SlaveTxCpltCallback
        PUBLIC HAL_I2C_Slave_Receive
        PUBLIC HAL_I2C_Slave_Receive_DMA
        PUBLIC HAL_I2C_Slave_Receive_IT
        PUBLIC HAL_I2C_Slave_Sequential_Receive_IT
        PUBLIC HAL_I2C_Slave_Sequential_Transmit_IT
        PUBLIC HAL_I2C_Slave_Transmit
        PUBLIC HAL_I2C_Slave_Transmit_DMA
        PUBLIC HAL_I2C_Slave_Transmit_IT
        
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
        
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2c.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_i2c.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   I2C HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Inter Integrated Circuit (I2C) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral State, Mode and Error functions
//   13   *         
//   14   @verbatim
//   15   ==============================================================================
//   16                         ##### How to use this driver #####
//   17   ==============================================================================
//   18     [..]
//   19     The I2C HAL driver can be used as follows:
//   20     
//   21     (#) Declare a I2C_HandleTypeDef handle structure, for example:
//   22         I2C_HandleTypeDef  hi2c; 
//   23 
//   24     (#)Initialize the I2C low level resources by implementing the HAL_I2C_MspInit() API:
//   25         (##) Enable the I2Cx interface clock
//   26         (##) I2C pins configuration
//   27             (+++) Enable the clock for the I2C GPIOs
//   28             (+++) Configure I2C pins as alternate function open-drain
//   29         (##) NVIC configuration if you need to use interrupt process
//   30             (+++) Configure the I2Cx interrupt priority
//   31             (+++) Enable the NVIC I2C IRQ Channel
//   32         (##) DMA Configuration if you need to use DMA process
//   33             (+++) Declare a DMA_HandleTypeDef handle structure for the transmit or receive channel
//   34             (+++) Enable the DMAx interface clock using
//   35             (+++) Configure the DMA handle parameters
//   36             (+++) Configure the DMA Tx or Rx channel
//   37             (+++) Associate the initialized DMA handle to the hi2c DMA Tx or Rx handle
//   38             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on 
//   39                   the DMA Tx or Rx channel
//   40 
//   41     (#) Configure the Communication Speed, Duty cycle, Addressing mode, Own Address1,
//   42         Dual Addressing mode, Own Address2, General call and Nostretch mode in the hi2c Init structure.
//   43 
//   44     (#) Initialize the I2C registers by calling the HAL_I2C_Init(), configures also the low level Hardware 
//   45         (GPIO, CLOCK, NVIC...etc) by calling the customized HAL_I2C_MspInit(&hi2c) API.
//   46 
//   47     (#) To check if target device is ready for communication, use the function HAL_I2C_IsDeviceReady()
//   48 
//   49     (#) For I2C IO and IO MEM operations, three operation modes are available within this driver :
//   50 
//   51     *** Polling mode IO operation ***
//   52     =================================
//   53     [..]
//   54       (+) Transmit in master mode an amount of data in blocking mode using HAL_I2C_Master_Transmit()
//   55       (+) Receive in master mode an amount of data in blocking mode using HAL_I2C_Master_Receive()
//   56       (+) Transmit in slave mode an amount of data in blocking mode using HAL_I2C_Slave_Transmit()
//   57       (+) Receive in slave mode an amount of data in blocking mode using HAL_I2C_Slave_Receive()
//   58 
//   59     *** Polling mode IO MEM operation ***
//   60     =====================================
//   61     [..]
//   62       (+) Write an amount of data in blocking mode to a specific memory address using HAL_I2C_Mem_Write()
//   63       (+) Read an amount of data in blocking mode from a specific memory address using HAL_I2C_Mem_Read()
//   64 
//   65 
//   66     *** Interrupt mode IO operation ***
//   67     ===================================
//   68     [..]
//   69       (+) Transmit in master mode an amount of data in non-blocking mode using HAL_I2C_Master_Transmit_IT()
//   70       (+) At transmission end of transfer, HAL_I2C_MasterTxCpltCallback() is executed and user can
//   71            add his own code by customization of function pointer HAL_I2C_MasterTxCpltCallback()
//   72       (+) Receive in master mode an amount of data in non-blocking mode using HAL_I2C_Master_Receive_IT()
//   73       (+) At reception end of transfer, HAL_I2C_MasterRxCpltCallback() is executed and user can
//   74            add his own code by customization of function pointer HAL_I2C_MasterRxCpltCallback()
//   75       (+) Transmit in slave mode an amount of data in non-blocking mode using HAL_I2C_Slave_Transmit_IT()
//   76       (+) At transmission end of transfer, HAL_I2C_SlaveTxCpltCallback() is executed and user can
//   77            add his own code by customization of function pointer HAL_I2C_SlaveTxCpltCallback()
//   78       (+) Receive in slave mode an amount of data in non-blocking mode using HAL_I2C_Slave_Receive_IT()
//   79       (+) At reception end of transfer, HAL_I2C_SlaveRxCpltCallback() is executed and user can
//   80            add his own code by customization of function pointer HAL_I2C_SlaveRxCpltCallback()
//   81       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
//   82            add his own code by customization of function pointer HAL_I2C_ErrorCallback()
//   83       (+) Abort a master I2C process communication with Interrupt using HAL_I2C_Master_Abort_IT()
//   84       (+) End of abort process, HAL_I2C_AbortCpltCallback() is executed and user can
//   85            add his own code by customization of function pointer HAL_I2C_AbortCpltCallback()
//   86       (+) Discard a slave I2C process communication using __HAL_I2C_GENERATE_NACK() macro.
//   87            This action will inform Master to generate a Stop condition to discard the communication.
//   88 
//   89 
//   90     *** Interrupt mode IO sequential operation ***
//   91     ==============================================
//   92     [..]
//   93       (@) These interfaces allow to manage a sequential transfer with a repeated start condition
//   94           when a direction change during transfer
//   95     [..]
//   96       (+) A specific option field manage the different steps of a sequential transfer
//   97       (+) Option field values are defined through @ref I2C_XFEROPTIONS and are listed below:
//   98       (++) I2C_FIRST_AND_LAST_FRAME: No sequential usage, functionnal is same as associated interfaces in no sequential mode 
//   99       (++) I2C_FIRST_FRAME: Sequential usage, this option allow to manage a sequence with start condition, address
//  100                             and data to transfer without a final stop condition
//  101       (++) I2C_NEXT_FRAME: Sequential usage, this option allow to manage a sequence with a restart condition, address
//  102                             and with new data to transfer if the direction change or manage only the new data to transfer
//  103                             if no direction change and without a final stop condition in both cases
//  104       (++) I2C_LAST_FRAME: Sequential usage, this option allow to manage a sequance with a restart condition, address
//  105                             and with new data to transfer if the direction change or manage only the new data to transfer
//  106                             if no direction change and with a final stop condition in both cases
//  107 
//  108       (+) Differents sequential I2C interfaces are listed below:
//  109       (++) Sequential transmit in master I2C mode an amount of data in non-blocking mode using HAL_I2C_Master_Sequential_Transmit_IT()
//  110       (+++) At transmission end of current frame transfer, HAL_I2C_MasterTxCpltCallback() is executed and user can
//  111            add his own code by customization of function pointer HAL_I2C_MasterTxCpltCallback()
//  112       (++) Sequential receive in master I2C mode an amount of data in non-blocking mode using HAL_I2C_Master_Sequential_Receive_IT()
//  113       (+++) At reception end of current frame transfer, HAL_I2C_MasterRxCpltCallback() is executed and user can
//  114            add his own code by customization of function pointer HAL_I2C_MasterRxCpltCallback()
//  115       (++) Abort a master I2C process communication with Interrupt using HAL_I2C_Master_Abort_IT()
//  116       (+++) End of abort process, HAL_I2C_AbortCpltCallback() is executed and user can
//  117            add his own code by customization of function pointer HAL_I2C_AbortCpltCallback()
//  118       (++) Enable/disable the Address listen mode in slave I2C mode using HAL_I2C_EnableListen_IT() HAL_I2C_DisableListen_IT()
//  119       (+++) When address slave I2C match, HAL_I2C_AddrCallback() is executed and user can
//  120            add his own code to check the Address Match Code and the transmission direction request by master (Write/Read).
//  121       (+++) At Listen mode end HAL_I2C_ListenCpltCallback() is executed and user can
//  122            add his own code by customization of function pointer HAL_I2C_ListenCpltCallback()
//  123       (++) Sequential transmit in slave I2C mode an amount of data in non-blocking mode using HAL_I2C_Slave_Sequential_Transmit_IT()
//  124       (+++) At transmission end of current frame transfer, HAL_I2C_SlaveTxCpltCallback() is executed and user can
//  125            add his own code by customization of function pointer HAL_I2C_SlaveTxCpltCallback()
//  126       (++) Sequential receive in slave I2C mode an amount of data in non-blocking mode using HAL_I2C_Slave_Sequential_Receive_IT()
//  127       (+++) At reception end of current frame transfer, HAL_I2C_SlaveRxCpltCallback() is executed and user can
//  128            add his own code by customization of function pointer HAL_I2C_SlaveRxCpltCallback()
//  129       (++) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
//  130            add his own code by customization of function pointer HAL_I2C_ErrorCallback()
//  131       (++) Abort a master I2C process communication with Interrupt using HAL_I2C_Master_Abort_IT()
//  132       (++) End of abort process, HAL_I2C_AbortCpltCallback() is executed and user can
//  133            add his own code by customization of function pointer HAL_I2C_AbortCpltCallback()
//  134       (++) Discard a slave I2C process communication using __HAL_I2C_GENERATE_NACK() macro.
//  135            This action will inform Master to generate a Stop condition to discard the communication.
//  136 
//  137     *** Interrupt mode IO MEM operation ***
//  138     =======================================
//  139     [..]
//  140       (+) Write an amount of data in non-blocking mode with Interrupt to a specific memory address using
//  141           HAL_I2C_Mem_Write_IT()
//  142       (+) At Memory end of write transfer, HAL_I2C_MemTxCpltCallback() is executed and user can
//  143            add his own code by customization of function pointer HAL_I2C_MemTxCpltCallback()
//  144       (+) Read an amount of data in non-blocking mode with Interrupt from a specific memory address using
//  145           HAL_I2C_Mem_Read_IT()
//  146       (+) At Memory end of read transfer, HAL_I2C_MemRxCpltCallback() is executed and user can
//  147            add his own code by customization of function pointer HAL_I2C_MemRxCpltCallback()
//  148       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
//  149            add his own code by customization of function pointer HAL_I2C_ErrorCallback()
//  150 
//  151     *** DMA mode IO operation ***
//  152     ==============================
//  153     [..]
//  154       (+) Transmit in master mode an amount of data in non-blocking mode (DMA) using
//  155           HAL_I2C_Master_Transmit_DMA()
//  156       (+) At transmission end of transfer, HAL_I2C_MasterTxCpltCallback() is executed and user can
//  157            add his own code by customization of function pointer HAL_I2C_MasterTxCpltCallback()
//  158       (+) Receive in master mode an amount of data in non-blocking mode (DMA) using
//  159           HAL_I2C_Master_Receive_DMA()
//  160       (+) At reception end of transfer, HAL_I2C_MasterRxCpltCallback() is executed and user can
//  161            add his own code by customization of function pointer HAL_I2C_MasterRxCpltCallback()
//  162       (+) Transmit in slave mode an amount of data in non-blocking mode (DMA) using
//  163           HAL_I2C_Slave_Transmit_DMA()
//  164       (+) At transmission end of transfer, HAL_I2C_SlaveTxCpltCallback() is executed and user can
//  165            add his own code by customization of function pointer HAL_I2C_SlaveTxCpltCallback()
//  166       (+) Receive in slave mode an amount of data in non-blocking mode (DMA) using
//  167           HAL_I2C_Slave_Receive_DMA()
//  168       (+) At reception end of transfer, HAL_I2C_SlaveRxCpltCallback() is executed and user can
//  169            add his own code by customization of function pointer HAL_I2C_SlaveRxCpltCallback()
//  170       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
//  171            add his own code by customization of function pointer HAL_I2C_ErrorCallback()
//  172       (+) Abort a master I2C process communication with Interrupt using HAL_I2C_Master_Abort_IT()
//  173       (+) End of abort process, HAL_I2C_AbortCpltCallback() is executed and user can
//  174            add his own code by customization of function pointer HAL_I2C_AbortCpltCallback()
//  175       (+) Discard a slave I2C process communication using __HAL_I2C_GENERATE_NACK() macro.
//  176            This action will inform Master to generate a Stop condition to discard the communication.
//  177 
//  178     *** DMA mode IO MEM operation ***
//  179     =================================
//  180     [..]
//  181       (+) Write an amount of data in non-blocking mode with DMA to a specific memory address using
//  182           HAL_I2C_Mem_Write_DMA()
//  183       (+) At Memory end of write transfer, HAL_I2C_MemTxCpltCallback() is executed and user can
//  184            add his own code by customization of function pointer HAL_I2C_MemTxCpltCallback()
//  185       (+) Read an amount of data in non-blocking mode with DMA from a specific memory address using
//  186           HAL_I2C_Mem_Read_DMA()
//  187       (+) At Memory end of read transfer, HAL_I2C_MemRxCpltCallback() is executed and user can
//  188            add his own code by customization of function pointer HAL_I2C_MemRxCpltCallback()
//  189       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
//  190            add his own code by customization of function pointer HAL_I2C_ErrorCallback()
//  191 
//  192 
//  193      *** I2C HAL driver macros list ***
//  194      ==================================
//  195      [..]
//  196        Below the list of most used macros in I2C HAL driver.
//  197 
//  198       (+) __HAL_I2C_ENABLE:        Enable the I2C peripheral
//  199       (+) __HAL_I2C_DISABLE:       Disable the I2C peripheral
//  200       (+) __HAL_I2C_GENERATE_NACK: Generate a Non-Acknowledge I2C peripheral in Slave mode
//  201       (+) __HAL_I2C_GET_FLAG:      Check whether the specified I2C flag is set or not
//  202       (+) __HAL_I2C_CLEAR_FLAG:    Clear the specified I2C pending flag
//  203       (+) __HAL_I2C_ENABLE_IT:     Enable the specified I2C interrupt
//  204       (+) __HAL_I2C_DISABLE_IT:    Disable the specified I2C interrupt
//  205 
//  206      [..]
//  207        (@) You can refer to the I2C HAL driver header file for more useful macros
//  208 
//  209 
//  210   @endverbatim
//  211   ******************************************************************************
//  212   * @attention
//  213   *
//  214   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  215   *
//  216   * Redistribution and use in source and binary forms, with or without modification,
//  217   * are permitted provided that the following conditions are met:
//  218   *   1. Redistributions of source code must retain the above copyright notice,
//  219   *      this list of conditions and the following disclaimer.
//  220   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  221   *      this list of conditions and the following disclaimer in the documentation
//  222   *      and/or other materials provided with the distribution.
//  223   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  224   *      may be used to endorse or promote products derived from this software
//  225   *      without specific prior written permission.
//  226   *
//  227   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  228   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  229   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  230   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  231   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  232   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  233   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  234   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  235   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  236   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  237   *
//  238   ******************************************************************************  
//  239   */
//  240 
//  241 /* Includes ------------------------------------------------------------------*/
//  242 #include "stm32l1xx_hal.h"
//  243 
//  244 /** @addtogroup STM32L1xx_HAL_Driver
//  245   * @{
//  246   */
//  247 
//  248 /** @defgroup I2C I2C
//  249   * @brief I2C HAL module driver
//  250   * @{
//  251   */
//  252 
//  253 #ifdef HAL_I2C_MODULE_ENABLED
//  254 
//  255 /* Private typedef -----------------------------------------------------------*/
//  256 /* Private define ------------------------------------------------------------*/
//  257 /** @defgroup I2C_Private_Define I2C Private Define
//  258   * @{
//  259   */
//  260 #define I2C_TIMEOUT_FLAG          ((uint32_t)35U)         /*!< Timeout 35 ms             */
//  261 #define I2C_TIMEOUT_ADDR_SLAVE    ((uint32_t)10000U)      /*!< Timeout 10 s              */
//  262 #define I2C_TIMEOUT_BUSY_FLAG     ((uint32_t)25U)         /*!< Timeout 25 ms             */
//  263 #define I2C_NO_OPTION_FRAME       ((uint32_t)0xFFFF0000U) /*!< XferOptions default value */
//  264 
//  265 #define I2C_MIN_PCLK_FREQ         ((uint32_t)2000000U)    /*!< 2 MHz                     */
//  266 
//  267 /* Private define for @ref PreviousState usage */
//  268 #define I2C_STATE_MSK             ((uint32_t)((HAL_I2C_STATE_BUSY_TX | HAL_I2C_STATE_BUSY_RX) & (~(uint32_t)HAL_I2C_STATE_READY))) /*!< Mask State define, keep only RX and TX bits            */
//  269 #define I2C_STATE_NONE            ((uint32_t)(HAL_I2C_MODE_NONE))                                                        /*!< Default Value                                          */
//  270 #define I2C_STATE_MASTER_BUSY_TX  ((uint32_t)((HAL_I2C_STATE_BUSY_TX & I2C_STATE_MSK) | HAL_I2C_MODE_MASTER))            /*!< Master Busy TX, combinaison of State LSB and Mode enum */
//  271 #define I2C_STATE_MASTER_BUSY_RX  ((uint32_t)((HAL_I2C_STATE_BUSY_RX & I2C_STATE_MSK) | HAL_I2C_MODE_MASTER))            /*!< Master Busy RX, combinaison of State LSB and Mode enum */
//  272 #define I2C_STATE_SLAVE_BUSY_TX   ((uint32_t)((HAL_I2C_STATE_BUSY_TX & I2C_STATE_MSK) | HAL_I2C_MODE_SLAVE))             /*!< Slave Busy TX, combinaison of State LSB and Mode enum  */
//  273 #define I2C_STATE_SLAVE_BUSY_RX   ((uint32_t)((HAL_I2C_STATE_BUSY_RX & I2C_STATE_MSK) | HAL_I2C_MODE_SLAVE))             /*!< Slave Busy RX, combinaison of State LSB and Mode enum  */
//  274 
//  275 /**
//  276   * @}
//  277   */
//  278 
//  279 /* Private macro -------------------------------------------------------------*/
//  280 /* Private variables ---------------------------------------------------------*/
//  281 /* Private function prototypes -----------------------------------------------*/
//  282 /** @defgroup I2C_Private_Functions I2C Private Functions
//  283   * @{
//  284   */
//  285 /* Private functions to handle DMA transfer */
//  286 static void I2C_DMAXferCplt(DMA_HandleTypeDef *hdma);
//  287 static void I2C_DMAError(DMA_HandleTypeDef *hdma);
//  288 static void I2C_DMAAbort(DMA_HandleTypeDef *hdma);
//  289 
//  290 static void I2C_ITError(I2C_HandleTypeDef *hi2c);
//  291 
//  292 static HAL_StatusTypeDef I2C_MasterRequestWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Timeout, uint32_t Tickstart);
//  293 static HAL_StatusTypeDef I2C_MasterRequestRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Timeout, uint32_t Tickstart);
//  294 static HAL_StatusTypeDef I2C_RequestMemoryWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint32_t Timeout, uint32_t Tickstart);
//  295 static HAL_StatusTypeDef I2C_RequestMemoryRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint32_t Timeout, uint32_t Tickstart);
//  296 static HAL_StatusTypeDef I2C_WaitOnFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, FlagStatus Status, uint32_t Timeout, uint32_t Tickstart);
//  297 static HAL_StatusTypeDef I2C_WaitOnMasterAddressFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, uint32_t Timeout, uint32_t Tickstart);
//  298 static HAL_StatusTypeDef I2C_WaitOnTXEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart);
//  299 static HAL_StatusTypeDef I2C_WaitOnBTFFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart);
//  300 static HAL_StatusTypeDef I2C_WaitOnRXNEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart);
//  301 static HAL_StatusTypeDef I2C_WaitOnSTOPFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart);
//  302 static HAL_StatusTypeDef I2C_IsAcknowledgeFailed(I2C_HandleTypeDef *hi2c);
//  303 
//  304 /* Private functions for I2C transfer IRQ handler */
//  305 static HAL_StatusTypeDef I2C_MasterTransmit_TXE(I2C_HandleTypeDef *hi2c);
//  306 static HAL_StatusTypeDef I2C_MasterTransmit_BTF(I2C_HandleTypeDef *hi2c);
//  307 static HAL_StatusTypeDef I2C_MasterReceive_RXNE(I2C_HandleTypeDef *hi2c);
//  308 static HAL_StatusTypeDef I2C_MasterReceive_BTF(I2C_HandleTypeDef *hi2c);
//  309 static HAL_StatusTypeDef I2C_Master_SB(I2C_HandleTypeDef *hi2c);
//  310 static HAL_StatusTypeDef I2C_Master_ADD10(I2C_HandleTypeDef *hi2c);
//  311 static HAL_StatusTypeDef I2C_Master_ADDR(I2C_HandleTypeDef *hi2c);
//  312 
//  313 static HAL_StatusTypeDef I2C_SlaveTransmit_TXE(I2C_HandleTypeDef *hi2c);
//  314 static HAL_StatusTypeDef I2C_SlaveTransmit_BTF(I2C_HandleTypeDef *hi2c);
//  315 static HAL_StatusTypeDef I2C_SlaveReceive_RXNE(I2C_HandleTypeDef *hi2c);
//  316 static HAL_StatusTypeDef I2C_SlaveReceive_BTF(I2C_HandleTypeDef *hi2c);
//  317 static HAL_StatusTypeDef I2C_Slave_ADDR(I2C_HandleTypeDef *hi2c);
//  318 static HAL_StatusTypeDef I2C_Slave_STOPF(I2C_HandleTypeDef *hi2c);
//  319 static HAL_StatusTypeDef I2C_Slave_AF(I2C_HandleTypeDef *hi2c);
//  320 /**
//  321   * @}
//  322   */
//  323 
//  324 /* Exported functions --------------------------------------------------------*/
//  325 /** @defgroup I2C_Exported_Functions I2C Exported Functions
//  326   * @{
//  327   */
//  328 
//  329 /** @defgroup I2C_Exported_Functions_Group1 Initialization and de-initialization functions
//  330  *  @brief    Initialization and Configuration functions 
//  331  *
//  332 @verbatim    
//  333  ===============================================================================
//  334               ##### Initialization and de-initialization functions #####
//  335  ===============================================================================
//  336     [..]  This subsection provides a set of functions allowing to initialize and 
//  337           deinitialize the I2Cx peripheral:
//  338 
//  339       (+) User must Implement HAL_I2C_MspInit() function in which he configures 
//  340           all related peripherals resources (CLOCK, GPIO, DMA, IT and NVIC ).
//  341 
//  342       (+) Call the function HAL_I2C_Init() to configure the selected device with 
//  343           the selected configuration:
//  344         (++) Communication Speed
//  345         (++) Duty cycle
//  346         (++) Addressing mode
//  347         (++) Own Address 1
//  348         (++) Dual Addressing mode
//  349         (++) Own Address 2
//  350         (++) General call mode
//  351         (++) Nostretch mode
//  352 
//  353       (+) Call the function HAL_I2C_DeInit() to restore the default configuration 
//  354           of the selected I2Cx peripheral.       
//  355 
//  356 @endverbatim
//  357   * @{
//  358   */
//  359 
//  360 /**
//  361   * @brief  Initializes the I2C according to the specified parameters 
//  362   *         in the I2C_InitTypeDef and initialize the associated handle.
//  363   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  364   *                the configuration information for the specified I2C.
//  365   * @retval HAL status
//  366   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_I2C_Init
        THUMB
//  367 HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c)
//  368 {
HAL_I2C_Init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  369   uint32_t freqrange = 0U;
        MOVS     R1,#+0
//  370   uint32_t pclk1 = 0U;
        MOVS     R0,#+0
//  371 
//  372   /* Check the I2C handle allocation */
//  373   if(hi2c == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Init_0
//  374   {
//  375     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Init_1
//  376   }
//  377   
//  378   /* Check the parameters */
//  379   assert_param(IS_I2C_ALL_INSTANCE(hi2c->Instance));
//  380   assert_param(IS_I2C_CLOCK_SPEED(hi2c->Init.ClockSpeed));
//  381   assert_param(IS_I2C_DUTY_CYCLE(hi2c->Init.DutyCycle));
//  382   assert_param(IS_I2C_OWN_ADDRESS1(hi2c->Init.OwnAddress1));
//  383   assert_param(IS_I2C_ADDRESSING_MODE(hi2c->Init.AddressingMode));
//  384   assert_param(IS_I2C_DUAL_ADDRESS(hi2c->Init.DualAddressMode));
//  385   assert_param(IS_I2C_OWN_ADDRESS2(hi2c->Init.OwnAddress2));
//  386   assert_param(IS_I2C_GENERAL_CALL(hi2c->Init.GeneralCallMode));
//  387   assert_param(IS_I2C_NO_STRETCH(hi2c->Init.NoStretchMode));
//  388 
//  389   if(hi2c->State == HAL_I2C_STATE_RESET)
??HAL_I2C_Init_0:
        LDRB     R0,[R4, #+61]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_Init_2
//  390   {
//  391     /* Allocate lock resource and initialize it */
//  392     hi2c->Lock = HAL_UNLOCKED;
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  393 
//  394     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  395     HAL_I2C_MspInit(hi2c);
        MOVS     R0,R4
          CFI FunCall HAL_I2C_MspInit
        BL       HAL_I2C_MspInit
//  396   }
//  397 
//  398   /* Get PCLK1 frequency */
//  399   pclk1 = HAL_RCC_GetPCLK1Freq();
??HAL_I2C_Init_2:
          CFI FunCall HAL_RCC_GetPCLK1Freq
        BL       HAL_RCC_GetPCLK1Freq
//  400 
//  401   /* The minimum allowed frequency is 2 MHz */
//  402   if(pclk1 < I2C_MIN_PCLK_FREQ)
        LDR.W    R1,??DataTable9  ;; 0x1e8480
        CMP      R0,R1
        BCS.N    ??HAL_I2C_Init_3
//  403   {
//  404     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Init_1
//  405   }
//  406 
//  407   hi2c->State = HAL_I2C_STATE_BUSY;
??HAL_I2C_Init_3:
        MOVS     R1,#+36
        STRB     R1,[R4, #+61]
//  408   
//  409   /* Disable the selected I2C peripheral */
//  410   __HAL_I2C_DISABLE(hi2c);
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R4, #+0]
        STR      R1,[R2, #+0]
//  411 
//  412   /* Calculate frequency range */
//  413   freqrange = I2C_FREQ_RANGE(pclk1);
        LDR.W    R1,??DataTable9_1  ;; 0xf4240
        UDIV     R1,R0,R1
//  414 
//  415   /*---------------------------- I2Cx CR2 Configuration ----------------------*/
//  416   /* Configure I2Cx: Frequency range */
//  417   MODIFY_REG(hi2c->Instance->CR2, I2C_CR2_FREQ, freqrange);
        LDR      R2,[R4, #+0]
        LDR      R2,[R2, #+4]
        LSRS     R2,R2,#+6
        LSLS     R2,R2,#+6
        ORRS     R2,R1,R2
        LDR      R3,[R4, #+0]
        STR      R2,[R3, #+4]
//  418 
//  419   /*---------------------------- I2Cx TRISE Configuration --------------------*/
//  420   /* Configure I2Cx: Rise Time */
//  421   MODIFY_REG(hi2c->Instance->TRISE, I2C_TRISE_TRISE, I2C_RISE_TIME(freqrange, hi2c->Init.ClockSpeed));
        LDR      R2,[R4, #+0]
        LDR      R2,[R2, #+32]
        LDR      R3,[R4, #+4]
        LDR.W    R5,??DataTable9_2  ;; 0x186a1
        CMP      R3,R5
        BCS.N    ??HAL_I2C_Init_4
        ADDS     R1,R1,#+1
        B.N      ??HAL_I2C_Init_5
??HAL_I2C_Init_4:
        MOV      R3,#+300
        MULS     R1,R3,R1
        MOV      R3,#+1000
        UDIV     R1,R1,R3
        ADDS     R1,R1,#+1
??HAL_I2C_Init_5:
        LSRS     R2,R2,#+6
        LSLS     R2,R2,#+6
        ORRS     R1,R1,R2
        LDR      R2,[R4, #+0]
        STR      R1,[R2, #+32]
//  422 
//  423   /*---------------------------- I2Cx CCR Configuration ----------------------*/
//  424   /* Configure I2Cx: Speed */
//  425   MODIFY_REG(hi2c->Instance->CCR, (I2C_CCR_FS | I2C_CCR_DUTY | I2C_CCR_CCR), I2C_SPEED(pclk1, hi2c->Init.ClockSpeed, hi2c->Init.DutyCycle));
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+28]
        LDR      R2,[R4, #+4]
        LDR.W    R3,??DataTable9_2  ;; 0x186a1
        CMP      R2,R3
        BCS.N    ??HAL_I2C_Init_6
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+1
        UDIV     R2,R0,R2
        LSLS     R2,R2,#+20       ;; ZeroExtS R2,R2,#+20,#+20
        LSRS     R2,R2,#+20
        CMP      R2,#+4
        BCS.N    ??HAL_I2C_Init_7
        MOVS     R0,#+4
        B.N      ??HAL_I2C_Init_8
??HAL_I2C_Init_7:
        LDR      R2,[R4, #+4]
        LSLS     R2,R2,#+1
        UDIV     R0,R0,R2
        B.N      ??HAL_I2C_Init_8
??HAL_I2C_Init_6:
        LDR      R2,[R4, #+8]
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Init_9
        LDR      R2,[R4, #+4]
        MOVS     R3,#+3
        MULS     R2,R3,R2
        UDIV     R2,R0,R2
        B.N      ??HAL_I2C_Init_10
??HAL_I2C_Init_9:
        LDR      R2,[R4, #+4]
        MOVS     R3,#+25
        MULS     R2,R3,R2
        UDIV     R2,R0,R2
        ORRS     R2,R2,#0x4000
??HAL_I2C_Init_10:
        LSLS     R2,R2,#+20
        BNE.N    ??HAL_I2C_Init_11
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Init_8
??HAL_I2C_Init_11:
        LDR      R2,[R4, #+8]
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Init_12
        LDR      R2,[R4, #+4]
        MOVS     R3,#+3
        MULS     R2,R3,R2
        UDIV     R0,R0,R2
        B.N      ??HAL_I2C_Init_13
??HAL_I2C_Init_12:
        LDR      R2,[R4, #+4]
        MOVS     R3,#+25
        MULS     R2,R3,R2
        UDIV     R0,R0,R2
        ORRS     R0,R0,#0x4000
??HAL_I2C_Init_13:
        ORRS     R0,R0,#0x8000
??HAL_I2C_Init_8:
        LDR.W    R2,??DataTable10  ;; 0xffff3000
        ANDS     R1,R2,R1
        ORRS     R0,R0,R1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+28]
//  426 
//  427   /*---------------------------- I2Cx CR1 Configuration ----------------------*/
//  428   /* Configure I2Cx: Generalcall and NoStretch mode */
//  429   MODIFY_REG(hi2c->Instance->CR1, (I2C_CR1_ENGC | I2C_CR1_NOSTRETCH), (hi2c->Init.GeneralCallMode | hi2c->Init.NoStretchMode));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xC0
        LDR      R1,[R4, #+28]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+32]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  430 
//  431   /*---------------------------- I2Cx OAR1 Configuration ---------------------*/
//  432   /* Configure I2Cx: Own Address1 and addressing mode */
//  433   MODIFY_REG(hi2c->Instance->OAR1, (I2C_OAR1_ADDMODE | I2C_OAR1_ADD8_9 | I2C_OAR1_ADD1_7 | I2C_OAR1_ADD0), (hi2c->Init.AddressingMode | hi2c->Init.OwnAddress1));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable10_1  ;; 0xffff7c00
        ANDS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
//  434 
//  435   /*---------------------------- I2Cx OAR2 Configuration ---------------------*/
//  436   /* Configure I2Cx: Dual mode and Own Address2 */
//  437   MODIFY_REG(hi2c->Instance->OAR2, (I2C_OAR2_ENDUAL | I2C_OAR2_ADD2), (hi2c->Init.DualAddressMode | hi2c->Init.OwnAddress2));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+12]
        LSRS     R0,R0,#+8
        LSLS     R0,R0,#+8
        LDR      R1,[R4, #+24]
        LDR      R2,[R4, #+20]
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  438 
//  439   /* Enable the selected I2C peripheral */
//  440   __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  441   
//  442   hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
//  443   hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
//  444   hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  445   hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
//  446 
//  447   return HAL_OK;
        MOVS     R0,#+0
??HAL_I2C_Init_1:
        POP      {R1,R4,R5,PC}    ;; return
//  448 }
          CFI EndBlock cfiBlock0
//  449 
//  450 /**
//  451   * @brief  DeInitialize the I2C peripheral. 
//  452   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  453   *                the configuration information for the specified I2C.
//  454   * @retval HAL status
//  455   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_I2C_DeInit
        THUMB
//  456 HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c)
//  457 {
HAL_I2C_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  458   /* Check the I2C handle allocation */
//  459   if(hi2c == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_DeInit_0
//  460   {
//  461     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_DeInit_1
//  462   }
//  463   
//  464   /* Check the parameters */
//  465   assert_param(IS_I2C_ALL_INSTANCE(hi2c->Instance));
//  466   
//  467   hi2c->State = HAL_I2C_STATE_BUSY;
??HAL_I2C_DeInit_0:
        MOVS     R0,#+36
        STRB     R0,[R4, #+61]
//  468   
//  469   /* Disable the I2C Peripheral Clock */
//  470   __HAL_I2C_DISABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  471   
//  472   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  473   HAL_I2C_MspDeInit(hi2c);
        MOVS     R0,R4
          CFI FunCall HAL_I2C_MspDeInit
        BL       HAL_I2C_MspDeInit
//  474   
//  475   hi2c->ErrorCode     = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
//  476   hi2c->State         = HAL_I2C_STATE_RESET;
        MOVS     R0,#+0
        STRB     R0,[R4, #+61]
//  477   hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  478   hi2c->Mode          = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
//  479   
//  480   /* Release Lock */
//  481   __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  482 
//  483   return HAL_OK;
        MOVS     R0,#+0
??HAL_I2C_DeInit_1:
        POP      {R4,PC}          ;; return
//  484 }
          CFI EndBlock cfiBlock1
//  485 
//  486 /**
//  487   * @brief Initialize the I2C MSP.
//  488   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  489   *                the configuration information for the specified I2C.
//  490   * @retval None
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_I2C_MspInit
          CFI NoCalls
        THUMB
//  492  __weak void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c)
//  493 {
//  494   /* Prevent unused argument(s) compilation warning */
//  495   UNUSED(hi2c);
//  496 
//  497   /* NOTE : This function should not be modified, when the callback is needed,
//  498             the HAL_I2C_MspInit could be implemented in the user file
//  499    */ 
//  500 }
HAL_I2C_MspInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  501 
//  502 /**
//  503   * @brief DeInitialize the I2C MSP.
//  504   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  505   *                the configuration information for the specified I2C.
//  506   * @retval None
//  507   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_I2C_MspDeInit
          CFI NoCalls
        THUMB
//  508  __weak void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c)
//  509 {
//  510   /* Prevent unused argument(s) compilation warning */
//  511   UNUSED(hi2c);
//  512 
//  513   /* NOTE : This function should not be modified, when the callback is needed,
//  514             the HAL_I2C_MspDeInit could be implemented in the user file
//  515    */ 
//  516 }
HAL_I2C_MspDeInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  517 
//  518 /**
//  519   * @}
//  520   */
//  521 
//  522 /** @defgroup I2C_Exported_Functions_Group2 Input and Output operation functions 
//  523  *  @brief   Data transfers functions 
//  524  *
//  525 @verbatim   
//  526  ===============================================================================
//  527                       ##### IO operation functions #####
//  528  ===============================================================================  
//  529     [..]
//  530     This subsection provides a set of functions allowing to manage the I2C data 
//  531     transfers.
//  532 
//  533     (#) There are two modes of transfer:
//  534        (++) Blocking mode : The communication is performed in the polling mode. 
//  535             The status of all data processing is returned by the same function 
//  536             after finishing transfer.  
//  537        (++) No-Blocking mode : The communication is performed using Interrupts 
//  538             or DMA. These functions return the status of the transfer startup.
//  539             The end of the data processing will be indicated through the 
//  540             dedicated I2C IRQ when using Interrupt mode or the DMA IRQ when 
//  541             using DMA mode.
//  542 
//  543     (#) Blocking mode functions are :
//  544         (++) HAL_I2C_Master_Transmit()
//  545         (++) HAL_I2C_Master_Receive()
//  546         (++) HAL_I2C_Slave_Transmit()
//  547         (++) HAL_I2C_Slave_Receive()
//  548         (++) HAL_I2C_Mem_Write()
//  549         (++) HAL_I2C_Mem_Read()
//  550         (++) HAL_I2C_IsDeviceReady()
//  551         
//  552     (#) No-Blocking mode functions with Interrupt are :
//  553         (++) HAL_I2C_Master_Transmit_IT()
//  554         (++) HAL_I2C_Master_Receive_IT()
//  555         (++) HAL_I2C_Slave_Transmit_IT()
//  556         (++) HAL_I2C_Slave_Receive_IT()
//  557         (++) HAL_I2C_Master_Sequential_Transmit_IT()
//  558         (++) HAL_I2C_Master_Sequential_Receive_IT()
//  559         (++) HAL_I2C_Slave_Sequential_Transmit_IT()
//  560         (++) HAL_I2C_Slave_Sequential_Receive_IT()
//  561         (++) HAL_I2C_Mem_Write_IT()
//  562         (++) HAL_I2C_Mem_Read_IT()
//  563 
//  564     (#) No-Blocking mode functions with DMA are :
//  565         (++) HAL_I2C_Master_Transmit_DMA()
//  566         (++) HAL_I2C_Master_Receive_DMA()
//  567         (++) HAL_I2C_Slave_Transmit_DMA()
//  568         (++) HAL_I2C_Slave_Receive_DMA()
//  569         (++) HAL_I2C_Mem_Write_DMA()
//  570         (++) HAL_I2C_Mem_Read_DMA()
//  571 
//  572     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
//  573         (++) HAL_I2C_MemTxCpltCallback()
//  574         (++) HAL_I2C_MemRxCpltCallback()
//  575         (++) HAL_I2C_MasterTxCpltCallback()
//  576         (++) HAL_I2C_MasterRxCpltCallback()
//  577         (++) HAL_I2C_SlaveTxCpltCallback()
//  578         (++) HAL_I2C_SlaveRxCpltCallback()
//  579         (++) HAL_I2C_ErrorCallback()
//  580         (++) HAL_I2C_AbortCpltCallback()
//  581 
//  582 @endverbatim
//  583   * @{
//  584   */
//  585 
//  586 /**
//  587   * @brief  Transmits in master mode an amount of data in blocking mode.
//  588   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  589   *                the configuration information for the specified I2C.
//  590   * @param  DevAddress Target device address: The device 7 bits address value
//  591   *         in datasheet must be shift at right before call interface
//  592   * @param  pData Pointer to data buffer
//  593   * @param  Size Amount of data to be sent
//  594   * @param  Timeout Timeout duration
//  595   * @retval HAL status
//  596   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_I2C_Master_Transmit
        THUMB
//  597 HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  598 {
HAL_I2C_Master_Transmit:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R7,R2
        MOVS     R5,R3
//  599   uint32_t tickstart = 0x00U;
        MOVS     R6,#+0
//  600 
//  601   /* Init tickstart for timeout management*/
//  602   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  603 
//  604   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Master_Transmit_0
//  605   {
//  606     /* Wait until BUSY flag is reset */
//  607     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
        STR      R6,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_1
//  608     {
//  609       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Transmit_2
//  610     }
//  611 
//  612     /* Process Locked */
//  613     __HAL_LOCK(hi2c);
??HAL_I2C_Master_Transmit_1:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Transmit_3
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Transmit_2
??HAL_I2C_Master_Transmit_3:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
//  614 
//  615     /* Check if the I2C is already enabled */
//  616     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Master_Transmit_4
//  617     {
//  618       /* Enable I2C peripheral */
//  619       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  620     }
//  621 
//  622     /* Disable Pos */
//  623     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Transmit_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  624 
//  625     hi2c->State       = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R4, #+61]
//  626     hi2c->Mode        = HAL_I2C_MODE_MASTER;
        MOVS     R0,#+16
        STRB     R0,[R4, #+62]
//  627     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
//  628 
//  629     /* Prepare transfer parameters */
//  630     hi2c->pBuffPtr    = pData;
        STR      R7,[R4, #+36]
//  631     hi2c->XferCount   = Size;
        STRH     R5,[R4, #+42]
//  632     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable10_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
//  633     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
        LDR      R7,[SP, #+32]
//  634 
//  635     /* Send Slave Address */
//  636     if(I2C_MasterRequestWrite(hi2c, DevAddress, Timeout, tickstart) != HAL_OK)
        MOVS     R3,R6
        MOVS     R2,R7
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall I2C_MasterRequestWrite
        BL       I2C_MasterRequestWrite
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_5
//  637     {
//  638       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Master_Transmit_6
//  639       {
//  640         /* Process Unlocked */
//  641         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  642         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Transmit_2
//  643       }
//  644       else
//  645       {
//  646         /* Process Unlocked */
//  647         __HAL_UNLOCK(hi2c);
??HAL_I2C_Master_Transmit_6:
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  648         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Transmit_2
//  649       }
//  650     }
//  651 
//  652     /* Clear ADDR flag */
//  653     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Master_Transmit_5:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  654 
//  655     while(hi2c->XferSize > 0U)
??HAL_I2C_Master_Transmit_7:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_8
//  656     {
//  657       /* Wait until TXE flag is set */
//  658       if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
        MOVS     R2,R6
        MOVS     R1,R7
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_9
//  659       {
//  660         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Master_Transmit_10
//  661         {
//  662           /* Generate Stop */
//  663           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  664           return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Transmit_2
//  665         }
//  666         else
//  667         {
//  668           return HAL_TIMEOUT;
??HAL_I2C_Master_Transmit_10:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Transmit_2
//  669         }
//  670       }
//  671 
//  672       /* Write data to DR */
//  673       hi2c->Instance->DR = (*hi2c->pBuffPtr++);
??HAL_I2C_Master_Transmit_9:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  674       hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  675       hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  676 
//  677       if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET) && (Size != 0U))
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_I2C_Master_Transmit_11
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_11
//  678       {
//  679         /* Write data to DR */
//  680         hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  681         hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  682         hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  683       }
//  684 
//  685       /* Wait until BTF flag is set */
//  686       if(I2C_WaitOnBTFFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Master_Transmit_11:
        MOVS     R2,R6
        MOVS     R1,R7
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnBTFFlagUntilTimeout
        BL       I2C_WaitOnBTFFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_7
//  687       {
//  688         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Master_Transmit_12
//  689         {
//  690           /* Generate Stop */
//  691           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  692           return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Transmit_2
//  693         }
//  694         else
//  695         {
//  696           return HAL_TIMEOUT;
??HAL_I2C_Master_Transmit_12:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Transmit_2
//  697         }
//  698       }
//  699     }
//  700 
//  701     /* Generate Stop */
//  702     SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_Master_Transmit_8:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  703 
//  704     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
//  705     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
//  706     
//  707     /* Process Unlocked */
//  708     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  709 
//  710     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Transmit_2
//  711   }
//  712   else
//  713   {
//  714     return HAL_BUSY; 
??HAL_I2C_Master_Transmit_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Transmit_2:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  715   }
//  716 }
          CFI EndBlock cfiBlock4
//  717 
//  718 /**
//  719   * @brief  Receives in master mode an amount of data in blocking mode. 
//  720   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  721   *                the configuration information for the specified I2C.
//  722   * @param  DevAddress Target device address: The device 7 bits address value
//  723   *         in datasheet must be shift at right before call interface
//  724   * @param  pData Pointer to data buffer
//  725   * @param  Size Amount of data to be sent
//  726   * @param  Timeout Timeout duration
//  727   * @retval HAL status
//  728   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_I2C_Master_Receive
        THUMB
//  729 HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  730 {
HAL_I2C_Master_Receive:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R7,R1
        MOVS     R5,R2
        MOV      R8,R3
//  731   uint32_t tickstart = 0x00U;
        MOVS     R6,#+0
//  732 
//  733   /* Init tickstart for timeout management*/
//  734   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  735 
//  736   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Master_Receive_0
//  737   {
//  738     /* Wait until BUSY flag is reset */
//  739     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
        STR      R6,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_1
//  740     {
//  741       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Receive_2
//  742     }
//  743 
//  744     /* Process Locked */
//  745     __HAL_LOCK(hi2c);
??HAL_I2C_Master_Receive_1:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Receive_3
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Receive_2
??HAL_I2C_Master_Receive_3:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
//  746 
//  747     /* Check if the I2C is already enabled */
//  748     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Master_Receive_4
//  749     {
//  750       /* Enable I2C peripheral */
//  751       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  752     }
//  753 
//  754     /* Disable Pos */
//  755     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Receive_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  756 
//  757     hi2c->State       = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R4, #+61]
//  758     hi2c->Mode        = HAL_I2C_MODE_MASTER;
        MOVS     R0,#+16
        STRB     R0,[R4, #+62]
//  759     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
//  760 
//  761     /* Prepare transfer parameters */
//  762     hi2c->pBuffPtr    = pData;
        STR      R5,[R4, #+36]
//  763     hi2c->XferCount   = Size;
        STRH     R8,[R4, #+42]
//  764     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable10_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
//  765     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
        LDR      R5,[SP, #+32]
//  766 
//  767     /* Send Slave Address */
//  768     if(I2C_MasterRequestRead(hi2c, DevAddress, Timeout, tickstart) != HAL_OK)
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall I2C_MasterRequestRead
        BL       I2C_MasterRequestRead
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_5
//  769     {
//  770       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Master_Receive_6
//  771       {
//  772         /* Process Unlocked */
//  773         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  774         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Receive_2
//  775       }
//  776       else
//  777       {
//  778         /* Process Unlocked */
//  779         __HAL_UNLOCK(hi2c);
??HAL_I2C_Master_Receive_6:
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  780         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
//  781       }
//  782     }
//  783 
//  784     if(hi2c->XferSize == 0U)
??HAL_I2C_Master_Receive_5:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_Master_Receive_7
//  785     {
//  786       /* Clear ADDR flag */
//  787       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  788       
//  789       /* Generate Stop */
//  790       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_I2C_Master_Receive_8
//  791     }
//  792     else if(hi2c->XferSize == 1U)
??HAL_I2C_Master_Receive_7:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Receive_9
//  793     {
//  794       /* Disable Acknowledge */
//  795       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  796 
//  797       /* Clear ADDR flag */
//  798       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  799 
//  800       /* Generate Stop */
//  801       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_I2C_Master_Receive_8
//  802     }
//  803     else if(hi2c->XferSize == 2U)
??HAL_I2C_Master_Receive_9:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+2
        BNE.N    ??HAL_I2C_Master_Receive_10
//  804     {
//  805       /* Disable Acknowledge */
//  806       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  807 
//  808       /* Enable Pos */
//  809       SET_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  810 
//  811       /* Clear ADDR flag */
//  812       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Master_Receive_8
//  813     }
//  814     else
//  815     {
//  816       /* Enable Acknowledge */
//  817       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Master_Receive_10:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  818 
//  819       /* Clear ADDR flag */
//  820       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Master_Receive_8
//  821     }
//  822 
//  823     while(hi2c->XferSize > 0U)
//  824     {
//  825       if(hi2c->XferSize <= 3U)
//  826       {
//  827         /* One byte */
//  828         if(hi2c->XferSize == 1U)
//  829         {
//  830           /* Wait until RXNE flag is set */
//  831           if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)      
//  832           {
//  833             if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
//  834             {
//  835               return HAL_TIMEOUT;
//  836             }
//  837             else
//  838             {
//  839               return HAL_ERROR;
//  840             }
//  841           }
//  842 
//  843           /* Read data from DR */
//  844           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??HAL_I2C_Master_Receive_11:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  845           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  846           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
??HAL_I2C_Master_Receive_8:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.W    ??HAL_I2C_Master_Receive_12
        LDRH     R0,[R4, #+40]
        CMP      R0,#+4
        BCS.W    ??HAL_I2C_Master_Receive_13
        LDRH     R0,[R4, #+40]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Receive_14
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnRXNEFlagUntilTimeout
        BL       I2C_WaitOnRXNEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_11
        LDR      R0,[R4, #+64]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Master_Receive_15
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
??HAL_I2C_Master_Receive_15:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Receive_2
//  847         }
//  848         /* Two bytes */
//  849         else if(hi2c->XferSize == 2U)
??HAL_I2C_Master_Receive_14:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+2
        BNE.N    ??HAL_I2C_Master_Receive_16
//  850         {
//  851           /* Wait until BTF flag is set */
//  852           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,#+0
        LDR.W    R1,??DataTable12  ;; 0x10004
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_17
//  853           {
//  854             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
//  855           }
//  856 
//  857           /* Generate Stop */
//  858           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_Master_Receive_17:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  859 
//  860           /* Read data from DR */
//  861           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  862           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  863           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  864 
//  865           /* Read data from DR */
//  866           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  867           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  868           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
        B.N      ??HAL_I2C_Master_Receive_8
//  869         }
//  870         /* 3 Last bytes */
//  871         else
//  872         {
//  873           /* Wait until BTF flag is set */
//  874           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Master_Receive_16:
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,#+0
        LDR.W    R1,??DataTable12  ;; 0x10004
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_18
//  875           {
//  876             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
//  877           }
//  878 
//  879           /* Disable Acknowledge */
//  880           CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Master_Receive_18:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  881 
//  882           /* Read data from DR */
//  883           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  884           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  885           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  886 
//  887           /* Wait until BTF flag is set */
//  888           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,#+0
        LDR.W    R1,??DataTable12  ;; 0x10004
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_19
//  889           {
//  890             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
//  891           }
//  892 
//  893           /* Generate Stop */
//  894           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_Master_Receive_19:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  895 
//  896           /* Read data from DR */
//  897           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  898           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  899           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  900 
//  901           /* Read data from DR */
//  902           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  903           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  904           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
        B.N      ??HAL_I2C_Master_Receive_8
//  905         }
//  906       }
//  907       else
//  908       {
//  909         /* Wait until RXNE flag is set */
//  910         if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)      
??HAL_I2C_Master_Receive_13:
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnRXNEFlagUntilTimeout
        BL       I2C_WaitOnRXNEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_20
//  911         {
//  912           if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
        LDR      R0,[R4, #+64]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Master_Receive_21
//  913           {
//  914             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_2
//  915           }
//  916           else
//  917           {
//  918             return HAL_ERROR;
??HAL_I2C_Master_Receive_21:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Master_Receive_2
//  919           }
//  920         }
//  921 
//  922         /* Read data from DR */
//  923         (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??HAL_I2C_Master_Receive_20:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  924         hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  925         hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
//  926 
//  927         if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.W    ??HAL_I2C_Master_Receive_8
//  928         {
//  929           /* Read data from DR */
//  930           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
//  931           hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
//  932           hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
        B.N      ??HAL_I2C_Master_Receive_8
//  933         }
//  934       }
//  935     }
//  936 
//  937     hi2c->State = HAL_I2C_STATE_READY;
??HAL_I2C_Master_Receive_12:
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
//  938     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
//  939     
//  940     /* Process Unlocked */
//  941     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
//  942     
//  943     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Receive_2
//  944   }
//  945   else
//  946   {
//  947     return HAL_BUSY; 
??HAL_I2C_Master_Receive_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Receive_2:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  948   }
//  949 }
          CFI EndBlock cfiBlock5
//  950 
//  951 /**
//  952   * @brief  Transmits in slave mode an amount of data in blocking mode. 
//  953   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
//  954   *                the configuration information for the specified I2C.
//  955   * @param  pData Pointer to data buffer
//  956   * @param  Size Amount of data to be sent
//  957   * @param  Timeout Timeout duration
//  958   * @retval HAL status
//  959   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Transmit
        THUMB
//  960 HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  961 {
HAL_I2C_Slave_Transmit:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  962   uint32_t tickstart = 0x00U;
        MOVS     R7,#+0
//  963   
//  964   /* Init tickstart for timeout management*/
//  965   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
//  966   
//  967   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Slave_Transmit_0
//  968   {    
//  969     if((pData == NULL) || (Size == 0U))
        CMP      R8,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??HAL_I2C_Slave_Transmit_2
//  970     {
//  971       return  HAL_ERROR;
??HAL_I2C_Slave_Transmit_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Transmit_3
//  972     }
//  973 
//  974     /* Process Locked */
//  975     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Transmit_2:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Slave_Transmit_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Transmit_3
??HAL_I2C_Slave_Transmit_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
//  976     
//  977     /* Check if the I2C is already enabled */
//  978     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Slave_Transmit_5
//  979     {
//  980       /* Enable I2C peripheral */
//  981       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  982     }
//  983 
//  984     /* Disable Pos */
//  985     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Transmit_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  986 
//  987     hi2c->State       = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R4, #+61]
//  988     hi2c->Mode        = HAL_I2C_MODE_SLAVE;
        MOVS     R0,#+32
        STRB     R0,[R4, #+62]
//  989     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
//  990 
//  991     /* Prepare transfer parameters */
//  992     hi2c->pBuffPtr    = pData;
        STR      R8,[R4, #+36]
//  993     hi2c->XferCount   = Size;
        STRH     R5,[R4, #+42]
//  994     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable10_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
//  995     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
//  996 
//  997     /* Enable Address Acknowledge */
//  998     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  999 
// 1000     /* Wait until ADDR flag is set */
// 1001     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable14  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_6
// 1002     {
// 1003       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Transmit_3
// 1004     }
// 1005     
// 1006     /* Clear ADDR flag */
// 1007     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Slave_Transmit_6:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 1008 
// 1009     /* If 10bit addressing mode is selected */
// 1010     if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_10BIT)
        LDR      R0,[R4, #+16]
        CMP      R0,#+49152
        BNE.N    ??HAL_I2C_Slave_Transmit_7
// 1011     {
// 1012       /* Wait until ADDR flag is set */
// 1013       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable14  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_8
// 1014       {
// 1015         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Transmit_3
// 1016       }
// 1017 
// 1018       /* Clear ADDR flag */
// 1019       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Slave_Transmit_8:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Slave_Transmit_7
// 1020     }
// 1021 
// 1022     while(hi2c->XferSize > 0U)
// 1023     {
// 1024       /* Wait until TXE flag is set */
// 1025       if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
// 1026       {
// 1027         /* Disable Address Acknowledge */
// 1028         CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
// 1029         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
// 1030         {
// 1031           return HAL_ERROR;
// 1032         }
// 1033         else
// 1034         {
// 1035           return HAL_TIMEOUT;
// 1036         }
// 1037       }
// 1038 
// 1039       /* Write data to DR */
// 1040       hi2c->Instance->DR = (*hi2c->pBuffPtr++);
??HAL_I2C_Slave_Transmit_9:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 1041       hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
// 1042       hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
// 1043 
// 1044       if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET) && (Size != 0U))
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_I2C_Slave_Transmit_7
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_7
// 1045       {
// 1046         /* Write data to DR */
// 1047         hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 1048         hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
// 1049         hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
// 1050       }
??HAL_I2C_Slave_Transmit_7:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_10
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_9
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Slave_Transmit_11
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Transmit_3
??HAL_I2C_Slave_Transmit_11:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Transmit_3
// 1051     }
// 1052 
// 1053     /* Wait until AF flag is set */
// 1054     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_AF, RESET, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Slave_Transmit_10:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+66560
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_12
// 1055     {
// 1056       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Transmit_3
// 1057     }
// 1058 
// 1059     /* Clear AF flag */
// 1060     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
??HAL_I2C_Slave_Transmit_12:
        MVNS     R0,#+1024
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 1061 
// 1062     /* Disable Address Acknowledge */
// 1063     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1064 
// 1065     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 1066     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
// 1067 
// 1068     /* Process Unlocked */
// 1069     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 1070     
// 1071     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Transmit_3
// 1072   }
// 1073   else
// 1074   {
// 1075     return HAL_BUSY; 
??HAL_I2C_Slave_Transmit_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Transmit_3:
        POP      {R1,R2,R4-R8,PC}  ;; return
// 1076   }
// 1077 }
          CFI EndBlock cfiBlock6
// 1078 
// 1079 /**
// 1080   * @brief  Receive in slave mode an amount of data in blocking mode 
// 1081   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1082   *                the configuration information for the specified I2C.
// 1083   * @param  pData Pointer to data buffer
// 1084   * @param  Size Amount of data to be sent
// 1085   * @param  Timeout Timeout duration
// 1086   * @retval HAL status
// 1087   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Receive
        THUMB
// 1088 HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout)
// 1089 {
HAL_I2C_Slave_Receive:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
        MOVS     R6,R3
// 1090   uint32_t tickstart = 0x00U;
        MOVS     R7,#+0
// 1091 
// 1092   /* Init tickstart for timeout management*/
// 1093   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
// 1094 
// 1095   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Slave_Receive_0
// 1096   {  
// 1097     if((pData == NULL) || (Size == 0U))
        CMP      R8,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??HAL_I2C_Slave_Receive_2
// 1098     {
// 1099       return  HAL_ERROR;
??HAL_I2C_Slave_Receive_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Receive_3
// 1100     }
// 1101 
// 1102     /* Process Locked */
// 1103     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Receive_2:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Slave_Receive_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Receive_3
??HAL_I2C_Slave_Receive_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 1104 
// 1105     /* Check if the I2C is already enabled */
// 1106     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Slave_Receive_5
// 1107     {
// 1108       /* Enable I2C peripheral */
// 1109       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1110     }
// 1111 
// 1112     /* Disable Pos */
// 1113     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Receive_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1114 
// 1115     hi2c->State       = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R4, #+61]
// 1116     hi2c->Mode        = HAL_I2C_MODE_SLAVE;
        MOVS     R0,#+32
        STRB     R0,[R4, #+62]
// 1117     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 1118 
// 1119     /* Prepare transfer parameters */
// 1120     hi2c->pBuffPtr    = pData;
        STR      R8,[R4, #+36]
// 1121     hi2c->XferCount   = Size;
        STRH     R5,[R4, #+42]
// 1122     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable10_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 1123     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
// 1124 
// 1125     /* Enable Address Acknowledge */
// 1126     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1127 
// 1128     /* Wait until ADDR flag is set */
// 1129     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable14  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_6
// 1130     {
// 1131       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Receive_3
// 1132     }
// 1133 
// 1134     /* Clear ADDR flag */
// 1135     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Slave_Receive_6:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Slave_Receive_7
// 1136 
// 1137     while(hi2c->XferSize > 0U)
// 1138     {
// 1139       /* Wait until RXNE flag is set */
// 1140       if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)      
// 1141       {
// 1142         /* Disable Address Acknowledge */
// 1143         CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
// 1144         if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
// 1145         {
// 1146           return HAL_TIMEOUT;
// 1147         }
// 1148         else
// 1149         {
// 1150           return HAL_ERROR;
// 1151         }
// 1152       }
// 1153 
// 1154       /* Read data from DR */
// 1155       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??HAL_I2C_Slave_Receive_8:
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 1156       hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
// 1157       hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
// 1158 
// 1159       if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET) && (Size != 0U))
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_I2C_Slave_Receive_7
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_7
// 1160       {
// 1161         /* Read data from DR */
// 1162       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 1163       hi2c->XferSize--;
        LDRH     R0,[R4, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+40]
// 1164       hi2c->XferCount--;
        LDRH     R0,[R4, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R4, #+42]
// 1165       }
??HAL_I2C_Slave_Receive_7:
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_9
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnRXNEFlagUntilTimeout
        BL       I2C_WaitOnRXNEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_8
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+64]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Slave_Receive_10
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Receive_3
??HAL_I2C_Slave_Receive_10:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Receive_3
// 1166     }
// 1167 
// 1168     /* Wait until STOP flag is set */
// 1169     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Slave_Receive_9:
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnSTOPFlagUntilTimeout
        BL       I2C_WaitOnSTOPFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_11
// 1170     {
// 1171       /* Disable Address Acknowledge */
// 1172       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1173 
// 1174       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Slave_Receive_12
// 1175       {
// 1176         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Receive_3
// 1177       }
// 1178       else
// 1179       {
// 1180         return HAL_TIMEOUT;
??HAL_I2C_Slave_Receive_12:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Slave_Receive_3
// 1181       }
// 1182     }
// 1183 
// 1184     /* Clear STOP flag */
// 1185     __HAL_I2C_CLEAR_STOPFLAG(hi2c);
??HAL_I2C_Slave_Receive_11:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R0,[SP, #+0]
// 1186 
// 1187     /* Disable Address Acknowledge */
// 1188     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1189 
// 1190     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 1191     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
// 1192 
// 1193     /* Process Unlocked */
// 1194     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 1195 
// 1196     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Receive_3
// 1197   }
// 1198   else
// 1199   {
// 1200     return HAL_BUSY; 
??HAL_I2C_Slave_Receive_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Receive_3:
        POP      {R1,R2,R4-R8,PC}  ;; return
// 1201   } 
// 1202 }
          CFI EndBlock cfiBlock7
// 1203 
// 1204 /**
// 1205   * @brief  Transmit in master mode an amount of data in non-blocking mode with Interrupt
// 1206   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1207   *                the configuration information for the specified I2C.
// 1208   * @param  DevAddress Target device address: The device 7 bits address value
// 1209   *         in datasheet must be shift at right before call interface
// 1210   * @param  pData Pointer to data buffer
// 1211   * @param  Size Amount of data to be sent
// 1212   * @retval HAL status
// 1213   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_I2C_Master_Transmit_IT
          CFI NoCalls
        THUMB
// 1214 HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size)
// 1215 {
HAL_I2C_Master_Transmit_IT:
        PUSH     {R3-R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
// 1216   __IO uint32_t count = 0U;
        MOVS     R4,#+0
        STR      R4,[SP, #+0]
// 1217 
// 1218   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+32
        BNE.N    ??HAL_I2C_Master_Transmit_IT_0
// 1219   {
// 1220     /* Wait until BUSY flag is reset */
// 1221     count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
        LDR.W    R4,??DataTable15
        LDR      R4,[R4, #+0]
        MOVS     R5,#+25
        UDIV     R4,R4,R5
        MOV      R5,#+1000
        UDIV     R4,R4,R5
        MOVS     R5,#+25
        MULS     R4,R5,R4
        STR      R4,[SP, #+0]
// 1222     do
// 1223     {
// 1224       if(count-- == 0U)
??HAL_I2C_Master_Transmit_IT_1:
        LDR      R4,[SP, #+0]
        SUBS     R5,R4,#+1
        STR      R5,[SP, #+0]
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Master_Transmit_IT_2
// 1225       {
// 1226         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 1227         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 1228 
// 1229         /* Process Unlocked */
// 1230         __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1231 
// 1232         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Transmit_IT_3
// 1233       }
// 1234     }
// 1235     while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Transmit_IT_2:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+24]
        LSLS     R4,R4,#+30
        BMI.N    ??HAL_I2C_Master_Transmit_IT_1
// 1236 
// 1237     /* Process Locked */
// 1238     __HAL_LOCK(hi2c);
        LDRB     R4,[R0, #+60]
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Master_Transmit_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Transmit_IT_3
??HAL_I2C_Master_Transmit_IT_4:
        MOVS     R4,#+1
        STRB     R4,[R0, #+60]
// 1239     
// 1240     /* Check if the I2C is already enabled */
// 1241     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BMI.N    ??HAL_I2C_Master_Transmit_IT_5
// 1242     {
// 1243       /* Enable I2C peripheral */
// 1244       __HAL_I2C_ENABLE(hi2c);
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1245     }
// 1246 
// 1247     /* Disable Pos */
// 1248     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Transmit_IT_5:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x800
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1249 
// 1250     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R4,#+33
        STRB     R4,[R0, #+61]
// 1251     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R4,#+16
        STRB     R4,[R0, #+62]
// 1252     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R4,#+0
        STR      R4,[R0, #+64]
// 1253 
// 1254     /* Prepare transfer parameters */
// 1255     hi2c->pBuffPtr    = pData;
        STR      R2,[R0, #+36]
// 1256     hi2c->XferCount   = Size;
        STRH     R3,[R0, #+42]
// 1257     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R2,??DataTable11  ;; 0xffff0000
        STR      R2,[R0, #+44]
// 1258     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R2,[R0, #+42]
        STRH     R2,[R0, #+40]
// 1259     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+68]
// 1260 
// 1261     /* Generate Start */
// 1262     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1263 
// 1264     /* Process Unlocked */
// 1265     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1266 
// 1267     /* Note : The I2C interrupts must be enabled after unlocking current process 
// 1268               to avoid the risk of I2C interrupt handle execution before current
// 1269               process unlock */
// 1270      /* Enable EVT, BUF and ERR interrupt */
// 1271     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1272 
// 1273     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Transmit_IT_3
// 1274   }
// 1275   else
// 1276   {
// 1277     return HAL_BUSY;
??HAL_I2C_Master_Transmit_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Transmit_IT_3:
        POP      {R1,R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1278   } 
// 1279 }
          CFI EndBlock cfiBlock8
// 1280 
// 1281 /**
// 1282   * @brief  Receive in master mode an amount of data in non-blocking mode with Interrupt
// 1283   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1284   *                the configuration information for the specified I2C.
// 1285   * @param  DevAddress Target device address: The device 7 bits address value
// 1286   *         in datasheet must be shift at right before call interface
// 1287   * @param  pData Pointer to data buffer
// 1288   * @param  Size Amount of data to be sent
// 1289   * @retval HAL status
// 1290   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_I2C_Master_Receive_IT
          CFI NoCalls
        THUMB
// 1291 HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size)
// 1292 {
HAL_I2C_Master_Receive_IT:
        PUSH     {R3-R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
// 1293   __IO uint32_t count = 0U;
        MOVS     R4,#+0
        STR      R4,[SP, #+0]
// 1294 
// 1295   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+32
        BNE.N    ??HAL_I2C_Master_Receive_IT_0
// 1296   {
// 1297     /* Wait until BUSY flag is reset */
// 1298     count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
        LDR.W    R4,??DataTable15
        LDR      R4,[R4, #+0]
        MOVS     R5,#+25
        UDIV     R4,R4,R5
        MOV      R5,#+1000
        UDIV     R4,R4,R5
        MOVS     R5,#+25
        MULS     R4,R5,R4
        STR      R4,[SP, #+0]
// 1299     do
// 1300     {
// 1301       if(count-- == 0U)
??HAL_I2C_Master_Receive_IT_1:
        LDR      R4,[SP, #+0]
        SUBS     R5,R4,#+1
        STR      R5,[SP, #+0]
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Master_Receive_IT_2
// 1302       {
// 1303         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 1304         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 1305 
// 1306         /* Process Unlocked */
// 1307         __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1308 
// 1309         return HAL_TIMEOUT; 
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_IT_3
// 1310       }
// 1311     }
// 1312     while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Receive_IT_2:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+24]
        LSLS     R4,R4,#+30
        BMI.N    ??HAL_I2C_Master_Receive_IT_1
// 1313 
// 1314     /* Process Locked */
// 1315     __HAL_LOCK(hi2c);
        LDRB     R4,[R0, #+60]
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Master_Receive_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Receive_IT_3
??HAL_I2C_Master_Receive_IT_4:
        MOVS     R4,#+1
        STRB     R4,[R0, #+60]
// 1316     
// 1317     /* Check if the I2C is already enabled */
// 1318     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BMI.N    ??HAL_I2C_Master_Receive_IT_5
// 1319     {
// 1320       /* Enable I2C peripheral */
// 1321       __HAL_I2C_ENABLE(hi2c);
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1322     }
// 1323 
// 1324     /* Disable Pos */
// 1325     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Receive_IT_5:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x800
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1326 
// 1327     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R4,#+34
        STRB     R4,[R0, #+61]
// 1328     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R4,#+16
        STRB     R4,[R0, #+62]
// 1329     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R4,#+0
        STR      R4,[R0, #+64]
// 1330 
// 1331     /* Prepare transfer parameters */
// 1332     hi2c->pBuffPtr    = pData;
        STR      R2,[R0, #+36]
// 1333     hi2c->XferCount   = Size;
        STRH     R3,[R0, #+42]
// 1334     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R2,??DataTable11  ;; 0xffff0000
        STR      R2,[R0, #+44]
// 1335     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R2,[R0, #+42]
        STRH     R2,[R0, #+40]
// 1336     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+68]
// 1337 
// 1338     /* Enable Acknowledge */
// 1339     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1340     
// 1341     /* Generate Start */
// 1342     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1343 
// 1344     /* Process Unlocked */
// 1345     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1346 
// 1347     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1348     to avoid the risk of I2C interrupt handle execution before current
// 1349     process unlock */
// 1350 
// 1351     /* Enable EVT, BUF and ERR interrupt */
// 1352     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1353 
// 1354     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Receive_IT_3
// 1355   }
// 1356   else
// 1357   {
// 1358     return HAL_BUSY;
??HAL_I2C_Master_Receive_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Receive_IT_3:
        POP      {R1,R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1359   }
// 1360 }
          CFI EndBlock cfiBlock9
// 1361 
// 1362 /**
// 1363   * @brief  Sequential transmit in master mode an amount of data in non-blocking mode with Interrupt
// 1364   * @note   This interface allow to manage repeated start condition when a direction change during transfer
// 1365   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1366   *         the configuration information for the specified I2C.
// 1367   * @param  DevAddress Target device address: The device 7 bits address value
// 1368   *         in datasheet must be shift at right before call interface
// 1369   * @param  pData Pointer to data buffer
// 1370   * @param  Size Amount of data to be sent
// 1371   * @param  XferOptions Options of Transfer, value of @ref I2C_XferOptions_definition
// 1372   * @retval HAL status
// 1373   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_I2C_Master_Sequential_Transmit_IT
          CFI NoCalls
        THUMB
// 1374 HAL_StatusTypeDef HAL_I2C_Master_Sequential_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions)
// 1375 {
HAL_I2C_Master_Sequential_Transmit_IT:
        PUSH     {R3-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
// 1376   __IO uint32_t count = 0U;
        MOVS     R4,#+0
        STR      R4,[SP, #+0]
// 1377   
// 1378   /* Check the parameters */
// 1379   assert_param(IS_I2C_TRANSFER_OPTIONS_REQUEST(XferOptions));
// 1380 
// 1381   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+32
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_0
        LDR      R4,[SP, #+16]
// 1382   {
// 1383     /* Check Busy Flag only if FIRST call of Master interface */
// 1384     if((XferOptions == I2C_FIRST_AND_LAST_FRAME) || (XferOptions == I2C_FIRST_FRAME))
        CMP      R4,#+4
        BEQ.N    ??HAL_I2C_Master_Sequential_Transmit_IT_1
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_2
// 1385     {
// 1386       /* Wait until BUSY flag is reset */
// 1387       count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
??HAL_I2C_Master_Sequential_Transmit_IT_1:
        LDR.W    R5,??DataTable15
        LDR      R5,[R5, #+0]
        MOVS     R6,#+25
        UDIV     R5,R5,R6
        MOV      R6,#+1000
        UDIV     R5,R5,R6
        MOVS     R6,#+25
        MULS     R5,R6,R5
        STR      R5,[SP, #+0]
// 1388       do
// 1389       {
// 1390         if(count-- == 0U)
??HAL_I2C_Master_Sequential_Transmit_IT_3:
        LDR      R5,[SP, #+0]
        SUBS     R6,R5,#+1
        STR      R6,[SP, #+0]
        CMP      R5,#+0
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_4
// 1391         {
// 1392           hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 1393           hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 1394 
// 1395           /* Process Unlocked */
// 1396           __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1397 
// 1398           return HAL_TIMEOUT; 
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Sequential_Transmit_IT_5
// 1399         }
// 1400       }
// 1401       while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Sequential_Transmit_IT_4:
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+24]
        LSLS     R5,R5,#+30
        BMI.N    ??HAL_I2C_Master_Sequential_Transmit_IT_3
// 1402     }
// 1403 
// 1404     /* Process Locked */
// 1405     __HAL_LOCK(hi2c);
??HAL_I2C_Master_Sequential_Transmit_IT_2:
        LDRB     R5,[R0, #+60]
        CMP      R5,#+1
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_6
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Sequential_Transmit_IT_5
??HAL_I2C_Master_Sequential_Transmit_IT_6:
        MOVS     R5,#+1
        STRB     R5,[R0, #+60]
// 1406 
// 1407     /* Check if the I2C is already enabled */
// 1408     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+31
        BMI.N    ??HAL_I2C_Master_Sequential_Transmit_IT_7
// 1409     {
// 1410       /* Enable I2C peripheral */
// 1411       __HAL_I2C_ENABLE(hi2c);
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x1
        LDR      R6,[R0, #+0]
        STR      R5,[R6, #+0]
// 1412     }
// 1413 
// 1414     /* Disable Pos */
// 1415     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Sequential_Transmit_IT_7:
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        BICS     R5,R5,#0x800
        LDR      R6,[R0, #+0]
        STR      R5,[R6, #+0]
// 1416 
// 1417     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R5,#+33
        STRB     R5,[R0, #+61]
// 1418     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R5,#+16
        STRB     R5,[R0, #+62]
// 1419     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R5,#+0
        STR      R5,[R0, #+64]
// 1420 
// 1421     /* Prepare transfer parameters */
// 1422     hi2c->pBuffPtr    = pData;
        STR      R2,[R0, #+36]
// 1423     hi2c->XferCount   = Size;
        STRH     R3,[R0, #+42]
// 1424     hi2c->XferOptions = XferOptions;
        STR      R4,[R0, #+44]
// 1425     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R2,[R0, #+42]
        STRH     R2,[R0, #+40]
// 1426     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+68]
// 1427 
// 1428     /* Generate Start */
// 1429     if((hi2c->PreviousState == I2C_STATE_MASTER_BUSY_RX) || (hi2c->PreviousState == I2C_STATE_NONE))
        LDR      R1,[R0, #+48]
        CMP      R1,#+18
        BEQ.N    ??HAL_I2C_Master_Sequential_Transmit_IT_8
        LDR      R1,[R0, #+48]
        CMP      R1,#+0
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_9
// 1430     {
// 1431       /* Generate Start condition if first transfer */
// 1432       if((XferOptions == I2C_FIRST_AND_LAST_FRAME) || (XferOptions == I2C_FIRST_FRAME))
??HAL_I2C_Master_Sequential_Transmit_IT_8:
        CMP      R4,#+4
        BEQ.N    ??HAL_I2C_Master_Sequential_Transmit_IT_10
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_11
// 1433       {
// 1434         /* Generate Start */
// 1435         SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
??HAL_I2C_Master_Sequential_Transmit_IT_10:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??HAL_I2C_Master_Sequential_Transmit_IT_9
// 1436       }
// 1437       else if(hi2c->PreviousState == I2C_STATE_MASTER_BUSY_RX)
??HAL_I2C_Master_Sequential_Transmit_IT_11:
        LDR      R1,[R0, #+48]
        CMP      R1,#+18
        BNE.N    ??HAL_I2C_Master_Sequential_Transmit_IT_9
// 1438       {
// 1439         /* Generate ReStart */
// 1440         SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1441       }
// 1442     }
// 1443 
// 1444     /* Process Unlocked */
// 1445     __HAL_UNLOCK(hi2c);
??HAL_I2C_Master_Sequential_Transmit_IT_9:
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1446 
// 1447     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1448     to avoid the risk of I2C interrupt handle execution before current
// 1449     process unlock */
// 1450 
// 1451     /* Enable EVT, BUF and ERR interrupt */
// 1452     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1453 
// 1454     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Sequential_Transmit_IT_5
// 1455   }
// 1456   else
// 1457   {
// 1458     return HAL_BUSY;
??HAL_I2C_Master_Sequential_Transmit_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Sequential_Transmit_IT_5:
        POP      {R1,R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1459   }
// 1460 }
          CFI EndBlock cfiBlock10
// 1461 
// 1462 /**
// 1463   * @brief  Sequential receive in master mode an amount of data in non-blocking mode with Interrupt
// 1464   * @note   This interface allow to manage repeated start condition when a direction change during transfer
// 1465   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1466   *         the configuration information for the specified I2C.
// 1467   * @param  DevAddress Target device address: The device 7 bits address value
// 1468   *         in datasheet must be shift at right before call interface
// 1469   * @param  pData Pointer to data buffer
// 1470   * @param  Size Amount of data to be sent
// 1471   * @param  XferOptions Options of Transfer, value of @ref I2C_XferOptions_definition
// 1472   * @retval HAL status
// 1473   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_I2C_Master_Sequential_Receive_IT
          CFI NoCalls
        THUMB
// 1474 HAL_StatusTypeDef HAL_I2C_Master_Sequential_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions)
// 1475 {
HAL_I2C_Master_Sequential_Receive_IT:
        PUSH     {R3-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
// 1476   __IO uint32_t count = 0U;
        MOVS     R4,#+0
        STR      R4,[SP, #+0]
// 1477     
// 1478   /* Check the parameters */
// 1479   assert_param(IS_I2C_TRANSFER_OPTIONS_REQUEST(XferOptions));
// 1480 
// 1481   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+32
        BNE.W    ??HAL_I2C_Master_Sequential_Receive_IT_0
        LDR      R4,[SP, #+16]
// 1482   {
// 1483     /* Check Busy Flag only if FIRST call of Master interface */
// 1484     if((XferOptions == I2C_FIRST_AND_LAST_FRAME) || (XferOptions == I2C_FIRST_FRAME))
        CMP      R4,#+4
        BEQ.N    ??HAL_I2C_Master_Sequential_Receive_IT_1
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_2
// 1485     {
// 1486       /* Wait until BUSY flag is reset */
// 1487       count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
??HAL_I2C_Master_Sequential_Receive_IT_1:
        LDR.W    R5,??DataTable15
        LDR      R5,[R5, #+0]
        MOVS     R6,#+25
        UDIV     R5,R5,R6
        MOV      R6,#+1000
        UDIV     R5,R5,R6
        MOVS     R6,#+25
        MULS     R5,R6,R5
        STR      R5,[SP, #+0]
// 1488       do
// 1489       {
// 1490         if(count-- == 0U)
??HAL_I2C_Master_Sequential_Receive_IT_3:
        LDR      R5,[SP, #+0]
        SUBS     R6,R5,#+1
        STR      R6,[SP, #+0]
        CMP      R5,#+0
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_4
// 1491         {
// 1492           hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 1493           hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 1494 
// 1495           /* Process Unlocked */
// 1496           __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1497 
// 1498           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Sequential_Receive_IT_5
// 1499         }
// 1500       }
// 1501       while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Sequential_Receive_IT_4:
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+24]
        LSLS     R5,R5,#+30
        BMI.N    ??HAL_I2C_Master_Sequential_Receive_IT_3
// 1502     }
// 1503 
// 1504     /* Process Locked */
// 1505     __HAL_LOCK(hi2c);
??HAL_I2C_Master_Sequential_Receive_IT_2:
        LDRB     R5,[R0, #+60]
        CMP      R5,#+1
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_6
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Sequential_Receive_IT_5
??HAL_I2C_Master_Sequential_Receive_IT_6:
        MOVS     R5,#+1
        STRB     R5,[R0, #+60]
// 1506 
// 1507     /* Check if the I2C is already enabled */
// 1508     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+31
        BMI.N    ??HAL_I2C_Master_Sequential_Receive_IT_7
// 1509     {
// 1510       /* Enable I2C peripheral */
// 1511       __HAL_I2C_ENABLE(hi2c);
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x1
        LDR      R6,[R0, #+0]
        STR      R5,[R6, #+0]
// 1512     }
// 1513 
// 1514     /* Disable Pos */
// 1515     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Sequential_Receive_IT_7:
        LDR      R5,[R0, #+0]
        LDR      R5,[R5, #+0]
        BICS     R5,R5,#0x800
        LDR      R6,[R0, #+0]
        STR      R5,[R6, #+0]
// 1516 
// 1517     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R5,#+34
        STRB     R5,[R0, #+61]
// 1518     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R5,#+16
        STRB     R5,[R0, #+62]
// 1519     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R5,#+0
        STR      R5,[R0, #+64]
// 1520 
// 1521     /* Prepare transfer parameters */
// 1522     hi2c->pBuffPtr    = pData;
        STR      R2,[R0, #+36]
// 1523     hi2c->XferCount   = Size;
        STRH     R3,[R0, #+42]
// 1524     hi2c->XferOptions = XferOptions;
        STR      R4,[R0, #+44]
// 1525     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R2,[R0, #+42]
        STRH     R2,[R0, #+40]
// 1526     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+68]
// 1527 
// 1528     if((hi2c->PreviousState == I2C_STATE_MASTER_BUSY_TX) || (hi2c->PreviousState == I2C_STATE_NONE))
        LDR      R1,[R0, #+48]
        CMP      R1,#+17
        BEQ.N    ??HAL_I2C_Master_Sequential_Receive_IT_8
        LDR      R1,[R0, #+48]
        CMP      R1,#+0
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_9
// 1529     {
// 1530       /* Generate Start condition if first transfer */
// 1531       if((XferOptions == I2C_FIRST_AND_LAST_FRAME) || (XferOptions == I2C_FIRST_FRAME)  || (XferOptions == I2C_NO_OPTION_FRAME))
??HAL_I2C_Master_Sequential_Receive_IT_8:
        CMP      R4,#+4
        BEQ.N    ??HAL_I2C_Master_Sequential_Receive_IT_10
        CMP      R4,#+1
        BEQ.N    ??HAL_I2C_Master_Sequential_Receive_IT_10
        LDR.W    R1,??DataTable11  ;; 0xffff0000
        CMP      R4,R1
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_11
// 1532       {
// 1533         /* Enable Acknowledge */
// 1534         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Master_Sequential_Receive_IT_10:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1535         
// 1536         /* Generate Start */
// 1537         SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??HAL_I2C_Master_Sequential_Receive_IT_9
// 1538       }
// 1539       else if(hi2c->PreviousState == I2C_STATE_MASTER_BUSY_TX)
??HAL_I2C_Master_Sequential_Receive_IT_11:
        LDR      R1,[R0, #+48]
        CMP      R1,#+17
        BNE.N    ??HAL_I2C_Master_Sequential_Receive_IT_9
// 1540       {
// 1541         /* Enable Acknowledge */
// 1542         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1543         
// 1544         /* Generate ReStart */
// 1545         SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1546       }
// 1547     }
// 1548 
// 1549     /* Process Unlocked */
// 1550     __HAL_UNLOCK(hi2c);
??HAL_I2C_Master_Sequential_Receive_IT_9:
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1551 
// 1552     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1553     to avoid the risk of I2C interrupt handle execution before current
// 1554     process unlock */
// 1555 
// 1556     /* Enable EVT, BUF and ERR interrupt */
// 1557     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1558 
// 1559     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Sequential_Receive_IT_5
// 1560   }
// 1561   else
// 1562   {
// 1563     return HAL_BUSY;
??HAL_I2C_Master_Sequential_Receive_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Sequential_Receive_IT_5:
        POP      {R1,R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1564   }
// 1565 }
          CFI EndBlock cfiBlock11
// 1566 
// 1567 /**
// 1568   * @brief  Transmit in slave mode an amount of data in non-blocking mode with Interrupt
// 1569   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1570   *         the configuration information for the specified I2C.
// 1571   * @param  pData Pointer to data buffer
// 1572   * @param  Size Amount of data to be sent
// 1573   * @retval HAL status
// 1574   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Transmit_IT
          CFI NoCalls
        THUMB
// 1575 HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
// 1576 {
HAL_I2C_Slave_Transmit_IT:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
// 1577   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R3,[R0, #+61]
        CMP      R3,#+32
        BNE.N    ??HAL_I2C_Slave_Transmit_IT_0
// 1578   {
// 1579     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_IT_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Transmit_IT_2
// 1580     {
// 1581       return  HAL_ERROR;
??HAL_I2C_Slave_Transmit_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Transmit_IT_3
// 1582     }
// 1583 
// 1584     /* Process Locked */
// 1585     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Transmit_IT_2:
        LDRB     R3,[R0, #+60]
        CMP      R3,#+1
        BNE.N    ??HAL_I2C_Slave_Transmit_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Transmit_IT_3
??HAL_I2C_Slave_Transmit_IT_4:
        MOVS     R3,#+1
        STRB     R3,[R0, #+60]
// 1586 
// 1587     /* Check if the I2C is already enabled */
// 1588     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BMI.N    ??HAL_I2C_Slave_Transmit_IT_5
// 1589     {
// 1590       /* Enable I2C peripheral */
// 1591       __HAL_I2C_ENABLE(hi2c);
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+0]
// 1592     }
// 1593 
// 1594     /* Disable Pos */
// 1595     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Transmit_IT_5:
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0x800
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+0]
// 1596 
// 1597     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R3,#+33
        STRB     R3,[R0, #+61]
// 1598     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R3,#+32
        STRB     R3,[R0, #+62]
// 1599     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R3,#+0
        STR      R3,[R0, #+64]
// 1600 
// 1601     /* Prepare transfer parameters */
// 1602     hi2c->pBuffPtr    = pData;
        STR      R1,[R0, #+36]
// 1603     hi2c->XferCount   = Size;
        STRH     R2,[R0, #+42]
// 1604     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R1,??DataTable11  ;; 0xffff0000
        STR      R1,[R0, #+44]
// 1605     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R1,[R0, #+42]
        STRH     R1,[R0, #+40]
// 1606 
// 1607     /* Enable Address Acknowledge */
// 1608     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1609 
// 1610     /* Process Unlocked */
// 1611     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1612 
// 1613     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1614               to avoid the risk of I2C interrupt handle execution before current
// 1615               process unlock */
// 1616 
// 1617     /* Enable EVT, BUF and ERR interrupt */
// 1618     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1619 
// 1620     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Transmit_IT_3
// 1621   }
// 1622   else
// 1623   {
// 1624     return HAL_BUSY; 
??HAL_I2C_Slave_Transmit_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Transmit_IT_3:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1625   } 
// 1626 }
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x1e8480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x186a1
// 1627 
// 1628 /**
// 1629   * @brief  Receive in slave mode an amount of data in non-blocking mode with Interrupt 
// 1630   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1631   *                the configuration information for the specified I2C.
// 1632   * @param  pData Pointer to data buffer
// 1633   * @param  Size Amount of data to be sent
// 1634   * @retval HAL status
// 1635   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Receive_IT
          CFI NoCalls
        THUMB
// 1636 HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
// 1637 {
HAL_I2C_Slave_Receive_IT:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
// 1638   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R3,[R0, #+61]
        CMP      R3,#+32
        BNE.N    ??HAL_I2C_Slave_Receive_IT_0
// 1639   {
// 1640     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_IT_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Receive_IT_2
// 1641     {
// 1642       return  HAL_ERROR;
??HAL_I2C_Slave_Receive_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Receive_IT_3
// 1643     }
// 1644 
// 1645     /* Process Locked */
// 1646     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Receive_IT_2:
        LDRB     R3,[R0, #+60]
        CMP      R3,#+1
        BNE.N    ??HAL_I2C_Slave_Receive_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Receive_IT_3
??HAL_I2C_Slave_Receive_IT_4:
        MOVS     R3,#+1
        STRB     R3,[R0, #+60]
// 1647 
// 1648     /* Check if the I2C is already enabled */
// 1649     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BMI.N    ??HAL_I2C_Slave_Receive_IT_5
// 1650     {
// 1651       /* Enable I2C peripheral */
// 1652       __HAL_I2C_ENABLE(hi2c);
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+0]
// 1653     }
// 1654 
// 1655     /* Disable Pos */
// 1656     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Receive_IT_5:
        LDR      R3,[R0, #+0]
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0x800
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+0]
// 1657 
// 1658     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R3,#+34
        STRB     R3,[R0, #+61]
// 1659     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R3,#+32
        STRB     R3,[R0, #+62]
// 1660     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R3,#+0
        STR      R3,[R0, #+64]
// 1661 
// 1662     /* Prepare transfer parameters */
// 1663     hi2c->pBuffPtr    = pData;
        STR      R1,[R0, #+36]
// 1664     hi2c->XferCount   = Size;
        STRH     R2,[R0, #+42]
// 1665     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R1,??DataTable11  ;; 0xffff0000
        STR      R1,[R0, #+44]
// 1666     hi2c->XferSize    = Size;
        STRH     R2,[R0, #+40]
// 1667 
// 1668     /* Enable Address Acknowledge */
// 1669     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1670 
// 1671     /* Process Unlocked */
// 1672     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1673 
// 1674     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1675               to avoid the risk of I2C interrupt handle execution before current
// 1676               process unlock */
// 1677 
// 1678     /* Enable EVT, BUF and ERR interrupt */
// 1679     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1680 
// 1681     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Receive_IT_3
// 1682   }
// 1683   else
// 1684   {
// 1685     return HAL_BUSY; 
??HAL_I2C_Slave_Receive_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Receive_IT_3:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1686   }
// 1687 }
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xffff3000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0xffff7c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0xffff0000
// 1688 
// 1689 /**
// 1690   * @brief  Sequential transmit in slave mode an amount of data in non-blocking mode with Interrupt
// 1691   * @note   This interface allow to manage repeated start condition when a direction change during transfer
// 1692   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1693   *         the configuration information for the specified I2C.
// 1694   * @param  pData Pointer to data buffer
// 1695   * @param  Size Amount of data to be sent
// 1696   * @param  XferOptions Options of Transfer, value of @ref I2C_XferOptions_definition
// 1697   * @retval HAL status
// 1698   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Sequential_Transmit_IT
          CFI NoCalls
        THUMB
// 1699 HAL_StatusTypeDef HAL_I2C_Slave_Sequential_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions)
// 1700 {
HAL_I2C_Slave_Sequential_Transmit_IT:
        PUSH     {R3-R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
// 1701   /* Check the parameters */
// 1702   assert_param(IS_I2C_TRANSFER_OPTIONS_REQUEST(XferOptions));
// 1703 
// 1704   if(hi2c->State == HAL_I2C_STATE_LISTEN)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+40
        BNE.N    ??HAL_I2C_Slave_Sequential_Transmit_IT_0
// 1705   {
// 1706     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Sequential_Transmit_IT_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Sequential_Transmit_IT_2
// 1707     {
// 1708       return  HAL_ERROR;
??HAL_I2C_Slave_Sequential_Transmit_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Sequential_Transmit_IT_3
// 1709     }
// 1710 
// 1711     /* Process Locked */
// 1712     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Sequential_Transmit_IT_2:
        LDRB     R4,[R0, #+60]
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Slave_Sequential_Transmit_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Sequential_Transmit_IT_3
??HAL_I2C_Slave_Sequential_Transmit_IT_4:
        MOVS     R4,#+1
        STRB     R4,[R0, #+60]
// 1713 
// 1714     /* Check if the I2C is already enabled */
// 1715     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BMI.N    ??HAL_I2C_Slave_Sequential_Transmit_IT_5
// 1716     {
// 1717       /* Enable I2C peripheral */
// 1718       __HAL_I2C_ENABLE(hi2c);
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1719     }
// 1720 
// 1721     /* Disable Pos */
// 1722     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Sequential_Transmit_IT_5:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x800
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1723 
// 1724     hi2c->State     = HAL_I2C_STATE_BUSY_TX_LISTEN;
        MOVS     R4,#+41
        STRB     R4,[R0, #+61]
// 1725     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R4,#+32
        STRB     R4,[R0, #+62]
// 1726     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R4,#+0
        STR      R4,[R0, #+64]
// 1727 
// 1728     /* Prepare transfer parameters */
// 1729     hi2c->pBuffPtr    = pData;
        STR      R1,[R0, #+36]
// 1730     hi2c->XferCount   = Size;
        STRH     R2,[R0, #+42]
// 1731     hi2c->XferOptions = XferOptions;
        STR      R3,[R0, #+44]
// 1732     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R1,[R0, #+42]
        STRH     R1,[R0, #+40]
// 1733 
// 1734     /* Clear ADDR flag */
// 1735     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 1736 
// 1737     /* Process Unlocked */
// 1738     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1739 
// 1740     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1741               to avoid the risk of I2C interrupt handle execution before current
// 1742               process unlock */
// 1743 
// 1744     /* Enable EVT, BUF and ERR interrupt */
// 1745     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1746 
// 1747     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Sequential_Transmit_IT_3
// 1748   }
// 1749   else
// 1750   {
// 1751     return HAL_BUSY;
??HAL_I2C_Slave_Sequential_Transmit_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Sequential_Transmit_IT_3:
        POP      {R1,R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1752   }
// 1753 }
          CFI EndBlock cfiBlock14
// 1754 
// 1755 /**
// 1756   * @brief  Sequential receive in slave mode an amount of data in non-blocking mode with Interrupt
// 1757   * @note   This interface allow to manage repeated start condition when a direction change during transfer
// 1758   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1759   *         the configuration information for the specified I2C.
// 1760   * @param  pData Pointer to data buffer
// 1761   * @param  Size Amount of data to be sent
// 1762   * @param  XferOptions Options of Transfer, value of @ref I2C_XferOptions_definition
// 1763   * @retval HAL status
// 1764   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Sequential_Receive_IT
          CFI NoCalls
        THUMB
// 1765 HAL_StatusTypeDef HAL_I2C_Slave_Sequential_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions)
// 1766 {
HAL_I2C_Slave_Sequential_Receive_IT:
        PUSH     {R3-R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
// 1767   /* Check the parameters */
// 1768   assert_param(IS_I2C_TRANSFER_OPTIONS_REQUEST(XferOptions));
// 1769 
// 1770   if(hi2c->State == HAL_I2C_STATE_LISTEN)
        LDRB     R4,[R0, #+61]
        CMP      R4,#+40
        BNE.N    ??HAL_I2C_Slave_Sequential_Receive_IT_0
// 1771   {
// 1772     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Sequential_Receive_IT_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Sequential_Receive_IT_2
// 1773     {
// 1774       return  HAL_ERROR;
??HAL_I2C_Slave_Sequential_Receive_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Sequential_Receive_IT_3
// 1775     }
// 1776 
// 1777     /* Process Locked */
// 1778     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Sequential_Receive_IT_2:
        LDRB     R4,[R0, #+60]
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Slave_Sequential_Receive_IT_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Sequential_Receive_IT_3
??HAL_I2C_Slave_Sequential_Receive_IT_4:
        MOVS     R4,#+1
        STRB     R4,[R0, #+60]
// 1779 
// 1780     /* Check if the I2C is already enabled */
// 1781     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BMI.N    ??HAL_I2C_Slave_Sequential_Receive_IT_5
// 1782     {
// 1783       /* Enable I2C peripheral */
// 1784       __HAL_I2C_ENABLE(hi2c);
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1785     }
// 1786 
// 1787     /* Disable Pos */
// 1788     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Sequential_Receive_IT_5:
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x800
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1789 
// 1790     hi2c->State     = HAL_I2C_STATE_BUSY_RX_LISTEN;
        MOVS     R4,#+42
        STRB     R4,[R0, #+61]
// 1791     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R4,#+32
        STRB     R4,[R0, #+62]
// 1792     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R4,#+0
        STR      R4,[R0, #+64]
// 1793 
// 1794     /* Prepare transfer parameters */
// 1795     hi2c->pBuffPtr    = pData;
        STR      R1,[R0, #+36]
// 1796     hi2c->XferCount   = Size;
        STRH     R2,[R0, #+42]
// 1797     hi2c->XferOptions = XferOptions;
        STR      R3,[R0, #+44]
// 1798     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R1,[R0, #+42]
        STRH     R1,[R0, #+40]
// 1799 
// 1800     /* Clear ADDR flag */
// 1801     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 1802 
// 1803     /* Process Unlocked */
// 1804     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 1805 
// 1806     /* Note : The I2C interrupts must be enabled after unlocking current process
// 1807               to avoid the risk of I2C interrupt handle execution before current
// 1808               process unlock */
// 1809 
// 1810     /* Enable EVT, BUF and ERR interrupt */
// 1811     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x700
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1812 
// 1813     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Sequential_Receive_IT_3
// 1814   }
// 1815   else
// 1816   {
// 1817     return HAL_BUSY;
??HAL_I2C_Slave_Sequential_Receive_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Sequential_Receive_IT_3:
        POP      {R1,R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1818   }
// 1819 }
          CFI EndBlock cfiBlock15
// 1820 
// 1821 /**
// 1822   * @brief  Enable the Address listen mode with Interrupt.
// 1823   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1824   *                the configuration information for the specified I2C.
// 1825   * @retval HAL status
// 1826   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_I2C_EnableListen_IT
          CFI NoCalls
        THUMB
// 1827 HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c)
// 1828 {
// 1829   if(hi2c->State == HAL_I2C_STATE_READY)
HAL_I2C_EnableListen_IT:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+32
        BNE.N    ??HAL_I2C_EnableListen_IT_0
// 1830   {
// 1831     hi2c->State = HAL_I2C_STATE_LISTEN;
        MOVS     R1,#+40
        STRB     R1,[R0, #+61]
// 1832 
// 1833     /* Check if the I2C is already enabled */
// 1834     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BMI.N    ??HAL_I2C_EnableListen_IT_1
// 1835     {
// 1836       /* Enable I2C peripheral */
// 1837       __HAL_I2C_ENABLE(hi2c);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1838     }
// 1839 
// 1840     /* Enable Address Acknowledge */
// 1841     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_EnableListen_IT_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1842 
// 1843     /* Enable EVT and ERR interrupt */
// 1844     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x300
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1845 
// 1846     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_EnableListen_IT_2
// 1847   }
// 1848   else
// 1849   {
// 1850     return HAL_BUSY;
??HAL_I2C_EnableListen_IT_0:
        MOVS     R0,#+2
??HAL_I2C_EnableListen_IT_2:
        BX       LR               ;; return
// 1851   }
// 1852 }
          CFI EndBlock cfiBlock16
// 1853 
// 1854 /**
// 1855   * @brief  Disable the Address listen mode with Interrupt.
// 1856   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1857   *                the configuration information for the specified I2C.
// 1858   * @retval HAL status
// 1859   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function HAL_I2C_DisableListen_IT
          CFI NoCalls
        THUMB
// 1860 HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c)
// 1861 {
// 1862   /* Declaration of tmp to prevent undefined behavior of volatile usage */
// 1863   uint32_t tmp;
// 1864 
// 1865   /* Disable Address listen mode only if a transfer is not ongoing */
// 1866   if(hi2c->State == HAL_I2C_STATE_LISTEN)
HAL_I2C_DisableListen_IT:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+40
        BNE.N    ??HAL_I2C_DisableListen_IT_0
// 1867   {
// 1868     tmp = (uint32_t)(hi2c->State) & I2C_STATE_MSK;
        LDRB     R1,[R0, #+61]
        ANDS     R1,R1,#0x3
// 1869     hi2c->PreviousState = tmp | (uint32_t)(hi2c->Mode);
        LDRB     R2,[R0, #+62]
        ORRS     R1,R2,R1
        STR      R1,[R0, #+48]
// 1870     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 1871     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 1872 
// 1873     /* Disable Address Acknowledge */
// 1874     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 1875 
// 1876     /* Disable EVT and ERR interrupt */
// 1877     __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x300
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
// 1878 
// 1879     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_DisableListen_IT_1
// 1880   }
// 1881   else
// 1882   {
// 1883     return HAL_BUSY;
??HAL_I2C_DisableListen_IT_0:
        MOVS     R0,#+2
??HAL_I2C_DisableListen_IT_1:
        BX       LR               ;; return
// 1884   }
// 1885 }
          CFI EndBlock cfiBlock17
// 1886 
// 1887 /**
// 1888   * @brief  Transmit in master mode an amount of data in non-blocking mode with DMA
// 1889   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 1890   *                the configuration information for the specified I2C.
// 1891   * @param  DevAddress Target device address: The device 7 bits address value
// 1892   *         in datasheet must be shift at right before call interface
// 1893   * @param  pData Pointer to data buffer
// 1894   * @param  Size Amount of data to be sent
// 1895   * @retval HAL status
// 1896   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function HAL_I2C_Master_Transmit_DMA
        THUMB
// 1897 HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size)
// 1898 {
HAL_I2C_Master_Transmit_DMA:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
// 1899   __IO uint32_t count = 0U;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
// 1900 
// 1901   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Master_Transmit_DMA_0
// 1902   {
// 1903     /* Wait until BUSY flag is reset */
// 1904     count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R5,#+25
        UDIV     R0,R0,R5
        MOV      R5,#+1000
        UDIV     R0,R0,R5
        MOVS     R5,#+25
        MULS     R0,R5,R0
        STR      R0,[SP, #+0]
// 1905     do
// 1906     {
// 1907       if(count-- == 0U)
??HAL_I2C_Master_Transmit_DMA_1:
        LDR      R0,[SP, #+0]
        SUBS     R5,R0,#+1
        STR      R5,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_Master_Transmit_DMA_2
// 1908       {
// 1909         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 1910         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 1911 
// 1912         /* Process Unlocked */
// 1913         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 1914 
// 1915         return HAL_TIMEOUT; 
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Transmit_DMA_3
// 1916       }
// 1917     }
// 1918     while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Transmit_DMA_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_I2C_Master_Transmit_DMA_1
// 1919 
// 1920     /* Process Locked */
// 1921     __HAL_LOCK(hi2c);
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Transmit_DMA_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Transmit_DMA_3
??HAL_I2C_Master_Transmit_DMA_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 1922 
// 1923     /* Check if the I2C is already enabled */
// 1924     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Master_Transmit_DMA_5
// 1925     {
// 1926       /* Enable I2C peripheral */
// 1927       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R5,[R4, #+0]
        STR      R0,[R5, #+0]
// 1928     }
// 1929 
// 1930     /* Disable Pos */
// 1931     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Transmit_DMA_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R5,[R4, #+0]
        STR      R0,[R5, #+0]
// 1932 
// 1933     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R4, #+61]
// 1934     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R0,#+16
        STRB     R0,[R4, #+62]
// 1935     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 1936 
// 1937     /* Prepare transfer parameters */
// 1938     hi2c->pBuffPtr    = pData;
        STR      R2,[R4, #+36]
// 1939     hi2c->XferCount   = Size;
        STRH     R3,[R4, #+42]
// 1940     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R0,??DataTable11  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 1941     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
// 1942     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R4, #+68]
// 1943 
// 1944     if(hi2c->XferSize > 0U)
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Transmit_DMA_6
// 1945     {
// 1946       /* Set the I2C DMA transfer complete callback */
// 1947       hi2c->hdmatx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.W    R0,??DataTable20
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+40]
// 1948 
// 1949       /* Set the DMA error callback */
// 1950       hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
        LDR.W    R0,??DataTable20_1
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+48]
// 1951 
// 1952       /* Set the unused DMA callbacks to NULL */
// 1953       hi2c->hdmatx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+44]
// 1954       hi2c->hdmatx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+52]
// 1955 
// 1956       /* Enable the DMA Channel */
// 1957       HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)hi2c->pBuffPtr, (uint32_t)&hi2c->Instance->DR, hi2c->XferSize);
        LDRH     R3,[R4, #+40]
        LDR      R0,[R4, #+0]
        ADDS     R2,R0,#+16
        LDR      R1,[R4, #+36]
        LDR      R0,[R4, #+52]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 1958 
// 1959       /* Enable Acknowledge */
// 1960       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1961 
// 1962       /* Generate Start */
// 1963       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1964 
// 1965       /* Process Unlocked */
// 1966       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 1967 
// 1968       /* Note : The I2C interrupts must be enabled after unlocking current process
// 1969       to avoid the risk of I2C interrupt handle execution before current
// 1970       process unlock */
// 1971 
// 1972       /* Enable EVT and ERR interrupt */
// 1973       __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x300
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 1974 
// 1975       /* Enable DMA Request */
// 1976       SET_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
        B.N      ??HAL_I2C_Master_Transmit_DMA_7
// 1977     }
// 1978     else
// 1979     {
// 1980       /* Enable Acknowledge */
// 1981       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Master_Transmit_DMA_6:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1982 
// 1983       /* Generate Start */
// 1984       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 1985 
// 1986       /* Process Unlocked */
// 1987       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 1988 
// 1989       /* Note : The I2C interrupts must be enabled after unlocking current process
// 1990       to avoid the risk of I2C interrupt handle execution before current
// 1991       process unlock */
// 1992 
// 1993      /* Enable EVT, BUF and ERR interrupt */
// 1994     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x700
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 1995     }
// 1996 
// 1997     return HAL_OK;
??HAL_I2C_Master_Transmit_DMA_7:
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Transmit_DMA_3
// 1998   }
// 1999   else
// 2000   {
// 2001     return HAL_BUSY;
??HAL_I2C_Master_Transmit_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Transmit_DMA_3:
        POP      {R1,R4,R5,PC}    ;; return
// 2002   }
// 2003 }
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0xffff0000
// 2004 
// 2005 /**
// 2006   * @brief  Receive in master mode an amount of data in non-blocking mode with DMA 
// 2007   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2008   *                the configuration information for the specified I2C.
// 2009   * @param  DevAddress Target device address: The device 7 bits address value
// 2010   *         in datasheet must be shift at right before call interface
// 2011   * @param  pData Pointer to data buffer
// 2012   * @param  Size Amount of data to be sent
// 2013   * @retval HAL status
// 2014   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function HAL_I2C_Master_Receive_DMA
        THUMB
// 2015 HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size)
// 2016 {
HAL_I2C_Master_Receive_DMA:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
// 2017   __IO uint32_t count = 0U;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
// 2018   
// 2019   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Master_Receive_DMA_0
// 2020   {
// 2021     /* Wait until BUSY flag is reset */
// 2022     count = I2C_TIMEOUT_BUSY_FLAG * (SystemCoreClock /25U /1000U);
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R5,#+25
        UDIV     R0,R0,R5
        MOV      R5,#+1000
        UDIV     R0,R0,R5
        MOVS     R5,#+25
        MULS     R0,R5,R0
        STR      R0,[SP, #+0]
// 2023     do
// 2024     {
// 2025       if(count-- == 0U)
??HAL_I2C_Master_Receive_DMA_1:
        LDR      R0,[SP, #+0]
        SUBS     R5,R0,#+1
        STR      R5,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_Master_Receive_DMA_2
// 2026       {
// 2027         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 2028         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 2029         
// 2030         /* Process Unlocked */
// 2031         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 2032 
// 2033         return HAL_TIMEOUT; 
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Master_Receive_DMA_3
// 2034       }
// 2035     }
// 2036     while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) != RESET);
??HAL_I2C_Master_Receive_DMA_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_I2C_Master_Receive_DMA_1
// 2037 
// 2038     /* Process Locked */
// 2039     __HAL_LOCK(hi2c);
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Master_Receive_DMA_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Receive_DMA_3
??HAL_I2C_Master_Receive_DMA_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 2040 
// 2041     /* Check if the I2C is already enabled */
// 2042     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Master_Receive_DMA_5
// 2043     {
// 2044       /* Enable I2C peripheral */
// 2045       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R5,[R4, #+0]
        STR      R0,[R5, #+0]
// 2046     }
// 2047 
// 2048     /* Disable Pos */
// 2049     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Master_Receive_DMA_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R5,[R4, #+0]
        STR      R0,[R5, #+0]
// 2050 
// 2051     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R4, #+61]
// 2052     hi2c->Mode      = HAL_I2C_MODE_MASTER;
        MOVS     R0,#+16
        STRB     R0,[R4, #+62]
// 2053     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 2054 
// 2055     /* Prepare transfer parameters */
// 2056     hi2c->pBuffPtr    = pData;
        STR      R2,[R4, #+36]
// 2057     hi2c->XferCount   = Size;
        STRH     R3,[R4, #+42]
// 2058     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 2059     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
// 2060     hi2c->Devaddress  = DevAddress;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R4, #+68]
// 2061 
// 2062     if(hi2c->XferSize > 0U)
        LDRH     R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Master_Receive_DMA_6
// 2063     {
// 2064       /* Set the I2C DMA transfer complete callback */
// 2065       hi2c->hdmarx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.W    R0,??DataTable20
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+40]
// 2066 
// 2067       /* Set the DMA error callback */
// 2068       hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
        LDR.W    R0,??DataTable20_1
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+48]
// 2069 
// 2070       /* Set the unused DMA callbacks to NULL */
// 2071       hi2c->hdmarx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+44]
// 2072       hi2c->hdmarx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+52]
// 2073 
// 2074       /* Enable the DMA Channel */
// 2075       HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->DR, (uint32_t)hi2c->pBuffPtr, hi2c->XferSize);
        LDRH     R3,[R4, #+40]
        LDR      R2,[R4, #+36]
        LDR      R0,[R4, #+0]
        ADDS     R1,R0,#+16
        LDR      R0,[R4, #+56]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 2076 
// 2077       /* Enable Acknowledge */
// 2078       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2079 
// 2080       /* Generate Start */
// 2081       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2082 
// 2083       /* Process Unlocked */
// 2084       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 2085 
// 2086       /* Note : The I2C interrupts must be enabled after unlocking current process
// 2087       to avoid the risk of I2C interrupt handle execution before current
// 2088       process unlock */
// 2089 
// 2090       /* Enable EVT and ERR interrupt */
// 2091       __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x300
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2092 
// 2093       /* Enable DMA Request */
// 2094       SET_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
        B.N      ??HAL_I2C_Master_Receive_DMA_7
// 2095     }
// 2096     else
// 2097     {
// 2098       /* Enable Acknowledge */
// 2099       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Master_Receive_DMA_6:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2100 
// 2101       /* Generate Start */
// 2102       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2103 
// 2104       /* Process Unlocked */
// 2105       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 2106 
// 2107       /* Note : The I2C interrupts must be enabled after unlocking current process
// 2108       to avoid the risk of I2C interrupt handle execution before current
// 2109       process unlock */
// 2110 
// 2111       /* Enable EVT, BUF and ERR interrupt */
// 2112       __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x700
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2113     }
// 2114 
// 2115     return HAL_OK;
??HAL_I2C_Master_Receive_DMA_7:
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Receive_DMA_3
// 2116   }
// 2117   else
// 2118   {
// 2119     return HAL_BUSY;
??HAL_I2C_Master_Receive_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Master_Receive_DMA_3:
        POP      {R1,R4,R5,PC}    ;; return
// 2120   }
// 2121 }
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x10004
// 2122 
// 2123 /**
// 2124   * @brief  Abort a master I2C process communication with Interrupt.
// 2125   * @note   This abort can be called only if state is ready
// 2126   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2127   *         the configuration information for the specified I2C.
// 2128   * @param  DevAddress Target device address: The device 7 bits address value
// 2129   *         in datasheet must be shift at right before call interface
// 2130   * @retval HAL status
// 2131   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function HAL_I2C_Master_Abort_IT
        THUMB
// 2132 HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress)
// 2133 {
HAL_I2C_Master_Abort_IT:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 2134   /* Abort Master transfer during Receive or Transmit process    */
// 2135   if(hi2c->Mode == HAL_I2C_MODE_MASTER)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+16
        BNE.N    ??HAL_I2C_Master_Abort_IT_0
// 2136   {
// 2137     /* Process Locked */
// 2138     __HAL_LOCK(hi2c);
        LDRB     R1,[R0, #+60]
        CMP      R1,#+1
        BNE.N    ??HAL_I2C_Master_Abort_IT_1
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Master_Abort_IT_2
??HAL_I2C_Master_Abort_IT_1:
        MOVS     R1,#+1
        STRB     R1,[R0, #+60]
// 2139 
// 2140     hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 2141     hi2c->State = HAL_I2C_STATE_ABORT;
        MOVS     R1,#+96
        STRB     R1,[R0, #+61]
// 2142 
// 2143     /* Disable Acknowledge */
// 2144     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 2145 
// 2146     /* Generate Stop */
// 2147     SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 2148 
// 2149     hi2c->XferCount = 0U;
        MOVS     R1,#+0
        STRH     R1,[R0, #+42]
// 2150 
// 2151     /* Disable EVT, BUF and ERR interrupt */
// 2152     __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 2153     
// 2154     /* Process Unlocked */
// 2155     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 2156 
// 2157     /* Call the corresponding callback to inform upper layer of End of Transfer */
// 2158     I2C_ITError(hi2c);
          CFI FunCall I2C_ITError
        BL       I2C_ITError
// 2159 
// 2160     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Master_Abort_IT_2
// 2161   }
// 2162   else
// 2163   {
// 2164     /* Wrong usage of abort function */
// 2165     /* This function should be used only in case of abort monitored by master device */
// 2166     return HAL_ERROR;
??HAL_I2C_Master_Abort_IT_0:
        MOVS     R0,#+1
??HAL_I2C_Master_Abort_IT_2:
        POP      {R1,PC}          ;; return
// 2167   }
// 2168 }
          CFI EndBlock cfiBlock20
// 2169 
// 2170 /**
// 2171   * @brief  Transmit in slave mode an amount of data in non-blocking mode with DMA 
// 2172   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2173   *                the configuration information for the specified I2C.
// 2174   * @param  pData Pointer to data buffer
// 2175   * @param  Size Amount of data to be sent
// 2176   * @retval HAL status
// 2177   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Transmit_DMA
        THUMB
// 2178 HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
// 2179 {
HAL_I2C_Slave_Transmit_DMA:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 2180   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Slave_Transmit_DMA_0
// 2181   {
// 2182     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Transmit_DMA_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Transmit_DMA_2
// 2183     {
// 2184       return  HAL_ERROR;
??HAL_I2C_Slave_Transmit_DMA_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Transmit_DMA_3
// 2185     }
// 2186 
// 2187     /* Process Locked */
// 2188     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Transmit_DMA_2:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Slave_Transmit_DMA_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Transmit_DMA_3
??HAL_I2C_Slave_Transmit_DMA_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 2189 
// 2190     /* Check if the I2C is already enabled */
// 2191     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Slave_Transmit_DMA_5
// 2192     {
// 2193       /* Enable I2C peripheral */
// 2194       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R3,[R4, #+0]
        STR      R0,[R3, #+0]
// 2195     }
// 2196 
// 2197     /* Disable Pos */
// 2198     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Transmit_DMA_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R3,[R4, #+0]
        STR      R0,[R3, #+0]
// 2199 
// 2200     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R4, #+61]
// 2201     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R0,#+32
        STRB     R0,[R4, #+62]
// 2202     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 2203 
// 2204     /* Prepare transfer parameters */
// 2205     hi2c->pBuffPtr    = pData;
        STR      R1,[R4, #+36]
// 2206     hi2c->XferCount   = Size;
        STRH     R2,[R4, #+42]
// 2207     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 2208     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
// 2209 
// 2210     /* Set the I2C DMA transfer complete callback */
// 2211     hi2c->hdmatx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.W    R0,??DataTable20
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+40]
// 2212 
// 2213     /* Set the DMA error callback */
// 2214     hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
        LDR.W    R0,??DataTable20_1
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+48]
// 2215 
// 2216     /* Set the unused DMA callbacks to NULL */
// 2217     hi2c->hdmatx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+44]
// 2218     hi2c->hdmatx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+52]
// 2219 
// 2220     /* Enable the DMA Channel */
// 2221     HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)hi2c->pBuffPtr, (uint32_t)&hi2c->Instance->DR, hi2c->XferSize);
        LDRH     R3,[R4, #+40]
        LDR      R0,[R4, #+0]
        ADDS     R2,R0,#+16
        LDR      R1,[R4, #+36]
        LDR      R0,[R4, #+52]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 2222 
// 2223     /* Enable Address Acknowledge */
// 2224     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2225 
// 2226     /* Process Unlocked */
// 2227     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 2228 
// 2229     /* Note : The I2C interrupts must be enabled after unlocking current process
// 2230                 to avoid the risk of I2C interrupt handle execution before current
// 2231                 process unlock */
// 2232     /* Enable EVT and ERR interrupt */
// 2233     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x300
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2234 
// 2235     /* Enable DMA Request */
// 2236     hi2c->Instance->CR2 |= I2C_CR2_DMAEN;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2237 
// 2238     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Transmit_DMA_3
// 2239   }
// 2240   else
// 2241   {
// 2242     return HAL_BUSY;
??HAL_I2C_Slave_Transmit_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Transmit_DMA_3:
        POP      {R4,PC}          ;; return
// 2243   }
// 2244 }
          CFI EndBlock cfiBlock21
// 2245 
// 2246 /**
// 2247   * @brief  Receive in slave mode an amount of data in non-blocking mode with DMA 
// 2248   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2249   *                the configuration information for the specified I2C.
// 2250   * @param  pData Pointer to data buffer
// 2251   * @param  Size Amount of data to be sent
// 2252   * @retval HAL status
// 2253   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function HAL_I2C_Slave_Receive_DMA
        THUMB
// 2254 HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
// 2255 {
HAL_I2C_Slave_Receive_DMA:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 2256   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Slave_Receive_DMA_0
// 2257   {
// 2258     if((pData == NULL) || (Size == 0U))
        CMP      R1,#+0
        BEQ.N    ??HAL_I2C_Slave_Receive_DMA_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??HAL_I2C_Slave_Receive_DMA_2
// 2259     {
// 2260       return  HAL_ERROR;
??HAL_I2C_Slave_Receive_DMA_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Slave_Receive_DMA_3
// 2261     }
// 2262 
// 2263     /* Process Locked */
// 2264     __HAL_LOCK(hi2c);
??HAL_I2C_Slave_Receive_DMA_2:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Slave_Receive_DMA_4
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Slave_Receive_DMA_3
??HAL_I2C_Slave_Receive_DMA_4:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 2265 
// 2266     /* Check if the I2C is already enabled */
// 2267     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Slave_Receive_DMA_5
// 2268     {
// 2269       /* Enable I2C peripheral */
// 2270       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R3,[R4, #+0]
        STR      R0,[R3, #+0]
// 2271     }
// 2272 
// 2273     /* Disable Pos */
// 2274     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Slave_Receive_DMA_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R3,[R4, #+0]
        STR      R0,[R3, #+0]
// 2275 
// 2276     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R4, #+61]
// 2277     hi2c->Mode      = HAL_I2C_MODE_SLAVE;
        MOVS     R0,#+32
        STRB     R0,[R4, #+62]
// 2278     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 2279 
// 2280     /* Prepare transfer parameters */
// 2281     hi2c->pBuffPtr    = pData;
        STR      R1,[R4, #+36]
// 2282     hi2c->XferCount   = Size;
        STRH     R2,[R4, #+42]
// 2283     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 2284     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R4, #+42]
        STRH     R0,[R4, #+40]
// 2285 
// 2286     /* Set the I2C DMA transfer complete callback */
// 2287     hi2c->hdmarx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.W    R0,??DataTable20
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+40]
// 2288     
// 2289     /* Set the DMA error callback */
// 2290     hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
        LDR.W    R0,??DataTable20_1
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+48]
// 2291 
// 2292     /* Set the unused DMA callbacks to NULL */
// 2293     hi2c->hdmarx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+44]
// 2294     hi2c->hdmarx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+52]
// 2295 
// 2296     /* Enable the DMA Channel */
// 2297     HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->DR, (uint32_t)hi2c->pBuffPtr, hi2c->XferSize);
        LDRH     R3,[R4, #+40]
        LDR      R2,[R4, #+36]
        LDR      R0,[R4, #+0]
        ADDS     R1,R0,#+16
        LDR      R0,[R4, #+56]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 2298 
// 2299     /* Enable Address Acknowledge */
// 2300     SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 2301 
// 2302     /* Process Unlocked */
// 2303     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 2304 
// 2305     /* Note : The I2C interrupts must be enabled after unlocking current process
// 2306               to avoid the risk of I2C interrupt handle execution before current
// 2307               process unlock */
// 2308     /* Enable EVT and ERR interrupt */
// 2309     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x300
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2310 
// 2311     /* Enable DMA Request */
// 2312     SET_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 2313 
// 2314     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Slave_Receive_DMA_3
// 2315   }
// 2316   else
// 2317   {
// 2318     return HAL_BUSY;
??HAL_I2C_Slave_Receive_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Slave_Receive_DMA_3:
        POP      {R4,PC}          ;; return
// 2319   }
// 2320 }
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x10002
// 2321 /**
// 2322   * @brief  Write an amount of data in blocking mode to a specific memory address
// 2323   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2324   *                the configuration information for the specified I2C.
// 2325   * @param  DevAddress Target device address: The device 7 bits address value
// 2326   *         in datasheet must be shift at right before call interface
// 2327   * @param  MemAddress Internal memory address
// 2328   * @param  MemAddSize Size of internal memory address
// 2329   * @param  pData Pointer to data buffer
// 2330   * @param  Size Amount of data to be sent
// 2331   * @param  Timeout Timeout duration
// 2332   * @retval HAL status
// 2333   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Write
        THUMB
// 2334 HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout)
// 2335 {
HAL_I2C_Mem_Write:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
// 2336   uint32_t tickstart = 0x00U;
        MOVS     R6,#+0
// 2337 
// 2338   /* Init tickstart for timeout management*/
// 2339   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
// 2340 
// 2341   /* Check the parameters */
// 2342   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 2343 
// 2344   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Mem_Write_0
        LDR      R10,[SP, #+40]
// 2345   {
// 2346     if((pData == NULL) || (Size == 0U))
        CMP      R10,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Write_2
// 2347     {
// 2348       return  HAL_ERROR;
??HAL_I2C_Mem_Write_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_3
// 2349     }
// 2350 
// 2351     /* Wait until BUSY flag is reset */
// 2352     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Write_2:
        STR      R6,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_4
// 2353     {
// 2354       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_3
// 2355     }
// 2356 
// 2357     /* Process Locked */
// 2358     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Write_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Write_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_3
??HAL_I2C_Mem_Write_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 2359 
// 2360     /* Check if the I2C is already enabled */
// 2361     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Write_6
// 2362     {
// 2363       /* Enable I2C peripheral */
// 2364       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2365     }
// 2366 
// 2367     /* Disable Pos */
// 2368     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Write_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2369 
// 2370     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R5, #+61]
// 2371     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 2372     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 2373 
// 2374     /* Prepare transfer parameters */
// 2375     hi2c->pBuffPtr    = pData;
        STR      R10,[R5, #+36]
// 2376     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 2377     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 2378     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
        LDR      R4,[SP, #+48]
// 2379 
// 2380     /* Send Slave Address and Memory Address */
// 2381     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, Timeout, tickstart) != HAL_OK)
        STR      R6,[SP, #+4]
        STR      R4,[SP, #+0]
        MOV      R3,R9
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,R8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryWrite
        BL       I2C_RequestMemoryWrite
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_7
// 2382     {
// 2383       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Write_8
// 2384       {
// 2385         /* Process Unlocked */
// 2386         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2387         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_3
// 2388       }
// 2389       else
// 2390       {
// 2391         /* Process Unlocked */
// 2392         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Write_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2393         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Write_3
// 2394       }
// 2395     }
// 2396 
// 2397     while(hi2c->XferSize > 0U)
// 2398     {
// 2399       /* Wait until TXE flag is set */
// 2400       if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
// 2401       {
// 2402         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
// 2403         {
// 2404           /* Generate Stop */
// 2405           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
// 2406           return HAL_ERROR;
// 2407         }
// 2408         else
// 2409         {
// 2410           return HAL_TIMEOUT;
// 2411         }
// 2412       }
// 2413      
// 2414       /* Write data to DR */
// 2415       hi2c->Instance->DR = (*hi2c->pBuffPtr++);
??HAL_I2C_Mem_Write_9:
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+16]
// 2416       hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2417       hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2418 
// 2419       if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET) && (hi2c->XferSize != 0U))
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_I2C_Mem_Write_7
        LDRH     R0,[R5, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_7
// 2420       {
// 2421         /* Write data to DR */
// 2422         hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDRB     R0,[R0, #+0]
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+16]
// 2423         hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2424         hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2425       }
??HAL_I2C_Mem_Write_7:
        LDRH     R0,[R5, #+40]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_10
        MOVS     R2,R6
        MOVS     R1,R4
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_9
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Write_11
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_3
??HAL_I2C_Mem_Write_11:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Write_3
// 2426     }
// 2427 
// 2428     /* Wait until BTF flag is set */
// 2429     if(I2C_WaitOnBTFFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Mem_Write_10:
        MOVS     R2,R6
        MOVS     R1,R4
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnBTFFlagUntilTimeout
        BL       I2C_WaitOnBTFFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_12
// 2430     {
// 2431       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Write_13
// 2432       {
// 2433         /* Generate Stop */
// 2434         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2435         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_3
// 2436       }
// 2437       else
// 2438       {
// 2439         return HAL_TIMEOUT;
??HAL_I2C_Mem_Write_13:
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Write_3
// 2440       }
// 2441     }
// 2442 
// 2443     /* Generate Stop */
// 2444     SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
??HAL_I2C_Mem_Write_12:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2445 
// 2446     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R5, #+61]
// 2447     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+62]
// 2448 
// 2449     /* Process Unlocked */
// 2450     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2451     
// 2452     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Write_3
// 2453   }
// 2454   else
// 2455   {
// 2456     return HAL_BUSY;
??HAL_I2C_Mem_Write_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Write_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 2457   }
// 2458 }
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     SystemCoreClock
// 2459 
// 2460 /**
// 2461   * @brief  Read an amount of data in blocking mode from a specific memory address
// 2462   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2463   *                the configuration information for the specified I2C.
// 2464   * @param  DevAddress Target device address: The device 7 bits address value
// 2465   *         in datasheet must be shift at right before call interface
// 2466   * @param  MemAddress Internal memory address
// 2467   * @param  MemAddSize Size of internal memory address
// 2468   * @param  pData Pointer to data buffer
// 2469   * @param  Size Amount of data to be sent
// 2470   * @param  Timeout Timeout duration
// 2471   * @retval HAL status
// 2472   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Read
        THUMB
// 2473 HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout)
// 2474 {
HAL_I2C_Mem_Read:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOV      R8,R1
        MOV      R9,R2
        MOV      R10,R3
// 2475   uint32_t tickstart = 0x00U;
        MOVS     R7,#+0
// 2476 
// 2477   /* Init tickstart for timeout management*/
// 2478   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
// 2479 
// 2480   /* Check the parameters */
// 2481   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 2482 
// 2483   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Mem_Read_0
        LDR      R6,[SP, #+40]
// 2484   {
// 2485     if((pData == NULL) || (Size == 0U))
        CMP      R6,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Read_2
// 2486     {
// 2487       return  HAL_ERROR;
??HAL_I2C_Mem_Read_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_3
// 2488     }
// 2489 
// 2490     /* Wait until BUSY flag is reset */
// 2491     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Read_2:
        STR      R7,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_4
// 2492     {
// 2493       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_3
// 2494     }
// 2495 
// 2496     /* Process Locked */
// 2497     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Read_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_3
??HAL_I2C_Mem_Read_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 2498 
// 2499     /* Check if the I2C is already enabled */
// 2500     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Read_6
// 2501     {
// 2502       /* Enable I2C peripheral */
// 2503       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2504     }
// 2505 
// 2506     /* Disable Pos */
// 2507     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Read_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2508 
// 2509     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R5, #+61]
// 2510     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 2511     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 2512 
// 2513     /* Prepare transfer parameters */
// 2514     hi2c->pBuffPtr    = pData;
        STR      R6,[R5, #+36]
// 2515     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 2516     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 2517     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
        LDR      R6,[SP, #+48]
// 2518 
// 2519     /* Send Slave Address and Memory Address */
// 2520     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+4]
        STR      R6,[SP, #+0]
        MOV      R3,R10
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryRead
        BL       I2C_RequestMemoryRead
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_7
// 2521     {
// 2522       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Read_8
// 2523       {
// 2524         /* Process Unlocked */
// 2525         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2526         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_3
// 2527       }
// 2528       else
// 2529       {
// 2530         /* Process Unlocked */
// 2531         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Read_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2532         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
// 2533       }
// 2534     }
// 2535 
// 2536     if(hi2c->XferSize == 1U)
??HAL_I2C_Mem_Read_7:
        LDRH     R0,[R5, #+40]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_9
// 2537     {
// 2538       /* Disable Acknowledge */
// 2539       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2540 
// 2541       /* Clear ADDR flag */
// 2542       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 2543 
// 2544       /* Generate Stop */
// 2545       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_I2C_Mem_Read_10
// 2546     }
// 2547     else if(hi2c->XferSize == 2U)
??HAL_I2C_Mem_Read_9:
        LDRH     R0,[R5, #+40]
        CMP      R0,#+2
        BNE.N    ??HAL_I2C_Mem_Read_11
// 2548     {
// 2549       /* Disable Acknowledge */
// 2550       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2551 
// 2552       /* Enable Pos */
// 2553       SET_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2554 
// 2555       /* Clear ADDR flag */
// 2556       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Mem_Read_10
// 2557     }
// 2558     else
// 2559     {
// 2560       /* Clear ADDR flag */
// 2561       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Mem_Read_11:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Mem_Read_10
// 2562     }
// 2563 
// 2564     while(hi2c->XferSize > 0U)
// 2565     {
// 2566       if(hi2c->XferSize <= 3U)
// 2567       {
// 2568         /* One byte */
// 2569         if(hi2c->XferSize== 1U)
// 2570         {
// 2571           /* Wait until RXNE flag is set */
// 2572           if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
// 2573           {
// 2574             if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
// 2575             {
// 2576               return HAL_TIMEOUT;
// 2577             }
// 2578             else
// 2579             {
// 2580               return HAL_ERROR;
// 2581             }
// 2582           }
// 2583 
// 2584           /* Read data from DR */
// 2585           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??HAL_I2C_Mem_Read_12:
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2586           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2587           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
??HAL_I2C_Mem_Read_10:
        LDRH     R0,[R5, #+40]
        CMP      R0,#+0
        BEQ.W    ??HAL_I2C_Mem_Read_13
        LDRH     R0,[R5, #+40]
        CMP      R0,#+4
        BCS.W    ??HAL_I2C_Mem_Read_14
        LDRH     R0,[R5, #+40]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_15
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnRXNEFlagUntilTimeout
        BL       I2C_WaitOnRXNEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_12
        LDR      R0,[R5, #+64]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Mem_Read_16
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
??HAL_I2C_Mem_Read_16:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_3
// 2588         }
// 2589         /* Two bytes */
// 2590         else if(Size == 2U)
??HAL_I2C_Mem_Read_15:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BNE.N    ??HAL_I2C_Mem_Read_17
// 2591         {
// 2592           /* Wait until BTF flag is set */
// 2593           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable26  ;; 0x10004
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_18
// 2594           {
// 2595             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
// 2596           }
// 2597 
// 2598           /* Generate Stop */
// 2599           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_Mem_Read_18:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2600 
// 2601           /* Read data from DR */
// 2602           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2603           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2604           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2605 
// 2606           /* Read data from DR */
// 2607           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2608           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2609           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
        B.N      ??HAL_I2C_Mem_Read_10
// 2610         }
// 2611         /* 3 Last bytes */
// 2612         else
// 2613         {
// 2614           /* Wait until BTF flag is set */
// 2615           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Mem_Read_17:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable26  ;; 0x10004
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_19
// 2616           {
// 2617             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
// 2618           }
// 2619 
// 2620           /* Disable Acknowledge */
// 2621           CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Mem_Read_19:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2622 
// 2623           /* Read data from DR */
// 2624           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2625           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2626           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2627 
// 2628           /* Wait until BTF flag is set */
// 2629           if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BTF, RESET, Timeout, tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        LDR.W    R1,??DataTable26  ;; 0x10004
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_20
// 2630           {
// 2631             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
// 2632           }
// 2633 
// 2634           /* Generate Stop */
// 2635           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_Mem_Read_20:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2636 
// 2637           /* Read data from DR */
// 2638           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2639           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2640           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2641 
// 2642           /* Read data from DR */
// 2643           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2644           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2645           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
        B.N      ??HAL_I2C_Mem_Read_10
// 2646         }
// 2647       }
// 2648       else
// 2649       {
// 2650         /* Wait until RXNE flag is set */
// 2651         if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout, tickstart) != HAL_OK)
??HAL_I2C_Mem_Read_14:
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnRXNEFlagUntilTimeout
        BL       I2C_WaitOnRXNEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_21
// 2652         {
// 2653           if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
        LDR      R0,[R5, #+64]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Mem_Read_22
// 2654           {
// 2655             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_3
// 2656           }
// 2657           else
// 2658           {
// 2659             return HAL_ERROR;
??HAL_I2C_Mem_Read_22:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_3
// 2660           }
// 2661         }
// 2662 
// 2663         /* Read data from DR */
// 2664         (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??HAL_I2C_Mem_Read_21:
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2665         hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2666         hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
// 2667 
// 2668         if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BPL.W    ??HAL_I2C_Mem_Read_10
// 2669         {
// 2670           /* Read data from DR */
// 2671           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R5, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R5, #+36]
        LDR      R1,[R5, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 2672           hi2c->XferSize--;
        LDRH     R0,[R5, #+40]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+40]
// 2673           hi2c->XferCount--;
        LDRH     R0,[R5, #+42]
        SUBS     R0,R0,#+1
        STRH     R0,[R5, #+42]
        B.N      ??HAL_I2C_Mem_Read_10
// 2674         }
// 2675       }
// 2676     }
// 2677 
// 2678     hi2c->State = HAL_I2C_STATE_READY;
??HAL_I2C_Mem_Read_13:
        MOVS     R0,#+32
        STRB     R0,[R5, #+61]
// 2679     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+62]
// 2680 
// 2681     /* Process Unlocked */
// 2682     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2683 
// 2684     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Read_3
// 2685   }
// 2686   else
// 2687   {
// 2688     return HAL_BUSY;
??HAL_I2C_Mem_Read_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Read_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 2689   }
// 2690 }
          CFI EndBlock cfiBlock24
// 2691 
// 2692 /**
// 2693   * @brief  Write an amount of data in non-blocking mode with Interrupt to a specific memory address
// 2694   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2695   *                the configuration information for the specified I2C.
// 2696   * @param  DevAddress Target device address: The device 7 bits address value
// 2697   *         in datasheet must be shift at right before call interface
// 2698   * @param  MemAddress Internal memory address
// 2699   * @param  MemAddSize Size of internal memory address
// 2700   * @param  pData Pointer to data buffer
// 2701   * @param  Size Amount of data to be sent
// 2702   * @retval HAL status
// 2703   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Write_IT
        THUMB
// 2704 HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size)
// 2705 {
HAL_I2C_Mem_Write_IT:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
// 2706   uint32_t tickstart = 0x00U;
        MOVS     R9,#+0
// 2707 
// 2708   /* Init tickstart for timeout management*/
// 2709   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R9,R0
// 2710 
// 2711   /* Check the parameters */
// 2712   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 2713   
// 2714   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_Mem_Write_IT_0
        LDR      R10,[SP, #+40]
// 2715   {
// 2716     if((pData == NULL) || (Size == 0U))
        CMP      R10,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_IT_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Write_IT_2
// 2717     {
// 2718       return  HAL_ERROR;
??HAL_I2C_Mem_Write_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_IT_3
// 2719     }
// 2720 
// 2721     /* Wait until BUSY flag is reset */
// 2722     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Write_IT_2:
        STR      R9,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_IT_4
// 2723     {
// 2724       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_IT_3
// 2725     }
// 2726 
// 2727     /* Process Locked */
// 2728     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Write_IT_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Write_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_IT_3
??HAL_I2C_Mem_Write_IT_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 2729 
// 2730     /* Check if the I2C is already enabled */
// 2731     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Write_IT_6
// 2732     {
// 2733       /* Enable I2C peripheral */
// 2734       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2735     }
// 2736 
// 2737     /* Disable Pos */
// 2738     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Write_IT_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2739 
// 2740     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R5, #+61]
// 2741     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 2742     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 2743     
// 2744     /* Prepare transfer parameters */
// 2745     hi2c->pBuffPtr    = pData;
        STR      R10,[R5, #+36]
// 2746     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 2747     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 2748     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
// 2749 
// 2750     /* Send Slave Address and Memory Address */
// 2751     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG, tickstart) != HAL_OK)
        STR      R9,[SP, #+4]
        MOVS     R0,#+35
        STR      R0,[SP, #+0]
        MOV      R3,R8
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryWrite
        BL       I2C_RequestMemoryWrite
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_IT_7
// 2752     {
// 2753       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Write_IT_8
// 2754       {
// 2755         /* Process Unlocked */
// 2756         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2757         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_IT_3
// 2758       }
// 2759       else
// 2760       {
// 2761         /* Process Unlocked */
// 2762         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Write_IT_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2763         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Write_IT_3
// 2764       }
// 2765     }
// 2766 
// 2767     /* Process Unlocked */
// 2768     __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Write_IT_7:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2769 
// 2770     /* Note : The I2C interrupts must be enabled after unlocking current process
// 2771               to avoid the risk of I2C interrupt handle execution before current
// 2772               process unlock */
// 2773 
// 2774     /* Enable EVT, BUF and ERR interrupt */
// 2775     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x700
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 2776 
// 2777     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Write_IT_3
// 2778   }
// 2779   else
// 2780   {
// 2781     return HAL_BUSY;
??HAL_I2C_Mem_Write_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Write_IT_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 2782   }
// 2783 }
          CFI EndBlock cfiBlock25
// 2784 
// 2785 /**
// 2786   * @brief  Read an amount of data in non-blocking mode with Interrupt from a specific memory address
// 2787   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2788   *                the configuration information for the specified I2C.
// 2789   * @param  DevAddress Target device address: The device 7 bits address value
// 2790   *         in datasheet must be shift at right before call interface
// 2791   * @param  MemAddress Internal memory address
// 2792   * @param  MemAddSize Size of internal memory address
// 2793   * @param  pData Pointer to data buffer
// 2794   * @param  Size Amount of data to be sent
// 2795   * @retval HAL status
// 2796   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Read_IT
        THUMB
// 2797 HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size)
// 2798 {
HAL_I2C_Mem_Read_IT:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
// 2799   uint32_t tickstart = 0x00U;
        MOVS     R9,#+0
// 2800 
// 2801   /* Init tickstart for timeout management*/
// 2802   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R9,R0
// 2803 
// 2804   /* Check the parameters */
// 2805   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 2806   
// 2807   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Mem_Read_IT_0
        LDR      R10,[SP, #+40]
// 2808   {
// 2809     if((pData == NULL) || (Size == 0U))
        CMP      R10,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_IT_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Read_IT_2
// 2810     {
// 2811       return  HAL_ERROR;
??HAL_I2C_Mem_Read_IT_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_IT_3
// 2812     }
// 2813 
// 2814     /* Wait until BUSY flag is reset */
// 2815     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Read_IT_2:
        STR      R9,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_IT_4
// 2816     {
// 2817       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_IT_3
// 2818     }
// 2819 
// 2820     /* Process Locked */
// 2821     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Read_IT_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_IT_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_IT_3
??HAL_I2C_Mem_Read_IT_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 2822 
// 2823     /* Check if the I2C is already enabled */
// 2824     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Read_IT_6
// 2825     {
// 2826       /* Enable I2C peripheral */
// 2827       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2828     }
// 2829 
// 2830     /* Disable Pos */
// 2831     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Read_IT_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2832 
// 2833     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R5, #+61]
// 2834     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 2835     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 2836 
// 2837     /* Prepare transfer parameters */
// 2838     hi2c->pBuffPtr    = pData;
        STR      R10,[R5, #+36]
// 2839     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 2840     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 2841     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
// 2842 
// 2843     /* Send Slave Address and Memory Address */
// 2844     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG, tickstart) != HAL_OK)
        STR      R9,[SP, #+4]
        MOVS     R0,#+35
        STR      R0,[SP, #+0]
        MOV      R3,R8
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryRead
        BL       I2C_RequestMemoryRead
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_IT_7
// 2845     {
// 2846       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Read_IT_8
// 2847       {
// 2848         /* Process Unlocked */
// 2849         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2850         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_IT_3
// 2851       }
// 2852       else
// 2853       {
// 2854         /* Process Unlocked */
// 2855         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Read_IT_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2856         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_IT_3
// 2857       }
// 2858     }
// 2859 
// 2860     if(hi2c->XferCount == 1U)
??HAL_I2C_Mem_Read_IT_7:
        LDRH     R0,[R5, #+42]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_IT_9
// 2861     {
// 2862       /* Disable Acknowledge */
// 2863       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2864 
// 2865       /* Clear ADDR flag */
// 2866       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 2867 
// 2868       /* Generate Stop */
// 2869       SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_I2C_Mem_Read_IT_10
// 2870     }
// 2871     else if(hi2c->XferCount == 2U)
??HAL_I2C_Mem_Read_IT_9:
        LDRH     R0,[R5, #+42]
        CMP      R0,#+2
        BNE.N    ??HAL_I2C_Mem_Read_IT_11
// 2872     {
// 2873       /* Disable Acknowledge */
// 2874       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2875 
// 2876       /* Enable Pos */
// 2877       SET_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2878 
// 2879       /* Clear ADDR flag */
// 2880       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??HAL_I2C_Mem_Read_IT_10
// 2881     }
// 2882     else
// 2883     {
// 2884       /* Enable Acknowledge */
// 2885       SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??HAL_I2C_Mem_Read_IT_11:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2886 
// 2887       /* Clear ADDR flag */
// 2888       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 2889     }
// 2890 
// 2891     /* Process Unlocked */
// 2892     __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Read_IT_10:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2893 
// 2894     /* Note : The I2C interrupts must be enabled after unlocking current process 
// 2895               to avoid the risk of I2C interrupt handle execution before current
// 2896               process unlock */
// 2897 
// 2898     /* Enable EVT, BUF and ERR interrupt */
// 2899     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x700
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 2900 
// 2901     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Read_IT_3
// 2902   }
// 2903   else
// 2904   {
// 2905     return HAL_BUSY;
??HAL_I2C_Mem_Read_IT_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Read_IT_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 2906   }
// 2907 }
          CFI EndBlock cfiBlock26
// 2908 
// 2909 /**
// 2910   * @brief  Write an amount of data in non-blocking mode with DMA to a specific memory address
// 2911   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 2912   *                the configuration information for the specified I2C.
// 2913   * @param  DevAddress Target device address: The device 7 bits address value
// 2914   *         in datasheet must be shift at right before call interface
// 2915   * @param  MemAddress Internal memory address
// 2916   * @param  MemAddSize Size of internal memory address
// 2917   * @param  pData Pointer to data buffer
// 2918   * @param  Size Amount of data to be sent
// 2919   * @retval HAL status
// 2920   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Write_DMA
        THUMB
// 2921 HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size)
// 2922 {
HAL_I2C_Mem_Write_DMA:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
// 2923   uint32_t tickstart = 0x00U;
        MOVS     R9,#+0
// 2924 
// 2925   /* Init tickstart for timeout management*/
// 2926   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R9,R0
// 2927 
// 2928   /* Check the parameters */
// 2929   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 2930 
// 2931   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Mem_Write_DMA_0
        LDR      R10,[SP, #+40]
// 2932   {
// 2933     if((pData == NULL) || (Size == 0U))
        CMP      R10,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_DMA_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Write_DMA_2
// 2934     {
// 2935       return  HAL_ERROR;
??HAL_I2C_Mem_Write_DMA_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_DMA_3
// 2936     }
// 2937 
// 2938     /* Wait until BUSY flag is reset */
// 2939     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Write_DMA_2:
        STR      R9,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_DMA_4
// 2940     {
// 2941       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_DMA_3
// 2942     }
// 2943 
// 2944     /* Process Locked */
// 2945     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Write_DMA_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Write_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Write_DMA_3
??HAL_I2C_Mem_Write_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 2946 
// 2947     /* Check if the I2C is already enabled */
// 2948     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Write_DMA_6
// 2949     {
// 2950       /* Enable I2C peripheral */
// 2951       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2952     }
// 2953 
// 2954     /* Disable Pos */
// 2955     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Write_DMA_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 2956 
// 2957     hi2c->State     = HAL_I2C_STATE_BUSY_TX;
        MOVS     R0,#+33
        STRB     R0,[R5, #+61]
// 2958     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 2959     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 2960 
// 2961     /* Prepare transfer parameters */
// 2962     hi2c->pBuffPtr    = pData;
        STR      R10,[R5, #+36]
// 2963     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 2964     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 2965     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
// 2966 
// 2967     /* Set the I2C DMA transfer complete callback */
// 2968       hi2c->hdmatx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.N    R0,??DataTable20
        LDR      R1,[R5, #+52]
        STR      R0,[R1, #+40]
// 2969 
// 2970     /* Set the DMA error callback */
// 2971     hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
        LDR.N    R0,??DataTable20_1
        LDR      R1,[R5, #+52]
        STR      R0,[R1, #+48]
// 2972 
// 2973     /* Set the unused DMA callbacks to NULL */
// 2974     hi2c->hdmatx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R5, #+52]
        STR      R0,[R1, #+44]
// 2975     hi2c->hdmatx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R5, #+52]
        STR      R0,[R1, #+52]
// 2976 
// 2977     /* Enable the DMA Channel */
// 2978     HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)hi2c->pBuffPtr, (uint32_t)&hi2c->Instance->DR, hi2c->XferSize);
        LDRH     R3,[R5, #+40]
        LDR      R0,[R5, #+0]
        ADDS     R2,R0,#+16
        LDR      R1,[R5, #+36]
        LDR      R0,[R5, #+52]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 2979 
// 2980     /* Send Slave Address and Memory Address */
// 2981     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG, tickstart) != HAL_OK)
        STR      R9,[SP, #+4]
        MOVS     R0,#+35
        STR      R0,[SP, #+0]
        MOV      R3,R8
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryWrite
        BL       I2C_RequestMemoryWrite
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Write_DMA_7
// 2982     {
// 2983       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Write_DMA_8
// 2984       {
// 2985         /* Process Unlocked */
// 2986         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2987         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Write_DMA_3
// 2988       }
// 2989       else
// 2990       {
// 2991         /* Process Unlocked */
// 2992         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Write_DMA_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 2993         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Write_DMA_3
// 2994       }
// 2995     }
// 2996 
// 2997     /* Clear ADDR flag */
// 2998     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Mem_Write_DMA_7:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 2999 
// 3000     /* Process Unlocked */
// 3001     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 3002 
// 3003     /* Note : The I2C interrupts must be enabled after unlocking current process
// 3004               to avoid the risk of I2C interrupt handle execution before current
// 3005               process unlock */
// 3006     /* Enable ERR interrupt */
// 3007     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_ERR);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x100
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 3008 
// 3009     /* Enable DMA Request */
// 3010     SET_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 3011 
// 3012     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Write_DMA_3
// 3013   }
// 3014   else
// 3015   {
// 3016     return HAL_BUSY;
??HAL_I2C_Mem_Write_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Write_DMA_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 3017   }
// 3018 }
          CFI EndBlock cfiBlock27
// 3019 
// 3020 /**
// 3021   * @brief  Reads an amount of data in non-blocking mode with DMA from a specific memory address.
// 3022   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3023   *                the configuration information for the specified I2C.
// 3024   * @param  DevAddress Target device address: The device 7 bits address value
// 3025   *         in datasheet must be shift at right before call interface
// 3026   * @param  MemAddress Internal memory address
// 3027   * @param  MemAddSize Size of internal memory address
// 3028   * @param  pData Pointer to data buffer
// 3029   * @param  Size Amount of data to be read
// 3030   * @retval HAL status
// 3031   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function HAL_I2C_Mem_Read_DMA
        THUMB
// 3032 HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size)
// 3033 {
HAL_I2C_Mem_Read_DMA:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
// 3034   uint32_t tickstart = 0x00U;
        MOVS     R9,#+0
// 3035 
// 3036   /* Init tickstart for timeout management*/
// 3037   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R9,R0
// 3038 
// 3039   /* Check the parameters */
// 3040   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
// 3041 
// 3042   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R5, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_Mem_Read_DMA_0
        LDR      R10,[SP, #+40]
// 3043   {
// 3044     if((pData == NULL) || (Size == 0U))
        CMP      R10,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_DMA_1
        LDR      R4,[SP, #+44]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??HAL_I2C_Mem_Read_DMA_2
// 3045     {
// 3046       return  HAL_ERROR;
??HAL_I2C_Mem_Read_DMA_1:
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_DMA_3
// 3047     }
// 3048 
// 3049     /* Wait until BUSY flag is reset */
// 3050     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
??HAL_I2C_Mem_Read_DMA_2:
        STR      R9,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R5
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_DMA_4
// 3051     {
// 3052       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_DMA_3
// 3053     }
// 3054 
// 3055     /* Process Locked */
// 3056     __HAL_LOCK(hi2c);
??HAL_I2C_Mem_Read_DMA_4:
        LDRB     R0,[R5, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_Mem_Read_DMA_5
        MOVS     R0,#+2
        B.N      ??HAL_I2C_Mem_Read_DMA_3
??HAL_I2C_Mem_Read_DMA_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+60]
// 3057 
// 3058     /* Check if the I2C is already enabled */
// 3059     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_Mem_Read_DMA_6
// 3060     {
// 3061       /* Enable I2C peripheral */
// 3062       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 3063     }
// 3064 
// 3065     /* Disable Pos */
// 3066     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_Mem_Read_DMA_6:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
// 3067 
// 3068     hi2c->State     = HAL_I2C_STATE_BUSY_RX;
        MOVS     R0,#+34
        STRB     R0,[R5, #+61]
// 3069     hi2c->Mode      = HAL_I2C_MODE_MEM;
        MOVS     R0,#+64
        STRB     R0,[R5, #+62]
// 3070     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R5, #+64]
// 3071 
// 3072     /* Prepare transfer parameters */
// 3073     hi2c->pBuffPtr    = pData;
        STR      R10,[R5, #+36]
// 3074     hi2c->XferCount   = Size;
        STRH     R4,[R5, #+42]
// 3075     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R0,??DataTable20_2  ;; 0xffff0000
        STR      R0,[R5, #+44]
// 3076     hi2c->XferSize    = hi2c->XferCount;
        LDRH     R0,[R5, #+42]
        STRH     R0,[R5, #+40]
// 3077 
// 3078     /* Set the I2C DMA transfer complete callback */
// 3079       hi2c->hdmarx->XferCpltCallback = I2C_DMAXferCplt;
        LDR.N    R0,??DataTable20
        LDR      R1,[R5, #+56]
        STR      R0,[R1, #+40]
// 3080 
// 3081     /* Set the DMA error callback */
// 3082     hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
        LDR.N    R0,??DataTable20_1
        LDR      R1,[R5, #+56]
        STR      R0,[R1, #+48]
// 3083 
// 3084     /* Set the unused DMA callbacks to NULL */
// 3085     hi2c->hdmarx->XferHalfCpltCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R5, #+56]
        STR      R0,[R1, #+44]
// 3086     hi2c->hdmarx->XferAbortCallback = NULL;
        MOVS     R0,#+0
        LDR      R1,[R5, #+56]
        STR      R0,[R1, #+52]
// 3087 
// 3088     /* Enable the DMA Channel */
// 3089     HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->DR, (uint32_t)hi2c->pBuffPtr, hi2c->XferSize);
        LDRH     R3,[R5, #+40]
        LDR      R2,[R5, #+36]
        LDR      R0,[R5, #+0]
        ADDS     R1,R0,#+16
        LDR      R0,[R5, #+56]
          CFI FunCall HAL_DMA_Start_IT
        BL       HAL_DMA_Start_IT
// 3090 
// 3091     /* Send Slave Address and Memory Address */
// 3092     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG, tickstart) != HAL_OK)
        STR      R9,[SP, #+4]
        MOVS     R0,#+35
        STR      R0,[SP, #+0]
        MOV      R3,R8
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall I2C_RequestMemoryRead
        BL       I2C_RequestMemoryRead
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_Mem_Read_DMA_7
// 3093     {
// 3094       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R5, #+64]
        CMP      R0,#+4
        BNE.N    ??HAL_I2C_Mem_Read_DMA_8
// 3095       {
// 3096         /* Process Unlocked */
// 3097         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 3098         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_Mem_Read_DMA_3
// 3099       }
// 3100       else
// 3101       {
// 3102         /* Process Unlocked */
// 3103         __HAL_UNLOCK(hi2c);
??HAL_I2C_Mem_Read_DMA_8:
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 3104         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_Mem_Read_DMA_3
// 3105       }
// 3106     }
// 3107 
// 3108       if(Size == 1U)
??HAL_I2C_Mem_Read_DMA_7:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BNE.N    ??HAL_I2C_Mem_Read_DMA_9
// 3109     {
// 3110       /* Disable Acknowledge */
// 3111       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_I2C_Mem_Read_DMA_10
// 3112     }
// 3113     else
// 3114     {
// 3115       /* Enable Last DMA bit */
// 3116       SET_BIT(hi2c->Instance->CR2, I2C_CR2_LAST);
??HAL_I2C_Mem_Read_DMA_9:
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x1000
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 3117     }
// 3118 
// 3119     /* Clear ADDR flag */
// 3120     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??HAL_I2C_Mem_Read_DMA_10:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 3121 
// 3122     /* Process Unlocked */
// 3123     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R5, #+60]
// 3124 
// 3125     /* Note : The I2C interrupts must be enabled after unlocking current process
// 3126               to avoid the risk of I2C interrupt handle execution before current
// 3127               process unlock */
// 3128     /* Enable ERR interrupt */
// 3129     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_ERR);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x100
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 3130 
// 3131     /* Enable DMA Request */
// 3132     SET_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R0,[R5, #+0]
        LDR      R0,[R0, #+4]
        ORRS     R0,R0,#0x800
        LDR      R1,[R5, #+0]
        STR      R0,[R1, #+4]
// 3133 
// 3134     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_Mem_Read_DMA_3
// 3135   }
// 3136   else
// 3137   {
// 3138     return HAL_BUSY;
??HAL_I2C_Mem_Read_DMA_0:
        MOVS     R0,#+2
??HAL_I2C_Mem_Read_DMA_3:
        POP      {R1,R2,R4-R10,PC}  ;; return
// 3139   }
// 3140 }
          CFI EndBlock cfiBlock28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     I2C_DMAXferCplt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     I2C_DMAError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0xffff0000
// 3141 
// 3142 /**
// 3143   * @brief  Checks if target device is ready for communication. 
// 3144   * @note   This function is used with Memory devices
// 3145   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3146   *                the configuration information for the specified I2C.
// 3147   * @param  DevAddress Target device address: The device 7 bits address value
// 3148   *         in datasheet must be shift at right before call interface
// 3149   * @param  Trials Number of trials
// 3150   * @param  Timeout Timeout duration
// 3151   * @retval HAL status
// 3152   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function HAL_I2C_IsDeviceReady
        THUMB
// 3153 HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials, uint32_t Timeout)
// 3154 {
HAL_I2C_IsDeviceReady:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
// 3155   uint32_t tickstart = 0U, I2C_Trials = 1U;
        MOVS     R5,#+0
        MOVS     R9,#+1
// 3156 
// 3157   /* Get tick */
// 3158   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3159 
// 3160   if(hi2c->State == HAL_I2C_STATE_READY)
        LDRB     R0,[R4, #+61]
        CMP      R0,#+32
        BNE.W    ??HAL_I2C_IsDeviceReady_0
// 3161   {
// 3162     /* Wait until BUSY flag is reset */
// 3163     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
        STR      R5,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_IsDeviceReady_1
// 3164     {
// 3165       return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3166     }
// 3167 
// 3168     /* Process Locked */
// 3169     __HAL_LOCK(hi2c);
??HAL_I2C_IsDeviceReady_1:
        LDRB     R0,[R4, #+60]
        CMP      R0,#+1
        BNE.N    ??HAL_I2C_IsDeviceReady_3
        MOVS     R0,#+2
        B.N      ??HAL_I2C_IsDeviceReady_2
??HAL_I2C_IsDeviceReady_3:
        MOVS     R0,#+1
        STRB     R0,[R4, #+60]
// 3170 
// 3171     /* Check if the I2C is already enabled */
// 3172     if((hi2c->Instance->CR1 & I2C_CR1_PE) != I2C_CR1_PE)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_I2C_IsDeviceReady_4
// 3173     {
// 3174       /* Enable I2C peripheral */
// 3175       __HAL_I2C_ENABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3176     }
// 3177 
// 3178     /* Disable Pos */
// 3179     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
??HAL_I2C_IsDeviceReady_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3180 
// 3181     hi2c->State = HAL_I2C_STATE_BUSY;
        MOVS     R0,#+36
        STRB     R0,[R4, #+61]
// 3182     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 3183     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.W    R0,??DataTable30  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 3184 
// 3185     do
// 3186     {
// 3187       /* Generate Start */
// 3188       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
??HAL_I2C_IsDeviceReady_5:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3189 
// 3190       /* Wait until SB flag is set */
// 3191       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, tickstart) != HAL_OK)
        STR      R5,[SP, #+0]
        MOV      R3,R8
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_IsDeviceReady_6
// 3192       {
// 3193         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3194       }
// 3195 
// 3196       /* Send slave address */
// 3197       hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(DevAddress);
??HAL_I2C_IsDeviceReady_6:
        ANDS     R0,R6,#0xFE
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 3198 
// 3199       /* Wait until ADDR or AF flag are set */
// 3200       /* Get tick */
// 3201       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
        B.N      ??HAL_I2C_IsDeviceReady_7
// 3202 
// 3203       while((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_ADDR) == RESET) && \ 
// 3204             (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == RESET) && \ 
// 3205             (hi2c->State != HAL_I2C_STATE_TIMEOUT))
// 3206       {
// 3207         if(Timeout != HAL_MAX_DELAY)
??HAL_I2C_IsDeviceReady_8:
        CMN      R8,#+1
        BEQ.N    ??HAL_I2C_IsDeviceReady_7
// 3208         {
// 3209           if((Timeout == 0U)||((HAL_GetTick() - tickstart ) > Timeout))
        CMP      R8,#+0
        BEQ.N    ??HAL_I2C_IsDeviceReady_9
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R8,R0
        BCS.N    ??HAL_I2C_IsDeviceReady_7
// 3210           {
// 3211             hi2c->State = HAL_I2C_STATE_TIMEOUT;
??HAL_I2C_IsDeviceReady_9:
        MOVS     R0,#+160
        STRB     R0,[R4, #+61]
// 3212           }
// 3213         }
// 3214       }
??HAL_I2C_IsDeviceReady_7:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_I2C_IsDeviceReady_10
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+21
        BMI.N    ??HAL_I2C_IsDeviceReady_10
        LDRB     R0,[R4, #+61]
        CMP      R0,#+160
        BNE.N    ??HAL_I2C_IsDeviceReady_8
// 3215 
// 3216       hi2c->State = HAL_I2C_STATE_READY;
??HAL_I2C_IsDeviceReady_10:
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 3217 
// 3218       /* Check if the ADDR flag has been set */
// 3219       if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_ADDR) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_I2C_IsDeviceReady_11
// 3220       {
// 3221         /* Generate Stop */
// 3222         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3223 
// 3224         /* Clear ADDR Flag */
// 3225         __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 3226 
// 3227         /* Wait until BUSY flag is reset */
// 3228         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
        STR      R5,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_IsDeviceReady_12
// 3229         {
// 3230           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3231         }
// 3232 
// 3233         hi2c->State = HAL_I2C_STATE_READY;
??HAL_I2C_IsDeviceReady_12:
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 3234 
// 3235         /* Process Unlocked */
// 3236         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 3237 
// 3238         return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3239       }
// 3240       else
// 3241       {
// 3242         /* Generate Stop */
// 3243         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??HAL_I2C_IsDeviceReady_11:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3244 
// 3245         /* Clear AF Flag */
// 3246         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
        MVNS     R0,#+1024
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 3247 
// 3248         /* Wait until BUSY flag is reset */
// 3249         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY_FLAG, tickstart) != HAL_OK)
        STR      R5,[SP, #+0]
        MOVS     R3,#+25
        MOVS     R2,#+1
        MOVS     R1,#+131074
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_IsDeviceReady_13
// 3250         {
// 3251           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3252         }
// 3253       }
// 3254     }while(I2C_Trials++ < Trials);
??HAL_I2C_IsDeviceReady_13:
        MOV      R0,R9
        ADDS     R9,R0,#+1
        CMP      R0,R7
        BCC.N    ??HAL_I2C_IsDeviceReady_5
// 3255 
// 3256     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 3257 
// 3258     /* Process Unlocked */
// 3259     __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 3260 
// 3261     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_I2C_IsDeviceReady_2
// 3262   }
// 3263   else
// 3264   {
// 3265     return HAL_BUSY;
??HAL_I2C_IsDeviceReady_0:
        MOVS     R0,#+2
??HAL_I2C_IsDeviceReady_2:
        POP      {R1,R4-R9,PC}    ;; return
// 3266   }
// 3267 }
          CFI EndBlock cfiBlock29
// 3268 
// 3269 /**
// 3270   * @brief  This function handles I2C event interrupt request.
// 3271   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3272   *                the configuration information for the specified I2C.
// 3273   * @retval None
// 3274   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function HAL_I2C_EV_IRQHandler
        THUMB
// 3275 void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c)
// 3276 {
HAL_I2C_EV_IRQHandler:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
// 3277   uint32_t sr2itflags   = READ_REG(hi2c->Instance->SR2);
        LDR      R0,[R4, #+0]
        LDR      R5,[R0, #+24]
// 3278   uint32_t sr1itflags   = READ_REG(hi2c->Instance->SR1);
        LDR      R0,[R4, #+0]
        LDR      R6,[R0, #+20]
// 3279   uint32_t itsources    = READ_REG(hi2c->Instance->CR2);
        LDR      R0,[R4, #+0]
        LDR      R7,[R0, #+4]
// 3280 
// 3281   /* Master or Memory mode selected */
// 3282   if((hi2c->Mode == HAL_I2C_MODE_MASTER) || \ 
// 3283      (hi2c->Mode == HAL_I2C_MODE_MEM))
        LDRB     R0,[R4, #+62]
        CMP      R0,#+16
        BEQ.N    ??HAL_I2C_EV_IRQHandler_0
        LDRB     R0,[R4, #+62]
        CMP      R0,#+64
        BNE.N    ??HAL_I2C_EV_IRQHandler_1
// 3284   {
// 3285     /* SB Set ----------------------------------------------------------------*/
// 3286     if(((sr1itflags & I2C_FLAG_SB) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_0:
        TST      R6,#0x10001
        BEQ.N    ??HAL_I2C_EV_IRQHandler_2
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_2
// 3287     {
// 3288       I2C_Master_SB(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_Master_SB
        BL       I2C_Master_SB
        B.N      ??HAL_I2C_EV_IRQHandler_3
// 3289     }
// 3290     /* ADD10 Set -------------------------------------------------------------*/
// 3291     else if(((sr1itflags & I2C_FLAG_ADD10) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_2:
        LDR.W    R0,??DataTable31  ;; 0x10008
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_4
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_4
// 3292     {
// 3293       I2C_Master_ADD10(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_Master_ADD10
        BL       I2C_Master_ADD10
        B.N      ??HAL_I2C_EV_IRQHandler_3
// 3294     }
// 3295     /* ADDR Set --------------------------------------------------------------*/
// 3296     else if(((sr1itflags & I2C_FLAG_ADDR) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_4:
        LDR.W    R0,??DataTable31_1  ;; 0x10002
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_3
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_3
// 3297     {
// 3298       I2C_Master_ADDR(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_Master_ADDR
        BL       I2C_Master_ADDR
// 3299     }
// 3300 
// 3301     /* I2C in mode Transmitter -----------------------------------------------*/
// 3302     if((hi2c->EventCount == 0U) && ((sr2itflags & I2C_FLAG_TRA) != RESET))
??HAL_I2C_EV_IRQHandler_3:
        LDR      R0,[R4, #+80]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_EV_IRQHandler_5
        LDR.W    R0,??DataTable31_2  ;; 0x20004
        TST      R5,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_5
// 3303     {
// 3304       /* TXE set and BTF reset -----------------------------------------------*/
// 3305       if(((sr1itflags & I2C_FLAG_TXE) != RESET) && ((itsources & I2C_IT_BUF) != RESET) && ((sr1itflags & I2C_FLAG_BTF) == RESET))
        LDR.W    R0,??DataTable31_3  ;; 0x10080
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_6
        LSLS     R0,R7,#+21
        BPL.N    ??HAL_I2C_EV_IRQHandler_6
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BNE.N    ??HAL_I2C_EV_IRQHandler_6
// 3306       {
// 3307         I2C_MasterTransmit_TXE(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_MasterTransmit_TXE
        BL       I2C_MasterTransmit_TXE
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3308       }
// 3309       /* BTF set -------------------------------------------------------------*/
// 3310       else if(((sr1itflags & I2C_FLAG_BTF) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_6:
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_7
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_7
// 3311       {
// 3312         I2C_MasterTransmit_BTF(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_MasterTransmit_BTF
        BL       I2C_MasterTransmit_BTF
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3313       }
// 3314     }
// 3315     /* I2C in mode Receiver --------------------------------------------------*/
// 3316     else
// 3317     {
// 3318       /* RXNE set and BTF reset -----------------------------------------------*/
// 3319       if(((sr1itflags & I2C_FLAG_RXNE) != RESET) && ((itsources & I2C_IT_BUF) != RESET) && ((sr1itflags & I2C_FLAG_BTF) == RESET))
??HAL_I2C_EV_IRQHandler_5:
        LDR.W    R0,??DataTable31_4  ;; 0x10040
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_8
        LSLS     R0,R7,#+21
        BPL.N    ??HAL_I2C_EV_IRQHandler_8
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BNE.N    ??HAL_I2C_EV_IRQHandler_8
// 3320       {
// 3321         I2C_MasterReceive_RXNE(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_MasterReceive_RXNE
        BL       I2C_MasterReceive_RXNE
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3322       }
// 3323       /* BTF set -------------------------------------------------------------*/
// 3324       else if(((sr1itflags & I2C_FLAG_BTF) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_8:
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_7
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_7
// 3325       {
// 3326         I2C_MasterReceive_BTF(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_MasterReceive_BTF
        BL       I2C_MasterReceive_BTF
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3327       }
// 3328     }
// 3329   }
// 3330   /* Slave mode selected */
// 3331   else
// 3332   {
// 3333     /* ADDR set --------------------------------------------------------------*/
// 3334     if(((sr1itflags & I2C_FLAG_ADDR) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_1:
        LDR.W    R0,??DataTable31_1  ;; 0x10002
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_9
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_9
// 3335     {
// 3336       I2C_Slave_ADDR(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_Slave_ADDR
        BL       I2C_Slave_ADDR
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3337     }
// 3338     /* STOPF set --------------------------------------------------------------*/
// 3339     else if(((sr1itflags & I2C_FLAG_STOPF) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_9:
        LDR.W    R0,??DataTable32  ;; 0x10010
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_10
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_10
// 3340     {
// 3341       I2C_Slave_STOPF(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_Slave_STOPF
        BL       I2C_Slave_STOPF
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3342     }
// 3343     /* I2C in mode Transmitter -----------------------------------------------*/
// 3344     else if((sr2itflags & I2C_FLAG_TRA) != RESET)
??HAL_I2C_EV_IRQHandler_10:
        LDR.W    R0,??DataTable31_2  ;; 0x20004
        TST      R5,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_11
// 3345     {
// 3346       /* TXE set and BTF reset -----------------------------------------------*/
// 3347       if(((sr1itflags & I2C_FLAG_TXE) != RESET) && ((itsources & I2C_IT_BUF) != RESET) && ((sr1itflags & I2C_FLAG_BTF) == RESET))
        LDR.W    R0,??DataTable31_3  ;; 0x10080
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_12
        LSLS     R0,R7,#+21
        BPL.N    ??HAL_I2C_EV_IRQHandler_12
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BNE.N    ??HAL_I2C_EV_IRQHandler_12
// 3348       {
// 3349         I2C_SlaveTransmit_TXE(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_SlaveTransmit_TXE
        BL       I2C_SlaveTransmit_TXE
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3350       }
// 3351       /* BTF set -------------------------------------------------------------*/
// 3352       else if(((sr1itflags & I2C_FLAG_BTF) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_12:
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_7
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_7
// 3353       {
// 3354         I2C_SlaveTransmit_BTF(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_SlaveTransmit_BTF
        BL       I2C_SlaveTransmit_BTF
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3355       }
// 3356     }
// 3357     /* I2C in mode Receiver --------------------------------------------------*/
// 3358     else
// 3359     {
// 3360       /* RXNE set and BTF reset ----------------------------------------------*/
// 3361       if(((sr1itflags & I2C_FLAG_RXNE) != RESET) && ((itsources & I2C_IT_BUF) != RESET) && ((sr1itflags & I2C_FLAG_BTF) == RESET))
??HAL_I2C_EV_IRQHandler_11:
        LDR.W    R0,??DataTable31_4  ;; 0x10040
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_13
        LSLS     R0,R7,#+21
        BPL.N    ??HAL_I2C_EV_IRQHandler_13
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BNE.N    ??HAL_I2C_EV_IRQHandler_13
// 3362       {
// 3363         I2C_SlaveReceive_RXNE(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_SlaveReceive_RXNE
        BL       I2C_SlaveReceive_RXNE
        B.N      ??HAL_I2C_EV_IRQHandler_7
// 3364       }
// 3365       /* BTF set -------------------------------------------------------------*/
// 3366       else if(((sr1itflags & I2C_FLAG_BTF) != RESET) && ((itsources & I2C_IT_EVT) != RESET))
??HAL_I2C_EV_IRQHandler_13:
        LDR.W    R0,??DataTable26  ;; 0x10004
        TST      R6,R0
        BEQ.N    ??HAL_I2C_EV_IRQHandler_7
        LSLS     R0,R7,#+22
        BPL.N    ??HAL_I2C_EV_IRQHandler_7
// 3367       {
// 3368         I2C_SlaveReceive_BTF(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_SlaveReceive_BTF
        BL       I2C_SlaveReceive_BTF
// 3369       }
// 3370     }
// 3371   }
// 3372 }
??HAL_I2C_EV_IRQHandler_7:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock30
// 3373  
// 3374 /**
// 3375   * @brief  This function handles I2C error interrupt request.
// 3376   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3377   *                the configuration information for the specified I2C.
// 3378   * @retval None
// 3379   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function HAL_I2C_ER_IRQHandler
        THUMB
// 3380 void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c)
// 3381 {
HAL_I2C_ER_IRQHandler:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
// 3382   uint32_t sr1itflags = READ_REG(hi2c->Instance->SR1);
        LDR      R0,[R4, #+0]
        LDR      R5,[R0, #+20]
// 3383   uint32_t itsources  = READ_REG(hi2c->Instance->CR2);
        LDR      R0,[R4, #+0]
        LDR      R6,[R0, #+4]
// 3384 
// 3385   /* I2C Bus error interrupt occurred ----------------------------------------*/
// 3386   if(((sr1itflags & I2C_FLAG_BERR) != RESET) && ((itsources & I2C_IT_ERR) != RESET))
        LDR.W    R0,??DataTable32_1  ;; 0x10100
        TST      R5,R0
        BEQ.N    ??HAL_I2C_ER_IRQHandler_0
        LSLS     R0,R6,#+23
        BPL.N    ??HAL_I2C_ER_IRQHandler_0
// 3387   {
// 3388     hi2c->ErrorCode |= HAL_I2C_ERROR_BERR;
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+64]
// 3389 
// 3390     /* Clear BERR flag */
// 3391     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_BERR);
        MVNS     R0,#+256
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 3392   }
// 3393 
// 3394   /* I2C Arbitration Loss error interrupt occurred ---------------------------*/
// 3395   if(((sr1itflags & I2C_FLAG_ARLO) != RESET) && ((itsources & I2C_IT_ERR) != RESET))
??HAL_I2C_ER_IRQHandler_0:
        TST      R5,#0x10200
        BEQ.N    ??HAL_I2C_ER_IRQHandler_1
        LSLS     R0,R6,#+23
        BPL.N    ??HAL_I2C_ER_IRQHandler_1
// 3396   {
// 3397     hi2c->ErrorCode |= HAL_I2C_ERROR_ARLO;
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+64]
// 3398 
// 3399     /* Clear ARLO flag */
// 3400     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_ARLO);
        MVNS     R0,#+512
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 3401   }
// 3402 
// 3403   /* I2C Acknowledge failure error interrupt occurred ------------------------*/
// 3404   if(((sr1itflags & I2C_FLAG_AF) != RESET) && ((itsources & I2C_IT_ERR) != RESET))
??HAL_I2C_ER_IRQHandler_1:
        TST      R5,#0x10400
        BEQ.N    ??HAL_I2C_ER_IRQHandler_2
        LSLS     R0,R6,#+23
        BPL.N    ??HAL_I2C_ER_IRQHandler_2
// 3405   {
// 3406     if((hi2c->Mode == HAL_I2C_MODE_SLAVE) && \ 
// 3407        (hi2c->XferCount == 0U) && \ 
// 3408        ((hi2c->State == HAL_I2C_STATE_BUSY_TX) || (hi2c->State == HAL_I2C_STATE_BUSY_TX_LISTEN) || \ 
// 3409         ((hi2c->State == HAL_I2C_STATE_LISTEN) && (hi2c->PreviousState == HAL_I2C_STATE_BUSY_TX))))
        LDRB     R0,[R4, #+62]
        CMP      R0,#+32
        BNE.N    ??HAL_I2C_ER_IRQHandler_3
        LDRH     R0,[R4, #+42]
        CMP      R0,#+0
        BNE.N    ??HAL_I2C_ER_IRQHandler_3
        LDRB     R0,[R4, #+61]
        CMP      R0,#+33
        BEQ.N    ??HAL_I2C_ER_IRQHandler_4
        LDRB     R0,[R4, #+61]
        CMP      R0,#+41
        BEQ.N    ??HAL_I2C_ER_IRQHandler_4
        LDRB     R0,[R4, #+61]
        CMP      R0,#+40
        BNE.N    ??HAL_I2C_ER_IRQHandler_3
        LDR      R0,[R4, #+48]
        CMP      R0,#+33
        BNE.N    ??HAL_I2C_ER_IRQHandler_3
// 3410     {
// 3411       I2C_Slave_AF(hi2c);
??HAL_I2C_ER_IRQHandler_4:
        MOVS     R0,R4
          CFI FunCall I2C_Slave_AF
        BL       I2C_Slave_AF
        B.N      ??HAL_I2C_ER_IRQHandler_2
// 3412     }
// 3413     else
// 3414     {
// 3415       hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
??HAL_I2C_ER_IRQHandler_3:
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+64]
// 3416 
// 3417       /* Do not generate a STOP in case of Slave receive non acknowledge during transfer (mean not at the end of transfer) */
// 3418       if(hi2c->Mode == HAL_I2C_MODE_MASTER)
        LDRB     R0,[R4, #+62]
        CMP      R0,#+16
        BNE.N    ??HAL_I2C_ER_IRQHandler_5
// 3419       {
// 3420         /* Generate Stop */
// 3421         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 3422       }
// 3423 
// 3424       /* Clear AF flag */
// 3425       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
??HAL_I2C_ER_IRQHandler_5:
        MVNS     R0,#+1024
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 3426     }
// 3427   }
// 3428 
// 3429   /* I2C Over-Run/Under-Run interrupt occurred -------------------------------*/
// 3430   if(((sr1itflags & I2C_FLAG_OVR) != RESET) && ((itsources & I2C_IT_ERR) != RESET))
??HAL_I2C_ER_IRQHandler_2:
        TST      R5,#0x10800
        BEQ.N    ??HAL_I2C_ER_IRQHandler_6
        LSLS     R0,R6,#+23
        BPL.N    ??HAL_I2C_ER_IRQHandler_6
// 3431   {
// 3432     hi2c->ErrorCode |= HAL_I2C_ERROR_OVR;
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x8
        STR      R0,[R4, #+64]
// 3433     /* Clear OVR flag */
// 3434     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_OVR);
        MVNS     R0,#+2048
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 3435   }
// 3436 
// 3437   /* Call the Error Callback in case of Error detected -----------------------*/
// 3438   if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
??HAL_I2C_ER_IRQHandler_6:
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BEQ.N    ??HAL_I2C_ER_IRQHandler_7
// 3439   {
// 3440     I2C_ITError(hi2c);
        MOVS     R0,R4
          CFI FunCall I2C_ITError
        BL       I2C_ITError
// 3441   }
// 3442 }
??HAL_I2C_ER_IRQHandler_7:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock31
// 3443 
// 3444 /**
// 3445   * @brief  Master Tx Transfer completed callback.
// 3446   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3447   *                the configuration information for the specified I2C.
// 3448   * @retval None
// 3449   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function HAL_I2C_MasterTxCpltCallback
          CFI NoCalls
        THUMB
// 3450  __weak void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3451 {
// 3452   /* Prevent unused argument(s) compilation warning */
// 3453   UNUSED(hi2c);
// 3454 
// 3455   /* NOTE : This function should not be modified, when the callback is needed,
// 3456             the HAL_I2C_MasterTxCpltCallback can be implemented in the user file
// 3457    */
// 3458 }
HAL_I2C_MasterTxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock32
// 3459 
// 3460 /**
// 3461   * @brief  Master Rx Transfer completed callback.
// 3462   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3463   *                the configuration information for the specified I2C.
// 3464   * @retval None
// 3465   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function HAL_I2C_MasterRxCpltCallback
          CFI NoCalls
        THUMB
// 3466 __weak void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3467 {
// 3468   /* Prevent unused argument(s) compilation warning */
// 3469   UNUSED(hi2c);
// 3470 
// 3471   /* NOTE : This function should not be modified, when the callback is needed,
// 3472             the HAL_I2C_MasterRxCpltCallback can be implemented in the user file
// 3473    */
// 3474 }
HAL_I2C_MasterRxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock33
// 3475 
// 3476 /** @brief  Slave Tx Transfer completed callback.
// 3477   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3478   *                the configuration information for the specified I2C.
// 3479   * @retval None
// 3480   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function HAL_I2C_SlaveTxCpltCallback
          CFI NoCalls
        THUMB
// 3481  __weak void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3482 {
// 3483   /* Prevent unused argument(s) compilation warning */
// 3484   UNUSED(hi2c);
// 3485 
// 3486   /* NOTE : This function should not be modified, when the callback is needed,
// 3487             the HAL_I2C_SlaveTxCpltCallback can be implemented in the user file
// 3488    */
// 3489 }
HAL_I2C_SlaveTxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
// 3490 
// 3491 /**
// 3492   * @brief  Slave Rx Transfer completed callback.
// 3493   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3494   *                the configuration information for the specified I2C.
// 3495   * @retval None
// 3496   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function HAL_I2C_SlaveRxCpltCallback
          CFI NoCalls
        THUMB
// 3497 __weak void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3498 {
// 3499   /* Prevent unused argument(s) compilation warning */
// 3500   UNUSED(hi2c);
// 3501 
// 3502   /* NOTE : This function should not be modified, when the callback is needed,
// 3503             the HAL_I2C_SlaveRxCpltCallback can be implemented in the user file
// 3504    */
// 3505 }
HAL_I2C_SlaveRxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
// 3506 
// 3507 /**
// 3508   * @brief  Slave Address Match callback.
// 3509   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3510   *                the configuration information for the specified I2C.
// 3511   * @param  TransferDirection Master request Transfer Direction (Write/Read), value of @ref I2C_XferDirection_definition
// 3512   * @param  AddrMatchCode Address Match Code
// 3513   * @retval None
// 3514   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function HAL_I2C_AddrCallback
          CFI NoCalls
        THUMB
// 3515 __weak void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode)
// 3516 {
// 3517   /* Prevent unused argument(s) compilation warning */
// 3518   UNUSED(hi2c);
// 3519   UNUSED(TransferDirection);
// 3520   UNUSED(AddrMatchCode);
// 3521 
// 3522   /* NOTE : This function should not be modified, when the callback is needed,
// 3523             the HAL_I2C_AddrCallback can be implemented in the user file
// 3524    */
// 3525 }
HAL_I2C_AddrCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock36
// 3526 
// 3527 /**
// 3528   * @brief  Listen Complete callback.
// 3529   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3530   *                the configuration information for the specified I2C.
// 3531   * @retval None
// 3532   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function HAL_I2C_ListenCpltCallback
          CFI NoCalls
        THUMB
// 3533 __weak void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c)
// 3534 {
// 3535   /* Prevent unused argument(s) compilation warning */
// 3536   UNUSED(hi2c);
// 3537 
// 3538     /* NOTE : This function should not be modified, when the callback is needed,
// 3539             the HAL_I2C_ListenCpltCallback can be implemented in the user file
// 3540    */
// 3541 }
HAL_I2C_ListenCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock37
// 3542 
// 3543 /**
// 3544   * @brief  Memory Tx Transfer completed callback.
// 3545   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3546   *                the configuration information for the specified I2C.
// 3547   * @retval None
// 3548   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function HAL_I2C_MemTxCpltCallback
          CFI NoCalls
        THUMB
// 3549  __weak void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3550 {
// 3551   /* Prevent unused argument(s) compilation warning */
// 3552   UNUSED(hi2c);
// 3553 
// 3554   /* NOTE : This function should not be modified, when the callback is needed,
// 3555             the HAL_I2C_MemTxCpltCallback can be implemented in the user file
// 3556    */
// 3557 }
HAL_I2C_MemTxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
// 3558 
// 3559 /**
// 3560   * @brief  Memory Rx Transfer completed callback.
// 3561   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3562   *                the configuration information for the specified I2C.
// 3563   * @retval None
// 3564   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function HAL_I2C_MemRxCpltCallback
          CFI NoCalls
        THUMB
// 3565 __weak void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c)
// 3566 {
// 3567   /* Prevent unused argument(s) compilation warning */
// 3568   UNUSED(hi2c);
// 3569 
// 3570   /* NOTE : This function should not be modified, when the callback is needed,
// 3571             the HAL_I2C_MemRxCpltCallback can be implemented in the user file
// 3572    */
// 3573 }
HAL_I2C_MemRxCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock39
// 3574 
// 3575 /**
// 3576   * @brief  I2C error callback.
// 3577   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3578   *                the configuration information for the specified I2C.
// 3579   * @retval None
// 3580   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function HAL_I2C_ErrorCallback
          CFI NoCalls
        THUMB
// 3581  __weak void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c)
// 3582 {
// 3583   /* Prevent unused argument(s) compilation warning */
// 3584   UNUSED(hi2c);
// 3585 
// 3586   /* NOTE : This function should not be modified, when the callback is needed,
// 3587             the HAL_I2C_ErrorCallback can be implemented in the user file
// 3588    */
// 3589 }
HAL_I2C_ErrorCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock40
// 3590 
// 3591 /**
// 3592   * @brief  I2C abort callback.
// 3593   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3594   *                the configuration information for the specified I2C.
// 3595   * @retval None
// 3596   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function HAL_I2C_AbortCpltCallback
          CFI NoCalls
        THUMB
// 3597 __weak void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c)
// 3598 {
// 3599   /* Prevent unused argument(s) compilation warning */
// 3600   UNUSED(hi2c);
// 3601 
// 3602   /* NOTE : This function should not be modified, when the callback is needed,
// 3603             the HAL_I2C_AbortCpltCallback could be implemented in the user file
// 3604    */
// 3605 }
HAL_I2C_AbortCpltCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock41
// 3606 
// 3607 /**
// 3608   * @}
// 3609   */
// 3610 
// 3611 /** @defgroup I2C_Exported_Functions_Group3 Peripheral State, Mode and Error functions
// 3612  *  @brief   Peripheral State and Errors functions
// 3613  *
// 3614 @verbatim   
// 3615  ===============================================================================
// 3616             ##### Peripheral State, Mode and Error functions #####
// 3617  ===============================================================================  
// 3618     [..]
// 3619     This subsection permits to get in run-time the status of the peripheral 
// 3620     and the data flow.
// 3621 
// 3622 @endverbatim
// 3623   * @{
// 3624   */
// 3625 
// 3626 /**
// 3627   * @brief  Return the I2C handle state.
// 3628   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3629   *                the configuration information for the specified I2C.
// 3630   * @retval HAL state
// 3631   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function HAL_I2C_GetState
          CFI NoCalls
        THUMB
// 3632 HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c)
// 3633 {
// 3634   /* Return I2C handle state */
// 3635   return hi2c->State;
HAL_I2C_GetState:
        LDRB     R0,[R0, #+61]
        BX       LR               ;; return
// 3636 }
          CFI EndBlock cfiBlock42
// 3637 
// 3638 /**
// 3639   * @brief  Return the I2C Master, Slave, Memory or no mode.
// 3640   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3641   *         the configuration information for I2C module
// 3642   * @retval HAL mode
// 3643   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function HAL_I2C_GetMode
          CFI NoCalls
        THUMB
// 3644 HAL_I2C_ModeTypeDef HAL_I2C_GetMode(I2C_HandleTypeDef *hi2c)
// 3645 {
// 3646   return hi2c->Mode;
HAL_I2C_GetMode:
        LDRB     R0,[R0, #+62]
        BX       LR               ;; return
// 3647 }
          CFI EndBlock cfiBlock43
// 3648 
// 3649 /**
// 3650 * @brief  Return the I2C error code.
// 3651   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3652   *              the configuration information for the specified I2C.
// 3653   * @retval I2C Error Code
// 3654 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function HAL_I2C_GetError
          CFI NoCalls
        THUMB
// 3655 uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c)
// 3656 {
// 3657   return hi2c->ErrorCode;
HAL_I2C_GetError:
        LDR      R0,[R0, #+64]
        BX       LR               ;; return
// 3658 }
          CFI EndBlock cfiBlock44
// 3659 
// 3660 /**
// 3661   * @}
// 3662   */
// 3663 
// 3664 /**
// 3665   * @}
// 3666   */   
// 3667 
// 3668 
// 3669 /** @addtogroup I2C_Private_Functions
// 3670   * @{
// 3671   */
// 3672 
// 3673 
// 3674 /**
// 3675   * @brief  Handle TXE flag for Master
// 3676   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3677   *         the configuration information for I2C module
// 3678   * @retval HAL status
// 3679   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function I2C_MasterTransmit_TXE
        THUMB
// 3680 static HAL_StatusTypeDef I2C_MasterTransmit_TXE(I2C_HandleTypeDef *hi2c)
// 3681 {
I2C_MasterTransmit_TXE:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 3682   if((hi2c->XferSize == 0U) && (hi2c->State == HAL_I2C_STATE_BUSY_TX))
        LDRH     R1,[R0, #+40]
        CMP      R1,#+0
        BNE.N    ??I2C_MasterTransmit_TXE_0
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BNE.N    ??I2C_MasterTransmit_TXE_0
// 3683   {
// 3684     /* Call TxCpltCallback() directly if no stop mode is set */
// 3685     if((hi2c->XferOptions != I2C_FIRST_AND_LAST_FRAME) && (hi2c->XferOptions != I2C_LAST_FRAME) && (hi2c->XferOptions != I2C_NO_OPTION_FRAME))
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_MasterTransmit_TXE_1
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BEQ.N    ??I2C_MasterTransmit_TXE_1
        LDR      R1,[R0, #+44]
        LDR.W    R2,??DataTable30  ;; 0xffff0000
        CMP      R1,R2
        BEQ.N    ??I2C_MasterTransmit_TXE_1
// 3686     {
// 3687       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3688 
// 3689       hi2c->PreviousState = I2C_STATE_MASTER_BUSY_TX;
        MOVS     R1,#+17
        STR      R1,[R0, #+48]
// 3690       hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3691       hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3692 
// 3693       HAL_I2C_MasterTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterTxCpltCallback
        BL       HAL_I2C_MasterTxCpltCallback
        B.N      ??I2C_MasterTransmit_TXE_2
// 3694     }
// 3695     else /* Generate Stop condition then Call TxCpltCallback() */
// 3696     {
// 3697       /* Disable EVT, BUF and ERR interrupt */
// 3698       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
??I2C_MasterTransmit_TXE_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3699 
// 3700       /* Generate Stop */
// 3701       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3702 
// 3703       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 3704       hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3705 
// 3706       if(hi2c->Mode == HAL_I2C_MODE_MEM)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_MasterTransmit_TXE_3
// 3707       {
// 3708         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3709         HAL_I2C_MemTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MemTxCpltCallback
        BL       HAL_I2C_MemTxCpltCallback
        B.N      ??I2C_MasterTransmit_TXE_2
// 3710       }
// 3711       else
// 3712       {
// 3713         hi2c->Mode = HAL_I2C_MODE_NONE;
??I2C_MasterTransmit_TXE_3:
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3714         HAL_I2C_MasterTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterTxCpltCallback
        BL       HAL_I2C_MasterTxCpltCallback
        B.N      ??I2C_MasterTransmit_TXE_2
// 3715       }
// 3716     }
// 3717   }
// 3718   else if((hi2c->State == HAL_I2C_STATE_BUSY_TX) || \ 
// 3719     ((hi2c->Mode == HAL_I2C_MODE_MEM) && (hi2c->State == HAL_I2C_STATE_BUSY_RX)))
??I2C_MasterTransmit_TXE_0:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BEQ.N    ??I2C_MasterTransmit_TXE_4
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_MasterTransmit_TXE_2
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BNE.N    ??I2C_MasterTransmit_TXE_2
// 3720   {
// 3721     if(hi2c->XferCount == 0U)
??I2C_MasterTransmit_TXE_4:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BNE.N    ??I2C_MasterTransmit_TXE_5
// 3722     {
// 3723       /* Disable BUF interrupt */
// 3724       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_BUF);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x400
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
        B.N      ??I2C_MasterTransmit_TXE_2
// 3725     }
// 3726     else
// 3727     {
// 3728       /* Write data to DR */
// 3729       hi2c->Instance->DR = (*hi2c->pBuffPtr++);
??I2C_MasterTransmit_TXE_5:
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+16]
// 3730       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 3731     }
// 3732   }
// 3733   return HAL_OK;
??I2C_MasterTransmit_TXE_2:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 3734 }
          CFI EndBlock cfiBlock45
// 3735 
// 3736 /**
// 3737   * @brief  Handle BTF flag for Master transmitter
// 3738   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3739   *         the configuration information for I2C module
// 3740   * @retval HAL status
// 3741   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function I2C_MasterTransmit_BTF
        THUMB
// 3742 static HAL_StatusTypeDef I2C_MasterTransmit_BTF(I2C_HandleTypeDef *hi2c)
// 3743 {
I2C_MasterTransmit_BTF:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 3744   if(hi2c->State == HAL_I2C_STATE_BUSY_TX)
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BNE.N    ??I2C_MasterTransmit_BTF_0
// 3745   {
// 3746     if(hi2c->XferCount != 0U)
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_MasterTransmit_BTF_1
// 3747     {
// 3748       /* Write data to DR */
// 3749       hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+16]
// 3750       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
        B.N      ??I2C_MasterTransmit_BTF_0
// 3751     }
// 3752     else
// 3753     {
// 3754       /* Call TxCpltCallback() directly if no stop mode is set */
// 3755       if((hi2c->XferOptions != I2C_FIRST_AND_LAST_FRAME) && (hi2c->XferOptions != I2C_LAST_FRAME) && (hi2c->XferOptions != I2C_NO_OPTION_FRAME))
??I2C_MasterTransmit_BTF_1:
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_MasterTransmit_BTF_2
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BEQ.N    ??I2C_MasterTransmit_BTF_2
        LDR      R1,[R0, #+44]
        LDR.W    R2,??DataTable30  ;; 0xffff0000
        CMP      R1,R2
        BEQ.N    ??I2C_MasterTransmit_BTF_2
// 3756       {
// 3757         __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3758 
// 3759         hi2c->PreviousState = I2C_STATE_MASTER_BUSY_TX;
        MOVS     R1,#+17
        STR      R1,[R0, #+48]
// 3760         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3761         hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3762 
// 3763         HAL_I2C_MasterTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterTxCpltCallback
        BL       HAL_I2C_MasterTxCpltCallback
        B.N      ??I2C_MasterTransmit_BTF_0
// 3764       }
// 3765       else /* Generate Stop condition then Call TxCpltCallback() */
// 3766       {
// 3767         /* Disable EVT, BUF and ERR interrupt */
// 3768         __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
??I2C_MasterTransmit_BTF_2:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3769 
// 3770         /* Generate Stop */
// 3771         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3772 
// 3773         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 3774         hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3775 
// 3776         if(hi2c->Mode == HAL_I2C_MODE_MEM)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_MasterTransmit_BTF_3
// 3777         {
// 3778           hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3779 
// 3780           HAL_I2C_MemTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MemTxCpltCallback
        BL       HAL_I2C_MemTxCpltCallback
        B.N      ??I2C_MasterTransmit_BTF_0
// 3781         }
// 3782         else
// 3783         {
// 3784           hi2c->Mode = HAL_I2C_MODE_NONE;
??I2C_MasterTransmit_BTF_3:
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3785 
// 3786           HAL_I2C_MasterTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterTxCpltCallback
        BL       HAL_I2C_MasterTxCpltCallback
// 3787         }
// 3788       }
// 3789     }
// 3790   }
// 3791   return HAL_OK;
??I2C_MasterTransmit_BTF_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 3792 }
          CFI EndBlock cfiBlock46
// 3793 
// 3794 /**
// 3795   * @brief  Handle RXNE flag for Master
// 3796   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3797   *         the configuration information for I2C module
// 3798   * @retval HAL status
// 3799   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock47 Using cfiCommon0
          CFI Function I2C_MasterReceive_RXNE
        THUMB
// 3800 static HAL_StatusTypeDef I2C_MasterReceive_RXNE(I2C_HandleTypeDef *hi2c)
// 3801 {
I2C_MasterReceive_RXNE:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 3802   if(hi2c->State == HAL_I2C_STATE_BUSY_RX)
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BNE.N    ??I2C_MasterReceive_RXNE_0
// 3803   {
// 3804     if(hi2c->XferCount > 3U)
        LDRH     R1,[R0, #+42]
        CMP      R1,#+4
        BCC.N    ??I2C_MasterReceive_RXNE_1
// 3805     {
// 3806       /* Read data from DR */
// 3807       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3808       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
        B.N      ??I2C_MasterReceive_RXNE_0
// 3809     }
// 3810     else if((hi2c->XferCount == 2U) || (hi2c->XferCount == 3U))
??I2C_MasterReceive_RXNE_1:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+2
        BEQ.N    ??I2C_MasterReceive_RXNE_2
        LDRH     R1,[R0, #+42]
        CMP      R1,#+3
        BNE.N    ??I2C_MasterReceive_RXNE_3
// 3811     {
// 3812       if(hi2c->XferOptions != I2C_NEXT_FRAME)
??I2C_MasterReceive_RXNE_2:
        LDR      R1,[R0, #+44]
        CMP      R1,#+2
        BEQ.N    ??I2C_MasterReceive_RXNE_4
// 3813       {
// 3814         /* Disable Acknowledge */
// 3815         CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3816 
// 3817         /* Enable Pos */
// 3818         SET_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_MasterReceive_RXNE_5
// 3819       }
// 3820       else
// 3821       {
// 3822         /* Enable Acknowledge */
// 3823         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_MasterReceive_RXNE_4:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3824       }
// 3825 
// 3826       /* Disable BUF interrupt */
// 3827       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_BUF);
??I2C_MasterReceive_RXNE_5:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x400
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
        B.N      ??I2C_MasterReceive_RXNE_0
// 3828     }
// 3829     else
// 3830     {
// 3831       if(hi2c->XferOptions != I2C_NEXT_FRAME)
??I2C_MasterReceive_RXNE_3:
        LDR      R1,[R0, #+44]
        CMP      R1,#+2
        BEQ.N    ??I2C_MasterReceive_RXNE_6
// 3832       {
// 3833         /* Disable Acknowledge */
// 3834         CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_MasterReceive_RXNE_7
// 3835       }
// 3836       else
// 3837       {
// 3838         /* Enable Acknowledge */
// 3839         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_MasterReceive_RXNE_6:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3840       }
// 3841 
// 3842       /* Disable EVT, BUF and ERR interrupt */
// 3843       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
??I2C_MasterReceive_RXNE_7:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3844       
// 3845       /* Read data from DR */
// 3846       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3847       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 3848 
// 3849       hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3850 
// 3851       if(hi2c->Mode == HAL_I2C_MODE_MEM)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_MasterReceive_RXNE_8
// 3852       {
// 3853         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 3854         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3855         HAL_I2C_MemRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MemRxCpltCallback
        BL       HAL_I2C_MemRxCpltCallback
        B.N      ??I2C_MasterReceive_RXNE_0
// 3856       }
// 3857       else
// 3858       {
// 3859         hi2c->PreviousState = I2C_STATE_MASTER_BUSY_RX;
??I2C_MasterReceive_RXNE_8:
        MOVS     R1,#+18
        STR      R1,[R0, #+48]
// 3860         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3861         HAL_I2C_MasterRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterRxCpltCallback
        BL       HAL_I2C_MasterRxCpltCallback
// 3862       }
// 3863     }
// 3864   }
// 3865   return HAL_OK;
??I2C_MasterReceive_RXNE_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 3866 }
          CFI EndBlock cfiBlock47
// 3867 
// 3868 /**
// 3869   * @brief  Handle BTF flag for Master receiver
// 3870   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3871   *         the configuration information for I2C module
// 3872   * @retval HAL status
// 3873   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function I2C_MasterReceive_BTF
        THUMB
// 3874 static HAL_StatusTypeDef I2C_MasterReceive_BTF(I2C_HandleTypeDef *hi2c)
// 3875 {
I2C_MasterReceive_BTF:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 3876   if(hi2c->XferCount == 3U)
        LDRH     R1,[R0, #+42]
        CMP      R1,#+3
        BNE.N    ??I2C_MasterReceive_BTF_0
// 3877   {
// 3878     if((hi2c->XferOptions == I2C_FIRST_AND_LAST_FRAME) || (hi2c->XferOptions == I2C_LAST_FRAME) || (hi2c->XferOptions == I2C_NO_OPTION_FRAME))
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_MasterReceive_BTF_1
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BEQ.N    ??I2C_MasterReceive_BTF_1
        LDR      R1,[R0, #+44]
        LDR.W    R2,??DataTable30  ;; 0xffff0000
        CMP      R1,R2
        BNE.N    ??I2C_MasterReceive_BTF_2
// 3879     {
// 3880       /* Disable Acknowledge */
// 3881       CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_MasterReceive_BTF_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3882     }
// 3883 
// 3884     /* Read data from DR */
// 3885     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??I2C_MasterReceive_BTF_2:
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3886     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
        B.N      ??I2C_MasterReceive_BTF_3
// 3887   }
// 3888   else if(hi2c->XferCount == 2U)
??I2C_MasterReceive_BTF_0:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+2
        BNE.N    ??I2C_MasterReceive_BTF_4
// 3889   {
// 3890     /* Prepare next transfer or stop current transfer */
// 3891     if((hi2c->XferOptions != I2C_FIRST_AND_LAST_FRAME) && (hi2c->XferOptions != I2C_LAST_FRAME) && (hi2c->XferOptions != I2C_NO_OPTION_FRAME))
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_MasterReceive_BTF_5
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BEQ.N    ??I2C_MasterReceive_BTF_5
        LDR      R1,[R0, #+44]
        LDR.W    R2,??DataTable30  ;; 0xffff0000
        CMP      R1,R2
        BEQ.N    ??I2C_MasterReceive_BTF_5
// 3892     {
// 3893       if(hi2c->XferOptions != I2C_NEXT_FRAME)
        LDR      R1,[R0, #+44]
        CMP      R1,#+2
        BEQ.N    ??I2C_MasterReceive_BTF_6
// 3894       {
// 3895         /* Disable Acknowledge */
// 3896         CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_MasterReceive_BTF_7
// 3897       }
// 3898       else
// 3899       {
// 3900         /* Enable Acknowledge */
// 3901         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_MasterReceive_BTF_6:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_MasterReceive_BTF_7
// 3902       }
// 3903     }
// 3904     else
// 3905     {
// 3906       /* Generate Stop */
// 3907       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
??I2C_MasterReceive_BTF_5:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 3908     }
// 3909 
// 3910     /* Read data from DR */
// 3911     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??I2C_MasterReceive_BTF_7:
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3912     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 3913 
// 3914     /* Read data from DR */
// 3915     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3916     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 3917 
// 3918     /* Disable EVT and ERR interrupt */
// 3919     __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x300
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 3920 
// 3921     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 3922 
// 3923     if(hi2c->Mode == HAL_I2C_MODE_MEM)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_MasterReceive_BTF_8
// 3924     {
// 3925       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 3926       hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3927       HAL_I2C_MemRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MemRxCpltCallback
        BL       HAL_I2C_MemRxCpltCallback
        B.N      ??I2C_MasterReceive_BTF_3
// 3928     }
// 3929     else
// 3930     {
// 3931       hi2c->PreviousState = I2C_STATE_MASTER_BUSY_RX;
??I2C_MasterReceive_BTF_8:
        MOVS     R1,#+18
        STR      R1,[R0, #+48]
// 3932       hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 3933       HAL_I2C_MasterRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterRxCpltCallback
        BL       HAL_I2C_MasterRxCpltCallback
        B.N      ??I2C_MasterReceive_BTF_3
// 3934     }
// 3935   }
// 3936   else
// 3937   {
// 3938     /* Read data from DR */
// 3939     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
??I2C_MasterReceive_BTF_4:
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 3940     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 3941   }
// 3942   return HAL_OK;
??I2C_MasterReceive_BTF_3:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 3943 }
          CFI EndBlock cfiBlock48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x10004
// 3944 
// 3945 /**
// 3946   * @brief  Handle SB flag for Master
// 3947   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 3948   *         the configuration information for I2C module
// 3949   * @retval HAL status
// 3950   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock49 Using cfiCommon0
          CFI Function I2C_Master_SB
          CFI NoCalls
        THUMB
// 3951 static HAL_StatusTypeDef I2C_Master_SB(I2C_HandleTypeDef *hi2c)
// 3952 {
// 3953   if(hi2c->Mode == HAL_I2C_MODE_MEM)
I2C_Master_SB:
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_Master_SB_0
// 3954   {
// 3955     if(hi2c->EventCount == 0U)
        LDR      R1,[R0, #+80]
        CMP      R1,#+0
        BNE.N    ??I2C_Master_SB_1
// 3956     {
// 3957       /* Send slave address */
// 3958       hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(hi2c->Devaddress);
        LDR      R1,[R0, #+68]
        ANDS     R1,R1,#0xFE
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
        B.N      ??I2C_Master_SB_2
// 3959     }
// 3960     else
// 3961     {
// 3962       hi2c->Instance->DR = I2C_7BIT_ADD_READ(hi2c->Devaddress);
??I2C_Master_SB_1:
        LDR      R1,[R0, #+68]
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
        B.N      ??I2C_Master_SB_2
// 3963     }
// 3964   }
// 3965   else
// 3966   {
// 3967     if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_7BIT)
??I2C_Master_SB_0:
        LDR      R1,[R0, #+16]
        CMP      R1,#+16384
        BNE.N    ??I2C_Master_SB_3
// 3968     {
// 3969       /* Send slave 7 Bits address */
// 3970       if(hi2c->State == HAL_I2C_STATE_BUSY_TX)
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BNE.N    ??I2C_Master_SB_4
// 3971       {
// 3972         hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(hi2c->Devaddress);
        LDR      R1,[R0, #+68]
        ANDS     R1,R1,#0xFE
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
        B.N      ??I2C_Master_SB_2
// 3973       }
// 3974       else
// 3975       {
// 3976         hi2c->Instance->DR = I2C_7BIT_ADD_READ(hi2c->Devaddress);
??I2C_Master_SB_4:
        LDR      R1,[R0, #+68]
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
        B.N      ??I2C_Master_SB_2
// 3977       }
// 3978     }
// 3979     else
// 3980     {
// 3981       if(hi2c->EventCount == 0U)
??I2C_Master_SB_3:
        LDR      R1,[R0, #+80]
        CMP      R1,#+0
        BNE.N    ??I2C_Master_SB_5
// 3982       {
// 3983         /* Send header of slave address */
// 3984         hi2c->Instance->DR = I2C_10BIT_HEADER_WRITE(hi2c->Devaddress);
        LDR      R1,[R0, #+68]
        ANDS     R1,R1,#0x300
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+7
        ORRS     R1,R1,#0xF0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
        B.N      ??I2C_Master_SB_2
// 3985       }
// 3986       else if(hi2c->EventCount == 1U)
??I2C_Master_SB_5:
        LDR      R1,[R0, #+80]
        CMP      R1,#+1
        BNE.N    ??I2C_Master_SB_2
// 3987       {
// 3988         /* Send header of slave address */
// 3989         hi2c->Instance->DR = I2C_10BIT_HEADER_READ(hi2c->Devaddress);
        LDR      R1,[R0, #+68]
        ANDS     R1,R1,#0x300
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R1,R1,#+7
        ORRS     R1,R1,#0xF1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
// 3990       }
// 3991     }
// 3992   }
// 3993 
// 3994   return HAL_OK;
??I2C_Master_SB_2:
        MOVS     R0,#+0
        BX       LR               ;; return
// 3995 }
          CFI EndBlock cfiBlock49
// 3996 
// 3997 /**
// 3998   * @brief  Handle ADD10 flag for Master
// 3999   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4000   *         the configuration information for I2C module
// 4001   * @retval HAL status
// 4002   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock50 Using cfiCommon0
          CFI Function I2C_Master_ADD10
          CFI NoCalls
        THUMB
// 4003 static HAL_StatusTypeDef I2C_Master_ADD10(I2C_HandleTypeDef *hi2c)
// 4004 {
// 4005   /* Send slave address */
// 4006   hi2c->Instance->DR = I2C_10BIT_ADDRESS(hi2c->Devaddress);
I2C_Master_ADD10:
        LDR      R1,[R0, #+68]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
// 4007 
// 4008   return HAL_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
// 4009 }
          CFI EndBlock cfiBlock50
// 4010 
// 4011 /**
// 4012   * @brief  Handle ADDR flag for Master
// 4013   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4014   *         the configuration information for I2C module
// 4015   * @retval HAL status
// 4016   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock51 Using cfiCommon0
          CFI Function I2C_Master_ADDR
          CFI NoCalls
        THUMB
// 4017 static HAL_StatusTypeDef I2C_Master_ADDR(I2C_HandleTypeDef *hi2c)
// 4018 {
I2C_Master_ADDR:
        SUB      SP,SP,#+4
          CFI CFA R13+4
// 4019   if(hi2c->State == HAL_I2C_STATE_BUSY_RX)
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BNE.W    ??I2C_Master_ADDR_0
// 4020   {
// 4021     if((hi2c->EventCount == 0U) && (hi2c->Mode == HAL_I2C_MODE_MEM))
        LDR      R1,[R0, #+80]
        CMP      R1,#+0
        BNE.N    ??I2C_Master_ADDR_1
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_Master_ADDR_1
// 4022     {
// 4023       /* Clear ADDR flag */
// 4024       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        B.N      ??I2C_Master_ADDR_2
// 4025     }
// 4026     else if((hi2c->EventCount == 0U) && (hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_10BIT))
??I2C_Master_ADDR_1:
        LDR      R1,[R0, #+80]
        CMP      R1,#+0
        BNE.N    ??I2C_Master_ADDR_3
        LDR      R1,[R0, #+16]
        CMP      R1,#+49152
        BNE.N    ??I2C_Master_ADDR_3
// 4027     {
// 4028       /* Clear ADDR flag */
// 4029       __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 4030 
// 4031       /* Generate Restart */
// 4032       SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x100
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4033 
// 4034       hi2c->EventCount++;
        LDR      R1,[R0, #+80]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+80]
        B.N      ??I2C_Master_ADDR_2
// 4035     }
// 4036     else
// 4037     {
// 4038       if(hi2c->XferCount == 0U)
??I2C_Master_ADDR_3:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BNE.N    ??I2C_Master_ADDR_4
// 4039       {
// 4040         /* Clear ADDR flag */
// 4041         __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 4042 
// 4043         /* Generate Stop */
// 4044         SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4045       }
// 4046       else if(hi2c->XferCount == 1U)
??I2C_Master_ADDR_4:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+1
        BNE.N    ??I2C_Master_ADDR_6
// 4047       {
// 4048         if(hi2c->XferOptions == I2C_NO_OPTION_FRAME)
        LDR      R1,[R0, #+44]
        LDR.W    R2,??DataTable30  ;; 0xffff0000
        CMP      R1,R2
        BNE.N    ??I2C_Master_ADDR_7
// 4049         {
// 4050           /* Disable Acknowledge */
// 4051           CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4052 
// 4053           if((hi2c->Instance->CR2 & I2C_CR2_DMAEN) == I2C_CR2_DMAEN)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        LSLS     R1,R1,#+20
        BPL.N    ??I2C_Master_ADDR_8
// 4054           {
// 4055             /* Disable Acknowledge */
// 4056             CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4057 
// 4058             /* Clear ADDR flag */
// 4059             __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4060           }
// 4061           else
// 4062           {
// 4063             /* Clear ADDR flag */
// 4064             __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_Master_ADDR_8:
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 4065 
// 4066             /* Generate Stop */
// 4067             SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4068           }
// 4069         }
// 4070         /* Prepare next transfer or stop current transfer */
// 4071         else if((hi2c->XferOptions != I2C_FIRST_AND_LAST_FRAME) && (hi2c->XferOptions != I2C_LAST_FRAME) \ 
// 4072           && (hi2c->PreviousState != I2C_STATE_MASTER_BUSY_RX))
??I2C_Master_ADDR_7:
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_Master_ADDR_9
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BEQ.N    ??I2C_Master_ADDR_9
        LDR      R1,[R0, #+48]
        CMP      R1,#+18
        BEQ.N    ??I2C_Master_ADDR_9
// 4073         {
// 4074           if(hi2c->XferOptions != I2C_NEXT_FRAME)
        LDR      R1,[R0, #+44]
        CMP      R1,#+2
        BEQ.N    ??I2C_Master_ADDR_10
// 4075           {
// 4076             /* Disable Acknowledge */
// 4077             CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_Master_ADDR_11
// 4078           }
// 4079           else
// 4080           {
// 4081             /* Enable Acknowledge */
// 4082             SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_Master_ADDR_10:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4083           }
// 4084 
// 4085           /* Clear ADDR flag */
// 4086           __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_Master_ADDR_11:
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4087         }
// 4088         else
// 4089         {
// 4090           /* Disable Acknowledge */
// 4091           CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_Master_ADDR_9:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4092 
// 4093           /* Clear ADDR flag */
// 4094           __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 4095 
// 4096           /* Generate Stop */
// 4097           SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4098         }
// 4099       }
// 4100       else if(hi2c->XferCount == 2U)
??I2C_Master_ADDR_6:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+2
        BNE.N    ??I2C_Master_ADDR_12
// 4101       {
// 4102         if(hi2c->XferOptions != I2C_NEXT_FRAME)
        LDR      R1,[R0, #+44]
        CMP      R1,#+2
        BEQ.N    ??I2C_Master_ADDR_13
// 4103         {
// 4104           /* Disable Acknowledge */
// 4105           CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4106 
// 4107           /* Enable Pos */
// 4108           SET_BIT(hi2c->Instance->CR1, I2C_CR1_POS);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        B.N      ??I2C_Master_ADDR_14
// 4109         }
// 4110         else
// 4111         {
// 4112           /* Enable Acknowledge */
// 4113           SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_Master_ADDR_13:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4114         }
// 4115 
// 4116         if((hi2c->Instance->CR2 & I2C_CR2_DMAEN) == I2C_CR2_DMAEN)
??I2C_Master_ADDR_14:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        LSLS     R1,R1,#+20
        BPL.N    ??I2C_Master_ADDR_15
// 4117         {
// 4118           /* Enable Last DMA bit */
// 4119           SET_BIT(hi2c->Instance->CR2, I2C_CR2_LAST);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x1000
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4120         }
// 4121 
// 4122         /* Clear ADDR flag */
// 4123         __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_Master_ADDR_15:
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
        B.N      ??I2C_Master_ADDR_5
// 4124       }
// 4125       else
// 4126       {
// 4127         /* Enable Acknowledge */
// 4128         SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_Master_ADDR_12:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4129 
// 4130         if((hi2c->Instance->CR2 & I2C_CR2_DMAEN) == I2C_CR2_DMAEN)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        LSLS     R1,R1,#+20
        BPL.N    ??I2C_Master_ADDR_16
// 4131         {
// 4132           /* Enable Last DMA bit */
// 4133           SET_BIT(hi2c->Instance->CR2, I2C_CR2_LAST);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x1000
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4134         }
// 4135 
// 4136         /* Clear ADDR flag */
// 4137         __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_Master_ADDR_16:
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+24]
        STR      R1,[SP, #+0]
        LDR      R1,[SP, #+0]
// 4138       }
// 4139 
// 4140       /* Reset Event counter  */
// 4141       hi2c->EventCount = 0U;
??I2C_Master_ADDR_5:
        MOVS     R1,#+0
        STR      R1,[R0, #+80]
        B.N      ??I2C_Master_ADDR_2
// 4142     }
// 4143   }
// 4144   else
// 4145   {
// 4146     /* Clear ADDR flag */
// 4147     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_Master_ADDR_0:
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 4148   }
// 4149 
// 4150   return HAL_OK;
??I2C_Master_ADDR_2:
        MOVS     R0,#+0
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
// 4151 }
          CFI EndBlock cfiBlock51
// 4152 
// 4153 /**
// 4154   * @brief  Handle TXE flag for Slave
// 4155   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4156   *         the configuration information for I2C module
// 4157   * @retval HAL status
// 4158   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock52 Using cfiCommon0
          CFI Function I2C_SlaveTransmit_TXE
        THUMB
// 4159 static HAL_StatusTypeDef I2C_SlaveTransmit_TXE(I2C_HandleTypeDef *hi2c)
// 4160 {
I2C_SlaveTransmit_TXE:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4161   if(hi2c->XferCount != 0U)
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_SlaveTransmit_TXE_0
// 4162   {
// 4163     /* Write data to DR */
// 4164     hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+16]
// 4165     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4166 
// 4167     if((hi2c->XferCount == 0U) && (hi2c->State == HAL_I2C_STATE_BUSY_TX_LISTEN))
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BNE.N    ??I2C_SlaveTransmit_TXE_0
        LDRB     R1,[R0, #+61]
        CMP      R1,#+41
        BNE.N    ??I2C_SlaveTransmit_TXE_0
// 4168     {
// 4169       /* Last Byte is received, disable Interrupt */
// 4170       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_BUF);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4171 
// 4172       /* Set state at HAL_I2C_STATE_LISTEN */
// 4173       hi2c->PreviousState = I2C_STATE_SLAVE_BUSY_TX;
        MOVS     R1,#+33
        STR      R1,[R0, #+48]
// 4174       hi2c->State = HAL_I2C_STATE_LISTEN;
        MOVS     R1,#+40
        STRB     R1,[R0, #+61]
// 4175 
// 4176       /* Call the Tx complete callback to inform upper layer of the end of receive process */
// 4177       HAL_I2C_SlaveTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_SlaveTxCpltCallback
        BL       HAL_I2C_SlaveTxCpltCallback
// 4178     }
// 4179   }
// 4180   return HAL_OK;
??I2C_SlaveTransmit_TXE_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 4181 }
          CFI EndBlock cfiBlock52
// 4182 
// 4183 /**
// 4184   * @brief  Handle BTF flag for Slave transmitter
// 4185   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4186   *         the configuration information for I2C module
// 4187   * @retval HAL status
// 4188   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock53 Using cfiCommon0
          CFI Function I2C_SlaveTransmit_BTF
          CFI NoCalls
        THUMB
// 4189 static HAL_StatusTypeDef I2C_SlaveTransmit_BTF(I2C_HandleTypeDef *hi2c)
// 4190 {
// 4191   if(hi2c->XferCount != 0U)
I2C_SlaveTransmit_BTF:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_SlaveTransmit_BTF_0
// 4192   {
// 4193     /* Write data to DR */
// 4194     hi2c->Instance->DR = (*hi2c->pBuffPtr++);
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDRB     R1,[R1, #+0]
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+16]
// 4195     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4196   }
// 4197   return HAL_OK;
??I2C_SlaveTransmit_BTF_0:
        MOVS     R0,#+0
        BX       LR               ;; return
// 4198 }
          CFI EndBlock cfiBlock53
// 4199 
// 4200 /**
// 4201   * @brief  Handle RXNE flag for Slave
// 4202   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4203   *         the configuration information for I2C module
// 4204   * @retval HAL status
// 4205   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock54 Using cfiCommon0
          CFI Function I2C_SlaveReceive_RXNE
        THUMB
// 4206 static HAL_StatusTypeDef I2C_SlaveReceive_RXNE(I2C_HandleTypeDef *hi2c)
// 4207 {
I2C_SlaveReceive_RXNE:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4208   if(hi2c->XferCount != 0U)
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_SlaveReceive_RXNE_0
// 4209   {
// 4210     /* Read data from DR */
// 4211     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 4212     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4213 
// 4214     if((hi2c->XferCount == 0U) && (hi2c->State == HAL_I2C_STATE_BUSY_RX_LISTEN))
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BNE.N    ??I2C_SlaveReceive_RXNE_0
        LDRB     R1,[R0, #+61]
        CMP      R1,#+42
        BNE.N    ??I2C_SlaveReceive_RXNE_0
// 4215     {
// 4216       /* Last Byte is received, disable Interrupt */
// 4217       __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_BUF);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4218 
// 4219       /* Set state at HAL_I2C_STATE_LISTEN */
// 4220       hi2c->PreviousState = I2C_STATE_SLAVE_BUSY_RX;
        MOVS     R1,#+34
        STR      R1,[R0, #+48]
// 4221       hi2c->State = HAL_I2C_STATE_LISTEN;
        MOVS     R1,#+40
        STRB     R1,[R0, #+61]
// 4222 
// 4223       /* Call the Rx complete callback to inform upper layer of the end of receive process */
// 4224       HAL_I2C_SlaveRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_SlaveRxCpltCallback
        BL       HAL_I2C_SlaveRxCpltCallback
// 4225     }
// 4226   }
// 4227   return HAL_OK;
??I2C_SlaveReceive_RXNE_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 4228 }
          CFI EndBlock cfiBlock54
// 4229 
// 4230 /**
// 4231   * @brief  Handle BTF flag for Slave receiver
// 4232   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4233   *         the configuration information for I2C module
// 4234   * @retval HAL status
// 4235   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock55 Using cfiCommon0
          CFI Function I2C_SlaveReceive_BTF
          CFI NoCalls
        THUMB
// 4236 static HAL_StatusTypeDef I2C_SlaveReceive_BTF(I2C_HandleTypeDef *hi2c)
// 4237 {
// 4238   if(hi2c->XferCount != 0U)
I2C_SlaveReceive_BTF:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_SlaveReceive_BTF_0
// 4239   {
// 4240     /* Read data from DR */
// 4241     (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 4242     hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4243   }
// 4244   return HAL_OK;
??I2C_SlaveReceive_BTF_0:
        MOVS     R0,#+0
        BX       LR               ;; return
// 4245 }
          CFI EndBlock cfiBlock55
// 4246 
// 4247 /**
// 4248   * @brief  Handle ADD flag for Slave
// 4249   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4250   *         the configuration information for I2C module
// 4251   * @retval HAL status
// 4252   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock56 Using cfiCommon0
          CFI Function I2C_Slave_ADDR
        THUMB
// 4253 static HAL_StatusTypeDef I2C_Slave_ADDR(I2C_HandleTypeDef *hi2c)
// 4254 {
I2C_Slave_ADDR:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4255   uint8_t TransferDirection = I2C_DIRECTION_RECEIVE;
        MOVS     R1,#+0
// 4256   uint16_t SlaveAddrCode = 0U;
        MOVS     R2,#+0
// 4257 
// 4258   /* Transfer Direction requested by Master */
// 4259   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TRA) == RESET)
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+24]
        LSLS     R2,R2,#+29
        BMI.N    ??I2C_Slave_ADDR_0
// 4260   {
// 4261     TransferDirection = I2C_DIRECTION_TRANSMIT;
        MOVS     R1,#+1
// 4262   }
// 4263   
// 4264   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_DUALF) == RESET)
??I2C_Slave_ADDR_0:
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+24]
        LSLS     R2,R2,#+24
        BMI.N    ??I2C_Slave_ADDR_1
// 4265   {
// 4266     SlaveAddrCode = hi2c->Init.OwnAddress1;
        LDR      R2,[R0, #+12]
        B.N      ??I2C_Slave_ADDR_2
// 4267   }
// 4268   else
// 4269   {
// 4270     SlaveAddrCode = hi2c->Init.OwnAddress2;
??I2C_Slave_ADDR_1:
        LDR      R2,[R0, #+24]
// 4271   }
// 4272 
// 4273   /* Call Slave Addr callback */
// 4274   HAL_I2C_AddrCallback(hi2c, TransferDirection, SlaveAddrCode);
??I2C_Slave_ADDR_2:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
          CFI FunCall HAL_I2C_AddrCallback
        BL       HAL_I2C_AddrCallback
// 4275 
// 4276   return HAL_OK;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 4277 }
          CFI EndBlock cfiBlock56
// 4278 
// 4279 /**
// 4280   * @brief  Handle STOPF flag for Slave
// 4281   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4282   *         the configuration information for I2C module
// 4283   * @retval HAL status
// 4284   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock57 Using cfiCommon0
          CFI Function I2C_Slave_STOPF
        THUMB
// 4285 static HAL_StatusTypeDef I2C_Slave_STOPF(I2C_HandleTypeDef *hi2c)
// 4286 {
I2C_Slave_STOPF:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4287   /* Disable EVT, BUF and ERR interrupt */
// 4288   __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4289 
// 4290   /* Clear STOPF flag */
// 4291   __HAL_I2C_CLEAR_STOPFLAG(hi2c);
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        STR      R1,[SP, #+0]
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
        LDR      R1,[SP, #+0]
// 4292 
// 4293   /* Disable Acknowledge */
// 4294   CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4295 
// 4296   /* If a DMA is ongoing, Update handle size context */
// 4297   if((hi2c->Instance->CR2 & I2C_CR2_DMAEN) == I2C_CR2_DMAEN)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        LSLS     R1,R1,#+20
        BPL.N    ??I2C_Slave_STOPF_0
// 4298   {
// 4299     if((hi2c->State == HAL_I2C_STATE_BUSY_RX) || (hi2c->State == HAL_I2C_STATE_BUSY_RX_LISTEN))
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BEQ.N    ??I2C_Slave_STOPF_1
        LDRB     R1,[R0, #+61]
        CMP      R1,#+42
        BNE.N    ??I2C_Slave_STOPF_2
// 4300     {
// 4301       hi2c->XferCount = __HAL_DMA_GET_COUNTER(hi2c->hdmarx);
??I2C_Slave_STOPF_1:
        LDR      R1,[R0, #+56]
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+4]
        STRH     R1,[R0, #+42]
        B.N      ??I2C_Slave_STOPF_0
// 4302     }
// 4303     else
// 4304     {
// 4305       hi2c->XferCount = __HAL_DMA_GET_COUNTER(hi2c->hdmatx);
??I2C_Slave_STOPF_2:
        LDR      R1,[R0, #+52]
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+4]
        STRH     R1,[R0, #+42]
// 4306     }
// 4307   }
// 4308 
// 4309   /* All data are not transferred, so set error code accordingly */
// 4310   if(hi2c->XferCount != 0U)
??I2C_Slave_STOPF_0:
        LDRH     R1,[R0, #+42]
        CMP      R1,#+0
        BEQ.N    ??I2C_Slave_STOPF_3
// 4311   {
// 4312     /* Store Last receive data if any */
// 4313     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == SET)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        LSLS     R1,R1,#+29
        BPL.N    ??I2C_Slave_STOPF_4
// 4314     {
// 4315       /* Read data from DR */
// 4316       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 4317       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4318     }
// 4319 
// 4320     /* Store Last receive data if any */
// 4321     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
??I2C_Slave_STOPF_4:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        LSLS     R1,R1,#+25
        BPL.N    ??I2C_Slave_STOPF_5
// 4322     {
// 4323       /* Read data from DR */
// 4324       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R1,[R0, #+36]
        ADDS     R2,R1,#+1
        STR      R2,[R0, #+36]
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+16]
        STRB     R2,[R1, #+0]
// 4325       hi2c->XferCount--;
        LDRH     R1,[R0, #+42]
        SUBS     R1,R1,#+1
        STRH     R1,[R0, #+42]
// 4326     }
// 4327 
// 4328     /* Set ErrorCode corresponding to a Non-Acknowledge */
// 4329     hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
??I2C_Slave_STOPF_5:
        LDR      R1,[R0, #+64]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+64]
// 4330   }
// 4331 
// 4332   if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
??I2C_Slave_STOPF_3:
        LDR      R1,[R0, #+64]
        CMP      R1,#+0
        BEQ.N    ??I2C_Slave_STOPF_6
// 4333   {
// 4334     /* Call the corresponding callback to inform upper layer of End of Transfer */
// 4335     I2C_ITError(hi2c);
          CFI FunCall I2C_ITError
        BL       I2C_ITError
        B.N      ??I2C_Slave_STOPF_7
// 4336   }
// 4337   else
// 4338   {
// 4339    if((hi2c->State == HAL_I2C_STATE_LISTEN ) || (hi2c->State == HAL_I2C_STATE_BUSY_RX_LISTEN) || \ 
// 4340       (hi2c->State == HAL_I2C_STATE_BUSY_TX_LISTEN))
??I2C_Slave_STOPF_6:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+40
        BEQ.N    ??I2C_Slave_STOPF_8
        LDRB     R1,[R0, #+61]
        CMP      R1,#+42
        BEQ.N    ??I2C_Slave_STOPF_8
        LDRB     R1,[R0, #+61]
        CMP      R1,#+41
        BNE.N    ??I2C_Slave_STOPF_9
// 4341     {
// 4342       hi2c->XferOptions = I2C_NO_OPTION_FRAME;
??I2C_Slave_STOPF_8:
        LDR.N    R1,??DataTable30  ;; 0xffff0000
        STR      R1,[R0, #+44]
// 4343       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 4344       hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 4345       hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4346 
// 4347       /* Call the Listen Complete callback, to inform upper layer of the end of Listen usecase */
// 4348       HAL_I2C_ListenCpltCallback(hi2c);
          CFI FunCall HAL_I2C_ListenCpltCallback
        BL       HAL_I2C_ListenCpltCallback
        B.N      ??I2C_Slave_STOPF_7
// 4349     }
// 4350     else
// 4351     {
// 4352       if((hi2c->PreviousState  == I2C_STATE_SLAVE_BUSY_RX) || (hi2c->State == HAL_I2C_STATE_BUSY_RX))
??I2C_Slave_STOPF_9:
        LDR      R1,[R0, #+48]
        CMP      R1,#+34
        BEQ.N    ??I2C_Slave_STOPF_10
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BNE.N    ??I2C_Slave_STOPF_7
// 4353       {
// 4354         hi2c->PreviousState = I2C_STATE_NONE;
??I2C_Slave_STOPF_10:
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 4355         hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 4356         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4357 
// 4358         HAL_I2C_SlaveRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_SlaveRxCpltCallback
        BL       HAL_I2C_SlaveRxCpltCallback
// 4359       }
// 4360     }
// 4361   }
// 4362   return HAL_OK;
??I2C_Slave_STOPF_7:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 4363 }
          CFI EndBlock cfiBlock57
// 4364 
// 4365 /**
// 4366   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4367   *         the configuration information for I2C module
// 4368   * @retval HAL status
// 4369   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock58 Using cfiCommon0
          CFI Function I2C_Slave_AF
        THUMB
// 4370 static HAL_StatusTypeDef I2C_Slave_AF(I2C_HandleTypeDef *hi2c)
// 4371 {
I2C_Slave_AF:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4372   if(((hi2c->XferOptions ==  I2C_FIRST_AND_LAST_FRAME) || (hi2c->XferOptions == I2C_LAST_FRAME)) && \ 
// 4373       (hi2c->State == HAL_I2C_STATE_LISTEN))
        LDR      R1,[R0, #+44]
        CMP      R1,#+4
        BEQ.N    ??I2C_Slave_AF_0
        LDR      R1,[R0, #+44]
        CMP      R1,#+8
        BNE.N    ??I2C_Slave_AF_1
??I2C_Slave_AF_0:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+40
        BNE.N    ??I2C_Slave_AF_1
// 4374   {
// 4375     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R1,??DataTable30  ;; 0xffff0000
        STR      R1,[R0, #+44]
// 4376 
// 4377     /* Disable EVT, BUF and ERR interrupt */
// 4378     __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4379 
// 4380     /* Clear AF flag */
// 4381     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
        MVNS     R1,#+1024
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 4382 
// 4383     /* Disable Acknowledge */
// 4384     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4385 
// 4386     hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 4387     hi2c->State         = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 4388     hi2c->Mode          = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4389 
// 4390     /* Call the Listen Complete callback, to inform upper layer of the end of Listen usecase */
// 4391     HAL_I2C_ListenCpltCallback(hi2c);
          CFI FunCall HAL_I2C_ListenCpltCallback
        BL       HAL_I2C_ListenCpltCallback
        B.N      ??I2C_Slave_AF_2
// 4392   }
// 4393   else if(hi2c->State == HAL_I2C_STATE_BUSY_TX)
??I2C_Slave_AF_1:
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BNE.N    ??I2C_Slave_AF_3
// 4394   {
// 4395     hi2c->XferOptions   = I2C_NO_OPTION_FRAME;
        LDR.N    R1,??DataTable30  ;; 0xffff0000
        STR      R1,[R0, #+44]
// 4396     hi2c->PreviousState = I2C_STATE_SLAVE_BUSY_TX;
        MOVS     R1,#+33
        STR      R1,[R0, #+48]
// 4397     hi2c->State         = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 4398     hi2c->Mode          = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4399 
// 4400     /* Disable EVT, BUF and ERR interrupt */
// 4401     __HAL_I2C_DISABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_BUF | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x700
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4402 
// 4403     /* Clear AF flag */
// 4404     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
        MVNS     R1,#+1024
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 4405 
// 4406     /* Disable Acknowledge */
// 4407     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4408 
// 4409     HAL_I2C_SlaveTxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_SlaveTxCpltCallback
        BL       HAL_I2C_SlaveTxCpltCallback
        B.N      ??I2C_Slave_AF_2
// 4410   }
// 4411   else
// 4412   {
// 4413     /* Clear AF flag only */
// 4414     /* State Listen, but XferOptions == FIRST or NEXT */
// 4415     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
??I2C_Slave_AF_3:
        MVNS     R1,#+1024
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+20]
// 4416   }
// 4417 
// 4418   return HAL_OK;
??I2C_Slave_AF_2:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
// 4419 }
          CFI EndBlock cfiBlock58
// 4420 
// 4421 /**
// 4422   * @brief  I2C interrupts error process
// 4423   * @param  hi2c I2C handle.
// 4424   * @retval None
// 4425   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock59 Using cfiCommon0
          CFI Function I2C_ITError
        THUMB
// 4426 static void I2C_ITError(I2C_HandleTypeDef *hi2c)
// 4427 {
I2C_ITError:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
// 4428   /* Declaration of temporary variable to prevent undefined behavior of volatile usage */
// 4429   uint32_t CurrentState = hi2c->State;
        LDRB     R0,[R4, #+61]
// 4430 
// 4431   if((CurrentState == HAL_I2C_STATE_BUSY_TX_LISTEN) || (CurrentState == HAL_I2C_STATE_BUSY_RX_LISTEN))
        CMP      R0,#+41
        BEQ.N    ??I2C_ITError_0
        CMP      R0,#+42
        BNE.N    ??I2C_ITError_1
// 4432   {
// 4433     /* keep HAL_I2C_STATE_LISTEN */
// 4434     hi2c->PreviousState = I2C_STATE_NONE;
??I2C_ITError_0:
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 4435     hi2c->State = HAL_I2C_STATE_LISTEN;
        MOVS     R0,#+40
        STRB     R0,[R4, #+61]
        B.N      ??I2C_ITError_2
// 4436   }
// 4437   else
// 4438   {
// 4439     /* If state is an abort treatment on going, don't change state */
// 4440     /* This change will be do later */
// 4441     if((hi2c->State != HAL_I2C_STATE_ABORT) && ((hi2c->Instance->CR2 & I2C_CR2_DMAEN) != I2C_CR2_DMAEN))
??I2C_ITError_1:
        LDRB     R0,[R4, #+61]
        CMP      R0,#+96
        BEQ.N    ??I2C_ITError_3
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        LSLS     R0,R0,#+20
        BMI.N    ??I2C_ITError_3
// 4442     { 
// 4443       hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 4444     }
// 4445     hi2c->PreviousState = I2C_STATE_NONE;
??I2C_ITError_3:
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 4446     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
// 4447   }
// 4448 
// 4449   /* Disable Pos bit in I2C CR1 when error occurred in Master/Mem Receive IT Process */
// 4450   hi2c->Instance->CR1 &= ~I2C_CR1_POS;
??I2C_ITError_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4451 
// 4452   /* Abort DMA transfer */
// 4453   if((hi2c->Instance->CR2 & I2C_CR2_DMAEN) == I2C_CR2_DMAEN)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        LSLS     R0,R0,#+20
        BPL.N    ??I2C_ITError_4
// 4454   {
// 4455     hi2c->Instance->CR2 &= ~I2C_CR2_DMAEN;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+4]
        BICS     R0,R0,#0x800
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
// 4456 
// 4457     if(hi2c->hdmatx->State != HAL_DMA_STATE_READY)
        LDR      R0,[R4, #+52]
        LDRB     R0,[R0, #+33]
        CMP      R0,#+1
        BEQ.N    ??I2C_ITError_5
// 4458     {
// 4459       /* Set the DMA Abort callback : 
// 4460       will lead to call HAL_I2C_ErrorCallback() at end of DMA abort procedure */
// 4461       hi2c->hdmatx->XferAbortCallback = I2C_DMAAbort;
        ADR.W    R0,I2C_DMAAbort
        LDR      R1,[R4, #+52]
        STR      R0,[R1, #+52]
// 4462 
// 4463       if(HAL_DMA_Abort_IT(hi2c->hdmatx) != HAL_OK)
        LDR      R0,[R4, #+52]
          CFI FunCall HAL_DMA_Abort_IT
        BL       HAL_DMA_Abort_IT
        CMP      R0,#+0
        BEQ.N    ??I2C_ITError_6
// 4464       {
// 4465         /* Disable I2C peripheral to prevent dummy data in buffer */
// 4466         __HAL_I2C_DISABLE(hi2c);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4467 
// 4468         hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 4469 
// 4470         /* Call Directly XferAbortCallback function in case of error */
// 4471         hi2c->hdmatx->XferAbortCallback(hi2c->hdmatx);
        LDR      R0,[R4, #+52]
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+52]
          CFI FunCall
        BLX      R1
        B.N      ??I2C_ITError_6
// 4472       }
// 4473     }
// 4474     else
// 4475     {
// 4476       /* Set the DMA Abort callback : 
// 4477       will lead to call HAL_I2C_ErrorCallback() at end of DMA abort procedure */
// 4478       hi2c->hdmarx->XferAbortCallback = I2C_DMAAbort;
??I2C_ITError_5:
        ADR.W    R0,I2C_DMAAbort
        LDR      R1,[R4, #+56]
        STR      R0,[R1, #+52]
// 4479 
// 4480       if(HAL_DMA_Abort_IT(hi2c->hdmarx) != HAL_OK)
        LDR      R0,[R4, #+56]
          CFI FunCall HAL_DMA_Abort_IT
        BL       HAL_DMA_Abort_IT
        CMP      R0,#+0
        BEQ.N    ??I2C_ITError_6
// 4481       {
// 4482         /* Store Last receive data if any */
// 4483         if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C_ITError_7
// 4484         {
// 4485           /* Read data from DR */
// 4486           (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 4487         }
// 4488 
// 4489         /* Disable I2C peripheral to prevent dummy data in buffer */
// 4490         __HAL_I2C_DISABLE(hi2c);
??I2C_ITError_7:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4491 
// 4492         hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 4493 
// 4494         /* Call Directly hi2c->hdmarx->XferAbortCallback function in case of error */
// 4495         hi2c->hdmarx->XferAbortCallback(hi2c->hdmarx);
        LDR      R0,[R4, #+56]
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+52]
          CFI FunCall
        BLX      R1
        B.N      ??I2C_ITError_6
// 4496       }
// 4497     }
// 4498   }
// 4499   else if(hi2c->State == HAL_I2C_STATE_ABORT)
??I2C_ITError_4:
        LDRB     R0,[R4, #+61]
        CMP      R0,#+96
        BNE.N    ??I2C_ITError_8
// 4500   {
// 4501     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 4502     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 4503 
// 4504     /* Store Last receive data if any */
// 4505     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C_ITError_9
// 4506     {
// 4507       /* Read data from DR */
// 4508       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 4509     }
// 4510 
// 4511     /* Disable I2C peripheral to prevent dummy data in buffer */
// 4512     __HAL_I2C_DISABLE(hi2c);
??I2C_ITError_9:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4513 
// 4514     /* Call the corresponding callback to inform upper layer of End of Transfer */
// 4515     HAL_I2C_AbortCpltCallback(hi2c);
        MOVS     R0,R4
          CFI FunCall HAL_I2C_AbortCpltCallback
        BL       HAL_I2C_AbortCpltCallback
        B.N      ??I2C_ITError_6
// 4516   }
// 4517   else
// 4518   {
// 4519     /* Store Last receive data if any */
// 4520     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
??I2C_ITError_8:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C_ITError_10
// 4521     {
// 4522       /* Read data from DR */
// 4523       (*hi2c->pBuffPtr++) = hi2c->Instance->DR;
        LDR      R0,[R4, #+36]
        ADDS     R1,R0,#+1
        STR      R1,[R4, #+36]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+16]
        STRB     R1,[R0, #+0]
// 4524     }
// 4525 
// 4526     /* Call user error callback */
// 4527     HAL_I2C_ErrorCallback(hi2c);
??I2C_ITError_10:
        MOVS     R0,R4
          CFI FunCall HAL_I2C_ErrorCallback
        BL       HAL_I2C_ErrorCallback
// 4528   }
// 4529   /* STOP Flag is not set after a NACK reception */
// 4530   /* So may inform upper layer that listen phase is stopped */
// 4531   /* during NACK error treatment */
// 4532   if((hi2c->State == HAL_I2C_STATE_LISTEN) && ((hi2c->ErrorCode & HAL_I2C_ERROR_AF) == HAL_I2C_ERROR_AF))
??I2C_ITError_6:
        LDRB     R0,[R4, #+61]
        CMP      R0,#+40
        BNE.N    ??I2C_ITError_11
        LDR      R0,[R4, #+64]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_ITError_11
// 4533   {
// 4534     hi2c->XferOptions = I2C_NO_OPTION_FRAME;
        LDR.N    R0,??DataTable30  ;; 0xffff0000
        STR      R0,[R4, #+44]
// 4535     hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 4536     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 4537     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
// 4538 
// 4539     /* Call the Listen Complete callback, to inform upper layer of the end of Listen usecase */
// 4540     HAL_I2C_ListenCpltCallback(hi2c);
        MOVS     R0,R4
          CFI FunCall HAL_I2C_ListenCpltCallback
        BL       HAL_I2C_ListenCpltCallback
// 4541   }
// 4542 }
??I2C_ITError_11:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock59

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     0xffff0000
// 4543 
// 4544 /**
// 4545   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4546   *         the configuration information for I2C module
// 4547   * @param  DevAddress Target device address: The device 7 bits address value
// 4548   *         in datasheet must be shift at right before call interface
// 4549   * @param  Timeout Timeout duration
// 4550   * @param  Tickstart Tick start value
// 4551   * @retval HAL status
// 4552   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock60 Using cfiCommon0
          CFI Function I2C_MasterRequestWrite
        THUMB
// 4553 static HAL_StatusTypeDef I2C_MasterRequestWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Timeout, uint32_t Tickstart)
// 4554 {
I2C_MasterRequestWrite:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 4555   /* Generate Start condition if first transfer */
// 4556   if((hi2c->XferOptions == I2C_FIRST_AND_LAST_FRAME) || (hi2c->XferOptions == I2C_FIRST_FRAME) || (hi2c->XferOptions == I2C_NO_OPTION_FRAME))
        LDR      R0,[R4, #+44]
        CMP      R0,#+4
        BEQ.N    ??I2C_MasterRequestWrite_0
        LDR      R0,[R4, #+44]
        CMP      R0,#+1
        BEQ.N    ??I2C_MasterRequestWrite_0
        LDR      R0,[R4, #+44]
        LDR.W    R1,??DataTable34  ;; 0xffff0000
        CMP      R0,R1
        BNE.N    ??I2C_MasterRequestWrite_1
// 4557   {
// 4558     /* Generate Start */
// 4559     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
??I2C_MasterRequestWrite_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??I2C_MasterRequestWrite_2
// 4560   }
// 4561   else if(hi2c->PreviousState == I2C_STATE_MASTER_BUSY_RX)
??I2C_MasterRequestWrite_1:
        LDR      R0,[R4, #+48]
        CMP      R0,#+18
        BNE.N    ??I2C_MasterRequestWrite_2
// 4562   {
// 4563     /* Generate ReStart */
// 4564     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4565   }
// 4566 
// 4567   /* Wait until SB flag is set */
// 4568   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
??I2C_MasterRequestWrite_2:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestWrite_3
// 4569   {
// 4570     return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestWrite_4
// 4571   }
// 4572 
// 4573   if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_7BIT)
??I2C_MasterRequestWrite_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+16384
        BNE.N    ??I2C_MasterRequestWrite_5
// 4574   {
// 4575     /* Send slave address */
// 4576     hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(DevAddress);
        ANDS     R0,R5,#0xFE
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
        B.N      ??I2C_MasterRequestWrite_6
// 4577   }
// 4578   else
// 4579   {
// 4580     /* Send header of slave address */
// 4581     hi2c->Instance->DR = I2C_10BIT_HEADER_WRITE(DevAddress);
??I2C_MasterRequestWrite_5:
        ANDS     R0,R5,#0x300
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+7
        ORRS     R0,R0,#0xF0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4582 
// 4583     /* Wait until ADD10 flag is set */
// 4584     if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADD10, Timeout, Tickstart) != HAL_OK)
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable31  ;; 0x10008
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestWrite_7
// 4585     {
// 4586       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_MasterRequestWrite_8
// 4587       {
// 4588         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_MasterRequestWrite_4
// 4589       }
// 4590       else
// 4591       {
// 4592         return HAL_TIMEOUT;
??I2C_MasterRequestWrite_8:
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestWrite_4
// 4593       }
// 4594     }
// 4595 
// 4596     /* Send slave address */
// 4597     hi2c->Instance->DR = I2C_10BIT_ADDRESS(DevAddress);
??I2C_MasterRequestWrite_7:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R4, #+0]
        STR      R5,[R0, #+16]
// 4598   }
// 4599 
// 4600   /* Wait until ADDR flag is set */
// 4601   if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
??I2C_MasterRequestWrite_6:
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable31_1  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestWrite_9
// 4602   {
// 4603     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_MasterRequestWrite_10
// 4604     {
// 4605       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_MasterRequestWrite_4
// 4606     }
// 4607     else
// 4608     {
// 4609       return HAL_TIMEOUT;
??I2C_MasterRequestWrite_10:
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestWrite_4
// 4610     }
// 4611   }
// 4612 
// 4613   return HAL_OK;
??I2C_MasterRequestWrite_9:
        MOVS     R0,#+0
??I2C_MasterRequestWrite_4:
        POP      {R1,R4-R7,PC}    ;; return
// 4614 }
          CFI EndBlock cfiBlock60

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     0x10008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     0x10002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     0x20004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_3:
        DC32     0x10080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_4:
        DC32     0x10040
// 4615 
// 4616 /**
// 4617   * @brief  Master sends target device address for read request.
// 4618   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4619   *         the configuration information for I2C module
// 4620   * @param  DevAddress Target device address: The device 7 bits address value
// 4621   *         in datasheet must be shift at right before call interface
// 4622   * @param  Timeout Timeout duration
// 4623   * @param  Tickstart Tick start value
// 4624   * @retval HAL status
// 4625   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock61 Using cfiCommon0
          CFI Function I2C_MasterRequestRead
        THUMB
// 4626 static HAL_StatusTypeDef I2C_MasterRequestRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Timeout, uint32_t Tickstart)
// 4627 {
I2C_MasterRequestRead:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 4628   /* Enable Acknowledge */
// 4629   SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4630 
// 4631   /* Generate Start condition if first transfer */
// 4632   if((hi2c->XferOptions == I2C_FIRST_AND_LAST_FRAME) || (hi2c->XferOptions == I2C_FIRST_FRAME)  || (hi2c->XferOptions == I2C_NO_OPTION_FRAME))
        LDR      R0,[R4, #+44]
        CMP      R0,#+4
        BEQ.N    ??I2C_MasterRequestRead_0
        LDR      R0,[R4, #+44]
        CMP      R0,#+1
        BEQ.N    ??I2C_MasterRequestRead_0
        LDR      R0,[R4, #+44]
        LDR.W    R1,??DataTable34  ;; 0xffff0000
        CMP      R0,R1
        BNE.N    ??I2C_MasterRequestRead_1
// 4633   {
// 4634     /* Generate Start */
// 4635     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
??I2C_MasterRequestRead_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??I2C_MasterRequestRead_2
// 4636   }
// 4637   else if(hi2c->PreviousState == I2C_STATE_MASTER_BUSY_TX)
??I2C_MasterRequestRead_1:
        LDR      R0,[R4, #+48]
        CMP      R0,#+17
        BNE.N    ??I2C_MasterRequestRead_2
// 4638   {
// 4639     /* Generate ReStart */
// 4640     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4641   }
// 4642 
// 4643   /* Wait until SB flag is set */
// 4644   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
??I2C_MasterRequestRead_2:
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestRead_3
// 4645   {
// 4646     return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestRead_4
// 4647   }
// 4648 
// 4649   if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_7BIT)
??I2C_MasterRequestRead_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+16384
        BNE.N    ??I2C_MasterRequestRead_5
// 4650   {
// 4651     /* Send slave address */
// 4652     hi2c->Instance->DR = I2C_7BIT_ADD_READ(DevAddress);
        ORRS     R0,R5,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
        B.N      ??I2C_MasterRequestRead_6
// 4653   }
// 4654   else
// 4655   {
// 4656     /* Send header of slave address */
// 4657     hi2c->Instance->DR = I2C_10BIT_HEADER_WRITE(DevAddress);
??I2C_MasterRequestRead_5:
        ANDS     R0,R5,#0x300
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+7
        ORRS     R0,R0,#0xF0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4658 
// 4659     /* Wait until ADD10 flag is set */
// 4660     if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADD10, Timeout, Tickstart) != HAL_OK)
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable34_1  ;; 0x10008
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestRead_7
// 4661     {
// 4662       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_MasterRequestRead_8
// 4663       {
// 4664         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_MasterRequestRead_4
// 4665       }
// 4666       else
// 4667       {
// 4668         return HAL_TIMEOUT;
??I2C_MasterRequestRead_8:
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestRead_4
// 4669       }
// 4670     }
// 4671 
// 4672     /* Send slave address */
// 4673     hi2c->Instance->DR = I2C_10BIT_ADDRESS(DevAddress);
??I2C_MasterRequestRead_7:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4674 
// 4675     /* Wait until ADDR flag is set */
// 4676     if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable34_2  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestRead_9
// 4677     {
// 4678       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_MasterRequestRead_10
// 4679       {
// 4680         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_MasterRequestRead_4
// 4681       }
// 4682       else
// 4683       {
// 4684         return HAL_TIMEOUT;
??I2C_MasterRequestRead_10:
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestRead_4
// 4685       }
// 4686     }
// 4687 
// 4688     /* Clear ADDR flag */
// 4689     __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_MasterRequestRead_9:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 4690 
// 4691     /* Generate Restart */
// 4692     SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4693 
// 4694     /* Wait until SB flag is set */
// 4695     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestRead_11
// 4696     {
// 4697       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestRead_4
// 4698     }
// 4699 
// 4700     /* Send header of slave address */
// 4701     hi2c->Instance->DR = I2C_10BIT_HEADER_READ(DevAddress);
??I2C_MasterRequestRead_11:
        ANDS     R0,R5,#0x300
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+7
        ORRS     R0,R0,#0xF1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4702   }
// 4703 
// 4704   /* Wait until ADDR flag is set */
// 4705   if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
??I2C_MasterRequestRead_6:
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable34_2  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_MasterRequestRead_12
// 4706   {
// 4707     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_MasterRequestRead_13
// 4708     {
// 4709       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_MasterRequestRead_4
// 4710     }
// 4711     else
// 4712     {
// 4713       return HAL_TIMEOUT;
??I2C_MasterRequestRead_13:
        MOVS     R0,#+3
        B.N      ??I2C_MasterRequestRead_4
// 4714     }
// 4715   }
// 4716 
// 4717   return HAL_OK;
??I2C_MasterRequestRead_12:
        MOVS     R0,#+0
??I2C_MasterRequestRead_4:
        POP      {R1,R4-R7,PC}    ;; return
// 4718 }
          CFI EndBlock cfiBlock61

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     0x10010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     0x10100
// 4719 
// 4720 /**
// 4721   * @brief  Master sends target device address followed by internal memory address for write request.
// 4722   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4723   *         the configuration information for I2C module
// 4724   * @param  DevAddress Target device address: The device 7 bits address value
// 4725   *         in datasheet must be shift at right before call interface
// 4726   * @param  MemAddress Internal memory address
// 4727   * @param  MemAddSize Size of internal memory address
// 4728   * @param  Timeout Timeout duration
// 4729   * @param  Tickstart Tick start value
// 4730   * @retval HAL status
// 4731   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock62 Using cfiCommon0
          CFI Function I2C_RequestMemoryWrite
        THUMB
// 4732 static HAL_StatusTypeDef I2C_RequestMemoryWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint32_t Timeout, uint32_t Tickstart)
// 4733 {
I2C_RequestMemoryWrite:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOV      R9,R1
        MOVS     R5,R2
        MOV      R8,R3
// 4734   /* Generate Start */
// 4735   SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R6,[SP, #+32]
        LDR      R7,[SP, #+36]
// 4736 
// 4737   /* Wait until SB flag is set */
// 4738   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryWrite_0
// 4739   {
// 4740     return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryWrite_1
// 4741   }
// 4742 
// 4743   /* Send slave address */
// 4744   hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(DevAddress);
??I2C_RequestMemoryWrite_0:
        ANDS     R0,R9,#0xFE
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4745 
// 4746   /* Wait until ADDR flag is set */
// 4747   if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable34_2  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryWrite_2
// 4748   {
// 4749     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryWrite_3
// 4750     {
// 4751       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryWrite_1
// 4752     }
// 4753     else
// 4754     {
// 4755       return HAL_TIMEOUT;
??I2C_RequestMemoryWrite_3:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryWrite_1
// 4756     }
// 4757   }
// 4758 
// 4759   /* Clear ADDR flag */
// 4760   __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_RequestMemoryWrite_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 4761 
// 4762   /* Wait until TXE flag is set */
// 4763   if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, Tickstart) != HAL_OK)
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryWrite_4
// 4764   {
// 4765     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryWrite_5
// 4766     {
// 4767       /* Generate Stop */
// 4768       SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4769       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryWrite_1
// 4770     }
// 4771     else
// 4772     {
// 4773       return HAL_TIMEOUT;
??I2C_RequestMemoryWrite_5:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryWrite_1
// 4774     }
// 4775   }
// 4776 
// 4777   /* If Memory address size is 8Bit */
// 4778   if(MemAddSize == I2C_MEMADD_SIZE_8BIT)
??I2C_RequestMemoryWrite_4:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BNE.N    ??I2C_RequestMemoryWrite_6
// 4779   {
// 4780     /* Send Memory Address */
// 4781     hi2c->Instance->DR = I2C_MEM_ADD_LSB(MemAddress);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R4, #+0]
        STR      R5,[R0, #+16]
        B.N      ??I2C_RequestMemoryWrite_7
// 4782   }
// 4783   /* If Memory address size is 16Bit */
// 4784   else
// 4785   {
// 4786     /* Send MSB of Memory Address */
// 4787     hi2c->Instance->DR = I2C_MEM_ADD_MSB(MemAddress);
??I2C_RequestMemoryWrite_6:
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4788 
// 4789     /* Wait until TXE flag is set */
// 4790     if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, Tickstart) != HAL_OK)
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryWrite_8
// 4791     {
// 4792       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryWrite_9
// 4793       {
// 4794         /* Generate Stop */
// 4795         SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4796         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryWrite_1
// 4797       }
// 4798       else
// 4799       {
// 4800         return HAL_TIMEOUT;
??I2C_RequestMemoryWrite_9:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryWrite_1
// 4801       }
// 4802     }
// 4803 
// 4804     /* Send LSB of Memory Address */
// 4805     hi2c->Instance->DR = I2C_MEM_ADD_LSB(MemAddress);
??I2C_RequestMemoryWrite_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R4, #+0]
        STR      R5,[R0, #+16]
// 4806   }
// 4807 
// 4808   return HAL_OK;
??I2C_RequestMemoryWrite_7:
        MOVS     R0,#+0
??I2C_RequestMemoryWrite_1:
        POP      {R1,R4-R9,PC}    ;; return
// 4809 }
          CFI EndBlock cfiBlock62
// 4810 
// 4811 /**
// 4812   * @brief  Master sends target device address followed by internal memory address for read request.
// 4813   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 4814   *         the configuration information for I2C module
// 4815   * @param  DevAddress Target device address: The device 7 bits address value
// 4816   *         in datasheet must be shift at right before call interface
// 4817   * @param  MemAddress Internal memory address
// 4818   * @param  MemAddSize Size of internal memory address
// 4819   * @param  Timeout Timeout duration
// 4820   * @param  Tickstart Tick start value
// 4821   * @retval HAL status
// 4822   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock63 Using cfiCommon0
          CFI Function I2C_RequestMemoryRead
        THUMB
// 4823 static HAL_StatusTypeDef I2C_RequestMemoryRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint32_t Timeout, uint32_t Tickstart)
// 4824 {
I2C_RequestMemoryRead:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 4825   /* Enable Acknowledge */
// 4826   SET_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4827 
// 4828   /* Generate Start */
// 4829   SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        LDR      R8,[SP, #+32]
        LDR      R9,[SP, #+36]
// 4830 
// 4831   /* Wait until SB flag is set */
// 4832   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
        STR      R9,[SP, #+0]
        MOV      R3,R8
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_0
// 4833   {
// 4834     return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4835   }
// 4836 
// 4837   /* Send slave address */
// 4838   hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(DevAddress);
??I2C_RequestMemoryRead_0:
        ANDS     R0,R5,#0xFE
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4839 
// 4840   /* Wait until ADDR flag is set */
// 4841   if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
        MOV      R3,R9
        MOV      R2,R8
        LDR.N    R1,??DataTable34_2  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_2
// 4842   {
// 4843     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryRead_3
// 4844     {
// 4845       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryRead_1
// 4846     }
// 4847     else
// 4848     {
// 4849       return HAL_TIMEOUT;
??I2C_RequestMemoryRead_3:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4850     }
// 4851   }
// 4852 
// 4853   /* Clear ADDR flag */
// 4854   __HAL_I2C_CLEAR_ADDRFLAG(hi2c);
??I2C_RequestMemoryRead_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 4855 
// 4856   /* Wait until TXE flag is set */
// 4857   if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, Tickstart) != HAL_OK)
        MOV      R2,R9
        MOV      R1,R8
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_4
// 4858   {
// 4859     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryRead_5
// 4860     {
// 4861       /* Generate Stop */
// 4862       SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4863       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryRead_1
// 4864     }
// 4865     else
// 4866     {
// 4867       return HAL_TIMEOUT;
??I2C_RequestMemoryRead_5:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4868     }
// 4869   }
// 4870 
// 4871   /* If Memory address size is 8Bit */
// 4872   if(MemAddSize == I2C_MEMADD_SIZE_8BIT)
??I2C_RequestMemoryRead_4:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BNE.N    ??I2C_RequestMemoryRead_6
// 4873   {
// 4874     /* Send Memory Address */
// 4875     hi2c->Instance->DR = I2C_MEM_ADD_LSB(MemAddress);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, #+0]
        STR      R6,[R0, #+16]
        B.N      ??I2C_RequestMemoryRead_7
// 4876   }
// 4877   /* If Memory address size is 16Bit */
// 4878   else
// 4879   {
// 4880     /* Send MSB of Memory Address */
// 4881     hi2c->Instance->DR = I2C_MEM_ADD_MSB(MemAddress);
??I2C_RequestMemoryRead_6:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4882 
// 4883     /* Wait until TXE flag is set */
// 4884     if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, Tickstart) != HAL_OK)
        MOV      R2,R9
        MOV      R1,R8
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_8
// 4885     {
// 4886       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryRead_9
// 4887       {
// 4888         /* Generate Stop */
// 4889         SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4890         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryRead_1
// 4891       }
// 4892       else
// 4893       {
// 4894         return HAL_TIMEOUT;
??I2C_RequestMemoryRead_9:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4895       }
// 4896     }
// 4897 
// 4898     /* Send LSB of Memory Address */
// 4899     hi2c->Instance->DR = I2C_MEM_ADD_LSB(MemAddress);
??I2C_RequestMemoryRead_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, #+0]
        STR      R6,[R0, #+16]
// 4900   }
// 4901 
// 4902   /* Wait until TXE flag is set */
// 4903   if(I2C_WaitOnTXEFlagUntilTimeout(hi2c, Timeout, Tickstart) != HAL_OK)
??I2C_RequestMemoryRead_7:
        MOV      R2,R9
        MOV      R1,R8
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnTXEFlagUntilTimeout
        BL       I2C_WaitOnTXEFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_10
// 4904   {
// 4905     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryRead_11
// 4906     {
// 4907       /* Generate Stop */
// 4908       SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4909       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryRead_1
// 4910     }
// 4911     else
// 4912     {
// 4913       return HAL_TIMEOUT;
??I2C_RequestMemoryRead_11:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4914     }
// 4915   }
// 4916 
// 4917   /* Generate Restart */
// 4918   SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
??I2C_RequestMemoryRead_10:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 4919 
// 4920   /* Wait until SB flag is set */
// 4921   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_SB, RESET, Timeout, Tickstart) != HAL_OK)
        STR      R9,[SP, #+0]
        MOV      R3,R8
        MOVS     R2,#+0
        MOVS     R1,#+65537
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnFlagUntilTimeout
        BL       I2C_WaitOnFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_12
// 4922   {
// 4923     return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4924   }
// 4925 
// 4926   /* Send slave address */
// 4927   hi2c->Instance->DR = I2C_7BIT_ADD_READ(DevAddress);
??I2C_RequestMemoryRead_12:
        ORRS     R0,R5,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
// 4928 
// 4929   /* Wait until ADDR flag is set */
// 4930   if(I2C_WaitOnMasterAddressFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, Timeout, Tickstart) != HAL_OK)
        MOV      R3,R9
        MOV      R2,R8
        LDR.N    R1,??DataTable34_2  ;; 0x10002
        MOVS     R0,R4
          CFI FunCall I2C_WaitOnMasterAddressFlagUntilTimeout
        BL       I2C_WaitOnMasterAddressFlagUntilTimeout
        CMP      R0,#+0
        BEQ.N    ??I2C_RequestMemoryRead_13
// 4931   {
// 4932     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
        LDR      R0,[R4, #+64]
        CMP      R0,#+4
        BNE.N    ??I2C_RequestMemoryRead_14
// 4933     {
// 4934       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_RequestMemoryRead_1
// 4935     }
// 4936     else
// 4937     {
// 4938       return HAL_TIMEOUT;
??I2C_RequestMemoryRead_14:
        MOVS     R0,#+3
        B.N      ??I2C_RequestMemoryRead_1
// 4939     }
// 4940   }
// 4941 
// 4942   return HAL_OK;
??I2C_RequestMemoryRead_13:
        MOVS     R0,#+0
??I2C_RequestMemoryRead_1:
        POP      {R1,R4-R9,PC}    ;; return
// 4943 }
          CFI EndBlock cfiBlock63

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34:
        DC32     0xffff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_1:
        DC32     0x10008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_2:
        DC32     0x10002
// 4944 
// 4945 /**
// 4946   * @brief  DMA I2C process complete callback.
// 4947   * @param  hdma DMA handle
// 4948   * @retval None
// 4949   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock64 Using cfiCommon0
          CFI Function I2C_DMAXferCplt
        THUMB
// 4950 static void I2C_DMAXferCplt(DMA_HandleTypeDef *hdma)
// 4951 {
I2C_DMAXferCplt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4952   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
        LDR      R0,[R0, #+36]
// 4953   
// 4954   if((hi2c->State == HAL_I2C_STATE_BUSY_TX) || ((hi2c->State == HAL_I2C_STATE_BUSY_RX) && (hi2c->Mode == HAL_I2C_MODE_SLAVE))) 
        LDRB     R1,[R0, #+61]
        CMP      R1,#+33
        BEQ.N    ??I2C_DMAXferCplt_0
        LDRB     R1,[R0, #+61]
        CMP      R1,#+34
        BNE.N    ??I2C_DMAXferCplt_1
        LDRB     R1,[R0, #+62]
        CMP      R1,#+32
        BNE.N    ??I2C_DMAXferCplt_1
// 4955   {
// 4956     /* Disable DMA Request */
// 4957     CLEAR_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
??I2C_DMAXferCplt_0:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x800
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4958 
// 4959     hi2c->XferCount = 0U;
        MOVS     R1,#+0
        STRH     R1,[R0, #+42]
// 4960 
// 4961     /* Enable EVT and ERR interrupt */
// 4962     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_EVT | I2C_IT_ERR);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        ORRS     R1,R1,#0x300
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+4]
        B.N      ??I2C_DMAXferCplt_2
// 4963   }
// 4964   else
// 4965   {
// 4966     /* Disable Acknowledge */
// 4967     CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
??I2C_DMAXferCplt_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4968 
// 4969     /* Generate Stop */
// 4970     SET_BIT(hi2c->Instance->CR1,I2C_CR1_STOP);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 4971 
// 4972     /* Disable Last DMA */
// 4973     CLEAR_BIT(hi2c->Instance->CR2, I2C_CR2_LAST);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x1000
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4974 
// 4975     /* Disable DMA Request */
// 4976     CLEAR_BIT(hi2c->Instance->CR2, I2C_CR2_DMAEN);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+4]
        BICS     R1,R1,#0x800
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
// 4977 
// 4978     hi2c->XferCount = 0U;
        MOVS     R1,#+0
        STRH     R1,[R0, #+42]
// 4979 
// 4980     /* Check if Errors has been detected during transfer */
// 4981     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
        LDR      R1,[R0, #+64]
        CMP      R1,#+0
        BEQ.N    ??I2C_DMAXferCplt_3
// 4982     {
// 4983       HAL_I2C_ErrorCallback(hi2c);
          CFI FunCall HAL_I2C_ErrorCallback
        BL       HAL_I2C_ErrorCallback
        B.N      ??I2C_DMAXferCplt_2
// 4984     }
// 4985     else
// 4986     {
// 4987       hi2c->State = HAL_I2C_STATE_READY;
??I2C_DMAXferCplt_3:
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 4988 
// 4989       if(hi2c->Mode == HAL_I2C_MODE_MEM)
        LDRB     R1,[R0, #+62]
        CMP      R1,#+64
        BNE.N    ??I2C_DMAXferCplt_4
// 4990       {
// 4991         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4992 
// 4993         HAL_I2C_MemRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MemRxCpltCallback
        BL       HAL_I2C_MemRxCpltCallback
        B.N      ??I2C_DMAXferCplt_2
// 4994       }
// 4995       else
// 4996       {
// 4997         hi2c->Mode = HAL_I2C_MODE_NONE;
??I2C_DMAXferCplt_4:
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 4998 
// 4999         HAL_I2C_MasterRxCpltCallback(hi2c);
          CFI FunCall HAL_I2C_MasterRxCpltCallback
        BL       HAL_I2C_MasterRxCpltCallback
// 5000       }
// 5001     }
// 5002   }
// 5003 }
??I2C_DMAXferCplt_2:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock64
// 5004 
// 5005 /**
// 5006   * @brief  DMA I2C communication error callback.
// 5007   * @param  hdma DMA handle
// 5008   * @retval None
// 5009   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock65 Using cfiCommon0
          CFI Function I2C_DMAError
        THUMB
// 5010 static void I2C_DMAError(DMA_HandleTypeDef *hdma)
// 5011 {
I2C_DMAError:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 5012   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
        LDR      R0,[R0, #+36]
// 5013 
// 5014   /* Disable Acknowledge */
// 5015   CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 5016 
// 5017   hi2c->XferCount = 0U;
        MOVS     R1,#+0
        STRH     R1,[R0, #+42]
// 5018 
// 5019   hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 5020   hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 5021 
// 5022   hi2c->ErrorCode |= HAL_I2C_ERROR_DMA;
        LDR      R1,[R0, #+64]
        ORRS     R1,R1,#0x10
        STR      R1,[R0, #+64]
// 5023 
// 5024   HAL_I2C_ErrorCallback(hi2c);
          CFI FunCall HAL_I2C_ErrorCallback
        BL       HAL_I2C_ErrorCallback
// 5025 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock65
// 5026 
// 5027 /**
// 5028   * @brief DMA I2C communication abort callback
// 5029   *        (To be called at end of DMA Abort procedure).
// 5030   * @param hdma: DMA handle.
// 5031   * @retval None
// 5032   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock66 Using cfiCommon0
          CFI Function I2C_DMAAbort
        THUMB
// 5033 static void I2C_DMAAbort(DMA_HandleTypeDef *hdma)
// 5034 {
I2C_DMAAbort:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 5035   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
        LDR      R0,[R0, #+36]
// 5036 
// 5037   /* Disable Acknowledge */
// 5038   CLEAR_BIT(hi2c->Instance->CR1, I2C_CR1_ACK);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 5039 
// 5040   hi2c->XferCount = 0U;
        MOVS     R1,#+0
        STRH     R1,[R0, #+42]
// 5041 
// 5042   /* Reset XferAbortCallback */
// 5043   hi2c->hdmatx->XferAbortCallback = NULL;
        MOVS     R1,#+0
        LDR      R2,[R0, #+52]
        STR      R1,[R2, #+52]
// 5044   hi2c->hdmarx->XferAbortCallback = NULL;
        MOVS     R1,#+0
        LDR      R2,[R0, #+56]
        STR      R1,[R2, #+52]
// 5045 
// 5046   /* Check if come from abort from user */
// 5047   if(hi2c->State == HAL_I2C_STATE_ABORT)
        LDRB     R1,[R0, #+61]
        CMP      R1,#+96
        BNE.N    ??I2C_DMAAbort_0
// 5048   {
// 5049     hi2c->State = HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 5050     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 5051     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+64]
// 5052 
// 5053     /* Disable I2C peripheral to prevent dummy data in buffer */
// 5054     __HAL_I2C_DISABLE(hi2c);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 5055 
// 5056     /* Call the corresponding callback to inform upper layer of End of Transfer */
// 5057     HAL_I2C_AbortCpltCallback(hi2c);
          CFI FunCall HAL_I2C_AbortCpltCallback
        BL       HAL_I2C_AbortCpltCallback
        B.N      ??I2C_DMAAbort_1
// 5058   }
// 5059   else
// 5060   {
// 5061     hi2c->State = HAL_I2C_STATE_READY;
??I2C_DMAAbort_0:
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 5062     hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+62]
// 5063 
// 5064     /* Disable I2C peripheral to prevent dummy data in buffer */
// 5065     __HAL_I2C_DISABLE(hi2c);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
// 5066 
// 5067     /* Call the corresponding callback to inform upper layer of End of Transfer */
// 5068     HAL_I2C_ErrorCallback(hi2c);
          CFI FunCall HAL_I2C_ErrorCallback
        BL       HAL_I2C_ErrorCallback
// 5069   }
// 5070 }
??I2C_DMAAbort_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock66
// 5071 
// 5072 /**
// 5073   * @brief  This function handles I2C Communication Timeout.
// 5074   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5075   *         the configuration information for I2C module
// 5076   * @param  Flag specifies the I2C flag to check.
// 5077   * @param  Status The new Flag status (SET or RESET).
// 5078   * @param  Timeout Timeout duration
// 5079   * @param  Tickstart Tick start value
// 5080   * @retval HAL status
// 5081   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock67 Using cfiCommon0
          CFI Function I2C_WaitOnFlagUntilTimeout
        THUMB
// 5082 static HAL_StatusTypeDef I2C_WaitOnFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, FlagStatus Status, uint32_t Timeout, uint32_t Tickstart)
// 5083 {
I2C_WaitOnFlagUntilTimeout:
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
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+24]
// 5084   while(__HAL_I2C_GET_FLAG(hi2c, Flag) == Status)
??I2C_WaitOnFlagUntilTimeout_0:
        LSRS     R0,R5,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??I2C_WaitOnFlagUntilTimeout_1
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ANDS     R0,R5,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R5            ;; ZeroExt  R1,R5,#+16,#+16
        CMP      R0,R1
        BNE.N    ??I2C_WaitOnFlagUntilTimeout_2
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnFlagUntilTimeout_3
??I2C_WaitOnFlagUntilTimeout_2:
        MOVS     R0,#+0
        B.N      ??I2C_WaitOnFlagUntilTimeout_3
??I2C_WaitOnFlagUntilTimeout_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        ANDS     R0,R5,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R5            ;; ZeroExt  R1,R5,#+16,#+16
        CMP      R0,R1
        BNE.N    ??I2C_WaitOnFlagUntilTimeout_4
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnFlagUntilTimeout_3
??I2C_WaitOnFlagUntilTimeout_4:
        MOVS     R0,#+0
??I2C_WaitOnFlagUntilTimeout_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BNE.N    ??I2C_WaitOnFlagUntilTimeout_5
// 5085   {
// 5086     /* Check for the Timeout */
// 5087     if(Timeout != HAL_MAX_DELAY)
        CMN      R7,#+1
        BEQ.N    ??I2C_WaitOnFlagUntilTimeout_0
// 5088     {
// 5089       if((Timeout == 0U)||((HAL_GetTick() - Tickstart ) > Timeout))
        CMP      R7,#+0
        BEQ.N    ??I2C_WaitOnFlagUntilTimeout_6
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R7,R0
        BCS.N    ??I2C_WaitOnFlagUntilTimeout_0
// 5090       {
// 5091         hi2c->PreviousState = I2C_STATE_NONE;
??I2C_WaitOnFlagUntilTimeout_6:
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5092         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5093         hi2c->Mode = HAL_I2C_MODE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+62]
// 5094 
// 5095         /* Process Unlocked */
// 5096         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5097         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnFlagUntilTimeout_7
// 5098       }
// 5099     }
// 5100   }
// 5101   return HAL_OK;
??I2C_WaitOnFlagUntilTimeout_5:
        MOVS     R0,#+0
??I2C_WaitOnFlagUntilTimeout_7:
        POP      {R4-R8,PC}       ;; return
// 5102 }
          CFI EndBlock cfiBlock67
// 5103 
// 5104 /**
// 5105   * @brief  This function handles I2C Communication Timeout for Master addressing phase.
// 5106   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5107   *         the configuration information for I2C module
// 5108   * @param  Flag specifies the I2C flag to check.
// 5109   * @param  Timeout Timeout duration
// 5110   * @param  Tickstart Tick start value
// 5111   * @retval HAL status
// 5112   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock68 Using cfiCommon0
          CFI Function I2C_WaitOnMasterAddressFlagUntilTimeout
        THUMB
// 5113 static HAL_StatusTypeDef I2C_WaitOnMasterAddressFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, uint32_t Timeout, uint32_t Tickstart)
// 5114 {
I2C_WaitOnMasterAddressFlagUntilTimeout:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 5115   while(__HAL_I2C_GET_FLAG(hi2c, Flag) == RESET)
??I2C_WaitOnMasterAddressFlagUntilTimeout_0:
        LSRS     R0,R5,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_1
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ANDS     R0,R5,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R5            ;; ZeroExt  R1,R5,#+16,#+16
        CMP      R0,R1
        BNE.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_2
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnMasterAddressFlagUntilTimeout_3
??I2C_WaitOnMasterAddressFlagUntilTimeout_2:
        MOVS     R0,#+0
        B.N      ??I2C_WaitOnMasterAddressFlagUntilTimeout_3
??I2C_WaitOnMasterAddressFlagUntilTimeout_1:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+24]
        ANDS     R0,R5,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R5            ;; ZeroExt  R1,R5,#+16,#+16
        CMP      R0,R1
        BNE.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_4
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnMasterAddressFlagUntilTimeout_3
??I2C_WaitOnMasterAddressFlagUntilTimeout_4:
        MOVS     R0,#+0
??I2C_WaitOnMasterAddressFlagUntilTimeout_3:
        CMP      R0,#+0
        BNE.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_5
// 5116   {
// 5117     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+21
        BPL.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_6
// 5118     {
// 5119       /* Generate Stop */
// 5120       SET_BIT(hi2c->Instance->CR1, I2C_CR1_STOP);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
// 5121 
// 5122       /* Clear AF Flag */
// 5123       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
        MVNS     R0,#+1024
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 5124 
// 5125       hi2c->ErrorCode = HAL_I2C_ERROR_AF;
        MOVS     R0,#+4
        STR      R0,[R4, #+64]
// 5126       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5127       hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5128 
// 5129       /* Process Unlocked */
// 5130       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5131 
// 5132       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnMasterAddressFlagUntilTimeout_7
// 5133     }
// 5134 
// 5135     /* Check for the Timeout */
// 5136     if(Timeout != HAL_MAX_DELAY)
??I2C_WaitOnMasterAddressFlagUntilTimeout_6:
        CMN      R6,#+1
        BEQ.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_0
// 5137     {
// 5138       if((Timeout == 0U)||((HAL_GetTick() - Tickstart ) > Timeout))
        CMP      R6,#+0
        BEQ.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_8
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R6,R0
        BCS.N    ??I2C_WaitOnMasterAddressFlagUntilTimeout_0
// 5139       {
// 5140         hi2c->PreviousState = I2C_STATE_NONE;
??I2C_WaitOnMasterAddressFlagUntilTimeout_8:
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5141         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5142 
// 5143         /* Process Unlocked */
// 5144         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5145 
// 5146         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnMasterAddressFlagUntilTimeout_7
// 5147       }
// 5148     }
// 5149   }
// 5150   return HAL_OK;
??I2C_WaitOnMasterAddressFlagUntilTimeout_5:
        MOVS     R0,#+0
??I2C_WaitOnMasterAddressFlagUntilTimeout_7:
        POP      {R1,R4-R7,PC}    ;; return
// 5151 }
          CFI EndBlock cfiBlock68
// 5152 
// 5153 /**
// 5154   * @brief  This function handles I2C Communication Timeout for specific usage of TXE flag.
// 5155   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5156   *                the configuration information for the specified I2C.
// 5157   * @param  Timeout Timeout duration
// 5158   * @param  Tickstart Tick start value
// 5159   * @retval HAL status
// 5160   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock69 Using cfiCommon0
          CFI Function I2C_WaitOnTXEFlagUntilTimeout
        THUMB
// 5161 static HAL_StatusTypeDef I2C_WaitOnTXEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart)
// 5162 {  
I2C_WaitOnTXEFlagUntilTimeout:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 5163   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXE) == RESET)
??I2C_WaitOnTXEFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+24
        BMI.N    ??I2C_WaitOnTXEFlagUntilTimeout_1
// 5164   {
// 5165     /* Check if a NACK is detected */
// 5166     if(I2C_IsAcknowledgeFailed(hi2c) != HAL_OK)
        MOVS     R0,R4
          CFI FunCall I2C_IsAcknowledgeFailed
        BL       I2C_IsAcknowledgeFailed
        CMP      R0,#+0
        BEQ.N    ??I2C_WaitOnTXEFlagUntilTimeout_2
// 5167     {
// 5168       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnTXEFlagUntilTimeout_3
// 5169     }
// 5170 		
// 5171     /* Check for the Timeout */
// 5172     if(Timeout != HAL_MAX_DELAY)
??I2C_WaitOnTXEFlagUntilTimeout_2:
        CMN      R5,#+1
        BEQ.N    ??I2C_WaitOnTXEFlagUntilTimeout_0
// 5173     {
// 5174       if((Timeout == 0U) || ((HAL_GetTick()-Tickstart) > Timeout))
        CMP      R5,#+0
        BEQ.N    ??I2C_WaitOnTXEFlagUntilTimeout_4
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R5,R0
        BCS.N    ??I2C_WaitOnTXEFlagUntilTimeout_0
// 5175       {
// 5176         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
??I2C_WaitOnTXEFlagUntilTimeout_4:
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+64]
// 5177         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5178         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5179 
// 5180         /* Process Unlocked */
// 5181         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5182 
// 5183         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnTXEFlagUntilTimeout_3
// 5184       }
// 5185     }
// 5186   }
// 5187   return HAL_OK;      
??I2C_WaitOnTXEFlagUntilTimeout_1:
        MOVS     R0,#+0
??I2C_WaitOnTXEFlagUntilTimeout_3:
        POP      {R4-R6,PC}       ;; return
// 5188 }
          CFI EndBlock cfiBlock69
// 5189 
// 5190 /**
// 5191   * @brief  This function handles I2C Communication Timeout for specific usage of BTF flag.
// 5192   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5193   *                the configuration information for the specified I2C.
// 5194   * @param  Timeout Timeout duration
// 5195   * @param  Tickstart Tick start value
// 5196   * @retval HAL status
// 5197   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock70 Using cfiCommon0
          CFI Function I2C_WaitOnBTFFlagUntilTimeout
        THUMB
// 5198 static HAL_StatusTypeDef I2C_WaitOnBTFFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart)
// 5199 {  
I2C_WaitOnBTFFlagUntilTimeout:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 5200   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BTF) == RESET)
??I2C_WaitOnBTFFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+29
        BMI.N    ??I2C_WaitOnBTFFlagUntilTimeout_1
// 5201   {
// 5202     /* Check if a NACK is detected */
// 5203     if(I2C_IsAcknowledgeFailed(hi2c) != HAL_OK)
        MOVS     R0,R4
          CFI FunCall I2C_IsAcknowledgeFailed
        BL       I2C_IsAcknowledgeFailed
        CMP      R0,#+0
        BEQ.N    ??I2C_WaitOnBTFFlagUntilTimeout_2
// 5204     {
// 5205       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnBTFFlagUntilTimeout_3
// 5206     }
// 5207 
// 5208     /* Check for the Timeout */
// 5209     if(Timeout != HAL_MAX_DELAY)
??I2C_WaitOnBTFFlagUntilTimeout_2:
        CMN      R5,#+1
        BEQ.N    ??I2C_WaitOnBTFFlagUntilTimeout_0
// 5210     {
// 5211       if((Timeout == 0U) || ((HAL_GetTick()-Tickstart) > Timeout))
        CMP      R5,#+0
        BEQ.N    ??I2C_WaitOnBTFFlagUntilTimeout_4
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R5,R0
        BCS.N    ??I2C_WaitOnBTFFlagUntilTimeout_0
// 5212       {
// 5213         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
??I2C_WaitOnBTFFlagUntilTimeout_4:
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+64]
// 5214         hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5215         hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5216 
// 5217         /* Process Unlocked */
// 5218         __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5219 
// 5220         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnBTFFlagUntilTimeout_3
// 5221       }
// 5222     }
// 5223   }
// 5224   return HAL_OK;
??I2C_WaitOnBTFFlagUntilTimeout_1:
        MOVS     R0,#+0
??I2C_WaitOnBTFFlagUntilTimeout_3:
        POP      {R4-R6,PC}       ;; return
// 5225 }
          CFI EndBlock cfiBlock70
// 5226 
// 5227 /**
// 5228   * @brief  This function handles I2C Communication Timeout for specific usage of STOP flag.
// 5229   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5230   *                the configuration information for the specified I2C.
// 5231   * @param  Timeout Timeout duration
// 5232   * @param  Tickstart Tick start value
// 5233   * @retval HAL status
// 5234   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock71 Using cfiCommon0
          CFI Function I2C_WaitOnSTOPFlagUntilTimeout
        THUMB
// 5235 static HAL_StatusTypeDef I2C_WaitOnSTOPFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart)
// 5236 {  
I2C_WaitOnSTOPFlagUntilTimeout:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 5237   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == RESET)
??I2C_WaitOnSTOPFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+27
        BMI.N    ??I2C_WaitOnSTOPFlagUntilTimeout_1
// 5238   {
// 5239     /* Check if a NACK is detected */
// 5240     if(I2C_IsAcknowledgeFailed(hi2c) != HAL_OK)
        MOVS     R0,R4
          CFI FunCall I2C_IsAcknowledgeFailed
        BL       I2C_IsAcknowledgeFailed
        CMP      R0,#+0
        BEQ.N    ??I2C_WaitOnSTOPFlagUntilTimeout_2
// 5241     {
// 5242       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnSTOPFlagUntilTimeout_3
// 5243     }
// 5244 		
// 5245     /* Check for the Timeout */
// 5246     if((Timeout == 0U) || ((HAL_GetTick()-Tickstart) > Timeout))
??I2C_WaitOnSTOPFlagUntilTimeout_2:
        CMP      R5,#+0
        BEQ.N    ??I2C_WaitOnSTOPFlagUntilTimeout_4
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R5,R0
        BCS.N    ??I2C_WaitOnSTOPFlagUntilTimeout_0
// 5247     {
// 5248       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
??I2C_WaitOnSTOPFlagUntilTimeout_4:
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+64]
// 5249       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5250       hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5251 
// 5252       /* Process Unlocked */
// 5253       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5254 
// 5255       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnSTOPFlagUntilTimeout_3
// 5256     }
// 5257   }
// 5258   return HAL_OK;
??I2C_WaitOnSTOPFlagUntilTimeout_1:
        MOVS     R0,#+0
??I2C_WaitOnSTOPFlagUntilTimeout_3:
        POP      {R4-R6,PC}       ;; return
// 5259 }
          CFI EndBlock cfiBlock71
// 5260 
// 5261 /**
// 5262   * @brief  This function handles I2C Communication Timeout for specific usage of RXNE flag.
// 5263   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5264   *                the configuration information for the specified I2C.
// 5265   * @param  Timeout Timeout duration
// 5266   * @param  Tickstart Tick start value
// 5267   * @retval HAL status
// 5268   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock72 Using cfiCommon0
          CFI Function I2C_WaitOnRXNEFlagUntilTimeout
        THUMB
// 5269 static HAL_StatusTypeDef I2C_WaitOnRXNEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout, uint32_t Tickstart)
// 5270 {  
I2C_WaitOnRXNEFlagUntilTimeout:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 5271   
// 5272   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == RESET)
??I2C_WaitOnRXNEFlagUntilTimeout_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+25
        BMI.N    ??I2C_WaitOnRXNEFlagUntilTimeout_1
// 5273   {
// 5274     /* Check if a STOPF is detected */
// 5275     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C_WaitOnRXNEFlagUntilTimeout_2
// 5276     {
// 5277       /* Clear STOP Flag */
// 5278       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
        MVNS     R0,#+16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
// 5279 
// 5280       hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+64]
// 5281       hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
// 5282       hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5283 
// 5284       /* Process Unlocked */
// 5285       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5286 
// 5287       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_WaitOnRXNEFlagUntilTimeout_3
// 5288     }
// 5289 		
// 5290     /* Check for the Timeout */
// 5291     if((Timeout == 0U) || ((HAL_GetTick()-Tickstart) > Timeout))
??I2C_WaitOnRXNEFlagUntilTimeout_2:
        CMP      R5,#+0
        BEQ.N    ??I2C_WaitOnRXNEFlagUntilTimeout_4
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R5,R0
        BCS.N    ??I2C_WaitOnRXNEFlagUntilTimeout_0
// 5292     {
// 5293       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
??I2C_WaitOnRXNEFlagUntilTimeout_4:
        LDR      R0,[R4, #+64]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+64]
// 5294       hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R0,#+32
        STRB     R0,[R4, #+61]
// 5295 
// 5296       /* Process Unlocked */
// 5297       __HAL_UNLOCK(hi2c);
        MOVS     R0,#+0
        STRB     R0,[R4, #+60]
// 5298 
// 5299       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??I2C_WaitOnRXNEFlagUntilTimeout_3
// 5300     }
// 5301   }
// 5302   return HAL_OK;
??I2C_WaitOnRXNEFlagUntilTimeout_1:
        MOVS     R0,#+0
??I2C_WaitOnRXNEFlagUntilTimeout_3:
        POP      {R4-R6,PC}       ;; return
// 5303 }
          CFI EndBlock cfiBlock72
// 5304 
// 5305 /**
// 5306   * @brief  This function handles Acknowledge failed detection during an I2C Communication.
// 5307   * @param  hi2c Pointer to a I2C_HandleTypeDef structure that contains
// 5308   *                the configuration information for the specified I2C.
// 5309   * @retval HAL status
// 5310   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock73 Using cfiCommon0
          CFI Function I2C_IsAcknowledgeFailed
          CFI NoCalls
        THUMB
// 5311 static HAL_StatusTypeDef I2C_IsAcknowledgeFailed(I2C_HandleTypeDef *hi2c)
// 5312 {
// 5313   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
I2C_IsAcknowledgeFailed:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+20]
        LSLS     R1,R1,#+21
        BPL.N    ??I2C_IsAcknowledgeFailed_0
// 5314   {
// 5315     /* Clear NACKF Flag */
// 5316     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
        MVNS     R1,#+1024
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+20]
// 5317 
// 5318     hi2c->ErrorCode = HAL_I2C_ERROR_AF;
        MOVS     R1,#+4
        STR      R1,[R0, #+64]
// 5319     hi2c->PreviousState = I2C_STATE_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
// 5320     hi2c->State= HAL_I2C_STATE_READY;
        MOVS     R1,#+32
        STRB     R1,[R0, #+61]
// 5321 
// 5322     /* Process Unlocked */
// 5323     __HAL_UNLOCK(hi2c);
        MOVS     R1,#+0
        STRB     R1,[R0, #+60]
// 5324 
// 5325     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??I2C_IsAcknowledgeFailed_1
// 5326   }
// 5327   return HAL_OK;
??I2C_IsAcknowledgeFailed_0:
        MOVS     R0,#+0
??I2C_IsAcknowledgeFailed_1:
        BX       LR               ;; return
// 5328 }
          CFI EndBlock cfiBlock73

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 5329 /**
// 5330   * @}
// 5331   */
// 5332 
// 5333 #endif /* HAL_I2C_MODULE_ENABLED */
// 5334 
// 5335 /**
// 5336   * @}
// 5337   */
// 5338 
// 5339 /**
// 5340   * @}
// 5341   */
// 5342 
// 5343 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 13 290 bytes in section .text
// 
// 13 290 bytes of CODE memory
//
//Errors: none
//Warnings: none