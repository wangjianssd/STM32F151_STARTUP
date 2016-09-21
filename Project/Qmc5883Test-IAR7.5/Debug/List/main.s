///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\01work\proj\地磁\Code\Apps\Qmc5883Test\main.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Apps\Qmc5883Test\main.c -D USE_HAL_DRIVER -D
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__iar_require _Printf", "flags,floats,widths"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN DeviceInit
        EXTERN HAL_Delay
        EXTERN HAL_GPIO_TogglePin
        EXTERN HAL_GPIO_WritePin
        EXTERN HAL_UART_Receive
        EXTERN HAL_UART_Transmit
        EXTERN Qmc5883lConfigEx
        EXTERN Qmc5883lFilterGetData
        EXTERN Qmc5883lGetData
        EXTERN Qmc5883lInit
        EXTERN Qmc5883lSelfTest
        EXTERN __aeabi_f2d
        EXTERN huart3
        EXTERN sprintf

        PUBLIC StartDefaultTask
        PUBLIC main
        
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
        
// D:\01work\proj\地磁\Code\Apps\Qmc5883Test\main.c
//    1 /**
//    2   ******************************************************************************
//    3   * File Name          : main.c
//    4   * Description        : Main program body
//    5   ******************************************************************************
//    6   *
//    7   * COPYRIGHT(c) 2016 STMicroelectronics
//    8   *
//    9   * Redistribution and use in source and binary forms, with or without modification,
//   10   * are permitted provided that the following conditions are met:
//   11   *   1. Redistributions of source code must retain the above copyright notice,
//   12   *      this list of conditions and the following disclaimer.
//   13   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   14   *      this list of conditions and the following disclaimer in the documentation
//   15   *      and/or other materials provided with the distribution.
//   16   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   17   *      may be used to endorse or promote products derived from this software
//   18   *      without specific prior written permission.
//   19   *
//   20   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   21   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   22   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   23   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   24   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   25   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   26   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   27   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   28   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   29   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   30   *
//   31   ******************************************************************************
//   32   */
//   33 /* Includes ------------------------------------------------------------------*/
//   34 #include "config.h"
//   35 
//   36 /* Public variables ---------------------------------------------------------*/
//   37 extern UART_HandleTypeDef huart1;
//   38 extern UART_HandleTypeDef huart3;
//   39 
//   40 /* Private variables ---------------------------------------------------------*/
//   41 
//   42 /* Private function prototypes -----------------------------------------------*/
//   43 void StartDefaultTask(void const * argument);
//   44 
//   45 /* Private function prototypes -----------------------------------------------*/
//   46 
//   47 
//   48 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//   49 int main(void)
//   50 {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   51   /* Configure the system clock */
//   52   DeviceInit();
          CFI FunCall DeviceInit
        BL       DeviceInit
//   53   
//   54   Qmc5883lInit();
          CFI FunCall Qmc5883lInit
        BL       Qmc5883lInit
//   55 
//   56   StartDefaultTask((void *)0);
        MOVS     R0,#+0
          CFI FunCall StartDefaultTask
        BL       StartDefaultTask
//   57 }
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock0
//   58 
//   59 
//   60 /* StartDefaultTask function */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function StartDefaultTask
        THUMB
//   61 void StartDefaultTask(void const * argument)
//   62 {
StartDefaultTask:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+116
          CFI CFA R13+128
//   63   /* Infinite loop */
//   64    bool ret;
//   65 
//   66   float magnet[3] = {0};
        ADD      R0,SP,#+20
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   67   uint16_t magnet_raw[3];
//   68   uint16_t filter_magnet[3];
//   69   uint32_t total_count = 0;
        MOVS     R4,#+0
//   70   uint32_t success_count = 0;
        MOVS     R5,#+0
//   71   uint8_t  temp[64];
//   72   uint8_t i;
//   73   uint8_t reg_9;
//   74   
//   75    HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET);
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.N    R0,??DataTable0  ;; 0x40021000
          CFI FunCall HAL_GPIO_WritePin
        BL       HAL_GPIO_WritePin
//   76    HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET);  
        MOVS     R2,#+1
        MOVS     R1,#+8
        LDR.N    R0,??DataTable0  ;; 0x40021000
          CFI FunCall HAL_GPIO_WritePin
        BL       HAL_GPIO_WritePin
