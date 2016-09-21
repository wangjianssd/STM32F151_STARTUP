///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_flash.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_PageErase
        EXTERN HAL_GetTick

        PUBLIC FLASH_WaitForLastOperation
        PUBWEAK HAL_FLASH_EndOfOperationCallback
        PUBLIC HAL_FLASH_GetError
        PUBLIC HAL_FLASH_IRQHandler
        PUBLIC HAL_FLASH_Lock
        PUBLIC HAL_FLASH_OB_Launch
        PUBLIC HAL_FLASH_OB_Lock
        PUBLIC HAL_FLASH_OB_Unlock
        PUBWEAK HAL_FLASH_OperationErrorCallback
        PUBLIC HAL_FLASH_Program
        PUBLIC HAL_FLASH_Program_IT
        PUBLIC HAL_FLASH_Unlock
        PUBLIC pFlash
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_flash.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   FLASH HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the internal FLASH memory:
//   10   *           + Program operations functions
//   11   *           + Memory Control functions 
//   12   *           + Peripheral State functions
//   13   *         
//   14   @verbatim
//   15   ==============================================================================
//   16                         ##### FLASH peripheral features #####
//   17   ==============================================================================
//   18   [..] The Flash memory interface manages CPU AHB I-Code and D-Code accesses 
//   19        to the Flash memory. It implements the erase and program Flash memory operations 
//   20        and the read and write protection mechanisms.
//   21 
//   22   [..] The Flash memory interface accelerates code execution with a system of instruction
//   23       prefetch. 
//   24 
//   25   [..] The FLASH main features are:
//   26       (+) Flash memory read operations
//   27       (+) Flash memory program/erase operations
//   28       (+) Read / write protections
//   29       (+) Prefetch on I-Code
//   30       (+) Option Bytes programming
//   31 
//   32 
//   33                      ##### How to use this driver #####
//   34   ==============================================================================
//   35   [..]                             
//   36       This driver provides functions and macros to configure and program the FLASH 
//   37       memory of all STM32L1xx devices.
//   38     
//   39       (#) FLASH Memory I/O Programming functions: this group includes all needed
//   40           functions to erase and program the main memory:
//   41         (++) Lock and Unlock the FLASH interface
//   42         (++) Erase function: Erase page
//   43         (++) Program functions: Fast Word and Half Page(should be 
//   44         executed from internal SRAM).
//   45   
//   46       (#) DATA EEPROM Programming functions: this group includes all 
//   47           needed functions to erase and program the DATA EEPROM memory:
//   48         (++) Lock and Unlock the DATA EEPROM interface.
//   49         (++) Erase function: Erase Byte, erase HalfWord, erase Word, erase 
//   50              Double Word (should be executed from internal SRAM).
//   51         (++) Program functions: Fast Program Byte, Fast Program Half-Word, 
//   52              FastProgramWord, Program Byte, Program Half-Word, 
//   53              Program Word and Program Double-Word (should be executed 
//   54              from internal SRAM).
//   55 
//   56       (#) FLASH Option Bytes Programming functions: this group includes all needed
//   57           functions to manage the Option Bytes:
//   58         (++) Lock and Unlock the Option Bytes
//   59         (++) Set/Reset the write protection
//   60         (++) Set the Read protection Level
//   61         (++) Program the user Option Bytes
//   62         (++) Launch the Option Bytes loader
//   63         (++) Set/Get the Read protection Level.
//   64         (++) Set/Get the BOR level.
//   65         (++) Get the Write protection.
//   66         (++) Get the user option bytes.
//   67     
//   68       (#) Interrupts and flags management functions : this group 
//   69           includes all needed functions to:
//   70         (++) Handle FLASH interrupts
//   71         (++) Wait for last FLASH operation according to its status
//   72         (++) Get error flag status
//   73 
//   74     (#) FLASH Interface configuration functions: this group includes 
//   75       the management of following features:
//   76       (++) Enable/Disable the RUN PowerDown mode.
//   77       (++) Enable/Disable the SLEEP PowerDown mode.  
//   78   
//   79     (#) FLASH Peripheral State methods: this group includes 
//   80       the management of following features:
//   81       (++) Wait for the FLASH operation
//   82       (++)  Get the specific FLASH error flag
//   83     
//   84   [..] In addition to these function, this driver includes a set of macros allowing
//   85        to handle the following operations:
//   86       
//   87       (+) Set/Get the latency
//   88       (+) Enable/Disable the prefetch buffer
//   89       (+) Enable/Disable the 64 bit Read Access.
//   90       (+) Enable/Disable the Flash power-down
//   91       (+) Enable/Disable the FLASH interrupts
//   92       (+) Monitor the FLASH flags status
//   93           
//   94                  ##### Programming operation functions #####
//   95   ===============================================================================  
//   96      [..]
//   97      This subsection provides a set of functions allowing to manage the FLASH 
//   98      program operations.
//   99   
//  100     [..] The FLASH Memory Programming functions, includes the following functions:
//  101      (+) HAL_FLASH_Unlock(void);
//  102      (+) HAL_FLASH_Lock(void);
//  103      (+) HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint32_t Data)
//  104      (+) HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint32_t Data)
//  105     
//  106      [..] Any operation of erase or program should follow these steps:
//  107      (#) Call the HAL_FLASH_Unlock() function to enable the flash control register and 
//  108          program memory access.
//  109      (#) Call the desired function to erase page or program data.
//  110      (#) Call the HAL_FLASH_Lock() to disable the flash program memory access 
//  111         (recommended to protect the FLASH memory against possible unwanted operation).
//  112   
//  113                ##### Option Bytes Programming functions ##### 
//  114    ==============================================================================  
//  115   
//  116      [..] The FLASH_Option Bytes Programming_functions, includes the following functions:
//  117      (+) HAL_FLASH_OB_Unlock(void);
//  118      (+) HAL_FLASH_OB_Lock(void);
//  119      (+) HAL_FLASH_OB_Launch(void);
//  120      (+) HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
//  121      (+) HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);
//  122     
//  123      [..] Any operation of erase or program should follow these steps:
//  124      (#) Call the HAL_FLASH_OB_Unlock() function to enable the Flash option control 
//  125          register access.
//  126      (#) Call the following functions to program the desired option bytes.
//  127          (++) HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);      
//  128      (#) Once all needed option bytes to be programmed are correctly written, call the
//  129          HAL_FLASH_OB_Launch(void) function to launch the Option Bytes programming process.
//  130      (#) Call the HAL_FLASH_OB_Lock() to disable the Flash option control register access (recommended
//  131          to protect the option Bytes against possible unwanted operations).
//  132   
//  133     [..] Proprietary code Read Out Protection (PcROP):    
//  134     (#) The PcROP sector is selected by using the same option bytes as the Write
//  135         protection. As a result, these 2 options are exclusive each other.
//  136     (#) To activate PCROP mode for Flash sectors(s), you need to follow the sequence below:
//  137         (++) Use this function HAL_FLASHEx_AdvOBProgram with PCROPState = OB_PCROP_STATE_ENABLE.
//  138 
//  139   @endverbatim
//  140   ******************************************************************************
//  141   * @attention
//  142   *
//  143   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  144   *
//  145   * Redistribution and use in source and binary forms, with or without modification,
//  146   * are permitted provided that the following conditions are met:
//  147   *   1. Redistributions of source code must retain the above copyright notice,
//  148   *      this list of conditions and the following disclaimer.
//  149   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  150   *      this list of conditions and the following disclaimer in the documentation
//  151   *      and/or other materials provided with the distribution.
//  152   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  153   *      may be used to endorse or promote products derived from this software
//  154   *      without specific prior written permission.
//  155   *
//  156   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  157   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  158   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  159   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  160   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  161   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  162   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  163   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  164   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  165   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  166   *
//  167   ******************************************************************************  
//  168   */
//  169 
//  170 /* Includes ------------------------------------------------------------------*/
//  171 #include "stm32l1xx_hal.h"
//  172 
//  173 /** @addtogroup STM32L1xx_HAL_Driver
//  174   * @{
//  175   */
//  176 
//  177 #ifdef HAL_FLASH_MODULE_ENABLED
//  178 
//  179 /** @defgroup FLASH FLASH
//  180   * @brief FLASH HAL module driver
//  181   * @{
//  182   */
//  183 
//  184 /* Private typedef -----------------------------------------------------------*/
//  185 /* Private define ------------------------------------------------------------*/
//  186 /** @defgroup FLASH_Private_Constants FLASH Private Constants
//  187   * @{
//  188   */
//  189 /**
//  190   * @}
//  191   */
//  192 
//  193 /* Private macro ---------------------------- ---------------------------------*/
//  194 /** @defgroup FLASH_Private_Macros FLASH Private Macros
//  195   * @{
//  196   */
//  197  
//  198 /**
//  199   * @}
//  200   */
//  201 
//  202 /* Private variables ---------------------------------------------------------*/
//  203 /** @defgroup FLASH_Private_Variables FLASH Private Variables
//  204   * @{
//  205   */
//  206 /* Variables used for Erase pages under interruption*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  207 FLASH_ProcessTypeDef pFlash;
pFlash:
        DS8 24
