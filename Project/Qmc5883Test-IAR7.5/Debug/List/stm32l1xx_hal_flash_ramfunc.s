///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ramfunc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ramfunc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_flash_ramfunc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN pFlash

        PUBLIC HAL_FLASHEx_DATAEEPROM_EraseDoubleWord
        PUBLIC HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord
        PUBLIC HAL_FLASHEx_DisableRunPowerDown
        PUBLIC HAL_FLASHEx_EnableRunPowerDown
        PUBLIC HAL_FLASHEx_EraseParallelPage
        PUBLIC HAL_FLASHEx_GetError
        PUBLIC HAL_FLASHEx_HalfPageProgram
        PUBLIC HAL_FLASHEx_ProgramParallelHalfPage
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ramfunc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_flash_ramfunc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   FLASH RAMFUNC driver.
//    8   *          This file provides a Flash firmware functions which should be 
//    9   *          executed from internal SRAM
//   10   *
//   11   *  @verbatim
//   12 
//   13     *** ARM Compiler ***
//   14     --------------------
//   15     [..] RAM functions are defined using the toolchain options. 
//   16          Functions that are be executed in RAM should reside in a separate
//   17          source module. Using the 'Options for File' dialog you can simply change
//   18          the 'Code / Const' area of a module to a memory space in physical RAM.
//   19          Available memory areas are declared in the 'Target' tab of the 
//   20          Options for Target' dialog.
//   21 
//   22     *** ICCARM Compiler ***
//   23     -----------------------
//   24     [..] RAM functions are defined using a specific toolchain keyword "__ramfunc".
//   25 
//   26     *** GNU Compiler ***
//   27     --------------------
//   28     [..] RAM functions are defined using a specific toolchain attribute
//   29          "__attribute__((section(".RamFunc")))".
//   30 
//   31 @endverbatim
//   32   ******************************************************************************
//   33   * @attention
//   34   *
//   35   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   36   *
//   37   * Redistribution and use in source and binary forms, with or without modification,
//   38   * are permitted provided that the following conditions are met:
//   39   *   1. Redistributions of source code must retain the above copyright notice,
//   40   *      this list of conditions and the following disclaimer.
//   41   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   42   *      this list of conditions and the following disclaimer in the documentation
//   43   *      and/or other materials provided with the distribution.
//   44   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   45   *      may be used to endorse or promote products derived from this software
//   46   *      without specific prior written permission.
//   47   *
//   48   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   49   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   50   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   51   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   52   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   53   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   54   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   55   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   56   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   57   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   58   *
//   59   ******************************************************************************
//   60   */
//   61 
//   62 /* Includes ------------------------------------------------------------------*/
//   63 #include "stm32l1xx_hal.h"
//   64 
//   65 /** @addtogroup STM32L1xx_HAL_Driver
//   66   * @{
//   67   */
//   68 
//   69 #ifdef HAL_FLASH_MODULE_ENABLED
//   70 
//   71 /** @addtogroup FLASH
//   72   * @{
//   73   */
//   74 /** @addtogroup FLASH_Private_Variables
//   75  * @{
//   76  */
//   77 extern FLASH_ProcessTypeDef pFlash;
//   78 /**
//   79   * @}
//   80   */
//   81 
//   82 /**
//   83   * @}
//   84   */
//   85   
//   86 /** @defgroup FLASH_RAMFUNC FLASH_RAMFUNC
//   87   * @brief FLASH functions executed from RAM
//   88   * @{
//   89   */ 
//   90 
//   91 
//   92 /* Private typedef -----------------------------------------------------------*/
//   93 /* Private define ------------------------------------------------------------*/
//   94 /* Private macro -------------------------------------------------------------*/
//   95 /* Private variables ---------------------------------------------------------*/
//   96 /* Private function prototypes -----------------------------------------------*/
//   97 /** @defgroup FLASH_RAMFUNC_Private_Functions FLASH RAM Private Functions
//   98  * @{
//   99  */
//  100 
//  101 static __RAM_FUNC FLASHRAM_WaitForLastOperation(uint32_t Timeout);
//  102 static __RAM_FUNC FLASHRAM_SetErrorCode(void);
//  103 
//  104 /**
//  105   * @}
//  106   */
//  107 
//  108 /* Private functions ---------------------------------------------------------*/
//  109  
//  110 /** @defgroup FLASH_RAMFUNC_Exported_Functions FLASH RAM Exported Functions
//  111  *
//  112 @verbatim  
//  113  ===============================================================================
//  114                       ##### ramfunc functions #####
//  115  ===============================================================================  
//  116     [..]
//  117     This subsection provides a set of functions that should be executed from RAM 
//  118     transfers.
//  119 
//  120 @endverbatim
//  121   * @{
//  122   */ 
//  123 
//  124 /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group1 Peripheral features functions 
//  125   * @{
//  126   */  
//  127 
//  128 /**
//  129   * @brief  Enable  the power down mode during RUN mode.
//  130   * @note  This function can be used only when the user code is running from Internal SRAM.
//  131   * @retval HAL status
//  132   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_FLASHEx_EnableRunPowerDown
          CFI NoCalls
        THUMB