//   77 
//   78 //while(1)
//   79 //{
//   80 //    HAL_Delay(100);
//   81 //
//   82 //    HAL_GPIO_TogglePin(GPIOE,  GPIO_PIN_2);
//   83 //
//   84 //}
//   85     HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--------------------------\r\n",
//   86                     sizeof( "\r\n--------------QMC5883 self test--------------------------\r\n"), 5000);
        MOVW     R3,#+5000
        MOVS     R2,#+62
        LDR.N    R1,??DataTable0_1
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
//   87     
//   88   ret = Qmc5883lSelfTest();
          CFI FunCall Qmc5883lSelfTest
        BL       Qmc5883lSelfTest
//   89 
//   90   if (ret == true)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??StartDefaultTask_0
//   91     {
//   92       //HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_RESET); 
//   93       HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--ok----------------------\r\n",
//   94                       sizeof( "\r\n--------------QMC5883 self test--ok----------------------\r\n"), 5000);
        MOVW     R3,#+5000
        MOVS     R2,#+62
        LDR.N    R1,??DataTable0_3
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
        B.N      ??StartDefaultTask_1
//   95 
//   96   }
//   97   else
//   98     {
//   99      // HAL_GPIO_WritePin(GPIOE,  GPIO_PIN_3, GPIO_PIN_SET); 
//  100       HAL_UART_Transmit(&huart3, "\r\n--------------QMC5883 self test--fail----------------------\r\n",
//  101                       sizeof( "\r\n--------------QMC5883 self test--fail----------------------\r\n"), 5000);
??StartDefaultTask_0:
        MOVW     R3,#+5000
        MOVS     R2,#+64
        LDR.N    R1,??DataTable0_4
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
//  102 
//  103   }
//  104 
//  105   // ret = Qmc5883lConfig();
//  106 
//  107   HAL_Delay(100);
??StartDefaultTask_1:
        MOVS     R0,#+100
          CFI FunCall HAL_Delay
        BL       HAL_Delay
//  108 HAL_UART_Transmit(&huart3, "\r\n \ 
//  109 1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \ 
//  110 2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \ 
//  111 3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \ 
//  112 4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n",
//  113                             sizeof("\r\n \ 
//  114 1 -> QMC5883L_REG_09_VALUE    (0x01)  512 2G  10HZ\r\n \ 
//  115 2 -> QMC5883L_REG_09_VALUE    (0x41)  256 2G  10HZ\r\n \ 
//  116 3 -> QMC5883L_REG_09_VALUE    (0x81)  128 2G  10HZ\r\n \ 
//  117 4 -> QMC5883L_REG_09_VALUE    (0xC1)   64 2G  10HZ \r\n"), 10000);      
        MOVW     R3,#+10000
        MOVS     R2,#+216
        LDR.N    R1,??DataTable0_5
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
//  118   while (HAL_UART_Receive(&huart3, &reg_9, 1, 500) != HAL_OK);
??StartDefaultTask_2:
        MOV      R3,#+500
        MOVS     R2,#+1
        ADD      R1,SP,#+16
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Receive
        BL       HAL_UART_Receive
        CMP      R0,#+0
        BNE.N    ??StartDefaultTask_2
