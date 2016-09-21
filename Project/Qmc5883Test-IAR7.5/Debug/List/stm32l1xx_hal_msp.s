///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:58:02
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_hal_msp.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_hal_msp.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_msp.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GPIO_DeInit
        EXTERN HAL_GPIO_Init
        EXTERN HAL_NVIC_DisableIRQ
        EXTERN HAL_NVIC_EnableIRQ
        EXTERN HAL_NVIC_SetPriority
        EXTERN HAL_NVIC_SetPriorityGrouping

        PUBLIC HAL_I2C_MspDeInit
        PUBLIC HAL_I2C_MspInit
        PUBLIC HAL_MspInit
        PUBLIC HAL_UART_MspDeInit
        PUBLIC HAL_UART_MspInit
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Config\stm32l1xx_hal_msp.c
//    1 /**
//    2   ******************************************************************************
//    3   * File Name          : stm32l1xx_hal_msp.c
//    4   * Description        : This file provides code for the MSP Initialization 
//    5   *                      and de-Initialization codes.
//    6   ******************************************************************************
//    7   *
//    8   * COPYRIGHT(c) 2016 STMicroelectronics
//    9   *
//   10   * Redistribution and use in source and binary forms, with or without modification,
//   11   * are permitted provided that the following conditions are met:
//   12   *   1. Redistributions of source code must retain the above copyright notice,
//   13   *      this list of conditions and the following disclaimer.
//   14   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   15   *      this list of conditions and the following disclaimer in the documentation
//   16   *      and/or other materials provided with the distribution.
//   17   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   18   *      may be used to endorse or promote products derived from this software
//   19   *      without specific prior written permission.
//   20   *
//   21   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   22   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   23   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   24   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   25   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   26   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   27   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   28   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   29   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   30   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   31   *
//   32   ******************************************************************************
//   33   */
//   34 /* Includes ------------------------------------------------------------------*/
//   35 #include "stm32l1xx_hal.h"
//   36 
//   37 extern void Error_Handler(void);
//   38 /* USER CODE BEGIN 0 */
//   39 
//   40 /* USER CODE END 0 */
//   41 
//   42 /**
//   43   * Initializes the Global MSP.
//   44   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_MspInit
        THUMB
//   45 void HAL_MspInit(void)
//   46 {
HAL_MspInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   47   /* USER CODE BEGIN MspInit 0 */
//   48 
//   49   /* USER CODE END MspInit 0 */
//   50 
//   51   __HAL_RCC_COMP_CLK_ENABLE();
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable4  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x80000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   52    __HAL_RCC_SYSCFG_CLK_ENABLE();
        LDR.N    R0,??DataTable4_1  ;; 0x40023820
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_1  ;; 0x40023820
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_1  ;; 0x40023820
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   53 
//   54   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
        MOVS     R0,#+3
          CFI FunCall HAL_NVIC_SetPriorityGrouping
        BL       HAL_NVIC_SetPriorityGrouping
//   55 
//   56   /* System interrupt init*/
//   57   /* MemoryManagement_IRQn interrupt configuration */
//   58   HAL_NVIC_SetPriority(MemoryManagement_IRQn, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MVNS     R0,#+11
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   59   /* BusFault_IRQn interrupt configuration */
//   60   HAL_NVIC_SetPriority(BusFault_IRQn, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MVNS     R0,#+10
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   61   /* UsageFault_IRQn interrupt configuration */
//   62   HAL_NVIC_SetPriority(UsageFault_IRQn, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MVNS     R0,#+9
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   63   /* SVC_IRQn interrupt configuration */
//   64   HAL_NVIC_SetPriority(SVC_IRQn, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MVNS     R0,#+4
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   65   /* DebugMonitor_IRQn interrupt configuration */
//   66   HAL_NVIC_SetPriority(DebugMonitor_IRQn, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MVNS     R0,#+3
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   67   /* PendSV_IRQn interrupt configuration */
//   68   HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);
        MOVS     R2,#+0
        MOVS     R1,#+15
        MVNS     R0,#+1
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   69   /* SysTick_IRQn interrupt configuration */
//   70   HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   71 
//   72   /* USER CODE BEGIN MspInit 1 */
//   73 
//   74   /* USER CODE END MspInit 1 */
//   75 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   76 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_I2C_MspInit
        THUMB
//   77 void HAL_I2C_MspInit(I2C_HandleTypeDef* hi2c)
//   78 {
HAL_I2C_MspInit:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//   79 
//   80   GPIO_InitTypeDef GPIO_InitStruct;
//   81   if(hi2c->Instance==I2C1)
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2  ;; 0x40005400
        CMP      R0,R1
        BNE.N    ??HAL_I2C_MspInit_0
