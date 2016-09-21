///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\01work\proj\地磁\Code\Bsp\Src\qmc5883l.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Bsp\Src\qmc5883l.c -D USE_HAL_DRIVER -D
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\qmc5883l.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Delay
        EXTERN I2cByteWrite
        EXTERN I2cBytesRead
        EXTERN I2cInit
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN memset

        PUBLIC Qmc5883lConfig
        PUBLIC Qmc5883lConfigEx
        PUBLIC Qmc5883lFilterGetData
        PUBLIC Qmc5883lGetData
        PUBLIC Qmc5883lInit
        PUBLIC Qmc5883lSelfTest
        
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
        
// D:\01work\proj\地磁\Code\Bsp\Src\qmc5883l.c
//    1 /**
//    2  * @brief       : 
//    3  *
//    4  * @file        : qmc5883.c
//    5  * @author      : WangJian
//    6  * @version     : v0.0.1
//    7  * @date        : 2016/09/21 
//    8  *
//    9  * Change Logs  :
//   10  *
//   11  * Date        Version      Author      Notes
//   12  * 2016/09/21    v0.0.1     WangJian    first version
//   13  */
//   14 
//   15 /* Includes ------------------------------------------------------------------*/
//   16 #include "bsp.h"
//   17 
//   18 /* Define --------------------------------------------------------------------*/
//   19 #define ABS(n)                  (((n) < 0) ? -(n) : (n))
//   20     
//   21 /* Private function prototypes -----------------------------------------------*/ 
//   22 static bool Qmc5883lPowerOn(void);
//   23 static bool Qmc5883lPowerOff(void);
//   24 static bool  Qmc5883lI2cByteRead(uint8_t reg, uint8_t* data);
//   25 static bool  Qmc5883lI2cBytesRead(uint8_t reg, uint8_t* data, uint16_t size);
//   26 static bool  Qmc5883lI2cByteWrite (uint8_t reg, uint8_t  data);
//   27 
//   28 
//   29 /* Private variables ---------------------------------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 static I2cHanderTypeDef I2cHander;
I2cHander:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 static int16_t FilterArrary[__QMC5883L_AVG_FILTER_NUM__][3] = {0};
FilterArrary:
        DS8 48

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   32 static uint8_t FilterCount = 0;
FilterCount:
        DS8 1
//   33 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Qmc5883lPowerOn
        THUMB
//   34 bool Qmc5883lPowerOn(void)
//   35 {
Qmc5883lPowerOn:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   36   //HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_SET);
//   37   Delay(2);
        MOVS     R0,#+2
          CFI FunCall Delay
        BL       Delay
//   38 }
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock0
//   39 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Qmc5883lPowerOff
        THUMB
//   40 bool Qmc5883lPowerOff(void)
//   41 {
Qmc5883lPowerOff:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   42   //HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
//   43   Delay(2);
        MOVS     R0,#+2
          CFI FunCall Delay
        BL       Delay
//   44 }
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock1
//   45 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Qmc5883lInit
        THUMB
