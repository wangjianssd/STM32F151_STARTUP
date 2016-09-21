///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:22
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\01work\proj\地磁\Code\Drivers\Src\clock.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Src\clock.c -D USE_HAL_DRIVER -D
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\clock.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_NVIC_SetPriority
        EXTERN HAL_RCCEx_PeriphCLKConfig
        EXTERN HAL_RCC_ClockConfig
        EXTERN HAL_RCC_GetHCLKFreq
        EXTERN HAL_RCC_OscConfig
        EXTERN HAL_SYSTICK_CLKSourceConfig
        EXTERN HAL_SYSTICK_Config

        PUBLIC ClockInit
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Src\clock.c
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
//   14 /* Exported includes _--------------------------------------------------------*/
//   15 #include "device.h"
//   16 
//   17 /* Exported functions --------------------------------------------------------*/
//   18 /** System Clock Configuration
//   19 */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ClockInit
        THUMB
//   20 bool ClockInit(void)
//   21 {
ClockInit:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+84
          CFI CFA R13+88
//   22   RCC_OscInitTypeDef RCC_OscInitStruct;
//   23   RCC_ClkInitTypeDef RCC_ClkInitStruct;
//   24   RCC_PeriphCLKInitTypeDef PeriphClkInit;
//   25 
//   26   __HAL_RCC_PWR_CLK_ENABLE();
        LDR.N    R0,??ClockInit_0  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??ClockInit_0  ;; 0x40023824
        STR      R0,[R1, #+0]
        LDR.N    R0,??ClockInit_0  ;; 0x40023824
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//   27 
//   28   __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
        LDR.N    R0,??ClockInit_0+0x4  ;; 0x40007000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1800
        ORRS     R0,R0,#0x800
        LDR.N    R1,??ClockInit_0+0x4  ;; 0x40007000
        STR      R0,[R1, #+0]
//   29 
//   30   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_LSI
//   31                               |RCC_OSCILLATORTYPE_LSE;
        MOVS     R0,#+14
        STR      R0,[SP, #+32]
//   32   RCC_OscInitStruct.LSEState = RCC_LSE_ON;
        MOVS     R0,#+1
        STR      R0,[SP, #+40]
//   33   RCC_OscInitStruct.HSIState = RCC_HSI_ON;
        MOVS     R0,#+1
        STR      R0,[SP, #+44]
//   34   RCC_OscInitStruct.HSICalibrationValue = 16;
        MOVS     R0,#+16
        STR      R0,[SP, #+48]
//   35   RCC_OscInitStruct.LSIState = RCC_LSI_ON;
        MOVS     R0,#+1
        STR      R0,[SP, #+52]
//   36   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
        MOVS     R0,#+2
        STR      R0,[SP, #+68]
//   37   RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
        MOVS     R0,#+0
        STR      R0,[SP, #+72]
//   38   RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL4;
        MOVS     R0,#+262144
        STR      R0,[SP, #+76]
//   39   RCC_OscInitStruct.PLL.PLLDIV = RCC_PLL_DIV2;
        MOVS     R0,#+4194304
        STR      R0,[SP, #+80]
//   40   if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
        ADD      R0,SP,#+32
          CFI FunCall HAL_RCC_OscConfig
        BL       HAL_RCC_OscConfig
        CMP      R0,#+0
        BEQ.N    ??ClockInit_1
//   41   {
//   42     //Error_Handler();
//   43     return false;
        MOVS     R0,#+0
        B.N      ??ClockInit_2
//   44   }
//   45 
//   46   RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
//   47                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
??ClockInit_1:
        MOVS     R0,#+15
        STR      R0,[SP, #+12]
//   48   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//   49   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   50   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//   51   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//   52   if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
        MOVS     R1,#+1
        ADD      R0,SP,#+12
          CFI FunCall HAL_RCC_ClockConfig
        BL       HAL_RCC_ClockConfig
        CMP      R0,#+0
        BEQ.N    ??ClockInit_3
//   53   {
//   54     //Error_Handler();
//   55     return false;
        MOVS     R0,#+0
        B.N      ??ClockInit_2
//   56   }
//   57 
//   58   PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_RTC;
??ClockInit_3:
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
//   59   PeriphClkInit.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
        MOVS     R0,#+65536
        STR      R0,[SP, #+8]
//   60   if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
        ADD      R0,SP,#+4
          CFI FunCall HAL_RCCEx_PeriphCLKConfig
        BL       HAL_RCCEx_PeriphCLKConfig
        CMP      R0,#+0
        BEQ.N    ??ClockInit_4
//   61   {
//   62     //Error_Handler();
//   63     return false;
        MOVS     R0,#+0
        B.N      ??ClockInit_2
//   64   }
//   65 
//   66   HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);
??ClockInit_4:
          CFI FunCall HAL_RCC_GetHCLKFreq
        BL       HAL_RCC_GetHCLKFreq
        MOV      R1,#+1000
        UDIV     R0,R0,R1
          CFI FunCall HAL_SYSTICK_Config
        BL       HAL_SYSTICK_Config
//   67 
//   68   HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);
        MOVS     R0,#+4
          CFI FunCall HAL_SYSTICK_CLKSourceConfig
        BL       HAL_SYSTICK_CLKSourceConfig
//   69 
//   70   /* SysTick_IRQn interrupt configuration */
//   71   HAL_NVIC_SetPriority(SysTick_IRQn, 15, 0);
        MOVS     R2,#+0
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
//   72   
//   73   return true;
        MOVS     R0,#+1
??ClockInit_2:
        ADD      SP,SP,#+84
          CFI CFA R13+4
        POP      {PC}             ;; return
        Nop      
        DATA
??ClockInit_0:
        DC32     0x40023824
        DC32     0x40007000
//   74 }
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   75 
//   76 
//   77 
// 
// 208 bytes in section .text
// 
// 208 bytes of CODE memory
//
//Errors: none
//Warnings: none