//  208 /**
//  209   * @}
//  210   */
//  211 
//  212 /* Private function prototypes -----------------------------------------------*/
//  213 /** @defgroup FLASH_Private_Functions FLASH Private Functions
//  214   * @{
//  215   */
//  216 static  void   FLASH_SetErrorCode(void);
//  217 extern void    FLASH_PageErase(uint32_t PageAddress);
//  218 /**
//  219   * @}
//  220   */
//  221 
//  222 /* Exported functions ---------------------------------------------------------*/
//  223 /** @defgroup FLASH_Exported_Functions FLASH Exported Functions
//  224   * @{
//  225   */
//  226   
//  227 /** @defgroup FLASH_Exported_Functions_Group1 Programming operation functions 
//  228   *  @brief   Programming operation functions 
//  229   *
//  230 @verbatim   
//  231 @endverbatim
//  232   * @{
//  233   */
//  234 
//  235 /**
//  236   * @brief  Program word at a specified address
//  237   * @note   To correctly run this function, the HAL_FLASH_Unlock() function
//  238   *         must be called before.
//  239   *         Call the HAL_FLASH_Lock() to disable the flash memory access
//  240   *         (recommended to protect the FLASH memory against possible unwanted operation).
//  241   *
//  242   * @param  TypeProgram:  Indicate the way to program at a specified address.
//  243   *                       This parameter can be a value of @ref FLASH_Type_Program
//  244   * @param  Address:      Specifies the address to be programmed.
//  245   * @param  Data:         Specifies the data to be programmed
//  246   * 
//  247   * @retval HAL_StatusTypeDef HAL Status
//  248   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_FLASH_Program
        THUMB