//  133 __RAM_FUNC HAL_FLASHEx_EnableRunPowerDown(void)
//  134 {
//  135   /* Enable the Power Down in Run mode*/
//  136   __HAL_FLASH_POWER_DOWN_ENABLE();
HAL_FLASHEx_EnableRunPowerDown:
        LDR.W    R0,??DataTable9  ;; 0x4152637
        LDR.W    R1,??DataTable9_1  ;; 0x40023c08
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_2  ;; 0xfafbfcfd
        LDR.W    R1,??DataTable9_1  ;; 0x40023c08
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_3  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable9_3  ;; 0x40023c00
        STR      R0,[R1, #+0]
//  137 
//  138   return HAL_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
//  139 }
          CFI EndBlock cfiBlock0
//  140 
//  141 /**
//  142   * @brief  Disable the power down mode during RUN mode.
//  143   * @note  This function can be used only when the user code is running from Internal SRAM.
//  144   * @retval HAL status
//  145   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_FLASHEx_DisableRunPowerDown
          CFI NoCalls
        THUMB
//  146 __RAM_FUNC HAL_FLASHEx_DisableRunPowerDown(void)
//  147 {
//  148   /* Disable the Power Down in Run mode*/
//  149   __HAL_FLASH_POWER_DOWN_DISABLE();
HAL_FLASHEx_DisableRunPowerDown:
        LDR.W    R0,??DataTable9  ;; 0x4152637
        LDR.W    R1,??DataTable9_1  ;; 0x40023c08
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_2  ;; 0xfafbfcfd
        LDR.W    R1,??DataTable9_1  ;; 0x40023c08
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_3  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable9_3  ;; 0x40023c00
        STR      R0,[R1, #+0]
//  150 
//  151   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  152 }
          CFI EndBlock cfiBlock1
//  153 
//  154 /**
//  155   * @}
//  156   */
//  157 
//  158 /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group2 Programming and erasing operation functions 
//  159  *
//  160 @verbatim  
//  161 @endverbatim
//  162   * @{
//  163   */
//  164 
//  165 #if defined(FLASH_PECR_PARALLBANK)
//  166 /**
//  167   * @brief  Erases a specified 2 pages in program memory in parallel.
//  168   * @note   This function can be used only for STM32L151xD, STM32L152xD), STM32L162xD and Cat5  devices.
//  169   *         To correctly run this function, the @ref HAL_FLASH_Unlock() function
//  170   *         must be called before.
//  171   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access 
//  172   *        (recommended to protect the FLASH memory against possible unwanted operation).
//  173   * @param  Page_Address1: The page address in program memory to be erased in 
//  174   *         the first Bank (BANK1). This parameter should be between FLASH_BASE
//  175   *         and FLASH_BANK1_END.
//  176   * @param  Page_Address2: The page address in program memory to be erased in 
//  177   *         the second Bank (BANK2). This parameter should be between FLASH_BANK2_BASE
//  178   *         and FLASH_BANK2_END.
//  179   * @note   A Page is erased in the Program memory only if the address to load 
//  180   *         is the start address of a page (multiple of @ref FLASH_PAGE_SIZE bytes).
//  181   * @retval HAL status
//  182   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_FLASHEx_EraseParallelPage
        THUMB
//  183 __RAM_FUNC HAL_FLASHEx_EraseParallelPage(uint32_t Page_Address1, uint32_t Page_Address2)
//  184 {
HAL_FLASHEx_EraseParallelPage:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  185   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  186 
//  187   /* Wait for last operation to be completed */
//  188   status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  189   
//  190   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_EraseParallelPage_0
//  191   {
//  192     /* Proceed to erase the page */
//  193     SET_BIT(FLASH->PECR, FLASH_PECR_PARALLBANK);
        LDR.W    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.W    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  194     SET_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.W    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.W    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  195     SET_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.W    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  196   
//  197     /* Write 00000000h to the first word of the first program page to erase */
//  198     *(__IO uint32_t *)Page_Address1 = 0x00000000;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  199     /* Write 00000000h to the first word of the second program page to erase */    
//  200     *(__IO uint32_t *)Page_Address2 = 0x00000000;    
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  201  
//  202     /* Wait for last operation to be completed */
//  203     status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  204 
//  205     /* If the erase operation is completed, disable the ERASE, PROG and PARALLBANK bits */
//  206     CLEAR_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.W    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8
        LDR.W    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  207     CLEAR_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.W    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x200
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  208     CLEAR_BIT(FLASH->PECR, FLASH_PECR_PARALLBANK);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8000
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  209   }     
//  210   /* Return the Erase Status */
//  211   return status;
??HAL_FLASHEx_EraseParallelPage_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  212 }
          CFI EndBlock cfiBlock2