//  119    
//  120    if(reg_9 == '1')
        LDRB     R0,[SP, #+16]
        CMP      R0,#+49
        BNE.N    ??StartDefaultTask_3
//  121    {
//  122       reg_9 = 0x01;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
        B.N      ??StartDefaultTask_4
//  123    }
//  124    else if(reg_9 == '2')
??StartDefaultTask_3:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+50
        BNE.N    ??StartDefaultTask_5
//  125    {
//  126     reg_9 = 0x41;
        MOVS     R0,#+65
        STRB     R0,[SP, #+16]
        B.N      ??StartDefaultTask_4
//  127    }
//  128    else if(reg_9 == '3')
??StartDefaultTask_5:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+51
        BNE.N    ??StartDefaultTask_6
//  129    {
//  130     reg_9 = 0x81;
        MOVS     R0,#+129
        STRB     R0,[SP, #+16]
        B.N      ??StartDefaultTask_4
//  131    }
//  132    else if(reg_9 == '4')
??StartDefaultTask_6:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+52
        BNE.N    ??StartDefaultTask_7
//  133    {
//  134     reg_9 = 0xc1;
        MOVS     R0,#+193
        STRB     R0,[SP, #+16]
        B.N      ??StartDefaultTask_4
//  135    }  
//  136    else
//  137    {
//  138     reg_9 = 0xc1;
??StartDefaultTask_7:
        MOVS     R0,#+193
        STRB     R0,[SP, #+16]
//  139    }
//  140    
//  141    i = sprintf(temp, "Reg9 set:%02X\r\n", reg_9);
??StartDefaultTask_4:
        LDRB     R2,[SP, #+16]
        LDR.N    R1,??DataTable0_6
        ADD      R0,SP,#+48
          CFI FunCall sprintf
        BL       sprintf
        MOVS     R2,R0
//  142        
//  143    HAL_UART_Transmit(&huart3, temp,  i, 500);
        MOV      R3,#+500
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R1,SP,#+48
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
//  144 
//  145    ret =  Qmc5883lConfigEx(reg_9);
        LDRB     R0,[SP, #+16]
          CFI FunCall Qmc5883lConfigEx
        BL       Qmc5883lConfigEx
        B.N      ??StartDefaultTask_8
//  146   
//  147   for(;;)
//  148   {
//  149     HAL_Delay(100);
//  150     //osDelay(100);
//  151     ret = Qmc5883lGetData(magnet_raw);
//  152     total_count++;
//  153     
//  154     if (ret == true)
//  155     {
//  156          Qmc5883lFilterGetData (magnet_raw, magnet, filter_magnet);
//  157 
//  158          i = sprintf(temp, "Magnet X:%f, Y:%f, Z:%f\r\n", magnet[0], magnet[1], magnet[2]);
//  159        
//  160         HAL_UART_Transmit(&huart3, temp,  i, 500);
//  161         
//  162         success_count++;    
//  163     }
//  164     else
//  165     {
//  166          i = sprintf(temp, "QMC5883_TEST total count:%d, success:%d\r\n", total_count, success_count);
??StartDefaultTask_9:
        MOVS     R3,R5
        MOVS     R2,R4
        LDR.N    R1,??DataTable0_7
        ADD      R0,SP,#+48
          CFI FunCall sprintf
        BL       sprintf
        MOVS     R2,R0
//  167 
//  168          HAL_UART_Transmit(&huart3, temp,  i, 500);
        MOV      R3,#+500
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R1,SP,#+48
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
//  169     }  
//  170 
//  171      HAL_GPIO_TogglePin(GPIOE,  GPIO_PIN_2);
??StartDefaultTask_10:
        MOVS     R1,#+4
        LDR.N    R0,??DataTable0  ;; 0x40021000
          CFI FunCall HAL_GPIO_TogglePin
        BL       HAL_GPIO_TogglePin
??StartDefaultTask_8:
        MOVS     R0,#+100
          CFI FunCall HAL_Delay
        BL       HAL_Delay
        ADD      R0,SP,#+32
          CFI FunCall Qmc5883lGetData
        BL       Qmc5883lGetData
        ADDS     R4,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??StartDefaultTask_9
        ADD      R2,SP,#+40
        ADD      R1,SP,#+20
        ADD      R0,SP,#+32
          CFI FunCall Qmc5883lFilterGetData
        BL       Qmc5883lFilterGetData
        LDR      R0,[SP, #+28]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+8]
        LDR      R0,[SP, #+24]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        LDR      R0,[SP, #+20]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R1,??DataTable0_8
        ADD      R0,SP,#+48
          CFI FunCall sprintf
        BL       sprintf
        MOVS     R2,R0
        MOV      R3,#+500
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R1,SP,#+48
        LDR.N    R0,??DataTable0_2
          CFI FunCall HAL_UART_Transmit
        BL       HAL_UART_Transmit
        ADDS     R5,R5,#+1
        B.N      ??StartDefaultTask_10
//  172   }
//  173   /* USER CODE END 5 */ 
//  174 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     huart3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_8:
        DC32     ?_5

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 0DH, 0AH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 51H, 4DH, 43H, 35H, 38H, 38H, 33H, 20H
        DC8 73H, 65H, 6CH, 66H, 20H, 74H, 65H, 73H
        DC8 74H, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 0DH, 0AH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 51H, 4DH, 43H, 35H, 38H, 38H, 33H, 20H
        DC8 73H, 65H, 6CH, 66H, 20H, 74H, 65H, 73H
        DC8 74H, 2DH, 2DH, 6FH, 6BH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 0DH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 0DH, 0AH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 51H, 4DH, 43H, 35H, 38H, 38H, 33H, 20H
        DC8 73H, 65H, 6CH, 66H, 20H, 74H, 65H, 73H
        DC8 74H, 2DH, 2DH, 66H, 61H, 69H, 6CH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 0DH, 0AH, 20H, 31H, 20H, 2DH, 3EH, 20H
        DC8 51H, 4DH, 43H, 35H, 38H, 38H, 33H, 4CH
        DC8 5FH, 52H, 45H, 47H, 5FH, 30H, 39H, 5FH
        DC8 56H, 41H, 4CH, 55H, 45H, 20H, 20H, 20H
        DC8 20H, 28H, 30H, 78H, 30H, 31H, 29H, 20H
        DC8 20H, 35H, 31H, 32H, 20H, 32H, 47H, 20H
        DC8 20H, 31H, 30H, 48H, 5AH, 0DH, 0AH, 20H
        DC8 32H, 20H, 2DH, 3EH, 20H, 51H, 4DH, 43H
        DC8 35H, 38H, 38H, 33H, 4CH, 5FH, 52H, 45H
        DC8 47H, 5FH, 30H, 39H, 5FH, 56H, 41H, 4CH
        DC8 55H, 45H, 20H, 20H, 20H, 20H, 28H, 30H
        DC8 78H, 34H, 31H, 29H, 20H, 20H, 32H, 35H
        DC8 36H, 20H, 32H, 47H, 20H, 20H, 31H, 30H
        DC8 48H, 5AH, 0DH, 0AH, 20H, 33H, 20H, 2DH
        DC8 3EH, 20H, 51H, 4DH, 43H, 35H, 38H, 38H
        DC8 33H, 4CH, 5FH, 52H, 45H, 47H, 5FH, 30H
        DC8 39H, 5FH, 56H, 41H, 4CH, 55H, 45H, 20H
        DC8 20H, 20H, 20H, 28H, 30H, 78H, 38H, 31H
        DC8 29H, 20H, 20H, 31H, 32H, 38H, 20H, 32H
        DC8 47H, 20H, 20H, 31H, 30H, 48H, 5AH, 0DH
        DC8 0AH, 20H, 34H, 20H, 2DH, 3EH, 20H, 51H
        DC8 4DH, 43H, 35H, 38H, 38H, 33H, 4CH, 5FH
        DC8 52H, 45H, 47H, 5FH, 30H, 39H, 5FH, 56H
        DC8 41H, 4CH, 55H, 45H, 20H, 20H, 20H, 20H
        DC8 28H, 30H, 78H, 43H, 31H, 29H, 20H, 20H
        DC8 20H, 36H, 34H, 20H, 32H, 47H, 20H, 20H
        DC8 31H, 30H, 48H, 5AH, 20H, 0DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 "Reg9 set:%02X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "Magnet X:%f, Y:%f, Z:%f\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_6:
        DC8 "QMC5883_TEST total count:%d, success:%d\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  175 
//  176 #ifdef USE_FULL_ASSERT
//  177 
//  178 /**
//  179    * @brief Reports the name of the source file and the source line number
//  180    * where the assert_param error has occurred.
//  181    * @param file: pointer to the source file name
//  182    * @param line: assert_param error line source number
//  183    * @retval None
//  184    */
//  185 void assert_failed(uint8_t* file, uint32_t line)
//  186 {
//  187   /* USER CODE BEGIN 6 */
//  188   /* User can add his own implementation to report the file name and line number,
//  189     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
//  190   /* USER CODE END 6 */
//  191 
//  192 }
//  193 
//  194 #endif
//  195 
//  196 /**
//  197   * @}
//  198   */ 
//  199 
//  200 /**
//  201   * @}
//  202 */ 
//  203 
//  204 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 508 bytes in section .rodata
// 426 bytes in section .text
// 
// 426 bytes of CODE  memory
// 508 bytes of CONST memory
//
//Errors: none
//Warnings: 6