//   82   {
//   83   /* USER CODE BEGIN I2C1_MspInit 0 */
//   84 
//   85   /* USER CODE END I2C1_MspInit 0 */
//   86   
//   87     /**I2C1 GPIO Configuration    
//   88     PB8     ------> I2C1_SCL
//   89     PB9     ------> I2C1_SDA 
//   90     */
//   91     GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
        MOV      R0,#+768
        STR      R0,[SP, #+4]
//   92     GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
        MOVS     R0,#+18
        STR      R0,[SP, #+8]
//   93     GPIO_InitStruct.Pull = GPIO_PULLUP;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//   94     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//   95     GPIO_InitStruct.Alternate = GPIO_AF4_I2C1;
        MOVS     R0,#+4
        STR      R0,[SP, #+20]
//   96     HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable4_3  ;; 0x40020400
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//   97 
//   98     /* Peripheral clock enable */
//   99     __HAL_RCC_I2C1_CLK_ENABLE();
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200000
        LDR.N    R1,??DataTable4  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x200000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  100   /* USER CODE BEGIN I2C1_MspInit 1 */
//  101 
//  102   /* USER CODE END I2C1_MspInit 1 */
//  103   }
//  104 
//  105 }
??HAL_I2C_MspInit_0:
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock1
//  106 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_I2C_MspDeInit
        THUMB
//  107 void HAL_I2C_MspDeInit(I2C_HandleTypeDef* hi2c)
//  108 {
HAL_I2C_MspDeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  109 
//  110   if(hi2c->Instance==I2C1)
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2  ;; 0x40005400
        CMP      R0,R1
        BNE.N    ??HAL_I2C_MspDeInit_0
//  111   {
//  112   /* USER CODE BEGIN I2C1_MspDeInit 0 */
//  113 
//  114   /* USER CODE END I2C1_MspDeInit 0 */
//  115     /* Peripheral clock disable */
//  116     __HAL_RCC_I2C1_CLK_DISABLE();
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200000
        LDR.N    R1,??DataTable4  ;; 0x40023824
        STR      R0,[R1, #+0]
//  117   
//  118     /**I2C1 GPIO Configuration    
//  119     PB8     ------> I2C1_SCL
//  120     PB9     ------> I2C1_SDA 
//  121     */
//  122     HAL_GPIO_DeInit(GPIOB, GPIO_PIN_8|GPIO_PIN_9);
        MOV      R1,#+768
        LDR.N    R0,??DataTable4_3  ;; 0x40020400
          CFI FunCall HAL_GPIO_DeInit
        BL       HAL_GPIO_DeInit
//  123 
//  124   }
//  125   /* USER CODE BEGIN I2C1_MspDeInit 1 */
//  126 
//  127   /* USER CODE END I2C1_MspDeInit 1 */
//  128 
//  129 }
??HAL_I2C_MspDeInit_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//  130 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_UART_MspInit
        THUMB
//  131 void HAL_UART_MspInit(UART_HandleTypeDef* huart)
//  132 {
HAL_UART_MspInit:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//  133 
//  134   GPIO_InitTypeDef GPIO_InitStruct;
//  135   if(huart->Instance==USART1)
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable4_4  ;; 0x40013800
        CMP      R1,R2
        BNE.N    ??HAL_UART_MspInit_0
//  136   {
//  137   /* USER CODE BEGIN USART1_MspInit 0 */
//  138 
//  139   /* USER CODE END USART1_MspInit 0 */
//  140     /* Peripheral clock enable */
//  141     __HAL_RCC_USART1_CLK_ENABLE();
        LDR.N    R0,??DataTable4_1  ;; 0x40023820
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable4_1  ;; 0x40023820
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_1  ;; 0x40023820
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  142   
//  143     /**USART1 GPIO Configuration    
//  144     PA9     ------> USART1_TX
//  145     PA10     ------> USART1_RX 
//  146     */
//  147     GPIO_InitStruct.Pin = GPIO_PIN_9|GPIO_PIN_10;
        MOV      R0,#+1536
        STR      R0,[SP, #+4]
//  148     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  149     GPIO_InitStruct.Pull = GPIO_PULLUP;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//  150     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//  151     GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
        MOVS     R0,#+7
        STR      R0,[SP, #+20]
//  152     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable4_5  ;; 0x40020000
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
        B.N      ??HAL_UART_MspInit_1
//  153 
//  154   /* USER CODE BEGIN USART1_MspInit 1 */
//  155 
//  156   /* USER CODE END USART1_MspInit 1 */
//  157   }
//  158   else if(huart->Instance==USART3)
??HAL_UART_MspInit_0:
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40004800
        CMP      R0,R1
        BNE.N    ??HAL_UART_MspInit_1
//  159   {
//  160   /* USER CODE BEGIN USART3_MspInit 0 */
//  161 
//  162   /* USER CODE END USART3_MspInit 0 */
//  163     /* Peripheral clock enable */
//  164     __HAL_RCC_USART3_CLK_ENABLE();
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable4  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x40000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  165     
//  166      __HAL_RCC_GPIOD_CLK_ENABLE();
        LDR.N    R0,??DataTable4_7  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_7  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable4_7  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  167     /**USART3 GPIO Configuration    
//  168     PD8     ------> USART3_TX
//  169     PD9     ------> USART3_RX 
//  170     */
//  171     GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
        MOV      R0,#+768
        STR      R0,[SP, #+4]
//  172     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  173     GPIO_InitStruct.Pull = GPIO_PULLUP;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//  174     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//  175     GPIO_InitStruct.Alternate = GPIO_AF7_USART3;
        MOVS     R0,#+7
        STR      R0,[SP, #+20]
//  176     HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable4_8  ;; 0x40020c00
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//  177 
//  178     /* Peripheral interrupt init */
//  179     HAL_NVIC_SetPriority(USART3_IRQn, 5, 0);
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+39
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//  180     HAL_NVIC_EnableIRQ(USART3_IRQn);
        MOVS     R0,#+39
          CFI FunCall HAL_NVIC_EnableIRQ
        BL       HAL_NVIC_EnableIRQ
//  181   /* USER CODE BEGIN USART3_MspInit 1 */
//  182   //__HAL_USART_ENABLE_IT(huart, USART_IT_RXNE);
//  183 
//  184 
//  185   /* USER CODE END USART3_MspInit 1 */
//  186   }
//  187 
//  188 }
??HAL_UART_MspInit_1:
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock3
//  189 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_UART_MspDeInit
        THUMB
//  190 void HAL_UART_MspDeInit(UART_HandleTypeDef* huart)
//  191 {
HAL_UART_MspDeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  192 
//  193   if(huart->Instance==USART1)
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable4_4  ;; 0x40013800
        CMP      R1,R2
        BNE.N    ??HAL_UART_MspDeInit_0
//  194   {
//  195   /* USER CODE BEGIN USART1_MspDeInit 0 */
//  196 
//  197   /* USER CODE END USART1_MspDeInit 0 */
//  198     /* Peripheral clock disable */
//  199     __HAL_RCC_USART1_CLK_DISABLE();
        LDR.N    R0,??DataTable4_1  ;; 0x40023820
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4000
        LDR.N    R1,??DataTable4_1  ;; 0x40023820
        STR      R0,[R1, #+0]
//  200   
//  201     /**USART1 GPIO Configuration    
//  202     PA9     ------> USART1_TX
//  203     PA10     ------> USART1_RX 
//  204     */
//  205     HAL_GPIO_DeInit(GPIOA, GPIO_PIN_9|GPIO_PIN_10);
        MOV      R1,#+1536
        LDR.N    R0,??DataTable4_5  ;; 0x40020000
          CFI FunCall HAL_GPIO_DeInit
        BL       HAL_GPIO_DeInit
        B.N      ??HAL_UART_MspDeInit_1
//  206 
//  207   /* USER CODE BEGIN USART1_MspDeInit 1 */
//  208 
//  209   /* USER CODE END USART1_MspDeInit 1 */
//  210   }
//  211   else if(huart->Instance==USART3)
??HAL_UART_MspDeInit_0:
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40004800
        CMP      R0,R1
        BNE.N    ??HAL_UART_MspDeInit_1
//  212   {
//  213   /* USER CODE BEGIN USART3_MspDeInit 0 */
//  214 
//  215   /* USER CODE END USART3_MspDeInit 0 */
//  216     /* Peripheral clock disable */
//  217     __HAL_RCC_USART3_CLK_DISABLE();
        LDR.N    R0,??DataTable4  ;; 0x40023824
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable4  ;; 0x40023824
        STR      R0,[R1, #+0]
//  218   
//  219     /**USART3 GPIO Configuration    
//  220     PD8     ------> USART3_TX
//  221     PD9     ------> USART3_RX 
//  222     */
//  223     HAL_GPIO_DeInit(GPIOD, GPIO_PIN_8|GPIO_PIN_9);
        MOV      R1,#+768
        LDR.N    R0,??DataTable4_8  ;; 0x40020c00
          CFI FunCall HAL_GPIO_DeInit
        BL       HAL_GPIO_DeInit
//  224 
//  225     /* Peripheral interrupt DeInit*/
//  226     HAL_NVIC_DisableIRQ(USART3_IRQn);
        MOVS     R0,#+39
          CFI FunCall HAL_NVIC_DisableIRQ
        BL       HAL_NVIC_DisableIRQ
//  227 
//  228   /* USER CODE BEGIN USART3_MspDeInit 1 */
//  229 
//  230   /* USER CODE END USART3_MspDeInit 1 */
//  231   }
//  232 
//  233 }
??HAL_UART_MspDeInit_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40023824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40023820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x4002381c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x40020c00

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  234 
//  235 /* USER CODE BEGIN 1 */
//  236 
//  237 /* USER CODE END 1 */
//  238 
//  239 /**
//  240   * @}
//  241   */
//  242 
//  243 /**
//  244   * @}
//  245   */
//  246 
//  247 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 528 bytes in section .text
// 
// 528 bytes of CODE memory
//
//Errors: none
//Warnings: none