//   46 bool Qmc5883lInit(void)
//   47 {
Qmc5883lInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   48   I2cHander.i2c = __QMC5883L_I2C_HANDLER__;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4
        STRB     R0,[R1, #+0]
//   49   I2cHander.clock = __QMC5883L_I2C_CLOCK__;
        LDR.W    R0,??DataTable4_1  ;; 0x186a0
        LDR.W    R1,??DataTable4
        STR      R0,[R1, #+4]
//   50   I2cHander.addr_mode = I2C_ADDRESS_MODE_7BIT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4
        STRB     R0,[R1, #+8]
//   51 
//   52   if (I2cInit(I2cHander) != true)
        LDR.W    R0,??DataTable4
        LDM      R0,{R0-R2}
          CFI FunCall I2cInit
        BL       I2cInit
        CMP      R0,#+0
        BNE.N    ??Qmc5883lInit_0
//   53   {
//   54     return false;
        MOVS     R0,#+0
        B.N      ??Qmc5883lInit_1
//   55   }
//   56 
//   57   memset(FilterArrary, 0, sizeof(FilterArrary));
??Qmc5883lInit_0:
        MOVS     R2,#+48
        MOVS     R1,#+0
        LDR.W    R0,??DataTable4_2
          CFI FunCall memset
        BL       memset
//   58   
//   59   FilterCount = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_3
        STRB     R0,[R1, #+0]
//   60   
//   61   Qmc5883lPowerOff();
          CFI FunCall Qmc5883lPowerOff
        BL       Qmc5883lPowerOff
//   62     
//   63   Qmc5883lPowerOn();  
          CFI FunCall Qmc5883lPowerOn
        BL       Qmc5883lPowerOn
//   64   
//   65   return true;
        MOVS     R0,#+1
??Qmc5883lInit_1:
        POP      {R1,PC}          ;; return
//   66 }
          CFI EndBlock cfiBlock2
//   67 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Qmc5883lConfig
        THUMB
//   68 bool Qmc5883lConfig(void)
//   69 {
Qmc5883lConfig:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
//   70      bool ret;
//   71      
//   72      uint8_t  temp[16];
//   73      
//   74      float magnet[3];
//   75      
//   76      memset(temp, 0 , sizeof(temp));
        MOVS     R2,#+16
        MOVS     R1,#+0
        MOV      R0,SP
          CFI FunCall memset
        BL       memset
//   77     
//   78     ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);
        MOVS     R2,#+11
        MOV      R1,SP
        MOVS     R0,#+0
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//   79     
//   80     Qmc5883lI2cByteWrite(0x0B, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//   81         
//   82     Qmc5883lI2cByteWrite(0x20, 0x40);
        MOVS     R1,#+64
        MOVS     R0,#+32
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//   83 
//   84     Qmc5883lI2cByteWrite(0x21, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+33
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//   85 
//   86     Qmc5883lI2cByteWrite(0x09, __QMC5883L_REG_09_VALUE__);    //10hz
        MOVS     R1,#+65
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//   87 
//   88    // osDelay(10);
//   89     
//   90     ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);
        MOVS     R2,#+11
        MOV      R1,SP
        MOVS     R0,#+0
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//   91 
//   92     if (temp[0x09] == __QMC5883L_REG_09_VALUE__)
        LDRB     R0,[SP, #+9]
        CMP      R0,#+65
        BNE.N    ??Qmc5883lConfig_0
//   93     {
//   94         return true;
        MOVS     R0,#+1
        B.N      ??Qmc5883lConfig_1
//   95     }
//   96 
//   97     return false;
??Qmc5883lConfig_0:
        MOVS     R0,#+0
??Qmc5883lConfig_1:
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
//   98 }
          CFI EndBlock cfiBlock3
//   99 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Qmc5883lConfigEx
        THUMB
//  100 bool Qmc5883lConfigEx(uint8_t reg_9)
//  101 {
Qmc5883lConfigEx:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
//  102      bool ret;
//  103      
//  104      uint8_t  temp[16];
//  105      
//  106      float magnet[3];
//  107      
//  108      memset(temp, 0 , sizeof(temp));
        MOVS     R2,#+16
        MOVS     R1,#+0
        MOV      R0,SP
          CFI FunCall memset
        BL       memset
//  109     
//  110     ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);
        MOVS     R2,#+11
        MOV      R1,SP
        MOVS     R0,#+0
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//  111 
//  112     Qmc5883lI2cByteWrite(0x0B, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  113         
//  114     Qmc5883lI2cByteWrite(0x20, 0x40);
        MOVS     R1,#+64
        MOVS     R0,#+32
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  115 
//  116     Qmc5883lI2cByteWrite(0x21, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+33
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  117 
//  118     Qmc5883lI2cByteWrite(0x09, reg_9);    //10hz
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  119 
//  120    // osDelay(10);
//  121     
//  122     ret = Qmc5883lI2cBytesRead(0, temp, 0x0B);
        MOVS     R2,#+11
        MOV      R1,SP
        MOVS     R0,#+0
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//  123 
//  124     if (temp[0x09] == reg_9)
        LDRB     R0,[SP, #+9]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??Qmc5883lConfigEx_0
//  125     {
//  126         return true;
        MOVS     R0,#+1
        B.N      ??Qmc5883lConfigEx_1
//  127     }
//  128 
//  129     return false;
??Qmc5883lConfigEx_0:
        MOVS     R0,#+0
??Qmc5883lConfigEx_1:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//  130 }
          CFI EndBlock cfiBlock4
//  131 
//  132 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Qmc5883lSelfTest
        THUMB
//  133 bool Qmc5883lSelfTest (void)
//  134 {
Qmc5883lSelfTest:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//  135     uint8_t count = 0;
        MOVS     R4,#+0
//  136     uint8_t temp = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  137     int16_t magnet_row_a[3] = {0};
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  138     int16_t magnet_row_b[3] = {0};
        MOV      R0,SP
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  139     
//  140     //  1.  0x20 = 40,  0x21=1,  0x0B=1,   0x09=1D
//  141     Qmc5883lI2cByteWrite(0x20, 0x40);
        MOVS     R1,#+64
        MOVS     R0,#+32
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  142     Qmc5883lI2cByteWrite(0x21, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+33
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  143     Qmc5883lI2cByteWrite(0x0B, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  144     Qmc5883lI2cByteWrite(0x09, 0x1D);
        MOVS     R1,#+29
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  145 
//  146     //  2.  Wait 10ms
//  147     Delay(10);
        MOVS     R0,#+10
          CFI FunCall Delay
        BL       Delay
//  148     //osDelay(10);
//  149 
//  150     //  3.  0x09=1C    ( enter standby mode)
//  151     Qmc5883lI2cByteWrite(0x09, 0x1C);
        MOVS     R1,#+28
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  152 
//  153     //  4.  0x0B=0      (turn off set/reset)
//  154     Qmc5883lI2cByteWrite(0x0B, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+11
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  155 
//  156     //  5.  0x09=12    (self-test mode,  do set)
//  157     Qmc5883lI2cByteWrite(0x09, 0x12);
        MOVS     R1,#+18
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  158 
//  159     //  6.  Wait 10ms and check whether 0x09=10 (wait until selftest done)
//  160    // osDelay(10);
//  161     count = 0;
        MOVS     R4,#+0
//  162 
//  163     do
//  164     {
//  165         if ( Qmc5883lI2cBytesRead(0x09, &temp, 1) == false)
??Qmc5883lSelfTest_0:
        MOVS     R2,#+1
        ADD      R1,SP,#+16
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
        CMP      R0,#+0
        BNE.N    ??Qmc5883lSelfTest_1
//  166         {
//  167            return false;    
        MOVS     R0,#+0
        B.N      ??Qmc5883lSelfTest_2
//  168         }
//  169 //        if ( Qmc5883lI2cByteRead(0x09, &temp) == false)
//  170 //        {
//  171 //           return false;    
//  172 //        }
//  173         Delay(1);
??Qmc5883lSelfTest_1:
        MOVS     R0,#+1
          CFI FunCall Delay
        BL       Delay
//  174        // osDelay(1);
//  175        count++;
        ADDS     R4,R4,#+1
//  176 
//  177         if (count >100)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+101
        BLT.N    ??Qmc5883lSelfTest_3
//  178         {
//  179             return false;    
        MOVS     R0,#+0
        B.N      ??Qmc5883lSelfTest_2
//  180         }
//  181     } while (temp != 0x10);
??Qmc5883lSelfTest_3:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+16
        BNE.N    ??Qmc5883lSelfTest_0
//  182 
//  183     //  7.  0x09=1D
//  184     Qmc5883lI2cByteWrite(0x09, 0x1D);
        MOVS     R1,#+29
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  185 
//  186     //  8.  Read x/y/z data  ( data A )
//  187     Qmc5883lGetData(magnet_row_a);
        ADD      R0,SP,#+8
          CFI FunCall Qmc5883lGetData
        BL       Qmc5883lGetData
//  188 
//  189     //  9.  0x09=13     (self-test mode,  do reset)
//  190      Qmc5883lI2cByteWrite(0x09, 0x13);
        MOVS     R1,#+19
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  191 
//  192     //  10. Wait 10ms  and check whether 0x09=10 (wait until selftest done)
//  193 
//  194     //osDelay(10);
//  195     count = 0;
        MOVS     R4,#+0
//  196     
//  197     do
//  198     {
//  199        // Qmc5883lI2cBytesRead(0x09, &temp, 1);
//  200         if ( Qmc5883lI2cBytesRead(0x09, &temp, 1) == false)
??Qmc5883lSelfTest_4:
        MOVS     R2,#+1
        ADD      R1,SP,#+16
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
        CMP      R0,#+0
        BNE.N    ??Qmc5883lSelfTest_5
//  201         {
//  202            return false;    
        MOVS     R0,#+0
        B.N      ??Qmc5883lSelfTest_2
//  203         }
//  204        // osDelay(1);
//  205         Delay(1);
??Qmc5883lSelfTest_5:
        MOVS     R0,#+1
          CFI FunCall Delay
        BL       Delay
//  206         count++;
        ADDS     R4,R4,#+1
//  207 
//  208         if (count >100)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+101
        BLT.N    ??Qmc5883lSelfTest_6
//  209         {
//  210             return false;    
        MOVS     R0,#+0
        B.N      ??Qmc5883lSelfTest_2
//  211         }
//  212         
//  213     } while (temp != 0x10);
??Qmc5883lSelfTest_6:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+16
        BNE.N    ??Qmc5883lSelfTest_4
//  214 
//  215     //  11. 0x09=1D
//  216     Qmc5883lI2cByteWrite(0x09, 0x1D);
        MOVS     R1,#+29
        MOVS     R0,#+9
          CFI FunCall Qmc5883lI2cByteWrite
        BL       Qmc5883lI2cByteWrite
//  217 
//  218     //  12. Read x/y/z data  ( data B )
//  219     Qmc5883lGetData(magnet_row_b);
        MOV      R0,SP
          CFI FunCall Qmc5883lGetData
        BL       Qmc5883lGetData
//  220 
//  221     //  check data
//  222     if ((ABS(magnet_row_a[0] + magnet_row_b[0]) < 120)
//  223       &&(ABS(magnet_row_a[1] + magnet_row_b[1]) < 120)
//  224       &&(ABS(magnet_row_a[2] + magnet_row_b[2]) < 120))
        LDRSH    R0,[SP, #+8]
        LDRSH    R1,[SP, #+0]
        ADDS     R0,R1,R0
        CMP      R0,#+0
        BPL.N    ??Qmc5883lSelfTest_7
        LDRSH    R0,[SP, #+8]
        LDRSH    R1,[SP, #+0]
        ADDS     R0,R1,R0
        RSBS     R0,R0,#+0
        B.N      ??Qmc5883lSelfTest_8
??Qmc5883lSelfTest_7:
        LDRSH    R0,[SP, #+8]
        LDRSH    R1,[SP, #+0]
        ADDS     R0,R1,R0
??Qmc5883lSelfTest_8:
        CMP      R0,#+120
        BGE.N    ??Qmc5883lSelfTest_9
        LDRSH    R0,[SP, #+10]
        LDRSH    R1,[SP, #+2]
        ADDS     R0,R1,R0
        CMP      R0,#+0
        BPL.N    ??Qmc5883lSelfTest_10
        LDRSH    R0,[SP, #+10]
        LDRSH    R1,[SP, #+2]
        ADDS     R0,R1,R0
        RSBS     R0,R0,#+0
        B.N      ??Qmc5883lSelfTest_11
??Qmc5883lSelfTest_10:
        LDRSH    R0,[SP, #+10]
        LDRSH    R1,[SP, #+2]
        ADDS     R0,R1,R0
??Qmc5883lSelfTest_11:
        CMP      R0,#+120
        BGE.N    ??Qmc5883lSelfTest_9
        LDRSH    R0,[SP, #+12]
        LDRSH    R1,[SP, #+4]
        ADDS     R0,R1,R0
        CMP      R0,#+0
        BPL.N    ??Qmc5883lSelfTest_12
        LDRSH    R0,[SP, #+12]
        LDRSH    R1,[SP, #+4]
        ADDS     R0,R1,R0
        RSBS     R0,R0,#+0
        B.N      ??Qmc5883lSelfTest_13
??Qmc5883lSelfTest_12:
        LDRSH    R0,[SP, #+12]
        LDRSH    R1,[SP, #+4]
        ADDS     R0,R1,R0
??Qmc5883lSelfTest_13:
        CMP      R0,#+120
        BGE.N    ??Qmc5883lSelfTest_9
//  225     {
//  226       
//  227      // *((uint32_t *)0xE000ED0C) = 0x05fa0004;  
//  228       return true;
        MOVS     R0,#+1
        B.N      ??Qmc5883lSelfTest_2
//  229     }
//  230     
//  231     return false;
??Qmc5883lSelfTest_9:
        MOVS     R0,#+0
??Qmc5883lSelfTest_2:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//  232 
//  233 }
          CFI EndBlock cfiBlock5
//  234 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Qmc5883lGetData
        THUMB
//  235 bool Qmc5883lGetData (int16_t *magnet_raw)
//  236 {
Qmc5883lGetData:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
        MOVS     R4,R0
//  237     uint8_t buff[6];
//  238     uint8_t i;
//  239     uint8_t temp;
//  240     int16_t magnetRaw[3];
//  241     uint8_t buff_temp[6];
//  242     float magnet[3];
//  243     
//  244     Qmc5883lI2cBytesRead(0x06, &temp, 1);
        MOVS     R2,#+1
        MOV      R1,SP
        MOVS     R0,#+6
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//  245     
//  246     if (temp & 0x02)
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Qmc5883lGetData_0
//  247     {
//  248     	//LOG("output data OVL or ERROR!")
//  249     	return false;
        MOVS     R0,#+0
        B.N      ??Qmc5883lGetData_1
//  250     }
//  251     
//  252     if ((temp & 0x01) == 0)
??Qmc5883lGetData_0:
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??Qmc5883lGetData_2
//  253     {
//  254     	//LOG("output data not ready!")
//  255     	return false;
        MOVS     R0,#+0
        B.N      ??Qmc5883lGetData_1
//  256     }
//  257 
//  258     Qmc5883lI2cBytesRead(0, buff, 6);
??Qmc5883lGetData_2:
        MOVS     R2,#+6
        ADD      R1,SP,#+4
        MOVS     R0,#+0
          CFI FunCall Qmc5883lI2cBytesRead
        BL       Qmc5883lI2cBytesRead
//  259     
//  260     magnet_raw[0] = ((int16_t)buff[1] << 8) | buff[0];
        LDRB     R0,[SP, #+5]
        LDRB     R1,[SP, #+4]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+0]
//  261     magnet_raw[1] = ((int16_t)buff[3] << 8) | buff[2];
        LDRB     R0,[SP, #+7]
        LDRB     R1,[SP, #+6]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
//  262     magnet_raw[2] = ((int16_t)buff[5] << 8) | buff[4];
        LDRB     R0,[SP, #+9]
        LDRB     R1,[SP, #+8]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+4]
//  263     
//  264     magnet[0] = (float)magnet_raw[0] / 120.f;//uT
        LDRSH    R0,[R4, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+12]
//  265     magnet[1] = (float)magnet_raw[1] / 120.f;//uT
        LDRSH    R0,[R4, #+2]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+16]
//  266     magnet[2] = (float)magnet_raw[2] / 120.f;//uT
        LDRSH    R0,[R4, #+4]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
//  267 
//  268     return true;
        MOVS     R0,#+1
??Qmc5883lGetData_1:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//  269 }
          CFI EndBlock cfiBlock6
//  270 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Qmc5883lFilterGetData
        THUMB
//  271 bool Qmc5883lFilterGetData (const int16_t *magnet_raw, float *magnet, int16_t *filter_magnet)
//  272 {
Qmc5883lFilterGetData:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R1
        MOVS     R5,R2
//  273     uint8_t i = 0;
        MOVS     R6,#+0
//  274     int32_t sum_x = 0;
        MOVS     R1,#+0
//  275     int32_t sum_y = 0;
        MOVS     R2,#+0
//  276     int32_t sum_z = 0;
        MOVS     R3,#+0
//  277     
//  278     sum_x = magnet_raw[0];
        LDRSH    R1,[R0, #+0]
//  279     sum_y = magnet_raw[1];
        LDRSH    R2,[R0, #+2]
//  280     sum_z = magnet_raw[2];
        LDRSH    R3,[R0, #+4]
//  281     
//  282     FilterCount++;
        LDR.N    R6,??DataTable4_3
        LDRB     R6,[R6, #+0]
        ADDS     R6,R6,#+1
        LDR.N    R7,??DataTable4_3
        STRB     R6,[R7, #+0]
//  283 
//  284     if (FilterCount > __QMC5883L_AVG_FILTER_NUM__)
        LDR.N    R6,??DataTable4_3
        LDRB     R6,[R6, #+0]
        CMP      R6,#+9
        BLT.N    ??Qmc5883lFilterGetData_0
//  285     {
//  286         FilterCount = __QMC5883L_AVG_FILTER_NUM__;
        MOVS     R6,#+8
        LDR.N    R7,??DataTable4_3
        STRB     R6,[R7, #+0]
//  287         
//  288         for (i = 0; i < FilterCount - 1; i++)
        MOVS     R6,#+0
??Qmc5883lFilterGetData_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R7,??DataTable4_3
        LDRB     R7,[R7, #+0]
        SUBS     R7,R7,#+1
        CMP      R6,R7
        BGE.N    ??Qmc5883lFilterGetData_2
//  289         {
//  290             if (FilterCount == __QMC5883L_AVG_FILTER_NUM__)
        LDR.N    R7,??DataTable4_3
        LDRB     R7,[R7, #+0]
        CMP      R7,#+8
        BNE.N    ??Qmc5883lFilterGetData_3
//  291             {
//  292               FilterArrary[i][0] = FilterArrary[i + 1][0];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRH     R7,[R7, #+6]
        LDR.W    R12,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     LR,#+6
        MLA      R12,LR,R6,R12
        STRH     R7,[R12, #+0]
//  293               FilterArrary[i][1] = FilterArrary[i + 1][1];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRH     R7,[R7, #+8]
        LDR.W    R12,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     LR,#+6
        MLA      R12,LR,R6,R12
        STRH     R7,[R12, #+2]
//  294               FilterArrary[i][2] = FilterArrary[i + 1][2];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRH     R7,[R7, #+10]
        LDR.W    R12,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     LR,#+6
        MLA      R12,LR,R6,R12
        STRH     R7,[R12, #+4]
//  295             }
//  296 
//  297             sum_x += FilterArrary[i][0];
??Qmc5883lFilterGetData_3:
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+0]
        ADDS     R1,R7,R1
//  298             sum_y += FilterArrary[i][1];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+2]
        ADDS     R2,R7,R2
//  299             sum_z += FilterArrary[i][2];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+4]
        ADDS     R3,R7,R3
//  300         }
        ADDS     R6,R6,#+1
        B.N      ??Qmc5883lFilterGetData_1
//  301     }
//  302     else
//  303     {
//  304         for (i = 0; i < FilterCount - 1; i++)
??Qmc5883lFilterGetData_0:
        MOVS     R6,#+0
        B.N      ??Qmc5883lFilterGetData_4
//  305         {
//  306             sum_x += FilterArrary[i][0];
??Qmc5883lFilterGetData_5:
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+0]
        ADDS     R1,R7,R1
//  307             sum_y += FilterArrary[i][1];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+2]
        ADDS     R2,R7,R2
//  308             sum_z += FilterArrary[i][2];
        LDR.N    R7,??DataTable4_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R12,#+6
        MLA      R7,R12,R6,R7
        LDRSH    R7,[R7, #+4]
        ADDS     R3,R7,R3
//  309         }
        ADDS     R6,R6,#+1
??Qmc5883lFilterGetData_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R7,??DataTable4_3
        LDRB     R7,[R7, #+0]
        SUBS     R7,R7,#+1
        CMP      R6,R7
        BLT.N    ??Qmc5883lFilterGetData_5
//  310     }
//  311       
//  312     FilterArrary[FilterCount - 1][0] = magnet_raw[0];
??Qmc5883lFilterGetData_2:
        LDRH     R6,[R0, #+0]
        LDR.N    R7,??DataTable4_2
        LDR.W    R12,??DataTable4_3
        LDRB     R12,[R12, #+0]
        MOVS     LR,#+6
        MLA      R7,LR,R12,R7
        STRH     R6,[R7, #-6]
//  313     FilterArrary[FilterCount - 1][1] = magnet_raw[1];
        LDRH     R6,[R0, #+2]
        LDR.N    R7,??DataTable4_2
        LDR.W    R12,??DataTable4_3
        LDRB     R12,[R12, #+0]
        MOVS     LR,#+6
        MLA      R7,LR,R12,R7
        STRH     R6,[R7, #-4]
//  314     FilterArrary[FilterCount - 1][2] = magnet_raw[2];
        LDRH     R0,[R0, #+4]
        LDR.N    R6,??DataTable4_2
        LDR.N    R7,??DataTable4_3
        LDRB     R7,[R7, #+0]
        MOVS     R12,#+6
        MLA      R6,R12,R7,R6
        STRH     R0,[R6, #-2]
//  315         
//  316     filter_magnet[0] = sum_x / FilterCount;
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        SDIV     R0,R1,R0
        STRH     R0,[R5, #+0]
//  317     filter_magnet[1] = sum_y / FilterCount;
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        SDIV     R0,R2,R0
        STRH     R0,[R5, #+2]
//  318     filter_magnet[2] = sum_z / FilterCount;
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        SDIV     R0,R3,R0
        STRH     R0,[R5, #+4]
//  319     
//  320     magnet[0] = (float)filter_magnet[0] / 120.f;//uT
        LDRSH    R0,[R5, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[R4, #+0]
//  321     magnet[1] = (float)filter_magnet[1] / 120.f;//uT
        LDRSH    R0,[R5, #+2]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[R4, #+4]
//  322     magnet[2] = (float)filter_magnet[2] / 120.f;//uT
        LDRSH    R0,[R5, #+4]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42f00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[R4, #+8]
//  323 
//  324     return true;
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
//  325 }
          CFI EndBlock cfiBlock7
//  326 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function Qmc5883lI2cByteWrite
        THUMB
//  327 bool Qmc5883lI2cByteWrite(uint8_t reg,uint8_t  data)
//  328 {
Qmc5883lI2cByteWrite:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
//  329     if (I2cByteWrite(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data)  != HAL_OK)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[SP, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R3,#+26
        LDR.N    R0,??DataTable4
        LDM      R0,{R0-R2}
          CFI FunCall I2cByteWrite
        BL       I2cByteWrite
        CMP      R0,#+0
        BEQ.N    ??Qmc5883lI2cByteWrite_0
//  330      {
//  331         return false;
        MOVS     R0,#+0
        B.N      ??Qmc5883lI2cByteWrite_1
//  332     }
//  333     
//  334     return true;
??Qmc5883lI2cByteWrite_0:
        MOVS     R0,#+1
??Qmc5883lI2cByteWrite_1:
        POP      {R1-R3,PC}       ;; return
//  335 }
          CFI EndBlock cfiBlock8
//  336 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Qmc5883lI2cBytesRead
        THUMB
//  337 bool  Qmc5883lI2cBytesRead(uint8_t reg, uint8_t* data, uint16_t size)
//  338 {
Qmc5883lI2cBytesRead:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  339    if (I2cBytesRead(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data, size)  != true)
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[SP, #+8]
        STR      R1,[SP, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R3,#+26
        LDR.N    R0,??DataTable4
        LDM      R0,{R0-R2}
          CFI FunCall I2cBytesRead
        BL       I2cBytesRead
        CMP      R0,#+0
        BNE.N    ??Qmc5883lI2cBytesRead_0
//  340     {
//  341        return false;
        MOVS     R0,#+0
        B.N      ??Qmc5883lI2cBytesRead_1
//  342    }
//  343 
//  344    return true;
??Qmc5883lI2cBytesRead_0:
        MOVS     R0,#+1
??Qmc5883lI2cBytesRead_1:
        POP      {R1-R3,PC}       ;; return
//  345 }
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     I2cHander

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     FilterArrary

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     FilterCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x42f00000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0, 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0, 0, 0
        DC8 0, 0

        END
//  346 
//  347 bool  Qmc5883lI2cByteRead(uint8_t reg, uint8_t* data)
//  348 {
//  349    if (I2cByteRead(I2cHander, __QMC5883L_I2C_ADDRESS__, reg, data)  != true)
//  350     {
//  351        return false;
//  352    }
//  353 
//  354    return true;
//  355 }
//  356 //bool Qmc5883lGetDataEx (float *magnet, int16_t *magnetRaw, Qmc5983lAccData *acc_data)
//  357 //{
//  358 //    uint8_t Buff[6];
//  359 //    uint8_t i;
//  360 //    uint8_t temp;
//  361 //    //uint8_t print_buffer[64];
//  362 //    uint16_t convert;
//  363 //    Qmc5883lI2cByteRead(0x06, &temp);
//  364 //    
//  365 //    //temp = QMC5883_ReadReg(0x06);
//  366 //    
//  367 //    if (temp & 0x02)
//  368 //    {
//  369 //    	//LOG("output data OVL or ERROR!")
//  370 //    	return false;
//  371 //    }
//  372 //    
//  373 //    if ((temp & 0x01) == 0)
//  374 //    {
//  375 //    	//LOG("output data not ready!")
//  376 //    	return false;
//  377 //    }
//  378 //
//  379 //    for (i = 0; i < 6; i++)
//  380 //    {
//  381 //        Qmc5883lI2cByteRead(i, &Buff[i]);
//  382 //    }
//  383 //    
//  384 //    //I2C_ReadByte(Buff,6,0x00,QMC5883_ADDR);
//  385 //    magnetRaw[0] = ((int16_t)Buff[1] << 8) | Buff[0];
//  386 //    magnetRaw[1] = ((int16_t)Buff[3] << 8) | Buff[2];
//  387 //    magnetRaw[2] = ((int16_t)Buff[5] << 8) | Buff[4];
//  388 //
//  389 //    acc_data->x = ((int16_t)Buff[1] << 8) | Buff[0];
//  390 //    acc_data->y = ((int16_t)Buff[3] << 8) | Buff[2];
//  391 //    acc_data->z = ((int16_t)Buff[5] << 8) | Buff[4];
//  392 //    
//  393 //    for(i=0;i<3;i++)
//  394 //    {
//  395 //        convert = magnetRaw[i];
//  396 //        magnet[i] = (float)convert / 120.f;//uT
//  397 //    }		
//  398 //    
//  399 //       convert = magnetRaw[0];
//  400 //        
//  401 //      convert = (acc_data->x);
//  402 //      magnet[0] = (float)convert / 120.f;//uT
//  403 //      convert = acc_data->y;
//  404 //      magnet[1] = convert / 120.f;//uT
//  405 //      convert = acc_data->z;
//  406 //      magnet[2] = convert / 120.f;//uT
//  407 //
//  408 //    
//  409 //    
//  410 //   // i = sprintf(print_buffer, "reg0~5 :%02x,%02x,%02x,%02x,%02x,%02x\r\n", Buff[0], Buff[1], Buff[2], Buff[3], Buff[4], Buff[5]);
//  411 //   // HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//  412 //
//  413 //   // i = sprintf(print_buffer, "MagnetRaw :%0x,%0x,%0x\r\n", MagnetRaw[0], MagnetRaw[1], MagnetRaw[2]);
//  414 //  //  HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//  415 //
//  416 //  //  i = sprintf(print_buffer, "Magnet :%f,%f,%f\r\n", magnet[0], magnet[1], magnet[2]);
//  417 //  //  HAL_UART_Transmit(&huart3, print_buffer,  i, 500);
//  418 //    return true;
//  419 //}
//  420 
// 
//    61 bytes in section .bss
//    16 bytes in section .rodata
// 1 310 bytes in section .text
// 
// 1 310 bytes of CODE  memory
//    16 bytes of CONST memory
//    61 bytes of DATA  memory
//
//Errors: none
//Warnings: 14
