///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:22
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\01work\proj\地磁\Code\Drivers\Src\i2c.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Src\i2c.c -D USE_HAL_DRIVER -D
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\i2c.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_I2C_GetError
        EXTERN HAL_I2C_Init
        EXTERN HAL_I2C_Master_Receive
        EXTERN HAL_I2C_Master_Transmit

        PUBLIC I2cByteRead
        PUBLIC I2cByteWrite
        PUBLIC I2cBytesRead
        PUBLIC I2cInit
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Src\i2c.c
//    1 /**
//    2  * @brief       : 
//    3  *
//    4  * @file        : i2c.c
//    5  * @author      : wangjian
//    6  *
//    7  * Version      : v0.0.1
//    8  * Date         : 2016/09/21
//    9  * Change Logs  :
//   10  *
//   11  * Date          Version      Author        Notes
//   12  * 2016/09/21    v0.0.1        wangjian    first version
//   13  */
//   14 
//   15 /* Exported incluides --------------------------------------------------------*/
//   16 #include "device.h"
//   17 
//   18 /* Private variables ---------------------------------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 static I2C_HandleTypeDef I2cHander1;
I2cHander1:
        DS8 84
//   20 
//   21 /* Exported functions --------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function I2cInit
        THUMB
//   22 bool I2cInit(I2cHanderTypeDef hi2c)
//   23 {
I2cInit:
        PUSH     {R0-R2,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   24 
//   25  I2C_HandleTypeDef *hander;
//   26 
//   27   if (hi2c.i2c == DEVICE_I2C1)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2cInit_0
//   28     {
//   29         hander = &I2cHander1;
        LDR.N    R0,??DataTable3
//   30         hander->Instance = I2C1;
        LDR.N    R1,??DataTable3_1  ;; 0x40005400
        STR      R1,[R0, #+0]
//   31     }
//   32     else
//   33     {
//   34         return false;
//   35     }
//   36    
//   37     hander->Init.ClockSpeed = hi2c.clock;
        LDR      R1,[SP, #+4]
        STR      R1,[R0, #+4]
//   38 
//   39     if (hi2c.addr_mode == I2C_ADDRESS_MODE_7BIT)
        LDRB     R1,[SP, #+8]
        CMP      R1,#+0
        BNE.N    ??I2cInit_1
//   40     {
//   41         hander->Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
        MOV      R1,#+16384
        STR      R1,[R0, #+16]
        B.N      ??I2cInit_2
//   42     }
??I2cInit_0:
        MOVS     R0,#+0
        B.N      ??I2cInit_3
//   43     else
//   44     {
//   45         hander->Init.AddressingMode = I2C_ADDRESSINGMODE_10BIT;
??I2cInit_1:
        MOV      R1,#+49152
        STR      R1,[R0, #+16]
//   46     }
//   47     
//   48     hander->Init.DutyCycle = I2C_DUTYCYCLE_2;
??I2cInit_2:
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   49     hander->Init.OwnAddress1 = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   50     hander->Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//   51     hander->Init.OwnAddress2 = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//   52     hander->Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
//   53     hander->Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//   54         
//   55     if (HAL_I2C_Init(hander) != HAL_OK)
          CFI FunCall HAL_I2C_Init
        BL       HAL_I2C_Init
        CMP      R0,#+0
        BEQ.N    ??I2cInit_4
//   56     {
//   57         return false;
        MOVS     R0,#+0
        B.N      ??I2cInit_3
//   58     }
//   59     
//   60   return true;
??I2cInit_4:
        MOVS     R0,#+1
??I2cInit_3:
        POP      {R1-R3,PC}       ;; return
//   61 }
          CFI EndBlock cfiBlock0
//   62 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function I2cByteRead
        THUMB
//   63 bool  I2cByteRead (I2cHanderTypeDef hi2c,  uint8_t addr, uint8_t reg, uint8_t* data)
//   64 {
I2cByteRead:
        PUSH     {R0-R2,R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+28
        SUB      SP,SP,#+4
          CFI CFA R13+32
        MOVS     R4,R3
//   65     uint8_t count = 0;
        MOVS     R5,#+0
//   66    // HAL_StatusTypeDef temp;
//   67     I2C_HandleTypeDef *hander;
//   68 
//   69     if (hi2c.i2c == DEVICE_I2C1 )
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE.N    ??I2cByteRead_0
//   70     {
//   71         hander = &I2cHander1;
        LDR.N    R6,??DataTable3
//   72     }
//   73     else
//   74     {
//   75         return false;
//   76     }
//   77   //  temp = HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500);
//   78     while( HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500) != HAL_OK)
??I2cByteRead_1:
        MOV      R0,#+500
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        ADD      R2,SP,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
          CFI FunCall HAL_I2C_Master_Transmit
        BL       HAL_I2C_Master_Transmit
        CMP      R0,#+0
        BEQ.N    ??I2cByteRead_2
//   79     {
//   80          if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        MOVS     R0,R6
          CFI FunCall HAL_I2C_GetError
        BL       HAL_I2C_GetError
        CMP      R0,#+4
        BEQ.N    ??I2cByteRead_3
//   81         {
//   82           return false;
        MOVS     R0,#+0
        B.N      ??I2cByteRead_4
//   83         }
??I2cByteRead_0:
        MOVS     R0,#+0
        B.N      ??I2cByteRead_4
//   84          
//   85          count++;
??I2cByteRead_3:
        ADDS     R5,R5,#+1
//   86          
//   87          if (count > 3)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BLT.N    ??I2cByteRead_1
//   88          {
//   89             return false;
        MOVS     R0,#+0
        B.N      ??I2cByteRead_4
//   90          }
//   91          
//   92          //temp = HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500);
//   93     }
//   94    
//   95     if(HAL_I2C_Master_Receive(hander,  (addr | 0x01), data, 1, 1000) != HAL_OK)
??I2cByteRead_2:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        LDR      R2,[SP, #+36]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R1,R4,#0x1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
          CFI FunCall HAL_I2C_Master_Receive
        BL       HAL_I2C_Master_Receive
        CMP      R0,#+0
        BEQ.N    ??I2cByteRead_5
//   96     {
//   97         if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        MOVS     R0,R6
          CFI FunCall HAL_I2C_GetError
        BL       HAL_I2C_GetError
        CMP      R0,#+4
        BEQ.N    ??I2cByteRead_5
//   98                 {
//   99                   return false;
        MOVS     R0,#+0
        B.N      ??I2cByteRead_4
//  100                 }
//  101     }
//  102     return true;
??I2cByteRead_5:
        MOVS     R0,#+1
??I2cByteRead_4:
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  103 
//  104 }
          CFI EndBlock cfiBlock1
//  105 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function I2cBytesRead
        THUMB
//  106 bool  I2cBytesRead (I2cHanderTypeDef hi2c,  uint8_t addr, uint8_t reg, uint8_t* data, uint16_t size)
//  107 {
I2cBytesRead:
        PUSH     {R0-R2,R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+28
        SUB      SP,SP,#+4
          CFI CFA R13+32
        MOVS     R4,R3
//  108     uint8_t count = 0;
        MOVS     R5,#+0
//  109     
//  110     I2C_HandleTypeDef *hander;
//  111 
//  112     if (hi2c.i2c == DEVICE_I2C1 )
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE.N    ??I2cBytesRead_0
//  113     {
//  114         hander = &I2cHander1;
        LDR.N    R6,??DataTable3
//  115     }
//  116     else
//  117     {
//  118         return false;
//  119     }
//  120 
//  121     
//  122     while(HAL_I2C_Master_Transmit(hander, addr, &reg, 1, 500) != HAL_OK)
??I2cBytesRead_1:
        MOV      R0,#+500
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        ADD      R2,SP,#+32
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
          CFI FunCall HAL_I2C_Master_Transmit
        BL       HAL_I2C_Master_Transmit
        CMP      R0,#+0
        BEQ.N    ??I2cBytesRead_2
//  123     {
//  124          if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        MOVS     R0,R6
          CFI FunCall HAL_I2C_GetError
        BL       HAL_I2C_GetError
        CMP      R0,#+4
        BEQ.N    ??I2cBytesRead_3
//  125         {
//  126           return false;
        MOVS     R0,#+0
        B.N      ??I2cBytesRead_4
//  127         }
??I2cBytesRead_0:
        MOVS     R0,#+0
        B.N      ??I2cBytesRead_4
//  128          
//  129          count++;
??I2cBytesRead_3:
        ADDS     R5,R5,#+1
//  130          
//  131          if (count > 3)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BLT.N    ??I2cBytesRead_1
//  132          {
//  133             return false;
        MOVS     R0,#+0
        B.N      ??I2cBytesRead_4
//  134          }
//  135     }
??I2cBytesRead_2:
        LDR      R3,[SP, #+40]
//  136    
//  137    
//  138     if(HAL_I2C_Master_Receive(hander,  (addr | 0x01), data, size, (size * 500) + 500) != HAL_OK)
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOV      R0,#+500
        MUL      R0,R0,R3
        ADDS     R0,R0,#+500
        STR      R0,[SP, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDR      R2,[SP, #+36]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R1,R4,#0x1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
          CFI FunCall HAL_I2C_Master_Receive
        BL       HAL_I2C_Master_Receive
        CMP      R0,#+0
        BEQ.N    ??I2cBytesRead_5
//  139     {
//  140         if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        MOVS     R0,R6
          CFI FunCall HAL_I2C_GetError
        BL       HAL_I2C_GetError
        CMP      R0,#+4
        BEQ.N    ??I2cBytesRead_5
//  141                 {
//  142                   return false;
        MOVS     R0,#+0
        B.N      ??I2cBytesRead_4
//  143                 }
//  144     }
//  145     return true;
??I2cBytesRead_5:
        MOVS     R0,#+1
??I2cBytesRead_4:
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  146 
//  147 }
          CFI EndBlock cfiBlock2
//  148 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function I2cByteWrite
        THUMB
//  149 bool  I2cByteWrite (I2cHanderTypeDef hi2c , uint8_t addr, uint8_t reg, uint8_t  data)
//  150 {
I2cByteWrite:
        PUSH     {R0-R2,R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+28
        SUB      SP,SP,#+12
          CFI CFA R13+40
        MOVS     R4,R3
//  151     uint8_t tx_data[2] = {reg, data};
        LDR      R0,[SP, #+40]
        STRB     R0,[SP, #+4]
        LDR      R0,[SP, #+44]
        STRB     R0,[SP, #+5]
//  152     
//  153     uint8_t count = 0;
        MOVS     R5,#+0
//  154     
//  155     I2C_HandleTypeDef *hander;
//  156 
//  157     if (hi2c.i2c == DEVICE_I2C1 )
        LDRB     R0,[SP, #+12]
        CMP      R0,#+0
        BNE.N    ??I2cByteWrite_0
//  158     {
//  159         hander = &I2cHander1;
        LDR.N    R6,??DataTable3
//  160     }
//  161     else
//  162     {
//  163         return false;
//  164     }
//  165     
//  166      while(HAL_I2C_Master_Transmit(hander, addr, (uint8_t*)tx_data, 2, 1000) != HAL_OK)
??I2cByteWrite_1:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        ADD      R2,SP,#+4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
          CFI FunCall HAL_I2C_Master_Transmit
        BL       HAL_I2C_Master_Transmit
        CMP      R0,#+0
        BEQ.N    ??I2cByteWrite_2
//  167      {
//  168          if (HAL_I2C_GetError(hander) != HAL_I2C_ERROR_AF)
        MOVS     R0,R6
          CFI FunCall HAL_I2C_GetError
        BL       HAL_I2C_GetError
        CMP      R0,#+4
        BEQ.N    ??I2cByteWrite_3
//  169          {
//  170              return false;
        MOVS     R0,#+0
        B.N      ??I2cByteWrite_4
//  171          }
??I2cByteWrite_0:
        MOVS     R0,#+0
        B.N      ??I2cByteWrite_4
//  172     
//  173          if (count > 3)
??I2cByteWrite_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BLT.N    ??I2cByteWrite_1
//  174          {
//  175              return false;
        MOVS     R0,#+0
        B.N      ??I2cByteWrite_4
//  176          }
//  177      }
//  178      
//  179      return true;
??I2cByteWrite_2:
        MOVS     R0,#+1
??I2cByteWrite_4:
        ADD      SP,SP,#+24
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  180 
//  181 }
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     I2cHander1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40005400

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  182 
//  183 
// 
//  84 bytes in section .bss
// 440 bytes in section .text
// 
// 440 bytes of CODE memory
//  84 bytes of DATA memory
//
//Errors: none
//Warnings: none
