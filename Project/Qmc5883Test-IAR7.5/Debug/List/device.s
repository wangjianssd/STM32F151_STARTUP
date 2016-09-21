///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:22
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\01work\proj\地磁\Code\Drivers\Src\device.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Src\device.c -D USE_HAL_DRIVER -D
//        STM32L151xD -lC
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\device.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ClockInit
        EXTERN HAL_GPIO_Init
        EXTERN HAL_GPIO_WritePin
        EXTERN HAL_Init
        EXTERN HAL_UART_Init

        PUBLIC DeviceInit
        PUBLIC huart1
        PUBLIC huart3
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Src\device.c
//    1 /**
//    2  * @brief       : 
//    3  *
//    4  * @file        : clock.c
//    5  * @author      : wangjian
//    6  *
//    7  * Version      : v0.0.1
//    8  * Date         : 2016/09/21
//    9  * Change Logs  :
//   10  *
//   11  * Date          Version      Author        Notes
//   12  * 2016/09/21    v0.0.1        wangjian    first version
//   13  */
//   14 /* Exported incluides --------------------------------------------------------*/
//   15 #include "device.h"
//   16 
//   17 /* Private variables ---------------------------------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 UART_HandleTypeDef huart1;
huart1:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 UART_HandleTypeDef huart3;
huart3:
        DS8 64
//   20 
//   21 /* Exported functions --------------------------------------------------------*/
//   22 /* USART1 init function */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function MX_USART1_UART_Init
        THUMB
//   23 static void MX_USART1_UART_Init(void)
//   24 {
MX_USART1_UART_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   25 
//   26   huart1.Instance = USART1;
        LDR.N    R0,??DataTable2  ;; 0x40013800
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   27   huart1.Init.BaudRate = 115200;
        MOVS     R0,#+115200
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   28   huart1.Init.WordLength = UART_WORDLENGTH_8B;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   29   huart1.Init.StopBits = UART_STOPBITS_1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   30   huart1.Init.Parity = UART_PARITY_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+16]
//   31   huart1.Init.Mode = UART_MODE_TX_RX;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+20]
//   32   huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+24]
//   33   huart1.Init.OverSampling = UART_OVERSAMPLING_16;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+28]
//   34   
//   35   if (HAL_UART_Init(&huart1) != HAL_OK)
        LDR.N    R0,??DataTable2_1
          CFI FunCall HAL_UART_Init
        BL       HAL_UART_Init
//   36   {
//   37     //Error_Handler();
//   38   }
//   39 
//   40 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   41 
//   42 /* USART3 init function */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function MX_USART3_UART_Init
        THUMB
//   43 static void MX_USART3_UART_Init(void)
//   44 {
MX_USART3_UART_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   45 
//   46   huart3.Instance = USART3;
        LDR.N    R0,??DataTable2_2  ;; 0x40004800
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   47   huart3.Init.BaudRate = 115200;
        MOVS     R0,#+115200
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+4]
//   48   huart3.Init.WordLength = UART_WORDLENGTH_8B;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+8]
//   49   huart3.Init.StopBits = UART_STOPBITS_1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+12]
//   50   huart3.Init.Parity = UART_PARITY_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+16]
//   51   huart3.Init.Mode = UART_MODE_TX_RX;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+20]
//   52   huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+24]
//   53   huart3.Init.OverSampling = UART_OVERSAMPLING_16;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+28]
//   54   if (HAL_UART_Init(&huart3) != HAL_OK)
        LDR.N    R0,??DataTable2_3
          CFI FunCall HAL_UART_Init
        BL       HAL_UART_Init
//   55   {
//   56     //Error_Handler();
//   57   }
//   58 
//   59 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   60 
//   61 /** Configure pins as 
//   62         * Analog 
//   63         * Input 
//   64         * Output
//   65         * EVENT_OUT
//   66         * EXTI
//   67 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MX_GPIO_Init
        THUMB
//   68 static void MX_GPIO_Init(void)
//   69 {
MX_GPIO_Init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//   70 
//   71   GPIO_InitTypeDef GPIO_InitStruct;
//   72 
//   73   /* GPIO Ports Clock Enable */
//   74   __HAL_RCC_GPIOE_CLK_ENABLE();
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_4  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   75   __HAL_RCC_GPIOC_CLK_ENABLE();
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable2_4  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   76   __HAL_RCC_GPIOD_CLK_ENABLE();
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable2_4  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x8
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   77   __HAL_RCC_GPIOA_CLK_ENABLE();
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_4  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   78   __HAL_RCC_GPIOB_CLK_ENABLE();
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4  ;; 0x4002381c
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x4002381c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x2
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   79 
//   80   /*Configure GPIO pin Output Level */
//   81   HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2|GPIO_PIN_3, GPIO_PIN_RESET);
        MOVS     R2,#+0
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_5  ;; 0x40021000
          CFI FunCall HAL_GPIO_WritePin
        BL       HAL_GPIO_WritePin
//   82 
//   83   /*Configure GPIO pin Output Level */
//   84   HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
        MOVS     R2,#+1
        MOV      R1,#+8192
        LDR.N    R0,??DataTable2_6  ;; 0x40020800
          CFI FunCall HAL_GPIO_WritePin
        BL       HAL_GPIO_WritePin
//   85 
//   86   /*Configure GPIO pins : PE2 PE3 */
//   87   GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3;
        MOVS     R0,#+12
        STR      R0,[SP, #+4]
//   88   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//   89   GPIO_InitStruct.Pull = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   90   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   91   HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable2_5  ;; 0x40021000
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//   92 
//   93   /*Configure GPIO pin : PC13 */
//   94   GPIO_InitStruct.Pin = GPIO_PIN_13;
        MOV      R0,#+8192
        STR      R0,[SP, #+4]
//   95   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//   96   GPIO_InitStruct.Pull = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   97   GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   98   HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable2_6  ;; 0x40020800
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//   99 
//  100 }
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     huart1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     huart3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x4002381c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40020800
//  101 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DeviceInit
        THUMB
//  102 void DeviceInit (void)
//  103 {
DeviceInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  104   /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
//  105   HAL_Init();
          CFI FunCall HAL_Init
        BL       HAL_Init
//  106   
//  107   /* Configure the system clock */
//  108   ClockInit ();
          CFI FunCall ClockInit
        BL       ClockInit
//  109   
//  110   MX_GPIO_Init();
          CFI FunCall MX_GPIO_Init
        BL       MX_GPIO_Init
//  111   
//  112   /* Initialize all configured peripherals */
//  113   MX_USART1_UART_Init();
          CFI FunCall MX_USART1_UART_Init
        BL       MX_USART1_UART_Init
//  114   
//  115   MX_USART3_UART_Init();
          CFI FunCall MX_USART3_UART_Init
        BL       MX_USART3_UART_Init
//  116       
//  117    
//  118 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 128 bytes in section .bss
// 372 bytes in section .text
// 
// 372 bytes of CODE memory
// 128 bytes of DATA memory
//
//Errors: none
//Warnings: none