//  213 
//  214 /**
//  215   * @brief  Program 2 half pages in program memory in parallel (half page size is 32 Words).
//  216   * @note   This function can be used only for STM32L151xD, STM32L152xD), STM32L162xD and Cat5  devices.
//  217   * @param  Address1: specifies the first address to be written in the first bank 
//  218   *        (BANK1). This parameter should be between FLASH_BASE and (FLASH_BANK1_END - FLASH_PAGE_SIZE).
//  219   * @param  pBuffer1: pointer to the buffer  containing the data to be  written 
//  220   *         to the first half page in the first bank.
//  221   * @param  Address2: specifies the second address to be written in the second bank
//  222   *        (BANK2). This parameter should be between FLASH_BANK2_BASE and (FLASH_BANK2_END - FLASH_PAGE_SIZE).
//  223   * @param  pBuffer2: pointer to the buffer containing the data to be  written 
//  224   *         to the second half page in the second bank.
//  225   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
//  226   *         must be called before.
//  227   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access  
//  228   *         (recommended to protect the FLASH memory against possible unwanted operation).
//  229   * @note   Half page write is possible only from SRAM.
//  230   * @note   If there are more than 32 words to write, after 32 words another 
//  231   *         Half Page programming operation starts and has to be finished.
//  232   * @note   A half page is written to the program memory only if the first 
//  233   *         address to load is the start address of a half page (multiple of 128 
//  234   *         bytes) and the 31 remaining words to load are in the same half page.
//  235   * @note   During the Program memory half page write all read operations are 
//  236   *         forbidden (this includes DMA read operations and debugger read 
//  237   *         operations such as breakpoints, periodic updates, etc.).
//  238   * @note   If a PGAERR is set during a Program memory half page write, the 
//  239   *         complete write operation is aborted. Software should then reset the 
//  240   *         FPRG and PROG/DATA bits and restart the write operation from the 
//  241   *         beginning.
//  242   * @retval HAL status
//  243   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_FLASHEx_ProgramParallelHalfPage
        THUMB
//  244 __RAM_FUNC HAL_FLASHEx_ProgramParallelHalfPage(uint32_t Address1, uint32_t* pBuffer1, uint32_t Address2, uint32_t* pBuffer2)
//  245 {
HAL_FLASHEx_ProgramParallelHalfPage:
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
//  246   uint32_t count = 0; 
        MOVS     R8,#+0