//  249 HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint32_t Data)
//  250 {
HAL_FLASH_Program:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R2
//  251   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  252   
//  253   /* Process Locked */
//  254   __HAL_LOCK(&pFlash);
        LDR.W    R0,??DataTable10
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_Program_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASH_Program_1
??HAL_FLASH_Program_0:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10
        STRB     R0,[R1, #+16]
//  255 
//  256   /* Check the parameters */
//  257   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
//  258   assert_param(IS_FLASH_PROGRAM_ADDRESS(Address));
//  259 
//  260   /* Wait for last operation to be completed */
//  261   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  262   
//  263   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASH_Program_2
//  264   {
//  265     /* Clean the error context */
//  266     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10
        STR      R0,[R1, #+20]
//  267 
//  268     /*Program word (32-bit) at a specified address.*/
//  269     *(__IO uint32_t *)Address = Data;
        STR      R5,[R4, #+0]
//  270 
//  271     /* Wait for last operation to be completed */
//  272     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  273   }
//  274 
//  275   /* Process Unlocked */
//  276   __HAL_UNLOCK(&pFlash);
??HAL_FLASH_Program_2:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable10
        STRB     R1,[R2, #+16]
//  277 
//  278   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASH_Program_1:
        POP      {R1,R4,R5,PC}    ;; return
//  279 }
          CFI EndBlock cfiBlock0
//  280 
//  281 /**
//  282   * @brief   Program word at a specified address  with interrupt enabled.
//  283   *
//  284   * @param  TypeProgram: Indicate the way to program at a specified address.
//  285   *                      This parameter can be a value of @ref FLASH_Type_Program
//  286   * @param  Address:     Specifies the address to be programmed.
//  287   * @param  Data:        Specifies the data to be programmed
//  288   * 
//  289   * @retval HAL_StatusTypeDef HAL Status
//  290   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_FLASH_Program_IT
          CFI NoCalls
        THUMB
//  291 HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint32_t Data)
//  292 {
HAL_FLASH_Program_IT:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  293   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R3,#+0
//  294   
//  295   /* Process Locked */
//  296   __HAL_LOCK(&pFlash);
        LDR.N    R4,??DataTable10
        LDRB     R4,[R4, #+16]
        CMP      R4,#+1
        BNE.N    ??HAL_FLASH_Program_IT_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASH_Program_IT_1
??HAL_FLASH_Program_IT_0:
        MOVS     R4,#+1
        LDR.N    R5,??DataTable10
        STRB     R4,[R5, #+16]
//  297 
//  298   /* Check the parameters */
//  299   assert_param(IS_FLASH_TYPEPROGRAM(TypeProgram));
//  300   assert_param(IS_FLASH_PROGRAM_ADDRESS(Address));
//  301 
//  302   /* Enable End of FLASH Operation and Error source interrupts */
//  303   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
        LDR.N    R4,??DataTable10_1  ;; 0x40023c04
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x30000
        LDR.N    R5,??DataTable10_1  ;; 0x40023c04
        STR      R4,[R5, #+0]
//  304   
//  305   pFlash.Address = Address;
        LDR.N    R4,??DataTable10
        STR      R1,[R4, #+8]
//  306   pFlash.ProcedureOnGoing = FLASH_PROC_PROGRAM;
        MOVS     R4,#+2
        LDR.N    R5,??DataTable10
        STRB     R4,[R5, #+0]
//  307   /* Clean the error context */
//  308   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R4,#+0
        LDR.N    R5,??DataTable10
        STR      R4,[R5, #+20]
//  309 
//  310   if(TypeProgram == FLASH_TYPEPROGRAM_WORD)
        CMP      R0,#+2
        BNE.N    ??HAL_FLASH_Program_IT_2
//  311   {
//  312     /* Program word (32-bit) at a specified address. */
//  313     *(__IO uint32_t *)Address = Data;
        STR      R2,[R1, #+0]
//  314   }
//  315   return status;
??HAL_FLASH_Program_IT_2:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASH_Program_IT_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  316 }
          CFI EndBlock cfiBlock1
//  317 
//  318 /**
//  319   * @brief This function handles FLASH interrupt request.
//  320   * @retval None
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_FLASH_IRQHandler
        THUMB
//  322 void HAL_FLASH_IRQHandler(void)
//  323 {
HAL_FLASH_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  324   uint32_t addresstmp = 0;
        MOVS     R4,#+0
//  325   
//  326   /* Check FLASH operation error flags */
//  327   if( __HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR)     || 
//  328       __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR)     || 
//  329       __HAL_FLASH_GET_FLAG(FLASH_FLAG_SIZERR)     || 
//  330 #if defined(FLASH_SR_RDERR)
//  331       __HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR)      || 
//  332 #endif /* FLASH_SR_RDERR */
//  333 #if defined(FLASH_SR_OPTVERRUSR)
//  334       __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERRUSR) || 
//  335 #endif /* FLASH_SR_OPTVERRUSR */
//  336       __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) )
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_FLASH_IRQHandler_0
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??HAL_FLASH_IRQHandler_0
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BMI.N    ??HAL_FLASH_IRQHandler_0
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??HAL_FLASH_IRQHandler_0
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??HAL_FLASH_IRQHandler_1
//  337   {
//  338     if(pFlash.ProcedureOnGoing == FLASH_PROC_PAGEERASE)
??HAL_FLASH_IRQHandler_0:
        LDR.N    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_IRQHandler_2
//  339     {
//  340       /* Return the faulty sector */
//  341       addresstmp = pFlash.Page;
        LDR.N    R0,??DataTable10
        LDR      R4,[R0, #+12]
//  342       pFlash.Page = 0xFFFFFFFFU;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable10
        STR      R0,[R1, #+12]
        B.N      ??HAL_FLASH_IRQHandler_3
//  343     }
//  344     else
//  345     {
//  346       /* Return the faulty address */
//  347       addresstmp = pFlash.Address;
??HAL_FLASH_IRQHandler_2:
        LDR.N    R0,??DataTable10
        LDR      R4,[R0, #+8]
//  348     }
//  349     /* Save the Error code */
//  350     FLASH_SetErrorCode();
??HAL_FLASH_IRQHandler_3:
          CFI FunCall FLASH_SetErrorCode
        BL       FLASH_SetErrorCode
//  351     
//  352     /* FLASH error interrupt user callback */
//  353     HAL_FLASH_OperationErrorCallback(addresstmp);
        MOVS     R0,R4
          CFI FunCall HAL_FLASH_OperationErrorCallback
        BL       HAL_FLASH_OperationErrorCallback
//  354 
//  355     /* Stop the procedure ongoing */
//  356     pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10
        STRB     R0,[R1, #+0]
//  357   }
//  358 
//  359   /* Check FLASH End of Operation flag  */
//  360   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
??HAL_FLASH_IRQHandler_1:
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_FLASH_IRQHandler_4
//  361   {
//  362     /* Clear FLASH End of Operation pending bit */
//  363     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
        MOVS     R0,#+2
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        STR      R0,[R1, #+0]
//  364     
//  365     /* Process can continue only if no error detected */
//  366     if(pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
        LDR.N    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASH_IRQHandler_4
//  367     {
//  368       if(pFlash.ProcedureOnGoing == FLASH_PROC_PAGEERASE)
        LDR.N    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASH_IRQHandler_5
//  369       {
//  370         /* Nb of pages to erased can be decreased */
//  371         pFlash.NbPagesToErase--;
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable10
        STR      R0,[R1, #+4]
//  372 
//  373         /* Check if there are still pages to erase */
//  374         if(pFlash.NbPagesToErase != 0)
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASH_IRQHandler_6
//  375         {
//  376           addresstmp = pFlash.Page;
        LDR.N    R0,??DataTable10
        LDR      R4,[R0, #+12]
//  377           /*Indicate user which sector has been erased */
//  378           HAL_FLASH_EndOfOperationCallback(addresstmp);
        MOVS     R0,R4
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
//  379 
//  380           /*Increment sector number*/
//  381           addresstmp = pFlash.Page + FLASH_PAGE_SIZE;
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+12]
        ADDS     R4,R0,#+256
//  382           pFlash.Page = addresstmp;
        LDR.N    R0,??DataTable10
        STR      R4,[R0, #+12]
//  383 
//  384           /* If the erase operation is completed, disable the ERASE Bit */
//  385           CLEAR_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x200
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  386 
//  387           FLASH_PageErase(addresstmp);
        MOVS     R0,R4
          CFI FunCall FLASH_PageErase
        BL       FLASH_PageErase
        B.N      ??HAL_FLASH_IRQHandler_4
//  388         }
//  389         else
//  390         {
//  391           /* No more pages to Erase, user callback can be called. */
//  392           /* Reset Sector and stop Erase pages procedure */
//  393           pFlash.Page = addresstmp = 0xFFFFFFFFU;
??HAL_FLASH_IRQHandler_6:
        MOVS     R4,#-1
        LDR.N    R0,??DataTable10
        STR      R4,[R0, #+12]
//  394           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10
        STRB     R0,[R1, #+0]
//  395           /* FLASH EOP interrupt user callback */
//  396           HAL_FLASH_EndOfOperationCallback(addresstmp);
        MOVS     R0,R4
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
        B.N      ??HAL_FLASH_IRQHandler_4
//  397         }
//  398       }
//  399       else
//  400       {
//  401           /* If the program operation is completed, disable the PROG Bit */
//  402           CLEAR_BIT(FLASH->PECR, FLASH_PECR_PROG);
??HAL_FLASH_IRQHandler_5:
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  403 
//  404           /* Program ended. Return the selected address */
//  405           /* FLASH EOP interrupt user callback */
//  406           HAL_FLASH_EndOfOperationCallback(pFlash.Address);
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+8]
          CFI FunCall HAL_FLASH_EndOfOperationCallback
        BL       HAL_FLASH_EndOfOperationCallback
//  407         
//  408           /* Reset Address and stop Program procedure */
//  409           pFlash.Address = 0xFFFFFFFFU;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable10
        STR      R0,[R1, #+8]
//  410           pFlash.ProcedureOnGoing = FLASH_PROC_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10
        STRB     R0,[R1, #+0]
//  411       }
//  412     }
//  413   }
//  414   
//  415 
//  416   if(pFlash.ProcedureOnGoing == FLASH_PROC_NONE)
??HAL_FLASH_IRQHandler_4:
        LDR.N    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??HAL_FLASH_IRQHandler_7
//  417   {
//  418     /* Operation is completed, disable the PROG and ERASE */
//  419     CLEAR_BIT(FLASH->PECR, (FLASH_PECR_ERASE | FLASH_PECR_PROG));
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x208
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  420 
//  421     /* Disable End of FLASH Operation and Error source interrupts */
//  422     __HAL_FLASH_DISABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x30000
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  423 
//  424     /* Process Unlocked */
//  425     __HAL_UNLOCK(&pFlash);
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10
        STRB     R0,[R1, #+16]
//  426   }
//  427 }
??HAL_FLASH_IRQHandler_7:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  428 
//  429 /**
//  430   * @brief  FLASH end of operation interrupt callback
//  431   * @param  ReturnValue: The value saved in this parameter depends on the ongoing procedure
//  432   *                 - Pages Erase: Address of the page which has been erased 
//  433   *                    (if 0xFFFFFFFF, it means that all the selected pages have been erased)
//  434   *                 - Program: Address which was selected for data program
//  435   * @retval none
//  436   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_FLASH_EndOfOperationCallback
          CFI NoCalls
        THUMB
//  437 __weak void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue)
//  438 {
//  439   /* Prevent unused argument(s) compilation warning */
//  440   UNUSED(ReturnValue);
//  441 
//  442   /* NOTE : This function Should not be modified, when the callback is needed,
//  443             the HAL_FLASH_EndOfOperationCallback could be implemented in the user file
//  444    */ 
//  445 }
HAL_FLASH_EndOfOperationCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  446 
//  447 /**
//  448   * @brief  FLASH operation error interrupt callback
//  449   * @param  ReturnValue: The value saved in this parameter depends on the ongoing procedure
//  450   *                 - Pages Erase: Address of the page which returned an error
//  451   *                 - Program: Address which was selected for data program
//  452   * @retval none
//  453   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_FLASH_OperationErrorCallback
          CFI NoCalls
        THUMB
//  454 __weak void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue)
//  455 {
//  456   /* Prevent unused argument(s) compilation warning */
//  457   UNUSED(ReturnValue);
//  458 
//  459   /* NOTE : This function Should not be modified, when the callback is needed,
//  460             the HAL_FLASH_OperationErrorCallback could be implemented in the user file
//  461    */ 
//  462 }
HAL_FLASH_OperationErrorCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  463 
//  464 /**
//  465   * @}
//  466   */
//  467 
//  468 /** @defgroup FLASH_Exported_Functions_Group2 Peripheral Control functions 
//  469  *  @brief   management functions 
//  470  *
//  471 @verbatim   
//  472  ===============================================================================
//  473                       ##### Peripheral Control functions #####
//  474  ===============================================================================  
//  475     [..]
//  476     This subsection provides a set of functions allowing to control the FLASH 
//  477     memory operations.
//  478 
//  479 @endverbatim
//  480   * @{
//  481   */
//  482 
//  483 /**
//  484   * @brief  Unlock the FLASH control register access
//  485   * @retval HAL Status
//  486   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_FLASH_Unlock
          CFI NoCalls
        THUMB
//  487 HAL_StatusTypeDef HAL_FLASH_Unlock(void)
//  488 {
//  489   if (HAL_IS_BIT_SET(FLASH->PECR, FLASH_PECR_PRGLOCK))
HAL_FLASH_Unlock:
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_FLASH_Unlock_0
//  490   {
//  491     /* Unlocking FLASH_PECR register access*/
//  492     if(HAL_IS_BIT_SET(FLASH->PECR, FLASH_PECR_PELOCK))
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_FLASH_Unlock_1
//  493     {  
//  494       WRITE_REG(FLASH->PEKEYR, FLASH_PEKEY1);
        LDR.N    R0,??DataTable10_3  ;; 0x89abcdef
        LDR.N    R1,??DataTable10_4  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  495       WRITE_REG(FLASH->PEKEYR, FLASH_PEKEY2);
        LDR.N    R0,??DataTable10_5  ;; 0x2030405
        LDR.N    R1,??DataTable10_4  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  496     }
//  497     
//  498     /* Unlocking the program memory access */
//  499     WRITE_REG(FLASH->PRGKEYR, FLASH_PRGKEY1);
??HAL_FLASH_Unlock_1:
        LDR.N    R0,??DataTable10_6  ;; 0x8c9daebf
        LDR.N    R1,??DataTable10_7  ;; 0x40023c10
        STR      R0,[R1, #+0]
//  500     WRITE_REG(FLASH->PRGKEYR, FLASH_PRGKEY2);  
        LDR.N    R0,??DataTable10_8  ;; 0x13141516
        LDR.N    R1,??DataTable10_7  ;; 0x40023c10
        STR      R0,[R1, #+0]
//  501   }
//  502   else
//  503   {
//  504     return HAL_ERROR;
//  505   }
//  506 
//  507   return HAL_OK; 
        MOVS     R0,#+0
        B.N      ??HAL_FLASH_Unlock_2
??HAL_FLASH_Unlock_0:
        MOVS     R0,#+1
??HAL_FLASH_Unlock_2:
        BX       LR               ;; return
//  508 }
          CFI EndBlock cfiBlock5
//  509 
//  510 /**
//  511   * @brief  Locks the FLASH control register access
//  512   * @retval HAL Status
//  513   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_FLASH_Lock
          CFI NoCalls
        THUMB
//  514 HAL_StatusTypeDef HAL_FLASH_Lock(void)
//  515 {
//  516   /* Set the PRGLOCK Bit to lock the FLASH Registers access */
//  517   SET_BIT(FLASH->PECR, FLASH_PECR_PRGLOCK);
HAL_FLASH_Lock:
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  518   
//  519   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  520 }
          CFI EndBlock cfiBlock6
//  521 
//  522 /**
//  523   * @brief  Unlock the FLASH Option Control Registers access.
//  524   * @retval HAL Status
//  525   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Unlock
          CFI NoCalls
        THUMB
//  526 HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void)
//  527 {
//  528   if(HAL_IS_BIT_SET(FLASH->PECR, FLASH_PECR_OPTLOCK))
HAL_FLASH_OB_Unlock:
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_FLASH_OB_Unlock_0
//  529   {
//  530     /* Unlocking FLASH_PECR register access*/
//  531     if(HAL_IS_BIT_SET(FLASH->PECR, FLASH_PECR_PELOCK))
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_FLASH_OB_Unlock_1
//  532     {  
//  533       /* Unlocking FLASH_PECR register access*/
//  534       WRITE_REG(FLASH->PEKEYR, FLASH_PEKEY1);
        LDR.N    R0,??DataTable10_3  ;; 0x89abcdef
        LDR.N    R1,??DataTable10_4  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  535       WRITE_REG(FLASH->PEKEYR, FLASH_PEKEY2);
        LDR.N    R0,??DataTable10_5  ;; 0x2030405
        LDR.N    R1,??DataTable10_4  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  536     }
//  537 
//  538     /* Unlocking the option bytes block access */
//  539     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY1);
??HAL_FLASH_OB_Unlock_1:
        LDR.N    R0,??DataTable10_9  ;; 0xfbead9c8
        LDR.N    R1,??DataTable10_10  ;; 0x40023c14
        STR      R0,[R1, #+0]
//  540     WRITE_REG(FLASH->OPTKEYR, FLASH_OPTKEY2);
        LDR.N    R0,??DataTable10_11  ;; 0x24252627
        LDR.N    R1,??DataTable10_10  ;; 0x40023c14
        STR      R0,[R1, #+0]
//  541   }
//  542   else
//  543   {
//  544     return HAL_ERROR;
//  545   }  
//  546   
//  547   return HAL_OK;  
        MOVS     R0,#+0
        B.N      ??HAL_FLASH_OB_Unlock_2
??HAL_FLASH_OB_Unlock_0:
        MOVS     R0,#+1
??HAL_FLASH_OB_Unlock_2:
        BX       LR               ;; return
//  548 }
          CFI EndBlock cfiBlock7
//  549 
//  550 /**
//  551   * @brief  Lock the FLASH Option Control Registers access.
//  552   * @retval HAL Status 
//  553   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Lock
          CFI NoCalls
        THUMB
//  554 HAL_StatusTypeDef HAL_FLASH_OB_Lock(void)
//  555 {
//  556   /* Set the OPTLOCK Bit to lock the option bytes block access */
//  557   SET_BIT(FLASH->PECR, FLASH_PECR_OPTLOCK);
HAL_FLASH_OB_Lock:
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  558   
//  559   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  560 }
          CFI EndBlock cfiBlock8
//  561   
//  562 /**
//  563   * @brief  Launch the option byte loading.
//  564   * @note   This function will reset automatically the MCU.
//  565   * @retval HAL Status
//  566   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_FLASH_OB_Launch
        THUMB
//  567 HAL_StatusTypeDef HAL_FLASH_OB_Launch(void)
//  568 {
HAL_FLASH_OB_Launch:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  569   /* Set the OBL_Launch bit to launch the option byte loading */
//  570   SET_BIT(FLASH->PECR, FLASH_PECR_OBL_LAUNCH);
        LDR.N    R0,??DataTable10_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable10_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  571   
//  572   /* Wait for last operation to be completed */
//  573   return(FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE));
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        POP      {R1,PC}          ;; return
//  574 }
          CFI EndBlock cfiBlock9
//  575 
//  576 /**
//  577   * @}
//  578   */  
//  579 
//  580 /** @defgroup FLASH_Exported_Functions_Group3 Peripheral errors functions 
//  581  *  @brief    Peripheral errors functions 
//  582  *
//  583 @verbatim   
//  584  ===============================================================================
//  585                       ##### Peripheral Errors functions #####
//  586  ===============================================================================  
//  587     [..]
//  588     This subsection permit to get in run-time errors of  the FLASH peripheral.
//  589 
//  590 @endverbatim
//  591   * @{
//  592   */
//  593 
//  594 /**
//  595   * @brief  Get the specific FLASH error flag.
//  596   * @retval FLASH_ErrorCode The returned value can be:
//  597   *            @ref FLASH_Error_Codes
//  598   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_FLASH_GetError
          CFI NoCalls
        THUMB
//  599 uint32_t HAL_FLASH_GetError(void)
//  600 {
//  601    return pFlash.ErrorCode;
HAL_FLASH_GetError:
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+20]
        BX       LR               ;; return
//  602 }
          CFI EndBlock cfiBlock10
//  603 
//  604 /**
//  605   * @}
//  606   */
//  607 
//  608 /**
//  609   * @}
//  610   */
//  611 
//  612 /** @addtogroup FLASH_Private_Functions
//  613  * @{
//  614  */
//  615 
//  616 /**
//  617   * @brief  Wait for a FLASH operation to complete.
//  618   * @param  Timeout  maximum flash operation timeout
//  619   * @retval HAL Status
//  620   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function FLASH_WaitForLastOperation
        THUMB
//  621 HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout)
//  622 {
FLASH_WaitForLastOperation:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  623   /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
//  624      Even if the FLASH operation fails, the BUSY flag will be reset and an error
//  625      flag will be set */
//  626      
//  627   uint32_t tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  628      
//  629   while(__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY)) 
??FLASH_WaitForLastOperation_0:
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??FLASH_WaitForLastOperation_1
//  630   { 
//  631     if (Timeout != HAL_MAX_DELAY)
        CMN      R4,#+1
        BEQ.N    ??FLASH_WaitForLastOperation_0
//  632     {
//  633       if((Timeout == 0) || ((HAL_GetTick()-tickstart) > Timeout))
        CMP      R4,#+0
        BEQ.N    ??FLASH_WaitForLastOperation_2
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R4,R0
        BCS.N    ??FLASH_WaitForLastOperation_0
//  634       {
//  635         return HAL_TIMEOUT;
??FLASH_WaitForLastOperation_2:
        MOVS     R0,#+3
        B.N      ??FLASH_WaitForLastOperation_3
//  636       }
//  637     }
//  638   }
//  639   
//  640   /* Check FLASH End of Operation flag  */
//  641   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
??FLASH_WaitForLastOperation_1:
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??FLASH_WaitForLastOperation_4
//  642   {
//  643     /* Clear FLASH End of Operation pending bit */
//  644     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
        MOVS     R0,#+2
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        STR      R0,[R1, #+0]
//  645   }
//  646   
//  647   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR)  || 
//  648      __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) || 
//  649 #if defined(FLASH_SR_RDERR)
//  650       __HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR) || 
//  651 #endif /* FLASH_SR_RDERR */
//  652 #if defined(FLASH_SR_OPTVERRUSR)
//  653       __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERRUSR) || 
//  654 #endif /* FLASH_SR_OPTVERRUSR */
//  655      __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR))
??FLASH_WaitForLastOperation_4:
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??FLASH_WaitForLastOperation_5
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??FLASH_WaitForLastOperation_5
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??FLASH_WaitForLastOperation_5
        LDR.N    R0,??DataTable10_2  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BPL.N    ??FLASH_WaitForLastOperation_6
//  656   {
//  657     /*Save the error code*/
//  658     FLASH_SetErrorCode();
??FLASH_WaitForLastOperation_5:
          CFI FunCall FLASH_SetErrorCode
        BL       FLASH_SetErrorCode
//  659     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??FLASH_WaitForLastOperation_3
//  660   }
//  661 
//  662   /* There is no error flag set */
//  663   return HAL_OK;
??FLASH_WaitForLastOperation_6:
        MOVS     R0,#+0
??FLASH_WaitForLastOperation_3:
        POP      {R1,R4,R5,PC}    ;; return
//  664 }
          CFI EndBlock cfiBlock11
//  665 
//  666 
//  667 /**
//  668   * @brief  Set the specific FLASH error flag.
//  669   * @retval None
//  670   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FLASH_SetErrorCode
          CFI NoCalls
        THUMB
//  671 static void FLASH_SetErrorCode(void)
//  672 {
//  673   uint32_t flags = 0;
FLASH_SetErrorCode:
        MOVS     R0,#+0
//  674   
//  675   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR))
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+23
        BPL.N    ??FLASH_SetErrorCode_0
//  676   {
//  677     pFlash.ErrorCode |= HAL_FLASH_ERROR_WRP;
        LDR.N    R1,??DataTable10
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable10
        STR      R1,[R2, #+20]
//  678     flags |= FLASH_FLAG_WRPERR;
        ORRS     R0,R0,#0x100
//  679   }
//  680   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR))
??FLASH_SetErrorCode_0:
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+22
        BPL.N    ??FLASH_SetErrorCode_1
//  681   {
//  682     pFlash.ErrorCode |= HAL_FLASH_ERROR_PGA;
        LDR.N    R1,??DataTable10
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable10
        STR      R1,[R2, #+20]
//  683     flags |= FLASH_FLAG_PGAERR;
        ORRS     R0,R0,#0x200
//  684   }
//  685   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR))
??FLASH_SetErrorCode_1:
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+20
        BPL.N    ??FLASH_SetErrorCode_2
//  686   {
//  687     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPTV;
        LDR.N    R1,??DataTable10
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable10
        STR      R1,[R2, #+20]
//  688     flags |= FLASH_FLAG_OPTVERR;
        ORRS     R0,R0,#0x800
//  689   }
//  690 
//  691 #if defined(FLASH_SR_RDERR)
//  692   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR))
//  693   {
//  694     pFlash.ErrorCode |= HAL_FLASH_ERROR_RD;
//  695     flags |= FLASH_FLAG_RDERR;
//  696   }
//  697 #endif /* FLASH_SR_RDERR */
//  698 #if defined(FLASH_SR_OPTVERRUSR)
//  699   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERRUSR))
??FLASH_SetErrorCode_2:
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+19
        BPL.N    ??FLASH_SetErrorCode_3
//  700   {
//  701     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPTVUSR;
        LDR.N    R1,??DataTable10
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x20
        LDR.N    R2,??DataTable10
        STR      R1,[R2, #+20]
//  702     flags |= FLASH_FLAG_OPTVERRUSR;
        ORRS     R0,R0,#0x1000
//  703   }
//  704 #endif /* FLASH_SR_OPTVERRUSR */
//  705 
//  706   /* Clear FLASH error pending bits */
//  707   __HAL_FLASH_CLEAR_FLAG(flags);
??FLASH_SetErrorCode_3:
        LDR.N    R1,??DataTable10_2  ;; 0x40023c18
        STR      R0,[R1, #+0]
//  708 }  
        BX       LR               ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     pFlash

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x40023c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x40023c18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x89abcdef

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x40023c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x2030405

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x8c9daebf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40023c10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x13141516

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0xfbead9c8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x40023c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0x24252627

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  709 /**
//  710   * @}
//  711   */
//  712 
//  713 /**
//  714   * @}
//  715   */
//  716 
//  717 #endif /* HAL_FLASH_MODULE_ENABLED */
//  718 
//  719 /**
//  720   * @}
//  721   */
//  722 
//  723 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//  24 bytes in section .bss
// 820 bytes in section .text
// 
// 820 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