//  247   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  248 
//  249   /* Set the DISMCYCINT[0] bit in the Auxillary Control Register (0xE000E008) 
//  250      This bit prevents the interruption of multicycle instructions and therefore 
//  251      will increase the interrupt latency. of Cortex-M3. */
//  252   SET_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
        LDR.N    R0,??DataTable9_5  ;; 0xe000e008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        STR      R0,[R1, #+0]
//  253 
//  254   /* Wait for last operation to be completed */
//  255   status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  256   
//  257   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_ProgramParallelHalfPage_0
//  258   {
//  259     /* Proceed to program the new half page */
//  260     SET_BIT(FLASH->PECR, FLASH_PECR_PARALLBANK);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  261     SET_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  262     SET_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  263 
//  264     /* Wait for last operation to be completed */
//  265     status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  266     if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_ProgramParallelHalfPage_1
//  267     {
//  268       /* Disable all IRQs */
//  269       __disable_irq();
        CPSID    I
        B.N      ??HAL_FLASHEx_ProgramParallelHalfPage_2
//  270 
//  271       /* Write the first half page directly with 32 different words */
//  272       while(count < 32)
//  273       {
//  274         *(__IO uint32_t*) ((uint32_t)(Address1 + (4 * count))) = *pBuffer1;
??HAL_FLASHEx_ProgramParallelHalfPage_3:
        LDR      R0,[R5, #+0]
        STR      R0,[R4, R8, LSL #+2]
//  275         pBuffer1++;
        ADDS     R5,R5,#+4
//  276         count ++;  
        ADDS     R8,R8,#+1
//  277       }
??HAL_FLASHEx_ProgramParallelHalfPage_2:
        CMP      R8,#+32
        BCC.N    ??HAL_FLASHEx_ProgramParallelHalfPage_3
//  278 
//  279       /* Write the second half page directly with 32 different words */
//  280       count = 0;
        MOVS     R8,#+0
        B.N      ??HAL_FLASHEx_ProgramParallelHalfPage_4
//  281       while(count < 32)
//  282       {
//  283         *(__IO uint32_t*) ((uint32_t)(Address2 + (4 * count))) = *pBuffer2;
??HAL_FLASHEx_ProgramParallelHalfPage_5:
        LDR      R0,[R7, #+0]
        STR      R0,[R6, R8, LSL #+2]
//  284         pBuffer2++;
        ADDS     R7,R7,#+4
//  285         count ++;  
        ADDS     R8,R8,#+1
//  286       }
??HAL_FLASHEx_ProgramParallelHalfPage_4:
        CMP      R8,#+32
        BCC.N    ??HAL_FLASHEx_ProgramParallelHalfPage_5
//  287 
//  288       /* Enable IRQs */
//  289       __enable_irq();
        CPSIE    I
//  290 
//  291       /* Wait for last operation to be completed */
//  292       status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  293     }
//  294 
//  295     /* if the write operation is completed, disable the PROG, FPRG and PARALLBANK bits */
//  296     CLEAR_BIT(FLASH->PECR, FLASH_PECR_PROG);
??HAL_FLASHEx_ProgramParallelHalfPage_1:
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  297     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  298     CLEAR_BIT(FLASH->PECR, FLASH_PECR_PARALLBANK);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8000
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  299   }
//  300 
//  301   CLEAR_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
??HAL_FLASHEx_ProgramParallelHalfPage_0:
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable9_5  ;; 0xe000e008
        STR      R1,[R2, #+0]
//  302     
//  303   /* Return the Write Status */
//  304   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return
//  305 }
          CFI EndBlock cfiBlock3
//  306 #endif /* FLASH_PECR_PARALLBANK */
//  307 
//  308 /**
//  309   * @brief  Program a half page in program memory.
//  310   * @param  Address: specifies the address to be written.
//  311   * @param  pBuffer: pointer to the buffer  containing the data to be  written to 
//  312   *         the half page.
//  313   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
//  314   *         must be called before.
//  315   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access  
//  316   *         (recommended to protect the FLASH memory against possible unwanted operation)
//  317   * @note   Half page write is possible only from SRAM.
//  318   * @note   If there are more than 32 words to write, after 32 words another 
//  319   *         Half Page programming operation starts and has to be finished.
//  320   * @note   A half page is written to the program memory only if the first 
//  321   *         address to load is the start address of a half page (multiple of 128 
//  322   *         bytes) and the 31 remaining words to load are in the same half page.
//  323   * @note   During the Program memory half page write all read operations are 
//  324   *         forbidden (this includes DMA read operations and debugger read 
//  325   *         operations such as breakpoints, periodic updates, etc.).
//  326   * @note   If a PGAERR is set during a Program memory half page write, the 
//  327   *         complete write operation is aborted. Software should then reset the 
//  328   *         FPRG and PROG/DATA bits and restart the write operation from the 
//  329   *         beginning.
//  330   * @retval HAL status
//  331   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_FLASHEx_HalfPageProgram
        THUMB
//  332 __RAM_FUNC HAL_FLASHEx_HalfPageProgram(uint32_t Address, uint32_t* pBuffer)
//  333 {
HAL_FLASHEx_HalfPageProgram:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  334   uint32_t count = 0; 
        MOVS     R6,#+0
//  335   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  336 
//  337   /* Set the DISMCYCINT[0] bit in the Auxillary Control Register (0xE000E008) 
//  338      This bit prevents the interruption of multicycle instructions and therefore 
//  339      will increase the interrupt latency. of Cortex-M3. */
//  340   SET_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
        LDR.N    R0,??DataTable9_5  ;; 0xe000e008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        STR      R0,[R1, #+0]
//  341   
//  342   /* Wait for last operation to be completed */
//  343   status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  344   
//  345   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_HalfPageProgram_0
//  346   {
//  347     /* Proceed to program the new half page */
//  348     SET_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  349     SET_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  350     
//  351     /* Disable all IRQs */
//  352     __disable_irq();
        CPSID    I
        B.N      ??HAL_FLASHEx_HalfPageProgram_1
//  353 
//  354     /* Write one half page directly with 32 different words */
//  355     while(count < 32)
//  356     {
//  357       *(__IO uint32_t*) ((uint32_t)(Address + (4 * count))) = *pBuffer;
??HAL_FLASHEx_HalfPageProgram_2:
        LDR      R0,[R5, #+0]
        STR      R0,[R4, R6, LSL #+2]
//  358       pBuffer++;
        ADDS     R5,R5,#+4
//  359       count ++;  
        ADDS     R6,R6,#+1
//  360     }
??HAL_FLASHEx_HalfPageProgram_1:
        CMP      R6,#+32
        BCC.N    ??HAL_FLASHEx_HalfPageProgram_2
//  361 
//  362     /* Enable IRQs */
//  363     __enable_irq();
        CPSIE    I
//  364 
//  365     /* Wait for last operation to be completed */
//  366     status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  367  
//  368     /* If the write operation is completed, disable the PROG and FPRG bits */
//  369     CLEAR_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  370     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  371   }
//  372 
//  373   CLEAR_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
??HAL_FLASHEx_HalfPageProgram_0:
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable9_5  ;; 0xe000e008
        STR      R1,[R2, #+0]
//  374     
//  375   /* Return the Write Status */
//  376   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  377 }
          CFI EndBlock cfiBlock4
//  378 
//  379 /**
//  380   * @}
//  381   */
//  382 
//  383 /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group3 Peripheral errors functions 
//  384  *  @brief    Peripheral errors functions 
//  385  *
//  386 @verbatim   
//  387  ===============================================================================
//  388                       ##### Peripheral errors functions #####
//  389  ===============================================================================  
//  390     [..]
//  391     This subsection permit to get in run-time errors of  the FLASH peripheral.
//  392 
//  393 @endverbatim
//  394   * @{
//  395   */
//  396 
//  397 /**
//  398   * @brief  Get the specific FLASH errors flag.
//  399   * @param  Error pointer is the error value. It can be a mixed of:
//  400 @if STM32L100xB
//  401 @elif STM32L100xBA
//  402   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  403 @elif STM32L151xB
//  404 @elif STM32L151xBA
//  405   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  406 @elif STM32L152xB
//  407 @elif STM32L152xBA
//  408   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  409 @elif STM32L100xC
//  410   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  411   *            @arg @ref HAL_FLASH_ERROR_OPTVUSR FLASH Option User validity error
//  412 @elif STM32L151xC
//  413   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  414   *            @arg @ref HAL_FLASH_ERROR_OPTVUSR FLASH Option User validity error
//  415 @elif STM32L152xC
//  416   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  417   *            @arg @ref HAL_FLASH_ERROR_OPTVUSR FLASH Option User validity error
//  418 @elif STM32L162xC
//  419   *            @arg @ref HAL_FLASH_ERROR_RD      FLASH Read Protection error flag (PCROP)
//  420   *            @arg @ref HAL_FLASH_ERROR_OPTVUSR FLASH Option User validity error
//  421 @else
//  422   *            @arg @ref HAL_FLASH_ERROR_OPTVUSR FLASH Option User validity error
//  423 @endif
//  424   *            @arg @ref HAL_FLASH_ERROR_PGA     FLASH Programming Alignment error flag
//  425   *            @arg @ref HAL_FLASH_ERROR_WRP     FLASH Write protected error flag
//  426   *            @arg @ref HAL_FLASH_ERROR_OPTV    FLASH Option valid error flag 
//  427   * @retval HAL Status
//  428   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_FLASHEx_GetError
          CFI NoCalls
        THUMB
//  429 __RAM_FUNC HAL_FLASHEx_GetError(uint32_t * Error)
//  430 { 
//  431   *Error = pFlash.ErrorCode;
HAL_FLASHEx_GetError:
        LDR.N    R1,??DataTable9_6
        LDR      R1,[R1, #+20]
        STR      R1,[R0, #+0]
//  432   return HAL_OK;  
        MOVS     R0,#+0
        BX       LR               ;; return
//  433 }
          CFI EndBlock cfiBlock5
//  434 
//  435 /**
//  436   * @}
//  437   */
//  438 
//  439 /** @defgroup FLASH_RAMFUNC_Exported_Functions_Group4 DATA EEPROM functions
//  440   *
//  441   * @{
//  442   */
//  443 
//  444 /**
//  445   * @brief  Erase a double word in data memory.
//  446   * @param  Address: specifies the address to be erased.
//  447   * @note   To correctly run this function, the HAL_FLASH_EEPROM_Unlock() function
//  448   *         must be called before.
//  449   *         Call the HAL_FLASH_EEPROM_Lock() to he data EEPROM access
//  450   *         and Flash program erase control register access(recommended to protect 
//  451   *         the DATA_EEPROM against possible unwanted operation).
//  452   * @note   Data memory double word erase is possible only from SRAM.
//  453   * @note   A double word is erased to the data memory only if the first address 
//  454   *         to load is the start address of a double word (multiple of 8 bytes).
//  455   * @note   During the Data memory double word erase, all read operations are 
//  456   *         forbidden (this includes DMA read operations and debugger read 
//  457   *         operations such as breakpoints, periodic updates, etc.).
//  458   * @retval HAL status
//  459   */
//  460 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_EraseDoubleWord
        THUMB
//  461 __RAM_FUNC HAL_FLASHEx_DATAEEPROM_EraseDoubleWord(uint32_t Address)
//  462 {
HAL_FLASHEx_DATAEEPROM_EraseDoubleWord:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  463   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  464   
//  465   /* Set the DISMCYCINT[0] bit in the Auxillary Control Register (0xE000E008) 
//  466      This bit prevents the interruption of multicycle instructions and therefore 
//  467      will increase the interrupt latency. of Cortex-M3. */
//  468   SET_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
        LDR.N    R0,??DataTable9_5  ;; 0xe000e008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        STR      R0,[R1, #+0]
//  469     
//  470   /* Wait for last operation to be completed */
//  471   status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  472   
//  473   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_EraseDoubleWord_0
//  474   {
//  475     /* If the previous operation is completed, proceed to erase the next double word */
//  476     /* Set the ERASE bit */
//  477     SET_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  478 
//  479     /* Set DATA bit */
//  480     SET_BIT(FLASH->PECR, FLASH_PECR_DATA);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  481    
//  482     /* Write 00000000h to the 2 words to erase */
//  483     *(__IO uint32_t *)Address = 0x00000000;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  484     Address += 4;
        ADDS     R4,R4,#+4
//  485     *(__IO uint32_t *)Address = 0x00000000;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//  486    
//  487     /* Wait for last operation to be completed */
//  488     status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  489     
//  490     /* If the erase operation is completed, disable the ERASE and DATA bits */
//  491     CLEAR_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x200
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  492     CLEAR_BIT(FLASH->PECR, FLASH_PECR_DATA);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  493   }  
//  494   
//  495   CLEAR_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
??HAL_FLASHEx_DATAEEPROM_EraseDoubleWord_0:
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable9_5  ;; 0xe000e008
        STR      R1,[R2, #+0]
//  496     
//  497   /* Return the erase status */
//  498   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  499 }
          CFI EndBlock cfiBlock6
//  500 
//  501 /**
//  502   * @brief  Write a double word in data memory without erase.
//  503   * @param  Address: specifies the address to be written.
//  504   * @param  Data: specifies the data to be written.
//  505   * @note   To correctly run this function, the HAL_FLASH_EEPROM_Unlock() function
//  506   *         must be called before.
//  507   *         Call the HAL_FLASH_EEPROM_Lock() to he data EEPROM access
//  508   *         and Flash program erase control register access(recommended to protect 
//  509   *         the DATA_EEPROM against possible unwanted operation).
//  510   * @note   Data memory double word write is possible only from SRAM.
//  511   * @note   A data memory double word is written to the data memory only if the 
//  512   *         first address to load is the start address of a double word (multiple 
//  513   *         of double word).
//  514   * @note   During the Data memory double word write, all read operations are 
//  515   *         forbidden (this includes DMA read operations and debugger read 
//  516   *         operations such as breakpoints, periodic updates, etc.).
//  517   * @retval HAL status
//  518   */ 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord
        THUMB
//  519 __RAM_FUNC HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord(uint32_t Address, uint64_t Data)
//  520 {
HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R6,R0
        MOVS     R4,R2
        MOVS     R5,R3
//  521   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  522 
//  523   /* Set the DISMCYCINT[0] bit in the Auxillary Control Register (0xE000E008) 
//  524      This bit prevents the interruption of multicycle instructions and therefore 
//  525      will increase the interrupt latency. of Cortex-M3. */
//  526   SET_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
        LDR.N    R0,??DataTable9_5  ;; 0xe000e008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        STR      R0,[R1, #+0]
//  527     
//  528   /* Wait for last operation to be completed */
//  529   status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  530   
//  531   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord_0
//  532   {
//  533     /* If the previous operation is completed, proceed to program the new data*/
//  534     SET_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  535     SET_BIT(FLASH->PECR, FLASH_PECR_DATA);
        LDR.N    R0,??DataTable9_4  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  536     
//  537     /* Write the 2 words */  
//  538      *(__IO uint32_t *)Address = (uint32_t) Data;
        STR      R4,[R6, #+0]
//  539      Address += 4;
        ADDS     R6,R6,#+4
//  540      *(__IO uint32_t *)Address = (uint32_t) (Data >> 32);
        STR      R5,[R6, #+0]
//  541     
//  542     /* Wait for last operation to be completed */
//  543     status = FLASHRAM_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASHRAM_WaitForLastOperation
        BL       FLASHRAM_WaitForLastOperation
//  544     
//  545     /* If the write operation is completed, disable the FPRG and DATA bits */
//  546     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FPRG);
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x400
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  547     CLEAR_BIT(FLASH->PECR, FLASH_PECR_DATA);     
        LDR.N    R1,??DataTable9_4  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10
        LDR.N    R2,??DataTable9_4  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  548   }
//  549   
//  550   CLEAR_BIT(SCnSCB->ACTLR, SCnSCB_ACTLR_DISMCYCINT_Msk);
??HAL_FLASHEx_DATAEEPROM_ProgramDoubleWord_0:
        LDR.N    R1,??DataTable9_5  ;; 0xe000e008
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable9_5  ;; 0xe000e008
        STR      R1,[R2, #+0]
//  551     
//  552   /* Return the Write Status */
//  553   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  554 }
          CFI EndBlock cfiBlock7
//  555 
//  556 /**
//  557   * @}
//  558   */
//  559 
//  560 /**
//  561   * @}
//  562   */
//  563 
//  564 /** @addtogroup FLASH_RAMFUNC_Private_Functions
//  565   * @{
//  566   */ 
//  567 
//  568 /**
//  569   * @brief  Set the specific FLASH error flag.
//  570   * @retval HAL Status
//  571   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function FLASHRAM_SetErrorCode
          CFI NoCalls
        THUMB
//  572 static __RAM_FUNC FLASHRAM_SetErrorCode(void)
//  573 {
//  574   uint32_t flags = 0;
FLASHRAM_SetErrorCode:
        MOVS     R0,#+0
//  575   
//  576   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR))
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+23
        BPL.N    ??FLASHRAM_SetErrorCode_0
//  577   {
//  578     pFlash.ErrorCode |= HAL_FLASH_ERROR_WRP;
        LDR.N    R1,??DataTable9_6
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable9_6
        STR      R1,[R2, #+20]
//  579     flags |= FLASH_FLAG_WRPERR;
        ORRS     R0,R0,#0x100
//  580   }
//  581   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR))
??FLASHRAM_SetErrorCode_0:
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+22
        BPL.N    ??FLASHRAM_SetErrorCode_1
//  582   {
//  583     pFlash.ErrorCode |= HAL_FLASH_ERROR_PGA;
        LDR.N    R1,??DataTable9_6
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable9_6
        STR      R1,[R2, #+20]
//  584     flags |= FLASH_FLAG_PGAERR;
        ORRS     R0,R0,#0x200
//  585   }
//  586   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR))
??FLASHRAM_SetErrorCode_1:
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+20
        BPL.N    ??FLASHRAM_SetErrorCode_2
//  587   {
//  588     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPTV;
        LDR.N    R1,??DataTable9_6
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable9_6
        STR      R1,[R2, #+20]
//  589     flags |= FLASH_FLAG_OPTVERR;
        ORRS     R0,R0,#0x800
//  590   }
//  591 
//  592 #if defined(FLASH_SR_RDERR)
//  593   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR))
//  594   {
//  595     pFlash.ErrorCode |= HAL_FLASH_ERROR_RD;
//  596     flags |= FLASH_FLAG_RDERR;
//  597   }
//  598 #endif /* FLASH_SR_RDERR */
//  599 #if defined(FLASH_SR_OPTVERRUSR)
//  600   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERRUSR))
??FLASHRAM_SetErrorCode_2:
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+19
        BPL.N    ??FLASHRAM_SetErrorCode_3
//  601   {
//  602     pFlash.ErrorCode |= HAL_FLASH_ERROR_OPTVUSR;
        LDR.N    R1,??DataTable9_6
        LDR      R1,[R1, #+20]
        ORRS     R1,R1,#0x20
        LDR.N    R2,??DataTable9_6
        STR      R1,[R2, #+20]
//  603     flags |= FLASH_FLAG_OPTVERRUSR;
        ORRS     R0,R0,#0x1000
//  604   }
//  605 #endif /* FLASH_SR_OPTVERRUSR */
//  606 
//  607   /* Clear FLASH error pending bits */
//  608   __HAL_FLASH_CLEAR_FLAG(flags);
??FLASHRAM_SetErrorCode_3:
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        STR      R0,[R1, #+0]
//  609 
//  610   return HAL_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
//  611 }  
          CFI EndBlock cfiBlock8
//  612 
//  613 /**
//  614   * @brief  Wait for a FLASH operation to complete.
//  615   * @param  Timeout: maximum flash operationtimeout
//  616   * @retval HAL status
//  617   */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function FLASHRAM_WaitForLastOperation
        THUMB
//  618 static __RAM_FUNC  FLASHRAM_WaitForLastOperation(uint32_t Timeout)
//  619 { 
FLASHRAM_WaitForLastOperation:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        B.N      ??FLASHRAM_WaitForLastOperation_0
//  620     /* Wait for the FLASH operation to complete by polling on BUSY flag to be reset.
//  621        Even if the FLASH operation fails, the BUSY flag will be reset and an error
//  622        flag will be set */
//  623        
//  624     while(__HAL_FLASH_GET_FLAG(FLASH_FLAG_BSY) && (Timeout != 0x00)) 
//  625     { 
//  626       Timeout--;
??FLASHRAM_WaitForLastOperation_1:
        SUBS     R0,R0,#+1
//  627     }
??FLASHRAM_WaitForLastOperation_0:
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??FLASHRAM_WaitForLastOperation_2
        CMP      R0,#+0
        BNE.N    ??FLASHRAM_WaitForLastOperation_1
//  628     
//  629     if(Timeout == 0x00 )
??FLASHRAM_WaitForLastOperation_2:
        CMP      R0,#+0
        BNE.N    ??FLASHRAM_WaitForLastOperation_3
//  630     {
//  631       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??FLASHRAM_WaitForLastOperation_4
//  632     }
//  633     
//  634   /* Check FLASH End of Operation flag  */
//  635   if (__HAL_FLASH_GET_FLAG(FLASH_FLAG_EOP))
??FLASHRAM_WaitForLastOperation_3:
        LDR.N    R0,??DataTable9_7  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??FLASHRAM_WaitForLastOperation_5
//  636   {
//  637     /* Clear FLASH End of Operation pending bit */
//  638     __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP);
        MOVS     R0,#+2
        LDR.N    R1,??DataTable9_7  ;; 0x40023c18
        STR      R0,[R1, #+0]
//  639   }
//  640   
//  641   if(__HAL_FLASH_GET_FLAG(FLASH_FLAG_WRPERR)  || 
//  642      __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERR) || 
//  643 #if defined(FLASH_SR_RDERR)
//  644       __HAL_FLASH_GET_FLAG(FLASH_FLAG_RDERR) || 
//  645 #endif /* FLASH_SR_RDERR */
//  646 #if defined(FLASH_SR_OPTVERRUSR)
//  647       __HAL_FLASH_GET_FLAG(FLASH_FLAG_OPTVERRUSR) || 
//  648 #endif /* FLASH_SR_OPTVERRUSR */
//  649      __HAL_FLASH_GET_FLAG(FLASH_FLAG_PGAERR))
??FLASHRAM_WaitForLastOperation_5:
        LDR.N    R0,??DataTable9_7  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??FLASHRAM_WaitForLastOperation_6
        LDR.N    R0,??DataTable9_7  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??FLASHRAM_WaitForLastOperation_6
        LDR.N    R0,??DataTable9_7  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??FLASHRAM_WaitForLastOperation_6
        LDR.N    R0,??DataTable9_7  ;; 0x40023c18
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BPL.N    ??FLASHRAM_WaitForLastOperation_7
//  650   {
//  651     /*Save the error code*/
//  652     FLASHRAM_SetErrorCode();
??FLASHRAM_WaitForLastOperation_6:
          CFI FunCall FLASHRAM_SetErrorCode
        BL       FLASHRAM_SetErrorCode
//  653     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??FLASHRAM_WaitForLastOperation_4
//  654   }
//  655 
//  656   /* There is no error flag set */
//  657   return HAL_OK;
??FLASHRAM_WaitForLastOperation_7:
        MOVS     R0,#+0
??FLASHRAM_WaitForLastOperation_4:
        POP      {R1,PC}          ;; return
//  658 }
          CFI EndBlock cfiBlock9

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9:
        DC32     0x4152637

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_1:
        DC32     0x40023c08

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_2:
        DC32     0xfafbfcfd

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_3:
        DC32     0x40023c00

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_4:
        DC32     0x40023c04

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_5:
        DC32     0xe000e008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_6:
        DC32     pFlash

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable9_7:
        DC32     0x40023c18

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  659 
//  660 /**
//  661   * @}
//  662   */
//  663 
//  664 /**
//  665   * @}
//  666   */
//  667 
//  668 #endif /* HAL_FLASH_MODULE_ENABLED */
//  669 /**
//  670   * @}
//  671   */
//  672 
//  673      
//  674 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 1 004 bytes in section .textrw
// 
// 1 004 bytes of CODE memory
//
//Errors: none
//Warnings: none
