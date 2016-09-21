///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_flash_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_WaitForLastOperation
        EXTERN pFlash

        PUBLIC FLASH_PageErase
        PUBLIC HAL_FLASHEx_AdvOBGetConfig
        PUBLIC HAL_FLASHEx_AdvOBProgram
        PUBLIC HAL_FLASHEx_DATAEEPROM_DisableFixedTimeProgram
        PUBLIC HAL_FLASHEx_DATAEEPROM_EnableFixedTimeProgram
        PUBLIC HAL_FLASHEx_DATAEEPROM_Erase
        PUBLIC HAL_FLASHEx_DATAEEPROM_Lock
        PUBLIC HAL_FLASHEx_DATAEEPROM_Program
        PUBLIC HAL_FLASHEx_DATAEEPROM_Unlock
        PUBLIC HAL_FLASHEx_Erase
        PUBLIC HAL_FLASHEx_Erase_IT
        PUBLIC HAL_FLASHEx_OBGetConfig
        PUBLIC HAL_FLASHEx_OBProgram
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_flash_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_flash_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended FLASH HAL module driver.
//    8   *    
//    9   *          This file provides firmware functions to manage the following 
//   10   *          functionalities of the internal FLASH memory:
//   11   *            + FLASH Interface configuration
//   12   *            + FLASH Memory Erasing
//   13   *            + DATA EEPROM Programming/Erasing
//   14   *            + Option Bytes Programming
//   15   *            + Interrupts management
//   16   *    
//   17   @verbatim
//   18   ==============================================================================
//   19                ##### Flash peripheral Extended features  #####
//   20   ==============================================================================
//   21            
//   22   [..] Comparing to other products, the FLASH interface for STM32L1xx
//   23        devices contains the following additional features        
//   24        (+) Erase functions
//   25        (+) DATA_EEPROM memory management
//   26        (+) BOOT option bit configuration       
//   27        (+) PCROP protection for all sectors
//   28    
//   29                       ##### How to use this driver #####
//   30   ==============================================================================
//   31   [..] This driver provides functions to configure and program the FLASH memory 
//   32        of all STM32L1xx. It includes:
//   33        (+) Full DATA_EEPROM erase and program management
//   34        (+) Boot activation
//   35        (+) PCROP protection configuration and control for all pages
//   36   
//   37   @endverbatim
//   38   ******************************************************************************
//   39   * @attention
//   40   *
//   41   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   42   *
//   43   * Redistribution and use in source and binary forms, with or without modification,
//   44   * are permitted provided that the following conditions are met:
//   45   *   1. Redistributions of source code must retain the above copyright notice,
//   46   *      this list of conditions and the following disclaimer.
//   47   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   48   *      this list of conditions and the following disclaimer in the documentation
//   49   *      and/or other materials provided with the distribution.
//   50   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   51   *      may be used to endorse or promote products derived from this software
//   52   *      without specific prior written permission.
//   53   *
//   54   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   55   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   56   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   57   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   58   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   59   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   60   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   61   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   62   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   63   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   64   *
//   65   ******************************************************************************  
//   66   */ 
//   67 
//   68 /* Includes ------------------------------------------------------------------*/
//   69 #include "stm32l1xx_hal.h"
//   70 
//   71 /** @addtogroup STM32L1xx_HAL_Driver
//   72   * @{
//   73   */
//   74 #ifdef HAL_FLASH_MODULE_ENABLED
//   75 
//   76 /** @addtogroup FLASH
//   77   * @{
//   78   */
//   79 /** @addtogroup FLASH_Private_Variables
//   80  * @{
//   81  */
//   82 /* Variables used for Erase pages under interruption*/
//   83 extern FLASH_ProcessTypeDef pFlash;
//   84 /**
//   85   * @}
//   86   */
//   87 
//   88 /**
//   89   * @}
//   90   */
//   91   
//   92 /** @defgroup FLASHEx FLASHEx
//   93   * @brief FLASH HAL Extension module driver
//   94   * @{
//   95   */
//   96 
//   97 /* Private typedef -----------------------------------------------------------*/
//   98 /* Private define ------------------------------------------------------------*/
//   99 /** @defgroup FLASHEx_Private_Constants FLASHEx Private Constants
//  100  * @{
//  101  */
//  102 /**
//  103   * @}
//  104   */
//  105 
//  106 /* Private macro -------------------------------------------------------------*/
//  107 /** @defgroup FLASHEx_Private_Macros FLASHEx Private Macros
//  108   * @{
//  109   */
//  110 /**
//  111   * @}
//  112   */ 
//  113 
//  114 /* Private variables ---------------------------------------------------------*/
//  115 /* Private function prototypes -----------------------------------------------*/
//  116 /** @defgroup FLASHEx_Private_Functions FLASHEx Private Functions
//  117  * @{
//  118  */
//  119 void                      FLASH_PageErase(uint32_t PageAddress);
//  120 static HAL_StatusTypeDef  FLASH_OB_WRPConfig(FLASH_OBProgramInitTypeDef *pOBInit, FunctionalState NewState);
//  121 static void               FLASH_OB_WRPConfigWRP1OrPCROP1(uint32_t WRP1OrPCROP1, FunctionalState NewState);
//  122 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)    \ 
//  123  || defined(STM32L151xCA) || defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xCA) \ 
//  124  || defined(STM32L152xD) || defined(STM32L152xDX) || defined(STM32L162xCA) || defined(STM32L162xD)  \ 
//  125  || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE)
//  126 static void               FLASH_OB_WRPConfigWRP2OrPCROP2(uint32_t WRP2OrPCROP2, FunctionalState NewState);
//  127 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || (...) || STM32L151xE || STM32L152xE || STM32L162xE */
//  128 #if defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xD) || defined(STM32L152xDX) \ 
//  129  || defined(STM32L162xD) || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE)   \ 
//  130  || defined(STM32L162xE)
//  131 static void               FLASH_OB_WRPConfigWRP3(uint32_t WRP3, FunctionalState NewState);
//  132 #endif /* STM32L151xD || STM32L152xD || STM32L162xD || STM32L151xE || STM32L152xE || STM32L162xE */
//  133 #if defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE) || defined(STM32L151xDX) \ 
//  134  || defined(STM32L152xDX) || defined(STM32L162xDX)
//  135 static void               FLASH_OB_WRPConfigWRP4(uint32_t WRP4, FunctionalState NewState);
//  136 #endif /* STM32L151xE || STM32L152xE || STM32L151xDX || ... */
//  137 #if defined(FLASH_OBR_SPRMOD)
//  138 static HAL_StatusTypeDef  FLASH_OB_PCROPConfig(FLASH_AdvOBProgramInitTypeDef *pAdvOBInit, FunctionalState NewState);
//  139 #endif /* FLASH_OBR_SPRMOD */
//  140 #if defined(FLASH_OBR_nRST_BFB2)
//  141 static HAL_StatusTypeDef  FLASH_OB_BootConfig(uint8_t OB_BOOT);
//  142 #endif /* FLASH_OBR_nRST_BFB2 */
//  143 static HAL_StatusTypeDef  FLASH_OB_RDPConfig(uint8_t OB_RDP);
//  144 static HAL_StatusTypeDef  FLASH_OB_UserConfig(uint8_t OB_IWDG, uint8_t OB_STOP, uint8_t OB_STDBY);
//  145 static HAL_StatusTypeDef  FLASH_OB_BORConfig(uint8_t OB_BOR);
//  146 static uint8_t            FLASH_OB_GetRDP(void);
//  147 static uint8_t            FLASH_OB_GetUser(void);
//  148 static uint8_t            FLASH_OB_GetBOR(void);
//  149 static HAL_StatusTypeDef  FLASH_DATAEEPROM_FastProgramByte(uint32_t Address, uint8_t Data);
//  150 static HAL_StatusTypeDef  FLASH_DATAEEPROM_FastProgramHalfWord(uint32_t Address, uint16_t Data);
//  151 static HAL_StatusTypeDef  FLASH_DATAEEPROM_FastProgramWord(uint32_t Address, uint32_t Data);
//  152 static HAL_StatusTypeDef  FLASH_DATAEEPROM_ProgramWord(uint32_t Address, uint32_t Data);
//  153 static HAL_StatusTypeDef  FLASH_DATAEEPROM_ProgramHalfWord(uint32_t Address, uint16_t Data);
//  154 static HAL_StatusTypeDef  FLASH_DATAEEPROM_ProgramByte(uint32_t Address, uint8_t Data);
//  155 /**
//  156   * @}
//  157   */
//  158 
//  159 /* Exported functions ---------------------------------------------------------*/
//  160 /** @defgroup FLASHEx_Exported_Functions FLASHEx Exported Functions
//  161   * @{
//  162   */
//  163 
//  164 /** @defgroup FLASHEx_Exported_Functions_Group1 FLASHEx Memory Erasing functions
//  165  *  @brief   FLASH Memory Erasing functions
//  166  *
//  167 @verbatim   
//  168   ==============================================================================
//  169                 ##### FLASH Erasing Programming functions ##### 
//  170   ==============================================================================
//  171 
//  172     [..] The FLASH Memory Erasing functions, includes the following functions:
//  173     (+) @ref HAL_FLASHEx_Erase: return only when erase has been done
//  174     (+) @ref HAL_FLASHEx_Erase_IT: end of erase is done when @ref HAL_FLASH_EndOfOperationCallback 
//  175         is called with parameter 0xFFFFFFFF
//  176 
//  177     [..] Any operation of erase should follow these steps:
//  178     (#) Call the @ref HAL_FLASH_Unlock() function to enable the flash control register and 
//  179         program memory access.
//  180     (#) Call the desired function to erase page.
//  181     (#) Call the @ref HAL_FLASH_Lock() to disable the flash program memory access 
//  182        (recommended to protect the FLASH memory against possible unwanted operation).
//  183 
//  184 @endverbatim
//  185   * @{
//  186   */
//  187   
//  188 /**
//  189   * @brief  Erase the specified FLASH memory Pages 
//  190   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
//  191   *         must be called before.
//  192   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access 
//  193   *         (recommended to protect the FLASH memory against possible unwanted operation)
//  194   * @note   For STM32L151xDX/STM32L152xDX/STM32L162xDX, as memory is not continuous between
//  195   *         2 banks, user should perform pages erase by bank only.
//  196   * @param[in]  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
//  197   *         contains the configuration information for the erasing.
//  198   * 
//  199   * @param[out]  PageError pointer to variable  that
//  200   *         contains the configuration information on faulty page in case of error
//  201   *         (0xFFFFFFFF means that all the pages have been correctly erased)
//  202   * 
//  203   * @retval HAL_StatusTypeDef HAL Status
//  204   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_FLASHEx_Erase
        THUMB
//  205 HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError)
//  206 {
HAL_FLASHEx_Erase:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  207   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  208   uint32_t address = 0;
        MOVS     R6,#+0
//  209   
//  210   /* Process Locked */
//  211   __HAL_LOCK(&pFlash);
        LDR.W    R0,??DataTable25
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_Erase_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_Erase_1
??HAL_FLASHEx_Erase_0:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable25
        STRB     R0,[R1, #+16]
//  212 
//  213   /* Wait for last operation to be completed */
//  214   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  215 
//  216   if (status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_Erase_2
//  217   {
//  218     /*Initialization of PageError variable*/
//  219     *PageError = 0xFFFFFFFFU;
        MOVS     R1,#-1
        STR      R1,[R5, #+0]
//  220 
//  221     /* Check the parameters */
//  222     assert_param(IS_NBPAGES(pEraseInit->NbPages));
//  223     assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
//  224     assert_param(IS_FLASH_PROGRAM_ADDRESS(pEraseInit->PageAddress));
//  225     assert_param(IS_FLASH_PROGRAM_ADDRESS((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1));
//  226 
//  227 #if defined(STM32L151xDX) || defined(STM32L152xDX) || defined(STM32L162xDX)
//  228     /* Check on which bank belongs the 1st address to erase */
//  229     if (pEraseInit->PageAddress < FLASH_BANK2_BASE)
//  230     {
//  231       /* BANK1 */
//  232       /* Check that last page to erase still belongs to BANK1 */
//  233       if (((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1) > FLASH_BANK1_END)
//  234       {
//  235         /*  Last page does not belong to BANK1, erase procedure cannot be performed because memory is not
//  236             continuous */
//  237         /* Process Unlocked */
//  238         __HAL_UNLOCK(&pFlash);
//  239         return HAL_ERROR;
//  240       }
//  241     }
//  242     else
//  243     {
//  244       /* BANK2 */
//  245       /* Check that last page to erase still belongs to BANK2 */
//  246       if (((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1) > FLASH_BANK2_END)
//  247       {
//  248         /*  Last page does not belong to BANK2, erase procedure cannot be performed because memory is not
//  249             continuous */
//  250         /* Process Unlocked */
//  251         __HAL_UNLOCK(&pFlash);
//  252         return HAL_ERROR;
//  253       }
//  254     }
//  255 #endif /* STM32L151xDX || STM32L152xDX || STM32L162xDX */
//  256 
//  257     /* Erase page by page to be done*/
//  258     for(address = pEraseInit->PageAddress; 
        LDR      R6,[R4, #+4]
        B.N      ??HAL_FLASHEx_Erase_3
//  259         address < ((pEraseInit->NbPages * FLASH_PAGE_SIZE) + pEraseInit->PageAddress);
//  260         address += FLASH_PAGE_SIZE)
??HAL_FLASHEx_Erase_4:
        ADDS     R6,R6,#+256
??HAL_FLASHEx_Erase_3:
        LDR      R1,[R4, #+8]
        MOV      R2,#+256
        LDR      R3,[R4, #+4]
        MLA      R1,R2,R1,R3
        CMP      R6,R1
        BCS.N    ??HAL_FLASHEx_Erase_2
//  261     {
//  262       FLASH_PageErase(address);
        MOVS     R0,R6
          CFI FunCall FLASH_PageErase
        BL       FLASH_PageErase
//  263 
//  264       /* Wait for last operation to be completed */
//  265       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  266 
//  267       /* If the erase operation is completed, disable the ERASE Bit */
//  268       CLEAR_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8
        LDR.W    R2,??DataTable25_1  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  269       CLEAR_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x200
        LDR.W    R2,??DataTable25_1  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  270 
//  271       if (status != HAL_OK) 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_Erase_4
//  272       {
//  273         /* In case of error, stop erase procedure and return the faulty address */
//  274         *PageError = address;
        STR      R6,[R5, #+0]
//  275         break;
//  276       }
//  277     }
//  278   }
//  279 
//  280   /* Process Unlocked */
//  281   __HAL_UNLOCK(&pFlash);
??HAL_FLASHEx_Erase_2:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  282 
//  283   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_Erase_1:
        POP      {R4-R6,PC}       ;; return
//  284 }
          CFI EndBlock cfiBlock0
//  285 
//  286 /**
//  287   * @brief  Perform a page erase of the specified FLASH memory pages  with interrupt enabled
//  288   * @note   To correctly run this function, the @ref HAL_FLASH_Unlock() function
//  289   *         must be called before.
//  290   *         Call the @ref HAL_FLASH_Lock() to disable the flash memory access 
//  291   *         (recommended to protect the FLASH memory against possible unwanted operation)
//  292   *          End of erase is done when @ref HAL_FLASH_EndOfOperationCallback is called with parameter
//  293   *          0xFFFFFFFF
//  294   * @note   For STM32L151xDX/STM32L152xDX/STM32L162xDX, as memory is not continuous between
//  295   *         2 banks, user should perform pages erase by bank only.
//  296   * @param  pEraseInit pointer to an FLASH_EraseInitTypeDef structure that
//  297   *         contains the configuration information for the erasing.
//  298   * 
//  299   * @retval HAL_StatusTypeDef HAL Status
//  300   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_FLASHEx_Erase_IT
        THUMB
//  301 HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit)
//  302 {
HAL_FLASHEx_Erase_IT:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  303   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R4,#+0
//  304 
//  305   /* If procedure already ongoing, reject the next one */
//  306   if (pFlash.ProcedureOnGoing != FLASH_PROC_NONE)
        LDR.W    R1,??DataTable25
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??HAL_FLASHEx_Erase_IT_0
//  307   {
//  308     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_FLASHEx_Erase_IT_1
//  309   }
//  310 
//  311   /* Check the parameters */
//  312   assert_param(IS_NBPAGES(pEraseInit->NbPages));
//  313   assert_param(IS_FLASH_TYPEERASE(pEraseInit->TypeErase));
//  314   assert_param(IS_FLASH_PROGRAM_ADDRESS(pEraseInit->PageAddress));
//  315   assert_param(IS_FLASH_PROGRAM_ADDRESS((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1));
//  316 
//  317   /* Process Locked */
//  318   __HAL_LOCK(&pFlash);
??HAL_FLASHEx_Erase_IT_0:
        LDR.W    R1,??DataTable25
        LDRB     R1,[R1, #+16]
        CMP      R1,#+1
        BNE.N    ??HAL_FLASHEx_Erase_IT_2
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_Erase_IT_1
??HAL_FLASHEx_Erase_IT_2:
        MOVS     R1,#+1
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  319 
//  320 #if defined(STM32L151xDX) || defined(STM32L152xDX) || defined(STM32L162xDX)
//  321     /* Check on which bank belongs the 1st address to erase */
//  322     if (pEraseInit->PageAddress < FLASH_BANK2_BASE)
//  323     {
//  324       /* BANK1 */
//  325       /* Check that last page to erase still belongs to BANK1 */
//  326       if (((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1) > FLASH_BANK1_END)
//  327       {
//  328         /*  Last page does not belong to BANK1, erase procedure cannot be performed because memory is not
//  329             continuous */
//  330         /* Process Unlocked */
//  331         __HAL_UNLOCK(&pFlash);
//  332         return HAL_ERROR;
//  333       }
//  334     }
//  335     else
//  336     {
//  337       /* BANK2 */
//  338       /* Check that last page to erase still belongs to BANK2 */
//  339       if (((pEraseInit->PageAddress & ~(FLASH_PAGE_SIZE - 1)) + pEraseInit->NbPages * FLASH_PAGE_SIZE - 1) > FLASH_BANK2_END)
//  340       {
//  341         /*  Last page does not belong to BANK2, erase procedure cannot be performed because memory is not
//  342             continuous */
//  343         /* Process Unlocked */
//  344         __HAL_UNLOCK(&pFlash);
//  345         return HAL_ERROR;
//  346       }
//  347     }
//  348 #endif /* STM32L151xDX || STM32L152xDX || STM32L162xDX */
//  349 
//  350   /* Enable End of FLASH Operation and Error source interrupts */
//  351   __HAL_FLASH_ENABLE_IT(FLASH_IT_EOP | FLASH_IT_ERR);
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x30000
        LDR.W    R2,??DataTable25_1  ;; 0x40023c04
        STR      R1,[R2, #+0]
//  352   
//  353   pFlash.ProcedureOnGoing = FLASH_PROC_PAGEERASE;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+0]
//  354   pFlash.NbPagesToErase = pEraseInit->NbPages;
        LDR      R1,[R0, #+8]
        LDR.W    R2,??DataTable25
        STR      R1,[R2, #+4]
//  355   pFlash.Page = pEraseInit->PageAddress;
        LDR      R1,[R0, #+4]
        LDR.W    R2,??DataTable25
        STR      R1,[R2, #+12]
//  356 
//  357   /*Erase 1st page and wait for IT*/
//  358   FLASH_PageErase(pEraseInit->PageAddress);
        LDR      R0,[R0, #+4]
          CFI FunCall FLASH_PageErase
        BL       FLASH_PageErase
//  359 
//  360   return status;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_Erase_IT_1:
        POP      {R4,PC}          ;; return
//  361 }
          CFI EndBlock cfiBlock1
//  362 
//  363 /**
//  364   * @}
//  365   */
//  366 
//  367 /** @defgroup FLASHEx_Exported_Functions_Group2 Option Bytes Programming functions
//  368  *  @brief   Option Bytes Programming functions
//  369  *
//  370 @verbatim   
//  371   ==============================================================================
//  372                 ##### Option Bytes Programming functions ##### 
//  373   ==============================================================================  
//  374 
//  375     [..] Any operation of erase or program should follow these steps:
//  376     (#) Call the @ref HAL_FLASH_OB_Unlock() function to enable the Flash option control 
//  377         register access.
//  378     (#) Call following function to program the desired option bytes.
//  379         (++) @ref HAL_FLASHEx_OBProgram:
//  380          - To Enable/Disable the desired sector write protection.
//  381          - To set the desired read Protection Level.
//  382          - To configure the user option Bytes: IWDG, STOP and the Standby.
//  383          - To Set the BOR level.
//  384     (#) Once all needed option bytes to be programmed are correctly written, call the
//  385         @ref HAL_FLASH_OB_Launch(void) function to launch the Option Bytes programming process.
//  386     (#) Call the @ref HAL_FLASH_OB_Lock() to disable the Flash option control register access (recommended
//  387         to protect the option Bytes against possible unwanted operations).
//  388 
//  389     [..] Proprietary code Read Out Protection (PcROP):
//  390     (#) The PcROP sector is selected by using the same option bytes as the Write
//  391         protection (nWRPi bits). As a result, these 2 options are exclusive each other.
//  392     (#) In order to activate the PcROP (change the function of the nWRPi option bits), 
//  393         the SPRMOD option bit must be activated.
//  394     (#) The active value of nWRPi bits is inverted when PCROP mode is active, this
//  395         means: if SPRMOD = 1 and nWRPi = 1 (default value), then the user sector "i"
//  396         is read/write protected.
//  397     (#) To activate PCROP mode for Flash sector(s), you need to call the following function:
//  398         (++) @ref HAL_FLASHEx_AdvOBProgram in selecting sectors to be read/write protected
//  399         (++) @ref HAL_FLASHEx_OB_SelectPCROP to enable the read/write protection
//  400     (#) PcROP is available only in STM32L151xBA, STM32L152xBA, STM32L151xC, STM32L152xC & STM32L162xC devices.
//  401 
//  402 @endverbatim
//  403   * @{
//  404   */
//  405 
//  406 /**
//  407   * @brief  Program option bytes
//  408   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
//  409   *         contains the configuration information for the programming.
//  410   * 
//  411   * @retval HAL_StatusTypeDef HAL Status
//  412   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_FLASHEx_OBProgram
        THUMB
//  413 HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit)
//  414 {
HAL_FLASHEx_OBProgram:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  415   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  416   
//  417   /* Process Locked */
//  418   __HAL_LOCK(&pFlash);
        LDR.W    R1,??DataTable25
        LDRB     R1,[R1, #+16]
        CMP      R1,#+1
        BNE.N    ??HAL_FLASHEx_OBProgram_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_OBProgram_1
??HAL_FLASHEx_OBProgram_0:
        MOVS     R1,#+1
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  419 
//  420   /* Check the parameters */
//  421   assert_param(IS_OPTIONBYTE(pOBInit->OptionType));
//  422 
//  423   /*Write protection configuration*/
//  424   if((pOBInit->OptionType & OPTIONBYTE_WRP) == OPTIONBYTE_WRP)
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??HAL_FLASHEx_OBProgram_2
//  425   {
//  426     assert_param(IS_WRPSTATE(pOBInit->WRPState));
//  427     if (pOBInit->WRPState == OB_WRPSTATE_ENABLE)
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_OBProgram_3
//  428     {
//  429       /* Enable of Write protection on the selected Sector*/
//  430       status = FLASH_OB_WRPConfig(pOBInit, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,R4
          CFI FunCall FLASH_OB_WRPConfig
        BL       FLASH_OB_WRPConfig
        B.N      ??HAL_FLASHEx_OBProgram_4
//  431     }
//  432     else
//  433     {
//  434       /* Disable of Write protection on the selected Sector*/
//  435       status = FLASH_OB_WRPConfig(pOBInit, DISABLE);
??HAL_FLASHEx_OBProgram_3:
        MOVS     R1,#+0
        MOVS     R0,R4
          CFI FunCall FLASH_OB_WRPConfig
        BL       FLASH_OB_WRPConfig
//  436     }
//  437     if (status != HAL_OK)
??HAL_FLASHEx_OBProgram_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_OBProgram_2
//  438     {
//  439       /* Process Unlocked */
//  440       __HAL_UNLOCK(&pFlash);
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  441       return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??HAL_FLASHEx_OBProgram_1
//  442     }
//  443   }
//  444   
//  445   /* Read protection configuration*/
//  446   if((pOBInit->OptionType & OPTIONBYTE_RDP) == OPTIONBYTE_RDP)
??HAL_FLASHEx_OBProgram_2:
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??HAL_FLASHEx_OBProgram_5
//  447   {
//  448     status = FLASH_OB_RDPConfig(pOBInit->RDPLevel);
        LDRB     R0,[R4, #+20]
          CFI FunCall FLASH_OB_RDPConfig
        BL       FLASH_OB_RDPConfig
//  449     if (status != HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_OBProgram_5
//  450     {
//  451       /* Process Unlocked */
//  452       __HAL_UNLOCK(&pFlash);
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  453       return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??HAL_FLASHEx_OBProgram_1
//  454     }
//  455   }
//  456   
//  457   /* USER  configuration*/
//  458   if((pOBInit->OptionType & OPTIONBYTE_USER) == OPTIONBYTE_USER)
??HAL_FLASHEx_OBProgram_5:
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+29
        BPL.N    ??HAL_FLASHEx_OBProgram_6
//  459   {
//  460     status = FLASH_OB_UserConfig(pOBInit->USERConfig & OB_IWDG_SW, 
//  461                                  pOBInit->USERConfig & OB_STOP_NORST,
//  462                                  pOBInit->USERConfig & OB_STDBY_NORST);
        LDRB     R0,[R4, #+22]
        ANDS     R2,R0,#0x40
        LDRB     R0,[R4, #+22]
        ANDS     R1,R0,#0x20
        LDRB     R0,[R4, #+22]
        ANDS     R0,R0,#0x10
          CFI FunCall FLASH_OB_UserConfig
        BL       FLASH_OB_UserConfig
//  463     if (status != HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_OBProgram_6
//  464     {
//  465       /* Process Unlocked */
//  466       __HAL_UNLOCK(&pFlash);
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  467       return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??HAL_FLASHEx_OBProgram_1
//  468     }
//  469   }
//  470 
//  471   /* BOR Level  configuration*/
//  472   if((pOBInit->OptionType & OPTIONBYTE_BOR) == OPTIONBYTE_BOR)
??HAL_FLASHEx_OBProgram_6:
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+28
        BPL.N    ??HAL_FLASHEx_OBProgram_7
//  473   {
//  474     status = FLASH_OB_BORConfig(pOBInit->BORLevel);
        LDRB     R0,[R4, #+21]
          CFI FunCall FLASH_OB_BORConfig
        BL       FLASH_OB_BORConfig
//  475     if (status != HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??HAL_FLASHEx_OBProgram_7
//  476     {
//  477       /* Process Unlocked */
//  478       __HAL_UNLOCK(&pFlash);
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  479       return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??HAL_FLASHEx_OBProgram_1
//  480     }
//  481   }
//  482   /* Process Unlocked */
//  483   __HAL_UNLOCK(&pFlash);
??HAL_FLASHEx_OBProgram_7:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  484 
//  485   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_OBProgram_1:
        POP      {R4,PC}          ;; return
//  486 }
          CFI EndBlock cfiBlock2
//  487 
//  488 /**
//  489   * @brief   Get the Option byte configuration
//  490   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
//  491   *         contains the configuration information for the programming.
//  492   * 
//  493   * @retval None
//  494   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_FLASHEx_OBGetConfig
        THUMB
//  495 void HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit)
//  496 {
HAL_FLASHEx_OBGetConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  497   pOBInit->OptionType = OPTIONBYTE_WRP | OPTIONBYTE_RDP | OPTIONBYTE_USER | OPTIONBYTE_BOR;
        MOVS     R0,#+15
        STR      R0,[R4, #+0]
//  498 
//  499   /*Get WRP1*/
//  500   pOBInit->WRPSector0To31 = (uint32_t)(FLASH->WRPR1);
        LDR.W    R0,??DataTable25_2  ;; 0x40023c20
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+8]
//  501 
//  502 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)    \ 
//  503  || defined(STM32L151xCA) || defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xCA) \ 
//  504  || defined(STM32L152xD) || defined(STM32L152xDX) || defined(STM32L162xCA) || defined(STM32L162xD)  \ 
//  505  || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE)
//  506     
//  507   /*Get WRP2*/
//  508   pOBInit->WRPSector32To63 = (uint32_t)(FLASH->WRPR2);
        LDR.W    R0,??DataTable25_3  ;; 0x40023c80
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+12]
//  509 
//  510 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || (...) || STM32L151xE || STM32L152xE || STM32L162xE */
//  511   
//  512 #if defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xD) || defined(STM32L152xDX) \ 
//  513  || defined(STM32L162xD) || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE)  \ 
//  514  || defined(STM32L162xE)
//  515     
//  516   /*Get WRP3*/
//  517   pOBInit->WRPSector64To95 = (uint32_t)(FLASH->WRPR3);
        LDR.W    R0,??DataTable25_4  ;; 0x40023c84
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+16]
//  518 
//  519 #endif /* STM32L151xD || STM32L152xD || STM32L162xD || STM32L151xE || STM32L152xE || STM32L162xE */
//  520   
//  521 #if defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE) || defined(STM32L151xDX) \ 
//  522  || defined(STM32L152xDX) || defined(STM32L162xDX)
//  523 
//  524   /*Get WRP4*/
//  525   pOBInit->WRPSector96To127 = (uint32_t)(FLASH->WRPR4);
//  526 
//  527 #endif /* STM32L151xE || STM32L152xE || STM32L162xE || STM32L151xDX || ... */
//  528 
//  529   /*Get RDP Level*/
//  530   pOBInit->RDPLevel   = FLASH_OB_GetRDP();
          CFI FunCall FLASH_OB_GetRDP
        BL       FLASH_OB_GetRDP
        STRB     R0,[R4, #+20]
//  531 
//  532   /*Get USER*/
//  533   pOBInit->USERConfig = FLASH_OB_GetUser();
          CFI FunCall FLASH_OB_GetUser
        BL       FLASH_OB_GetUser
        STRB     R0,[R4, #+22]
//  534 
//  535   /*Get BOR Level*/
//  536   pOBInit->BORLevel   = FLASH_OB_GetBOR();
          CFI FunCall FLASH_OB_GetBOR
        BL       FLASH_OB_GetBOR
        STRB     R0,[R4, #+21]
//  537 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  538 
//  539 #if defined(FLASH_OBR_SPRMOD) || defined(FLASH_OBR_nRST_BFB2)
//  540     
//  541 /**
//  542   * @brief  Program option bytes
//  543   * @note   This function can be used only for Cat2 & Cat3 devices for PCROP and Cat4 & Cat5 for BFB2.
//  544   * @param  pAdvOBInit pointer to an FLASH_AdvOBProgramInitTypeDef structure that
//  545   *         contains the configuration information for the programming.
//  546   * 
//  547   * @retval HAL_StatusTypeDef HAL Status
//  548   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_FLASHEx_AdvOBProgram
        THUMB
//  549 HAL_StatusTypeDef HAL_FLASHEx_AdvOBProgram (FLASH_AdvOBProgramInitTypeDef *pAdvOBInit)
//  550 {
HAL_FLASHEx_AdvOBProgram:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        MOVS     R1,R0
//  551   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  552   
//  553   /* Check the parameters */
//  554   assert_param(IS_OBEX(pAdvOBInit->OptionType));
//  555 
//  556 #if defined(FLASH_OBR_SPRMOD)
//  557     
//  558   /* Program PCROP option byte*/
//  559   if ((pAdvOBInit->OptionType & OPTIONBYTE_PCROP) == OPTIONBYTE_PCROP)
//  560   {
//  561     /* Check the parameters */
//  562     assert_param(IS_PCROPSTATE(pAdvOBInit->PCROPState));
//  563     if (pAdvOBInit->PCROPState == OB_PCROP_STATE_ENABLE)
//  564     {
//  565       /*Enable of Write protection on the selected Sector*/
//  566       status = FLASH_OB_PCROPConfig(pAdvOBInit, ENABLE);
//  567       if (status != HAL_OK)
//  568       {
//  569         return status;
//  570       }
//  571     }
//  572     else
//  573     {
//  574       /* Disable of Write protection on the selected Sector*/ 
//  575       status = FLASH_OB_PCROPConfig(pAdvOBInit, DISABLE);
//  576       if (status != HAL_OK)
//  577       {
//  578         return status;
//  579       }
//  580     }
//  581   }
//  582   
//  583 #endif /* FLASH_OBR_SPRMOD */
//  584 
//  585 #if defined(FLASH_OBR_nRST_BFB2)
//  586     
//  587   /* Program BOOT config option byte */
//  588   if ((pAdvOBInit->OptionType & OPTIONBYTE_BOOTCONFIG) == OPTIONBYTE_BOOTCONFIG)
        LDRB     R2,[R1, #+0]
        LSLS     R2,R2,#+30
        BPL.N    ??HAL_FLASHEx_AdvOBProgram_0
//  589   {
//  590     status = FLASH_OB_BootConfig(pAdvOBInit->BootConfig);
        LDRH     R0,[R1, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall FLASH_OB_BootConfig
        BL       FLASH_OB_BootConfig
//  591   }
//  592   
//  593 #endif /* FLASH_OBR_nRST_BFB2 */
//  594 
//  595   return status;
??HAL_FLASHEx_AdvOBProgram_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
//  596 }
          CFI EndBlock cfiBlock4
//  597 
//  598 /**
//  599   * @brief  Get the OBEX byte configuration
//  600   * @note   This function can be used only for Cat2  & Cat3 devices for PCROP and Cat4 & Cat5 for BFB2.
//  601   * @param  pAdvOBInit pointer to an FLASH_AdvOBProgramInitTypeDef structure that
//  602   *         contains the configuration information for the programming.
//  603   * 
//  604   * @retval None
//  605   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_FLASHEx_AdvOBGetConfig
          CFI NoCalls
        THUMB
//  606 void HAL_FLASHEx_AdvOBGetConfig(FLASH_AdvOBProgramInitTypeDef *pAdvOBInit)
//  607 {
//  608   pAdvOBInit->OptionType = 0;
HAL_FLASHEx_AdvOBGetConfig:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  609   
//  610 #if defined(FLASH_OBR_SPRMOD)
//  611       
//  612   pAdvOBInit->OptionType |= OPTIONBYTE_PCROP;
//  613 
//  614   /*Get PCROP state */
//  615   pAdvOBInit->PCROPState = (FLASH->OBR & FLASH_OBR_SPRMOD) >> POSITION_VAL(FLASH_OBR_SPRMOD);
//  616   
//  617   /*Get PCROP protected sector from 0 to 31 */
//  618   pAdvOBInit->PCROPSector0To31 = FLASH->WRPR1;
//  619   
//  620 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)
//  621 
//  622   /*Get PCROP protected sector from 32 to 63 */
//  623   pAdvOBInit->PCROPSector32To63 = FLASH->WRPR2;
//  624 
//  625 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC */
//  626 #endif /* FLASH_OBR_SPRMOD */
//  627 
//  628 #if defined(FLASH_OBR_nRST_BFB2)
//  629       
//  630   pAdvOBInit->OptionType |= OPTIONBYTE_BOOTCONFIG;
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  631 
//  632   /* Get Boot config OB */
//  633   pAdvOBInit->BootConfig = (FLASH->OBR & FLASH_OBR_nRST_BFB2) >> 16;
        LDR.W    R1,??DataTable25_5  ;; 0x40023c1c
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        ANDS     R1,R1,#0x80
        STRH     R1,[R0, #+4]
//  634 
//  635 #endif /* FLASH_OBR_nRST_BFB2 */
//  636 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  637 
//  638 #endif /* FLASH_OBR_SPRMOD || FLASH_OBR_nRST_BFB2 */
//  639 
//  640 #if defined(FLASH_OBR_SPRMOD)
//  641 
//  642 /**
//  643   * @brief  Select the Protection Mode (SPRMOD).
//  644   * @note   This function can be used only for STM32L151xBA, STM32L152xBA, STM32L151xC, STM32L152xC & STM32L162xC devices
//  645   * @note   Once SPRMOD bit is active, unprotection of a protected sector is not possible 
//  646   * @note   Read a protected sector will set RDERR Flag and write a protected sector will set WRPERR Flag
//  647   * @retval HAL status
//  648   */
//  649 HAL_StatusTypeDef HAL_FLASHEx_OB_SelectPCROP(void)
//  650 {
//  651   HAL_StatusTypeDef status = HAL_OK;
//  652   uint16_t tmp1 = 0;
//  653   uint32_t tmp2 = 0;
//  654   uint8_t optiontmp = 0;
//  655   uint16_t optiontmp2 = 0;
//  656   
//  657   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
//  658   
//  659   /* Mask RDP Byte */
//  660   optiontmp =  (uint8_t)(*(__IO uint8_t *)(OB_BASE)); 
//  661   
//  662   /* Update Option Byte */
//  663   optiontmp2 = (uint16_t)(OB_PCROP_SELECTED | optiontmp); 
//  664   
//  665   /* calculate the option byte to write */
//  666   tmp1 = (uint16_t)(~(optiontmp2 ));
//  667   tmp2 = (uint32_t)(((uint32_t)((uint32_t)(tmp1) << 16)) | ((uint32_t)optiontmp2));
//  668   
//  669   if(status == HAL_OK)
//  670   {         
//  671     /* Clean the error context */
//  672     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
//  673 
//  674     /* program PCRop */
//  675     OB->RDP = tmp2;
//  676     
//  677     /* Wait for last operation to be completed */
//  678     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
//  679   }
//  680   
//  681   /* Return the Read protection operation Status */
//  682   return status;            
//  683 }
//  684 
//  685 /**
//  686   * @brief  Deselect the Protection Mode (SPRMOD).
//  687   * @note   This function can be used only for STM32L151xBA, STM32L152xBA, STM32L151xC, STM32L152xC & STM32L162xC devices
//  688   * @note   Once SPRMOD bit is active, unprotection of a protected sector is not possible 
//  689   * @note   Read a protected sector will set RDERR Flag and write a protected sector will set WRPERR Flag
//  690   * @retval HAL status
//  691   */
//  692 HAL_StatusTypeDef HAL_FLASHEx_OB_DeSelectPCROP(void)
//  693 {
//  694   HAL_StatusTypeDef status = HAL_OK;
//  695   uint16_t tmp1 = 0;
//  696   uint32_t tmp2 = 0;
//  697   uint8_t optiontmp = 0;
//  698   uint16_t optiontmp2 = 0;
//  699   
//  700   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
//  701   
//  702   /* Mask RDP Byte */
//  703   optiontmp =  (uint8_t)(*(__IO uint8_t *)(OB_BASE)); 
//  704   
//  705   /* Update Option Byte */
//  706   optiontmp2 = (uint16_t)(OB_PCROP_DESELECTED | optiontmp); 
//  707   
//  708   /* calculate the option byte to write */
//  709   tmp1 = (uint16_t)(~(optiontmp2 ));
//  710   tmp2 = (uint32_t)(((uint32_t)((uint32_t)(tmp1) << 16)) | ((uint32_t)optiontmp2));
//  711   
//  712   if(status == HAL_OK)
//  713   {         
//  714     /* Clean the error context */
//  715     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
//  716 
//  717     /* program PCRop */
//  718     OB->RDP = tmp2;
//  719     
//  720     /* Wait for last operation to be completed */
//  721     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
//  722   }
//  723   
//  724   /* Return the Read protection operation Status */
//  725   return status;            
//  726 }
//  727 
//  728 #endif /* FLASH_OBR_SPRMOD */
//  729 
//  730 /**
//  731   * @}
//  732   */
//  733 
//  734 /** @defgroup FLASHEx_Exported_Functions_Group3 DATA EEPROM Programming functions
//  735  *  @brief   DATA EEPROM Programming functions
//  736  *
//  737 @verbatim   
//  738  ===============================================================================
//  739                      ##### DATA EEPROM Programming functions ##### 
//  740  ===============================================================================  
//  741  
//  742     [..] Any operation of erase or program should follow these steps:
//  743     (#) Call the @ref HAL_FLASHEx_DATAEEPROM_Unlock() function to enable the data EEPROM access
//  744         and Flash program erase control register access.
//  745     (#) Call the desired function to erase or program data.
//  746     (#) Call the @ref HAL_FLASHEx_DATAEEPROM_Lock() to disable the data EEPROM access
//  747         and Flash program erase control register access(recommended
//  748         to protect the DATA_EEPROM against possible unwanted operation).
//  749 
//  750 @endverbatim
//  751   * @{
//  752   */
//  753 
//  754 /**
//  755   * @brief  Unlocks the data memory and FLASH_PECR register access.
//  756   * @retval HAL_StatusTypeDef HAL Status
//  757   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_Unlock
          CFI NoCalls
        THUMB
//  758 HAL_StatusTypeDef HAL_FLASHEx_DATAEEPROM_Unlock(void)
//  759 {
//  760   if((FLASH->PECR & FLASH_PECR_PELOCK) != RESET)
HAL_FLASHEx_DATAEEPROM_Unlock:
        LDR.W    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_FLASHEx_DATAEEPROM_Unlock_0
//  761   {  
//  762     /* Unlocking the Data memory and FLASH_PECR register access*/
//  763     FLASH->PEKEYR = FLASH_PEKEY1;
        LDR.W    R0,??DataTable25_6  ;; 0x89abcdef
        LDR.W    R1,??DataTable25_7  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  764     FLASH->PEKEYR = FLASH_PEKEY2;
        LDR.W    R0,??DataTable25_8  ;; 0x2030405
        LDR.W    R1,??DataTable25_7  ;; 0x40023c0c
        STR      R0,[R1, #+0]
//  765   }
//  766   else
//  767   {
//  768     return HAL_ERROR;
//  769   }
//  770   return HAL_OK;  
        MOVS     R0,#+0
        B.N      ??HAL_FLASHEx_DATAEEPROM_Unlock_1
??HAL_FLASHEx_DATAEEPROM_Unlock_0:
        MOVS     R0,#+1
??HAL_FLASHEx_DATAEEPROM_Unlock_1:
        BX       LR               ;; return
//  771 }
          CFI EndBlock cfiBlock6
//  772 
//  773 /**
//  774   * @brief  Locks the Data memory and FLASH_PECR register access.
//  775   * @retval HAL_StatusTypeDef HAL Status
//  776   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_Lock
          CFI NoCalls
        THUMB
//  777 HAL_StatusTypeDef HAL_FLASHEx_DATAEEPROM_Lock(void)
//  778 {
//  779   /* Set the PELOCK Bit to lock the data memory and FLASH_PECR register access */
//  780   SET_BIT(FLASH->PECR, FLASH_PECR_PELOCK);
HAL_FLASHEx_DATAEEPROM_Lock:
        LDR.W    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  781   
//  782   return HAL_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
//  783 }
          CFI EndBlock cfiBlock7
//  784 
//  785 /**
//  786   * @brief  Erase a word in data memory.
//  787   * @param  Address specifies the address to be erased.
//  788   * @param  TypeErase  Indicate the way to erase at a specified address.
//  789   *         This parameter can be a value of @ref FLASH_Type_Program
//  790   * @note   To correctly run this function, the @ref HAL_FLASHEx_DATAEEPROM_Unlock() function
//  791   *         must be called before.
//  792   *         Call the @ref HAL_FLASHEx_DATAEEPROM_Lock() to the data EEPROM access
//  793   *         and Flash program erase control register access(recommended to protect 
//  794   *         the DATA_EEPROM against possible unwanted operation).
//  795   * @retval HAL_StatusTypeDef HAL Status
//  796   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_Erase
        THUMB
//  797 HAL_StatusTypeDef HAL_FLASHEx_DATAEEPROM_Erase(uint32_t TypeErase, uint32_t Address)
//  798 {
HAL_FLASHEx_DATAEEPROM_Erase:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  799   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  800   
//  801   /* Check the parameters */
//  802   assert_param(IS_TYPEPROGRAMDATA(TypeErase));
//  803   assert_param(IS_FLASH_DATA_ADDRESS(Address));
//  804   
//  805   /* Wait for last operation to be completed */
//  806   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  807   
//  808   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Erase_0
//  809   {
//  810     /* Clean the error context */
//  811     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable25
        STR      R0,[R1, #+20]
//  812 
//  813     if(TypeErase == FLASH_TYPEERASEDATA_WORD)
        CMP      R4,#+2
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Erase_1
//  814     {
//  815       /* Write 00000000h to valid address in the data memory */
//  816       *(__IO uint32_t *) Address = 0x00000000;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  817     }
//  818 
//  819     if(TypeErase == FLASH_TYPEERASEDATA_HALFWORD)
??HAL_FLASHEx_DATAEEPROM_Erase_1:
        CMP      R4,#+1
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Erase_2
//  820     {
//  821       /* Write 0000h to valid address in the data memory */
//  822       *(__IO uint16_t *) Address = (uint16_t)0x0000;
        MOVS     R0,#+0
        STRH     R0,[R5, #+0]
//  823     }
//  824 
//  825     if(TypeErase == FLASH_TYPEERASEDATA_BYTE)
??HAL_FLASHEx_DATAEEPROM_Erase_2:
        CMP      R4,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Erase_3
//  826     {
//  827       /* Write 00h to valid address in the data memory */
//  828       *(__IO uint8_t *) Address = (uint8_t)0x00;
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  829     }
//  830 
//  831     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
??HAL_FLASHEx_DATAEEPROM_Erase_3:
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  832   }
//  833    
//  834   /* Return the erase status */
//  835   return status;
??HAL_FLASHEx_DATAEEPROM_Erase_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  836 }  
          CFI EndBlock cfiBlock8
//  837 
//  838 /**
//  839   * @brief  Program word at a specified address
//  840   * @note   To correctly run this function, the @ref HAL_FLASHEx_DATAEEPROM_Unlock() function
//  841   *         must be called before.
//  842   *         Call the @ref HAL_FLASHEx_DATAEEPROM_Unlock() to he data EEPROM access
//  843   *         and Flash program erase control register access(recommended to protect 
//  844   *         the DATA_EEPROM against possible unwanted operation).
//  845   * @note   The function @ref HAL_FLASHEx_DATAEEPROM_EnableFixedTimeProgram() can be called before 
//  846   *         this function to configure the Fixed Time Programming.
//  847   * @param  TypeProgram  Indicate the way to program at a specified address.
//  848   *         This parameter can be a value of @ref FLASHEx_Type_Program_Data
//  849   * @param  Address  specifies the address to be programmed.
//  850   * @param  Data specifies the data to be programmed
//  851   * 
//  852   * @retval HAL_StatusTypeDef HAL Status
//  853   */
//  854 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_Program
        THUMB
//  855 HAL_StatusTypeDef   HAL_FLASHEx_DATAEEPROM_Program(uint32_t TypeProgram, uint32_t Address, uint32_t Data)
//  856 {
HAL_FLASHEx_DATAEEPROM_Program:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  857   HAL_StatusTypeDef status = HAL_ERROR;
        MOVS     R0,#+1
//  858   
//  859   /* Process Locked */
//  860   __HAL_LOCK(&pFlash);
        LDR.W    R0,??DataTable25
        LDRB     R0,[R0, #+16]
        CMP      R0,#+1
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_0
        MOVS     R0,#+2
        B.N      ??HAL_FLASHEx_DATAEEPROM_Program_1
??HAL_FLASHEx_DATAEEPROM_Program_0:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable25
        STRB     R0,[R1, #+16]
//  861 
//  862   /* Check the parameters */
//  863   assert_param(IS_TYPEPROGRAMDATA(TypeProgram));
//  864 
//  865   /* Wait for last operation to be completed */
//  866   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  867   
//  868   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_2
//  869   {
//  870     /* Clean the error context */
//  871     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STR      R1,[R2, #+20]
//  872 
//  873     if(TypeProgram == FLASH_TYPEPROGRAMDATA_FASTBYTE)
        CMP      R4,#+4
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_3
//  874     {
//  875       /*Program word (8-bit) at a specified address.*/
//  876       status = FLASH_DATAEEPROM_FastProgramByte(Address, (uint8_t) Data);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_FastProgramByte
        BL       FLASH_DATAEEPROM_FastProgramByte
//  877     }
//  878     
//  879     if(TypeProgram == FLASH_TYPEPROGRAMDATA_FASTHALFWORD)
??HAL_FLASHEx_DATAEEPROM_Program_3:
        CMP      R4,#+8
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_4
//  880     {
//  881       /* Program halfword (16-bit) at a specified address.*/
//  882       status = FLASH_DATAEEPROM_FastProgramHalfWord(Address, (uint16_t) Data);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_FastProgramHalfWord
        BL       FLASH_DATAEEPROM_FastProgramHalfWord
//  883     }    
//  884     
//  885     if(TypeProgram == FLASH_TYPEPROGRAMDATA_FASTWORD)
??HAL_FLASHEx_DATAEEPROM_Program_4:
        CMP      R4,#+16
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_5
//  886     {
//  887       /* Program word (32-bit) at a specified address.*/
//  888       status = FLASH_DATAEEPROM_FastProgramWord(Address, (uint32_t) Data);
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_FastProgramWord
        BL       FLASH_DATAEEPROM_FastProgramWord
//  889     }
//  890     
//  891     if(TypeProgram == FLASH_TYPEPROGRAMDATA_WORD)
??HAL_FLASHEx_DATAEEPROM_Program_5:
        CMP      R4,#+2
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_6
//  892     {
//  893       /* Program word (32-bit) at a specified address.*/
//  894       status = FLASH_DATAEEPROM_ProgramWord(Address, (uint32_t) Data);
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_ProgramWord
        BL       FLASH_DATAEEPROM_ProgramWord
//  895     }
//  896        
//  897     if(TypeProgram == FLASH_TYPEPROGRAMDATA_HALFWORD)
??HAL_FLASHEx_DATAEEPROM_Program_6:
        CMP      R4,#+1
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_7
//  898     {
//  899       /* Program halfword (16-bit) at a specified address.*/
//  900       status = FLASH_DATAEEPROM_ProgramHalfWord(Address, (uint16_t) Data);
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_ProgramHalfWord
        BL       FLASH_DATAEEPROM_ProgramHalfWord
//  901     }
//  902         
//  903     if(TypeProgram == FLASH_TYPEPROGRAMDATA_BYTE)
??HAL_FLASHEx_DATAEEPROM_Program_7:
        CMP      R4,#+0
        BNE.N    ??HAL_FLASHEx_DATAEEPROM_Program_2
//  904     {
//  905       /* Program byte (8-bit) at a specified address.*/
//  906       status = FLASH_DATAEEPROM_ProgramByte(Address, (uint8_t) Data);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
          CFI FunCall FLASH_DATAEEPROM_ProgramByte
        BL       FLASH_DATAEEPROM_ProgramByte
//  907     }
//  908   }
//  909   
//  910   /* Process Unlocked */
//  911   __HAL_UNLOCK(&pFlash);
??HAL_FLASHEx_DATAEEPROM_Program_2:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable25
        STRB     R1,[R2, #+16]
//  912 
//  913   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_FLASHEx_DATAEEPROM_Program_1:
        POP      {R4-R6,PC}       ;; return
//  914 }
          CFI EndBlock cfiBlock9
//  915 
//  916 /**
//  917   * @brief  Enable DATA EEPROM fixed Time programming (2*Tprog).
//  918   * @retval None
//  919   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_EnableFixedTimeProgram
          CFI NoCalls
        THUMB
//  920 void HAL_FLASHEx_DATAEEPROM_EnableFixedTimeProgram(void)
//  921 {
//  922   SET_BIT(FLASH->PECR, FLASH_PECR_FTDW);
HAL_FLASHEx_DATAEEPROM_EnableFixedTimeProgram:
        LDR.W    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  923 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  924 
//  925 /**
//  926   * @brief  Disables DATA EEPROM fixed Time programming (2*Tprog).
//  927   * @retval None
//  928   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_FLASHEx_DATAEEPROM_DisableFixedTimeProgram
          CFI NoCalls
        THUMB
//  929 void HAL_FLASHEx_DATAEEPROM_DisableFixedTimeProgram(void)
//  930 {
//  931   CLEAR_BIT(FLASH->PECR, FLASH_PECR_FTDW);
HAL_FLASHEx_DATAEEPROM_DisableFixedTimeProgram:
        LDR.W    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
//  932 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  933 
//  934 /**
//  935   * @}
//  936   */
//  937 
//  938 /**
//  939   * @}
//  940   */
//  941 
//  942 /** @addtogroup FLASHEx_Private_Functions
//  943  * @{
//  944  */
//  945 
//  946 /*
//  947 ==============================================================================
//  948               OPTIONS BYTES
//  949 ==============================================================================
//  950 */
//  951 /**
//  952   * @brief  Enables or disables the read out protection.
//  953   * @note   To correctly run this function, the @ref HAL_FLASH_OB_Unlock() function
//  954   *         must be called before.
//  955   * @param  OB_RDP specifies the read protection level. 
//  956   *   This parameter can be:
//  957   *     @arg @ref OB_RDP_LEVEL_0 No protection
//  958   *     @arg @ref OB_RDP_LEVEL_1 Read protection of the memory
//  959   *     @arg @ref OB_RDP_LEVEL_2 Chip protection
//  960   * 
//  961   *  !!!Warning!!! When enabling OB_RDP_LEVEL_2 it's no more possible to go back to level 1 or 0
//  962   *   
//  963   * @retval HAL status
//  964   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FLASH_OB_RDPConfig
        THUMB
//  965 static HAL_StatusTypeDef FLASH_OB_RDPConfig(uint8_t OB_RDP)
//  966 {
FLASH_OB_RDPConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R1,R0
//  967   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  968   uint32_t tmp1 = 0, tmp2 = 0, tmp3 = 0;
        MOVS     R0,#+0
        MOVS     R4,#+0
        MOVS     R2,#+0
//  969   
//  970   /* Check the parameters */
//  971   assert_param(IS_OB_RDP(OB_RDP));
//  972   
//  973   tmp1 = (uint32_t)(OB->RDP & FLASH_OBR_RDPRT);
        LDR.W    R0,??DataTable25_9  ;; 0x1ff80000
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
//  974   
//  975   /* According to errata sheet, DocID022054 Rev 5, par2.1.5
//  976   Before setting Level0 in the RDP register, check that the current level is not equal to Level0.
//  977   If the current level is not equal to Level0, Level0 can be activated.
//  978   If the current level is Level0 then the RDP register must not be written again with Level0. */
//  979   
//  980   if ((tmp1 == OB_RDP_LEVEL_0) && (OB_RDP == OB_RDP_LEVEL_0))
        CMP      R0,#+170
        BNE.N    ??FLASH_OB_RDPConfig_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+170
        BNE.N    ??FLASH_OB_RDPConfig_0
//  981   {
//  982     /*current level is Level0 then the RDP register must not be written again with Level0. */
//  983     status = HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??FLASH_OB_RDPConfig_1
//  984   }
//  985   else 
//  986   {
//  987 #if defined(FLASH_OBR_SPRMOD)
//  988     /* Mask SPRMOD bit */
//  989     tmp3 = (uint32_t)(OB->RDP & FLASH_OBR_SPRMOD);
//  990 #endif
//  991 
//  992     /* calculate the option byte to write */
//  993     tmp1 = (~((uint32_t)(OB_RDP | tmp3)));
??FLASH_OB_RDPConfig_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R2,R1
        MVNS     R0,R0
//  994     tmp2 = (uint32_t)(((uint32_t)((uint32_t)(tmp1) << 16)) | ((uint32_t)(OB_RDP | tmp3)));
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0, LSL #+16
        ORRS     R4,R2,R0
//  995 
//  996     /* Wait for last operation to be completed */
//  997     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  998 
//  999     if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_OB_RDPConfig_1
// 1000     {
// 1001       /* Clean the error context */
// 1002       pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable25
        STR      R0,[R1, #+20]
// 1003 
// 1004       /* program read protection level */
// 1005       OB->RDP = tmp2;
        LDR.W    R0,??DataTable25_9  ;; 0x1ff80000
        STR      R4,[R0, #+0]
// 1006 
// 1007       /* Wait for last operation to be completed */
// 1008       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1009     }
// 1010   }
// 1011 
// 1012   /* Return the Read protection operation Status */
// 1013   return status;
??FLASH_OB_RDPConfig_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1014 }
          CFI EndBlock cfiBlock12
// 1015 
// 1016 /**
// 1017   * @brief  Programs the FLASH brownout reset threshold level Option Byte.
// 1018   * @param  OB_BOR Selects the brownout reset threshold level.
// 1019   *   This parameter can be one of the following values:
// 1020   *     @arg @ref OB_BOR_OFF BOR is disabled at power down, the reset is asserted when the VDD 
// 1021   *                      power supply reaches the PDR(Power Down Reset) threshold (1.5V)
// 1022   *     @arg @ref OB_BOR_LEVEL1 BOR Reset threshold levels for 1.7V - 1.8V VDD power supply
// 1023   *     @arg @ref OB_BOR_LEVEL2 BOR Reset threshold levels for 1.9V - 2.0V VDD power supply
// 1024   *     @arg @ref OB_BOR_LEVEL3 BOR Reset threshold levels for 2.3V - 2.4V VDD power supply
// 1025   *     @arg @ref OB_BOR_LEVEL4 BOR Reset threshold levels for 2.55V - 2.65V VDD power supply
// 1026   *     @arg @ref OB_BOR_LEVEL5 BOR Reset threshold levels for 2.8V - 2.9V VDD power supply
// 1027   * @retval HAL status
// 1028   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function FLASH_OB_BORConfig
        THUMB
// 1029 static HAL_StatusTypeDef FLASH_OB_BORConfig(uint8_t OB_BOR)
// 1030 {
FLASH_OB_BORConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R1,R0
// 1031   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1032   uint32_t tmp = 0, tmp1 = 0;
        MOVS     R4,#+0
        MOVS     R0,#+0
// 1033 
// 1034   /* Check the parameters */
// 1035   assert_param(IS_OB_BOR_LEVEL(OB_BOR));
// 1036 
// 1037   /* Get the User Option byte register */
// 1038   tmp1 = OB->USER & ((~FLASH_OBR_BOR_LEV) >> 16);
        LDR.W    R0,??DataTable25_10  ;; 0x1ff80004
        LDR      R0,[R0, #+0]
        MOVW     R2,#+65520
        ANDS     R0,R2,R0
// 1039 
// 1040   /* Calculate the option byte to write - [0xFF | nUSER | 0x00 | USER]*/
// 1041   tmp = (uint32_t)~((OB_BOR | tmp1)) << 16;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R2,R0,R1
        MVNS     R2,R2
        LSLS     R4,R2,#+16
// 1042   tmp |= (OB_BOR | tmp1);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R0,R1
        ORRS     R4,R0,R4
// 1043     
// 1044   /* Wait for last operation to be completed */
// 1045   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1046   
// 1047   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_OB_BORConfig_0
// 1048   {  
// 1049     /* Clean the error context */
// 1050     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable25
        STR      R0,[R1, #+20]
// 1051 
// 1052     /* Write the BOR Option Byte */            
// 1053     OB->USER = tmp;
        LDR.W    R0,??DataTable25_10  ;; 0x1ff80004
        STR      R4,[R0, #+0]
// 1054 
// 1055     /* Wait for last operation to be completed */
// 1056     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1057   }
// 1058   
// 1059   /* Return the Option Byte BOR programmation Status */
// 1060   return status;
??FLASH_OB_BORConfig_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1061 }
          CFI EndBlock cfiBlock13
// 1062 
// 1063 /**
// 1064   * @brief  Returns the FLASH User Option Bytes values.
// 1065   * @retval The FLASH User Option Bytes.
// 1066   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function FLASH_OB_GetUser
          CFI NoCalls
        THUMB
// 1067 static uint8_t FLASH_OB_GetUser(void)
// 1068 {
// 1069   /* Return the User Option Byte */
// 1070   return (uint8_t)((FLASH->OBR & FLASH_OBR_USER) >> 16);
FLASH_OB_GetUser:
        LDR.W    R0,??DataTable25_5  ;; 0x40023c1c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        ANDS     R0,R0,#0xF0
        BX       LR               ;; return
// 1071 }
          CFI EndBlock cfiBlock14
// 1072 
// 1073 /**
// 1074   * @brief  Returns the FLASH Read Protection level.
// 1075   * @retval FLASH RDP level
// 1076   *         This parameter can be one of the following values:
// 1077   *            @arg @ref OB_RDP_LEVEL_0 No protection
// 1078   *            @arg @ref OB_RDP_LEVEL_1 Read protection of the memory
// 1079   *            @arg @ref OB_RDP_LEVEL_2 Full chip protection
// 1080   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function FLASH_OB_GetRDP
          CFI NoCalls
        THUMB
// 1081 static uint8_t FLASH_OB_GetRDP(void)
// 1082 {
// 1083   return (uint8_t)(FLASH->OBR & FLASH_OBR_RDPRT);
FLASH_OB_GetRDP:
        LDR.W    R0,??DataTable25_5  ;; 0x40023c1c
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
// 1084 }
          CFI EndBlock cfiBlock15
// 1085 
// 1086 /**
// 1087   * @brief  Returns the FLASH BOR level.
// 1088   * @retval The BOR level Option Bytes.
// 1089   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function FLASH_OB_GetBOR
          CFI NoCalls
        THUMB
// 1090 static uint8_t FLASH_OB_GetBOR(void)
// 1091 {
// 1092   /* Return the BOR level */
// 1093   return (uint8_t)((FLASH->OBR & (uint32_t)FLASH_OBR_BOR_LEV) >> 16);
FLASH_OB_GetBOR:
        LDR.W    R0,??DataTable25_5  ;; 0x40023c1c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        ANDS     R0,R0,#0xF
        BX       LR               ;; return
// 1094 }
          CFI EndBlock cfiBlock16
// 1095 
// 1096 /**
// 1097   * @brief  Write protects the desired pages of the first 64KB of the Flash.
// 1098   * @param  pOBInit pointer to an FLASH_OBInitStruct structure that
// 1099   *         contains WRP parameters.
// 1100   * @param  NewState new state of the specified FLASH Pages Wtite protection.
// 1101   *   This parameter can be: ENABLE or DISABLE.
// 1102   * @retval HAL_StatusTypeDef
// 1103   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function FLASH_OB_WRPConfig
        THUMB
// 1104 static HAL_StatusTypeDef FLASH_OB_WRPConfig(FLASH_OBProgramInitTypeDef *pOBInit, FunctionalState NewState)
// 1105 {
FLASH_OB_WRPConfig:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1106   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1107   
// 1108   /* Wait for last operation to be completed */
// 1109   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1110  
// 1111   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_OB_WRPConfig_0
// 1112   {
// 1113     /* Clean the error context */
// 1114     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25
        STR      R0,[R1, #+20]
// 1115 
// 1116     /* WRP for sector between 0 to 31 */
// 1117     if (pOBInit->WRPSector0To31 != 0)
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??FLASH_OB_WRPConfig_1
// 1118     {
// 1119       FLASH_OB_WRPConfigWRP1OrPCROP1(pOBInit->WRPSector0To31, NewState);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R4, #+8]
          CFI FunCall FLASH_OB_WRPConfigWRP1OrPCROP1
        BL       FLASH_OB_WRPConfigWRP1OrPCROP1
// 1120     }
// 1121     
// 1122 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)    \ 
// 1123  || defined(STM32L151xCA) || defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xCA) \ 
// 1124  || defined(STM32L152xD) || defined(STM32L152xDX) || defined(STM32L162xCA) || defined(STM32L162xD)  \ 
// 1125  || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE)
// 1126       
// 1127     /* Pages for Cat3, Cat4 & Cat5 devices*/
// 1128     /* WRP for sector between 32 to 63 */
// 1129     if (pOBInit->WRPSector32To63 != 0)
??FLASH_OB_WRPConfig_1:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??FLASH_OB_WRPConfig_2
// 1130     {
// 1131       FLASH_OB_WRPConfigWRP2OrPCROP2(pOBInit->WRPSector32To63, NewState);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R4, #+12]
          CFI FunCall FLASH_OB_WRPConfigWRP2OrPCROP2
        BL       FLASH_OB_WRPConfigWRP2OrPCROP2
// 1132     }
// 1133     
// 1134 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || (...) || STM32L151xE || STM32L152xE || STM32L162xE */
// 1135 
// 1136 #if defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xD) || defined(STM32L152xDX) \ 
// 1137  || defined(STM32L162xD) || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE)  \ 
// 1138  || defined(STM32L162xE)
// 1139       
// 1140     /* Pages for devices with FLASH >= 256KB*/
// 1141     /* WRP for sector between 64 to 95 */
// 1142     if (pOBInit->WRPSector64To95 != 0)
??FLASH_OB_WRPConfig_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??FLASH_OB_WRPConfig_3
// 1143     {
// 1144       FLASH_OB_WRPConfigWRP3(pOBInit->WRPSector64To95, NewState);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R4, #+16]
          CFI FunCall FLASH_OB_WRPConfigWRP3
        BL       FLASH_OB_WRPConfigWRP3
// 1145     }
// 1146     
// 1147 #endif /* STM32L151xD || STM32L152xD || STM32L162xD || STM32L151xE || STM32L152xE || STM32L162xE */
// 1148 
// 1149 #if defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE) || defined(STM32L151xDX) \ 
// 1150  || defined(STM32L152xDX) || defined(STM32L162xDX)
// 1151 
// 1152     /* Pages for Cat5 devices*/
// 1153     /* WRP for sector between 96 to 127 */
// 1154     if (pOBInit->WRPSector96To127 != 0)
// 1155     {
// 1156       FLASH_OB_WRPConfigWRP4(pOBInit->WRPSector96To127, NewState);
// 1157     }
// 1158     
// 1159 #endif /* STM32L151xE || STM32L152xE || STM32L162xE || STM32L151xDX || ... */
// 1160 
// 1161     /* Wait for last operation to be completed */
// 1162     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
??FLASH_OB_WRPConfig_3:
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1163   }
// 1164 
// 1165   /* Return the write protection operation Status */
// 1166   return status;      
??FLASH_OB_WRPConfig_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1167 }
          CFI EndBlock cfiBlock17
// 1168 
// 1169 #if defined(STM32L151xBA) || defined(STM32L152xBA) || defined(STM32L151xC) || defined(STM32L152xC) \ 
// 1170  || defined(STM32L162xC)
// 1171 /**
// 1172   * @brief  Enables the read/write protection (PCROP) of the desired 
// 1173   *         sectors.
// 1174   * @note   This function can be used only for Cat2 & Cat3 devices
// 1175   * @param  pAdvOBInit pointer to an FLASH_AdvOBProgramInitTypeDef structure that
// 1176   *         contains PCROP parameters.
// 1177   * @param  NewState new state of the specified FLASH Pages read/Write protection.
// 1178   *   This parameter can be: ENABLE or DISABLE.
// 1179   * @retval HAL status
// 1180   */
// 1181 static HAL_StatusTypeDef FLASH_OB_PCROPConfig(FLASH_AdvOBProgramInitTypeDef *pAdvOBInit, FunctionalState NewState)
// 1182 {
// 1183   HAL_StatusTypeDef status = HAL_OK;
// 1184   FunctionalState pcropstate = DISABLE;
// 1185   
// 1186   /* Wait for last operation to be completed */
// 1187   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1188   
// 1189   /* Invert state to use same function of WRP */
// 1190   if (NewState == DISABLE)
// 1191   {
// 1192     pcropstate = ENABLE;
// 1193   }
// 1194         
// 1195   if(status == HAL_OK)
// 1196   {
// 1197     /* Clean the error context */
// 1198     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
// 1199 
// 1200     /* Pages for Cat2 devices*/
// 1201     /* PCROP for sector between 0 to 31 */
// 1202     if (pAdvOBInit->PCROPSector0To31 != 0)
// 1203     {
// 1204       FLASH_OB_WRPConfigWRP1OrPCROP1(pAdvOBInit->PCROPSector0To31, pcropstate);
// 1205     }
// 1206     
// 1207 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)
// 1208 
// 1209     /* Pages for Cat3 devices*/
// 1210     /* WRP for sector between 32 to 63 */
// 1211     if (pAdvOBInit->PCROPSector32To63 != 0)
// 1212     {
// 1213       FLASH_OB_WRPConfigWRP2OrPCROP2(pAdvOBInit->PCROPSector32To63, pcropstate);
// 1214     }
// 1215     
// 1216 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || STM32L162xC  */
// 1217     
// 1218     /* Wait for last operation to be completed */
// 1219     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1220   }
// 1221 
// 1222   /* Return the write protection operation Status */
// 1223   return status;      
// 1224 }
// 1225 #endif /* STM32L151xBA || STM32L152xBA || STM32L151xC || STM32L152xC || STM32L162xC */
// 1226 
// 1227 /**
// 1228   * @brief  Write protects the desired pages of the first 128KB of the Flash.
// 1229   * @param  WRP1OrPCROP1 specifies the address of the pages to be write protected.
// 1230   *   This parameter can be a combination of @ref FLASHEx_Option_Bytes_Write_Protection1
// 1231   * @param  NewState new state of the specified FLASH Pages Write protection.
// 1232   *   This parameter can be: ENABLE or DISABLE.
// 1233   * @retval None
// 1234   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function FLASH_OB_WRPConfigWRP1OrPCROP1
          CFI NoCalls
        THUMB
// 1235 static void FLASH_OB_WRPConfigWRP1OrPCROP1(uint32_t WRP1OrPCROP1, FunctionalState NewState)
// 1236 {
// 1237   uint32_t wrp01data = 0, wrp23data = 0;
FLASH_OB_WRPConfigWRP1OrPCROP1:
        MOVS     R2,#+0
        MOVS     R3,#+0
// 1238   
// 1239   uint32_t tmp1 = 0, tmp2 = 0;
        MOVS     R2,#+0
        MOVS     R2,#+0
// 1240   
// 1241   /* Check the parameters */
// 1242   assert_param(IS_OB_WRP(WRP1OrPCROP1));
// 1243   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1244 
// 1245   if (NewState != DISABLE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FLASH_OB_WRPConfigWRP1OrPCROP1_0
// 1246   {
// 1247     wrp01data = (uint16_t)(((WRP1OrPCROP1 & WRP_MASK_LOW) | OB->WRP01));
        LDR.N    R1,??DataTable25_11  ;; 0x1ff80008
        LDR      R1,[R1, #+0]
        ORRS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1248     wrp23data = (uint16_t)((((WRP1OrPCROP1 & WRP_MASK_HIGH)>>16 | OB->WRP23))); 
        LDR.N    R1,??DataTable25_12  ;; 0x1ff8000c
        LDR      R1,[R1, #+0]
        ORRS     R3,R1,R0, LSR #+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1249     tmp1 = (uint32_t)(~(wrp01data) << 16)|(wrp01data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1250     OB->WRP01 = tmp1;
        LDR.N    R0,??DataTable25_11  ;; 0x1ff80008
        STR      R2,[R0, #+0]
// 1251 
// 1252     tmp2 = (uint32_t)(~(wrp23data) << 16)|(wrp23data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1253     OB->WRP23 = tmp2;      
        LDR.N    R0,??DataTable25_12  ;; 0x1ff8000c
        STR      R2,[R0, #+0]
        B.N      ??FLASH_OB_WRPConfigWRP1OrPCROP1_1
// 1254   }
// 1255   else
// 1256   {
// 1257     wrp01data = (uint16_t)(~WRP1OrPCROP1 & (WRP_MASK_LOW & OB->WRP01));
??FLASH_OB_WRPConfigWRP1OrPCROP1_0:
        LDR.N    R1,??DataTable25_11  ;; 0x1ff80008
        LDR      R1,[R1, #+0]
        BICS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1258     wrp23data = (uint16_t)((((~WRP1OrPCROP1 & WRP_MASK_HIGH)>>16 & OB->WRP23))); 
        UBFX     R0,R0,#+16,#+16
        EOR      R0,R0,#0xFF00
        EORS     R0,R0,#0xFF
        LDR.N    R1,??DataTable25_12  ;; 0x1ff8000c
        LDR      R1,[R1, #+0]
        ANDS     R3,R1,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1259 
// 1260     tmp1 = (uint32_t)((~wrp01data) << 16)|(wrp01data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1261     OB->WRP01 = tmp1;
        LDR.N    R0,??DataTable25_11  ;; 0x1ff80008
        STR      R2,[R0, #+0]
// 1262     
// 1263     tmp2 = (uint32_t)((~wrp23data) << 16)|(wrp23data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1264     OB->WRP23 = tmp2;
        LDR.N    R0,??DataTable25_12  ;; 0x1ff8000c
        STR      R2,[R0, #+0]
// 1265   }
// 1266 }
??FLASH_OB_WRPConfigWRP1OrPCROP1_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
// 1267 
// 1268 #if defined(STM32L100xC) || defined(STM32L151xC) || defined(STM32L152xC) || defined(STM32L162xC)    \ 
// 1269  || defined(STM32L151xCA) || defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xCA) \ 
// 1270  || defined(STM32L152xD) || defined(STM32L152xDX) || defined(STM32L162xCA) || defined(STM32L162xD)  \ 
// 1271  || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE)
// 1272 /**
// 1273   * @brief  Enable Write protects the desired pages of the second 128KB of the Flash.
// 1274   * @note   This function can be used only for Cat3, Cat4  & Cat5 devices.
// 1275   * @param  WRP2OrPCROP2 specifies the address of the pages to be write protected.
// 1276   *   This parameter can be a combination of @ref FLASHEx_Option_Bytes_Write_Protection2
// 1277   * @param  NewState new state of the specified FLASH Pages Wtite protection.
// 1278   *   This parameter can be: ENABLE or DISABLE.
// 1279   * @retval None
// 1280   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function FLASH_OB_WRPConfigWRP2OrPCROP2
          CFI NoCalls
        THUMB
// 1281 static void FLASH_OB_WRPConfigWRP2OrPCROP2(uint32_t WRP2OrPCROP2, FunctionalState NewState)
// 1282 {
// 1283   uint32_t wrp45data = 0, wrp67data = 0;
FLASH_OB_WRPConfigWRP2OrPCROP2:
        MOVS     R2,#+0
        MOVS     R3,#+0
// 1284   
// 1285   uint32_t tmp1 = 0, tmp2 = 0;
        MOVS     R2,#+0
        MOVS     R2,#+0
// 1286   
// 1287   /* Check the parameters */
// 1288   assert_param(IS_OB_WRP(WRP2OrPCROP2));
// 1289   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1290 
// 1291   if (NewState != DISABLE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FLASH_OB_WRPConfigWRP2OrPCROP2_0
// 1292   {
// 1293     wrp45data = (uint16_t)(((WRP2OrPCROP2 & WRP_MASK_LOW) | OB->WRP45));
        LDR.N    R1,??DataTable25_13  ;; 0x1ff80010
        LDR      R1,[R1, #+0]
        ORRS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1294     wrp67data = (uint16_t)((((WRP2OrPCROP2 & WRP_MASK_HIGH)>>16 | OB->WRP67))); 
        LDR.N    R1,??DataTable25_14  ;; 0x1ff80014
        LDR      R1,[R1, #+0]
        ORRS     R3,R1,R0, LSR #+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1295     tmp1 = (uint32_t)(~(wrp45data) << 16)|(wrp45data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1296     OB->WRP45 = tmp1;
        LDR.N    R0,??DataTable25_13  ;; 0x1ff80010
        STR      R2,[R0, #+0]
// 1297     
// 1298     tmp2 = (uint32_t)(~(wrp67data) << 16)|(wrp67data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1299     OB->WRP67 = tmp2;
        LDR.N    R0,??DataTable25_14  ;; 0x1ff80014
        STR      R2,[R0, #+0]
        B.N      ??FLASH_OB_WRPConfigWRP2OrPCROP2_1
// 1300   }
// 1301   else
// 1302   {
// 1303     wrp45data = (uint16_t)(~WRP2OrPCROP2 & (WRP_MASK_LOW & OB->WRP45));
??FLASH_OB_WRPConfigWRP2OrPCROP2_0:
        LDR.N    R1,??DataTable25_13  ;; 0x1ff80010
        LDR      R1,[R1, #+0]
        BICS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1304     wrp67data = (uint16_t)((((~WRP2OrPCROP2 & WRP_MASK_HIGH)>>16 & OB->WRP67))); 
        UBFX     R0,R0,#+16,#+16
        EOR      R0,R0,#0xFF00
        EORS     R0,R0,#0xFF
        LDR.N    R1,??DataTable25_14  ;; 0x1ff80014
        LDR      R1,[R1, #+0]
        ANDS     R3,R1,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1305     
// 1306     tmp1 = (uint32_t)((~wrp45data) << 16)|(wrp45data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1307     OB->WRP45 = tmp1;
        LDR.N    R0,??DataTable25_13  ;; 0x1ff80010
        STR      R2,[R0, #+0]
// 1308     
// 1309     tmp2 = (uint32_t)((~wrp67data) << 16)|(wrp67data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1310     OB->WRP67 = tmp2;
        LDR.N    R0,??DataTable25_14  ;; 0x1ff80014
        STR      R2,[R0, #+0]
// 1311   }
// 1312 }
??FLASH_OB_WRPConfigWRP2OrPCROP2_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 1313 #endif /* STM32L100xC || STM32L151xC || STM32L152xC || (...) || STM32L151xE || STM32L152xE || STM32L162xE */
// 1314 
// 1315 #if defined(STM32L151xD) || defined(STM32L151xDX) || defined(STM32L152xD) || defined(STM32L152xDX) \ 
// 1316  || defined(STM32L162xD) || defined(STM32L162xDX) || defined(STM32L151xE) || defined(STM32L152xE)  \ 
// 1317  || defined(STM32L162xE)
// 1318 /**
// 1319   * @brief  Enable Write protects the desired pages of the third 128KB of the Flash.
// 1320   * @note   This function can be used only for STM32L151xD, STM32L152xD, STM32L162xD  & Cat5 devices.
// 1321   * @param  WRP3 specifies the address of the pages to be write protected.
// 1322   *   This parameter can be a combination of @ref FLASHEx_Option_Bytes_Write_Protection3
// 1323   * @param  NewState new state of the specified FLASH Pages Wtite protection.
// 1324   *   This parameter can be: ENABLE or DISABLE.
// 1325   * @retval None
// 1326   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function FLASH_OB_WRPConfigWRP3
          CFI NoCalls
        THUMB
// 1327 static void FLASH_OB_WRPConfigWRP3(uint32_t WRP3, FunctionalState NewState)
// 1328 {
// 1329   uint32_t wrp89data = 0, wrp1011data = 0;
FLASH_OB_WRPConfigWRP3:
        MOVS     R2,#+0
        MOVS     R3,#+0
// 1330   
// 1331   uint32_t tmp1 = 0, tmp2 = 0;
        MOVS     R2,#+0
        MOVS     R2,#+0
// 1332   
// 1333   /* Check the parameters */
// 1334   assert_param(IS_OB_WRP(WRP3));
// 1335   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1336 
// 1337   if (NewState != DISABLE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FLASH_OB_WRPConfigWRP3_0
// 1338   {
// 1339     wrp89data = (uint16_t)(((WRP3 & WRP_MASK_LOW) | OB->WRP89));
        LDR.N    R1,??DataTable25_15  ;; 0x1ff80018
        LDR      R1,[R1, #+0]
        ORRS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1340     wrp1011data = (uint16_t)((((WRP3 & WRP_MASK_HIGH)>>16 | OB->WRP1011))); 
        LDR.N    R1,??DataTable25_16  ;; 0x1ff8001c
        LDR      R1,[R1, #+0]
        ORRS     R3,R1,R0, LSR #+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1341     tmp1 = (uint32_t)(~(wrp89data) << 16)|(wrp89data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1342     OB->WRP89 = tmp1;
        LDR.N    R0,??DataTable25_15  ;; 0x1ff80018
        STR      R2,[R0, #+0]
// 1343 
// 1344     tmp2 = (uint32_t)(~(wrp1011data) << 16)|(wrp1011data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1345     OB->WRP1011 = tmp2;      
        LDR.N    R0,??DataTable25_16  ;; 0x1ff8001c
        STR      R2,[R0, #+0]
        B.N      ??FLASH_OB_WRPConfigWRP3_1
// 1346   }
// 1347   else
// 1348   {
// 1349     wrp89data = (uint16_t)(~WRP3 & (WRP_MASK_LOW & OB->WRP89));
??FLASH_OB_WRPConfigWRP3_0:
        LDR.N    R1,??DataTable25_15  ;; 0x1ff80018
        LDR      R1,[R1, #+0]
        BICS     R2,R1,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
// 1350     wrp1011data = (uint16_t)((((~WRP3 & WRP_MASK_HIGH)>>16 & OB->WRP1011))); 
        UBFX     R0,R0,#+16,#+16
        EOR      R0,R0,#0xFF00
        EORS     R0,R0,#0xFF
        LDR.N    R1,??DataTable25_16  ;; 0x1ff8001c
        LDR      R1,[R1, #+0]
        ANDS     R3,R1,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
// 1351 
// 1352     tmp1 = (uint32_t)((~wrp89data) << 16)|(wrp89data);
        MVNS     R0,R2
        ORRS     R2,R2,R0, LSL #+16
// 1353     OB->WRP89 = tmp1;
        LDR.N    R0,??DataTable25_15  ;; 0x1ff80018
        STR      R2,[R0, #+0]
// 1354 
// 1355     tmp2 = (uint32_t)((~wrp1011data) << 16)|(wrp1011data);
        MVNS     R0,R3
        ORRS     R2,R3,R0, LSL #+16
// 1356     OB->WRP1011 = tmp2;
        LDR.N    R0,??DataTable25_16  ;; 0x1ff8001c
        STR      R2,[R0, #+0]
// 1357   }
// 1358 }
??FLASH_OB_WRPConfigWRP3_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 1359 #endif /* STM32L151xD || STM32L152xD || STM32L162xD || STM32L151xE || STM32L152xE || STM32L162xE */
// 1360 
// 1361 #if defined(STM32L151xE) || defined(STM32L152xE) || defined(STM32L162xE) || defined(STM32L151xDX) \ 
// 1362  || defined(STM32L152xDX) || defined(STM32L162xDX)
// 1363 /**
// 1364   * @brief  Enable Write protects the desired pages of the Fourth 128KB of the Flash.
// 1365   * @note   This function can be used only for Cat5 & STM32L1xxDX devices.
// 1366   * @param  WRP4 specifies the address of the pages to be write protected.
// 1367   *   This parameter can be a combination of @ref FLASHEx_Option_Bytes_Write_Protection4
// 1368   * @param  NewState new state of the specified FLASH Pages Wtite protection.
// 1369   *   This parameter can be: ENABLE or DISABLE.
// 1370   * @retval None
// 1371   */
// 1372 static void FLASH_OB_WRPConfigWRP4(uint32_t WRP4, FunctionalState NewState)
// 1373 {
// 1374   uint32_t wrp1213data = 0, wrp1415data = 0;
// 1375   
// 1376   uint32_t tmp1 = 0, tmp2 = 0;
// 1377   
// 1378   /* Check the parameters */
// 1379   assert_param(IS_OB_WRP(WRP4));
// 1380   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1381 
// 1382   if (NewState != DISABLE)
// 1383   {
// 1384     wrp1213data = (uint16_t)(((WRP4 & WRP_MASK_LOW) | OB->WRP1213));
// 1385     wrp1415data = (uint16_t)((((WRP4 & WRP_MASK_HIGH)>>16 | OB->WRP1415))); 
// 1386     tmp1 = (uint32_t)(~(wrp1213data) << 16)|(wrp1213data);
// 1387     OB->WRP1213 = tmp1;
// 1388 
// 1389     tmp2 = (uint32_t)(~(wrp1415data) << 16)|(wrp1415data);
// 1390     OB->WRP1415 = tmp2;      
// 1391   }
// 1392   else
// 1393   {
// 1394     wrp1213data = (uint16_t)(~WRP4 & (WRP_MASK_LOW & OB->WRP1213));
// 1395     wrp1415data = (uint16_t)((((~WRP4 & WRP_MASK_HIGH)>>16 & OB->WRP1415))); 
// 1396 
// 1397     tmp1 = (uint32_t)((~wrp1213data) << 16)|(wrp1213data);
// 1398     OB->WRP1213 = tmp1;
// 1399 
// 1400     tmp2 = (uint32_t)((~wrp1415data) << 16)|(wrp1415data);
// 1401     OB->WRP1415 = tmp2;
// 1402   }
// 1403 }
// 1404 #endif /* STM32L151xE || STM32L152xE || STM32L162xE || STM32L151xDX || ... */
// 1405 
// 1406 /**
// 1407   * @brief  Programs the FLASH User Option Byte: IWDG_SW / RST_STOP / RST_STDBY.
// 1408   * @param  OB_IWDG Selects the WDG mode.
// 1409   *   This parameter can be one of the following values:
// 1410   *     @arg @ref OB_IWDG_SW Software WDG selected
// 1411   *     @arg @ref OB_IWDG_HW Hardware WDG selected
// 1412   * @param  OB_STOP Reset event when entering STOP mode.
// 1413   *   This parameter can be one of the following values:
// 1414   *     @arg @ref OB_STOP_NORST No reset generated when entering in STOP
// 1415   *     @arg @ref OB_STOP_RST Reset generated when entering in STOP
// 1416   * @param  OB_STDBY Reset event when entering Standby mode.
// 1417   *   This parameter can be one of the following values:
// 1418   *     @arg @ref OB_STDBY_NORST No reset generated when entering in STANDBY
// 1419   *     @arg @ref OB_STDBY_RST Reset generated when entering in STANDBY
// 1420   * @retval HAL status
// 1421   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function FLASH_OB_UserConfig
        THUMB
// 1422 static HAL_StatusTypeDef FLASH_OB_UserConfig(uint8_t OB_IWDG, uint8_t OB_STOP, uint8_t OB_STDBY)
// 1423 {
FLASH_OB_UserConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1424   HAL_StatusTypeDef status = HAL_OK; 
        MOVS     R3,#+0
// 1425   uint32_t tmp = 0, tmp1 = 0;
        MOVS     R4,#+0
        MOVS     R3,#+0
// 1426 
// 1427   /* Check the parameters */
// 1428   assert_param(IS_OB_IWDG_SOURCE(OB_IWDG));
// 1429   assert_param(IS_OB_STOP_SOURCE(OB_STOP));
// 1430   assert_param(IS_OB_STDBY_SOURCE(OB_STDBY));
// 1431 
// 1432   /* Get the User Option byte register */
// 1433   tmp1 = OB->USER & ((~FLASH_OBR_USER) >> 16);
        LDR.N    R3,??DataTable25_10  ;; 0x1ff80004
        LDR      R3,[R3, #+0]
        MOVW     R4,#+65295
        ANDS     R3,R4,R3
// 1434 
// 1435   /* Calculate the user option byte to write */ 
// 1436   tmp = (uint32_t)(((uint32_t)~((uint32_t)((uint32_t)(OB_IWDG) | (uint32_t)(OB_STOP) | (uint32_t)(OB_STDBY) | tmp1))) << 16);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R4,R1,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R4,R2,R4
        ORRS     R4,R3,R4
        MVNS     R4,R4
        LSLS     R4,R4,#+16
// 1437   tmp |= ((uint32_t)(OB_IWDG) | ((uint32_t)OB_STOP) | (uint32_t)(OB_STDBY) | tmp1);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R0,R2,R0
        ORRS     R0,R3,R0
        ORRS     R4,R0,R4
// 1438   
// 1439   /* Wait for last operation to be completed */
// 1440   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        MOVS     R3,R0
// 1441   
// 1442   if(status == HAL_OK)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??FLASH_OB_UserConfig_0
// 1443   {  
// 1444     /* Clean the error context */
// 1445     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25
        STR      R0,[R1, #+20]
// 1446 
// 1447     /* Write the User Option Byte */
// 1448     OB->USER = tmp;
        LDR.N    R0,??DataTable25_10  ;; 0x1ff80004
        STR      R4,[R0, #+0]
// 1449     
// 1450     /* Wait for last operation to be completed */
// 1451     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
        MOVS     R3,R0
// 1452   }
// 1453 
// 1454   /* Return the Option Byte program Status */
// 1455   return status;
??FLASH_OB_UserConfig_0:
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1456 }
          CFI EndBlock cfiBlock21
// 1457 
// 1458 #if defined(FLASH_OBR_nRST_BFB2)
// 1459 /**
// 1460   * @brief  Configures to boot from Bank1 or Bank2.
// 1461   * @param  OB_BOOT select the FLASH Bank to boot from.
// 1462   *   This parameter can be one of the following values:
// 1463   *     @arg @ref OB_BOOT_BANK2 At startup, if boot pins are set in boot from user Flash
// 1464   *        position and this parameter is selected the device will boot from Bank2 or Bank1,
// 1465   *        depending on the activation of the bank. The active banks are checked in
// 1466   *        the following order: Bank2, followed by Bank1.
// 1467   *        The active bank is recognized by the value programmed at the base address
// 1468   *        of the respective bank (corresponding to the initial stack pointer value
// 1469   *        in the interrupt vector table).
// 1470   *     @arg @ref OB_BOOT_BANK1 At startup, if boot pins are set in boot from user Flash
// 1471   *        position and this parameter is selected the device will boot from Bank1(Default).
// 1472   *        For more information, please refer to AN2606 from www.st.com. 
// 1473   * @retval HAL status
// 1474   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function FLASH_OB_BootConfig
        THUMB
// 1475 static HAL_StatusTypeDef FLASH_OB_BootConfig(uint8_t OB_BOOT)
// 1476 {
FLASH_OB_BootConfig:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R1,R0
// 1477   HAL_StatusTypeDef status = HAL_OK; 
        MOVS     R0,#+0
// 1478   uint32_t tmp = 0, tmp1 = 0;
        MOVS     R4,#+0
        MOVS     R0,#+0
// 1479 
// 1480   /* Check the parameters */
// 1481   assert_param(IS_OB_BOOT_BANK(OB_BOOT));
// 1482 
// 1483   /* Get the User Option byte register  and BOR Level*/
// 1484   tmp1 = OB->USER & ((~FLASH_OBR_nRST_BFB2) >> 16);
        LDR.N    R0,??DataTable25_10  ;; 0x1ff80004
        LDR      R0,[R0, #+0]
        MOVW     R2,#+65407
        ANDS     R0,R2,R0
// 1485 
// 1486   /* Calculate the option byte to write */
// 1487   tmp = (uint32_t)~(OB_BOOT | tmp1) << 16;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R2,R0,R1
        MVNS     R2,R2
        LSLS     R4,R2,#+16
// 1488   tmp |= (OB_BOOT | tmp1);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R0,R1
        ORRS     R4,R0,R4
// 1489 
// 1490   /* Wait for last operation to be completed */
// 1491   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1492 
// 1493   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_OB_BootConfig_0
// 1494   {  
// 1495     /* Clean the error context */
// 1496     pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25
        STR      R0,[R1, #+20]
// 1497 
// 1498     /* Write the BOOT Option Byte */
// 1499     OB->USER = tmp;
        LDR.N    R0,??DataTable25_10  ;; 0x1ff80004
        STR      R4,[R0, #+0]
// 1500     
// 1501     /* Wait for last operation to be completed */
// 1502     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1503   }
// 1504 
// 1505   /* Return the Option Byte program Status */
// 1506   return status;
??FLASH_OB_BootConfig_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
// 1507 }
          CFI EndBlock cfiBlock22
// 1508 
// 1509 #endif /* FLASH_OBR_nRST_BFB2 */
// 1510 
// 1511 /*
// 1512 ==============================================================================
// 1513               DATA
// 1514 ==============================================================================
// 1515 */
// 1516 
// 1517 /**
// 1518   * @brief  Write a Byte at a specified address in data memory.
// 1519   * @param  Address specifies the address to be written.
// 1520   * @param  Data specifies the data to be written.
// 1521   * @note   This function assumes that the is data word is already erased.
// 1522   * @retval HAL status
// 1523   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_FastProgramByte
        THUMB
// 1524 static HAL_StatusTypeDef FLASH_DATAEEPROM_FastProgramByte(uint32_t Address, uint8_t Data)
// 1525 {
FLASH_DATAEEPROM_FastProgramByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1526   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1527 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1528   uint32_t tmp = 0, tmpaddr = 0;
// 1529 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1530   
// 1531   /* Check the parameters */
// 1532   assert_param(IS_FLASH_DATA_ADDRESS(Address)); 
// 1533 
// 1534   /* Wait for last operation to be completed */
// 1535   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1536     
// 1537   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_FastProgramByte_0
// 1538   {
// 1539     /* Clear the FTDW bit */
// 1540     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FTDW);
        LDR.N    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.N    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
// 1541 
// 1542 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1543     /* Possible only on Cat1 devices */
// 1544     if(Data != (uint8_t)0x00) 
// 1545     {
// 1546       /* If the previous operation is completed, proceed to write the new Data */
// 1547       *(__IO uint8_t *)Address = Data;
// 1548             
// 1549       /* Wait for last operation to be completed */
// 1550       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1551     }
// 1552     else
// 1553     {
// 1554       tmpaddr = Address & 0xFFFFFFFC;
// 1555       tmp = * (__IO uint32_t *) tmpaddr;
// 1556       tmpaddr = 0xFF << ((uint32_t) (0x8 * (Address & 0x3)));
// 1557       tmp &= ~tmpaddr;
// 1558       status = HAL_FLASHEx_DATAEEPROM_Erase(FLASH_TYPEERASEDATA_WORD, Address & 0xFFFFFFFC);
// 1559       /* Process Unlocked */
// 1560       __HAL_UNLOCK(&pFlash);
// 1561       status = HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTWORD, (Address & 0xFFFFFFFC), tmp);
// 1562       /* Process Locked */
// 1563       __HAL_LOCK(&pFlash);
// 1564     }
// 1565 #else /*!Cat1*/ 
// 1566     /* If the previous operation is completed, proceed to write the new Data */
// 1567     *(__IO uint8_t *)Address = Data;
        STRB     R5,[R4, #+0]
// 1568             
// 1569     /* Wait for last operation to be completed */
// 1570     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1571 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1572   }
// 1573   /* Return the Write Status */
// 1574   return status;
??FLASH_DATAEEPROM_FastProgramByte_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1575 }
          CFI EndBlock cfiBlock23
// 1576 
// 1577 /**
// 1578   * @brief  Writes a half word at a specified address in data memory.
// 1579   * @param  Address specifies the address to be written.
// 1580   * @param  Data specifies the data to be written.
// 1581   * @note   This function assumes that the is data word is already erased.
// 1582   * @retval HAL status
// 1583   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_FastProgramHalfWord
        THUMB
// 1584 static HAL_StatusTypeDef FLASH_DATAEEPROM_FastProgramHalfWord(uint32_t Address, uint16_t Data)
// 1585 {
FLASH_DATAEEPROM_FastProgramHalfWord:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1586   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1587 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1588   uint32_t tmp = 0, tmpaddr = 0;
// 1589 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1590   
// 1591   /* Check the parameters */
// 1592   assert_param(IS_FLASH_DATA_ADDRESS(Address));
// 1593 
// 1594   /* Wait for last operation to be completed */
// 1595   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1596     
// 1597   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_FastProgramHalfWord_0
// 1598   {
// 1599     /* Clear the FTDW bit */
// 1600     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FTDW);
        LDR.N    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.N    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
// 1601 
// 1602 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1603     /* Possible only on Cat1 devices */
// 1604     if(Data != (uint16_t)0x0000) 
// 1605     {
// 1606       /* If the previous operation is completed, proceed to write the new data */
// 1607       *(__IO uint16_t *)Address = Data;
// 1608   
// 1609       /* Wait for last operation to be completed */
// 1610       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1611     }
// 1612     else
// 1613     {
// 1614       /* Process Unlocked */
// 1615       __HAL_UNLOCK(&pFlash);
// 1616       if((Address & 0x3) != 0x3)
// 1617       {
// 1618         tmpaddr = Address & 0xFFFFFFFC;
// 1619         tmp = * (__IO uint32_t *) tmpaddr;
// 1620         tmpaddr = 0xFFFF << ((uint32_t) (0x8 * (Address & 0x3)));
// 1621         tmp &= ~tmpaddr;        
// 1622         status = HAL_FLASHEx_DATAEEPROM_Erase(FLASH_TYPEERASEDATA_WORD, Address & 0xFFFFFFFC);
// 1623         status = HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTWORD, (Address & 0xFFFFFFFC), tmp);
// 1624       }
// 1625       else
// 1626       {
// 1627         HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTBYTE, Address, 0x00);
// 1628         HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTBYTE, Address + 1, 0x00);
// 1629       }
// 1630       /* Process Locked */
// 1631       __HAL_LOCK(&pFlash);
// 1632     }
// 1633 #else /* !Cat1 */
// 1634     /* If the previous operation is completed, proceed to write the new data */
// 1635     *(__IO uint16_t *)Address = Data;
        STRH     R5,[R4, #+0]
// 1636   
// 1637     /* Wait for last operation to be completed */
// 1638     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1639 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1640   }
// 1641   /* Return the Write Status */
// 1642   return status;
??FLASH_DATAEEPROM_FastProgramHalfWord_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1643 }
          CFI EndBlock cfiBlock24
// 1644 
// 1645 /**
// 1646   * @brief  Programs a word at a specified address in data memory.
// 1647   * @param  Address specifies the address to be written.
// 1648   * @param  Data specifies the data to be written.
// 1649   * @note   This function assumes that the is data word is already erased.
// 1650   * @retval HAL status
// 1651   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_FastProgramWord
        THUMB
// 1652 static HAL_StatusTypeDef FLASH_DATAEEPROM_FastProgramWord(uint32_t Address, uint32_t Data)
// 1653 {
FLASH_DATAEEPROM_FastProgramWord:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1654   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1655 
// 1656   /* Check the parameters */
// 1657   assert_param(IS_FLASH_DATA_ADDRESS(Address));
// 1658   
// 1659   /* Wait for last operation to be completed */
// 1660   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1661   
// 1662   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_FastProgramWord_0
// 1663   {
// 1664     /* Clear the FTDW bit */
// 1665     CLEAR_BIT(FLASH->PECR, FLASH_PECR_FTDW);
        LDR.N    R0,??DataTable25_1  ;; 0x40023c04
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.N    R1,??DataTable25_1  ;; 0x40023c04
        STR      R0,[R1, #+0]
// 1666   
// 1667     /* If the previous operation is completed, proceed to program the new data */    
// 1668     *(__IO uint32_t *)Address = Data;
        STR      R5,[R4, #+0]
// 1669     
// 1670     /* Wait for last operation to be completed */
// 1671     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);       
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1672   }
// 1673   /* Return the Write Status */
// 1674   return status;
??FLASH_DATAEEPROM_FastProgramWord_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1675 }
          CFI EndBlock cfiBlock25
// 1676 
// 1677 /**
// 1678   * @brief  Write a Byte at a specified address in data memory without erase.
// 1679   * @param  Address specifies the address to be written.
// 1680   * @param  Data specifies the data to be written.
// 1681   * @retval HAL status
// 1682   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_ProgramByte
        THUMB
// 1683 static HAL_StatusTypeDef FLASH_DATAEEPROM_ProgramByte(uint32_t Address, uint8_t Data)
// 1684 {
FLASH_DATAEEPROM_ProgramByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1685   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1686 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1687   uint32_t tmp = 0, tmpaddr = 0;
// 1688 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1689   
// 1690   /* Check the parameters */
// 1691   assert_param(IS_FLASH_DATA_ADDRESS(Address)); 
// 1692 
// 1693   /* Wait for last operation to be completed */
// 1694   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1695   
// 1696   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_ProgramByte_0
// 1697   {
// 1698 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1699     if(Data != (uint8_t) 0x00)
// 1700     {  
// 1701       *(__IO uint8_t *)Address = Data;
// 1702     
// 1703       /* Wait for last operation to be completed */
// 1704       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1705 
// 1706     }
// 1707     else
// 1708     {
// 1709       tmpaddr = Address & 0xFFFFFFFC;
// 1710       tmp = * (__IO uint32_t *) tmpaddr;
// 1711       tmpaddr = 0xFF << ((uint32_t) (0x8 * (Address & 0x3)));
// 1712       tmp &= ~tmpaddr;        
// 1713       status = HAL_FLASHEx_DATAEEPROM_Erase(FLASH_TYPEERASEDATA_WORD, Address & 0xFFFFFFFC);
// 1714       /* Process Unlocked */
// 1715       __HAL_UNLOCK(&pFlash);
// 1716       status = HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTWORD, (Address & 0xFFFFFFFC), tmp);
// 1717       /* Process Locked */
// 1718       __HAL_LOCK(&pFlash);
// 1719     }
// 1720 #else /* Not Cat1*/
// 1721     *(__IO uint8_t *)Address = Data;
        STRB     R5,[R4, #+0]
// 1722     
// 1723     /* Wait for last operation to be completed */
// 1724     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1725 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1726   }
// 1727   /* Return the Write Status */
// 1728   return status;
??FLASH_DATAEEPROM_ProgramByte_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1729 }
          CFI EndBlock cfiBlock26
// 1730 
// 1731 /**
// 1732   * @brief  Writes a half word at a specified address in data memory without erase.
// 1733   * @param  Address specifies the address to be written.
// 1734   * @param  Data specifies the data to be written.
// 1735   * @retval HAL status
// 1736   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_ProgramHalfWord
        THUMB
// 1737 static HAL_StatusTypeDef FLASH_DATAEEPROM_ProgramHalfWord(uint32_t Address, uint16_t Data)
// 1738 {
FLASH_DATAEEPROM_ProgramHalfWord:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1739   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1740 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1741   uint32_t tmp = 0, tmpaddr = 0;
// 1742 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1743   
// 1744   /* Check the parameters */
// 1745   assert_param(IS_FLASH_DATA_ADDRESS(Address));
// 1746 
// 1747   /* Wait for last operation to be completed */
// 1748   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1749   
// 1750   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_ProgramHalfWord_0
// 1751   {
// 1752 #if defined(STM32L100xB) || defined(STM32L151xB) || defined(STM32L152xB)
// 1753     if(Data != (uint16_t)0x0000)
// 1754     {
// 1755       *(__IO uint16_t *)Address = Data;
// 1756    
// 1757       /* Wait for last operation to be completed */
// 1758       status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
// 1759     }
// 1760     else
// 1761     {
// 1762       /* Process Unlocked */
// 1763       __HAL_UNLOCK(&pFlash);
// 1764       if((Address & 0x3) != 0x3)
// 1765       {
// 1766         tmpaddr = Address & 0xFFFFFFFC;
// 1767         tmp = * (__IO uint32_t *) tmpaddr;
// 1768         tmpaddr = 0xFFFF << ((uint32_t) (0x8 * (Address & 0x3)));
// 1769         tmp &= ~tmpaddr;          
// 1770         status = HAL_FLASHEx_DATAEEPROM_Erase(FLASH_TYPEERASEDATA_WORD, Address & 0xFFFFFFFC);
// 1771         status = HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTWORD, (Address & 0xFFFFFFFC), tmp);
// 1772       }
// 1773       else
// 1774       {
// 1775         HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTBYTE, Address, 0x00);
// 1776         HAL_FLASHEx_DATAEEPROM_Program(FLASH_TYPEPROGRAMDATA_FASTBYTE, Address + 1, 0x00);
// 1777       }
// 1778       /* Process Locked */
// 1779       __HAL_LOCK(&pFlash);
// 1780     }
// 1781 #else /* Not Cat1*/
// 1782     *(__IO uint16_t *)Address = Data;
        STRH     R5,[R4, #+0]
// 1783    
// 1784     /* Wait for last operation to be completed */
// 1785     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1786 #endif /* STM32L100xB || STM32L151xB || STM32L152xB  */
// 1787   }
// 1788   /* Return the Write Status */
// 1789   return status;
??FLASH_DATAEEPROM_ProgramHalfWord_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1790 }
          CFI EndBlock cfiBlock27
// 1791 
// 1792 /**
// 1793   * @brief  Programs a word at a specified address in data memory without erase.
// 1794   * @param  Address specifies the address to be written.
// 1795   * @param  Data specifies the data to be written.
// 1796   * @retval HAL status
// 1797   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function FLASH_DATAEEPROM_ProgramWord
        THUMB
// 1798 static HAL_StatusTypeDef FLASH_DATAEEPROM_ProgramWord(uint32_t Address, uint32_t Data)
// 1799 {
FLASH_DATAEEPROM_ProgramWord:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1800   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1801   
// 1802   /* Check the parameters */
// 1803   assert_param(IS_FLASH_DATA_ADDRESS(Address));
// 1804   
// 1805   /* Wait for last operation to be completed */
// 1806   status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1807   
// 1808   if(status == HAL_OK)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??FLASH_DATAEEPROM_ProgramWord_0
// 1809   {
// 1810     *(__IO uint32_t *)Address = Data;
        STR      R5,[R4, #+0]
// 1811 
// 1812     /* Wait for last operation to be completed */
// 1813     status = FLASH_WaitForLastOperation(FLASH_TIMEOUT_VALUE);
        MOVW     R0,#+50000
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1814   }
// 1815   /* Return the Write Status */
// 1816   return status;
??FLASH_DATAEEPROM_ProgramWord_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
// 1817 }
          CFI EndBlock cfiBlock28
// 1818 
// 1819 /**
// 1820   * @}
// 1821   */
// 1822 
// 1823 /**
// 1824   * @}
// 1825   */
// 1826 
// 1827 /** @addtogroup FLASH
// 1828   * @{
// 1829   */
// 1830 
// 1831 
// 1832 /** @addtogroup FLASH_Private_Functions
// 1833  * @{
// 1834  */
// 1835 
// 1836 /**
// 1837   * @brief  Erases a specified page in program memory.
// 1838   * @param  PageAddress The page address in program memory to be erased.
// 1839   * @note   A Page is erased in the Program memory only if the address to load 
// 1840   *         is the start address of a page (multiple of @ref FLASH_PAGE_SIZE bytes).
// 1841   * @retval None
// 1842   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function FLASH_PageErase
          CFI NoCalls
        THUMB
// 1843 void FLASH_PageErase(uint32_t PageAddress)
// 1844 {
// 1845   /* Clean the error context */
// 1846   pFlash.ErrorCode = HAL_FLASH_ERROR_NONE;
FLASH_PageErase:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable25
        STR      R1,[R2, #+20]
// 1847 
// 1848   /* Set the ERASE bit */
// 1849   SET_BIT(FLASH->PECR, FLASH_PECR_ERASE);
        LDR.N    R1,??DataTable25_1  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x200
        LDR.N    R2,??DataTable25_1  ;; 0x40023c04
        STR      R1,[R2, #+0]
// 1850 
// 1851   /* Set PROG bit */
// 1852   SET_BIT(FLASH->PECR, FLASH_PECR_PROG);
        LDR.N    R1,??DataTable25_1  ;; 0x40023c04
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8
        LDR.N    R2,??DataTable25_1  ;; 0x40023c04
        STR      R1,[R2, #+0]
// 1853 
// 1854   /* Write 00000000h to the first word of the program page to erase */
// 1855   *(__IO uint32_t *)(uint32_t)(PageAddress & ~(FLASH_PAGE_SIZE - 1)) = 0x00000000;
        MOVS     R1,#+0
        LSRS     R0,R0,#+8
        LSLS     R0,R0,#+8
        STR      R1,[R0, #+0]
// 1856 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     pFlash

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     0x40023c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     0x40023c20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     0x40023c80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     0x40023c84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_5:
        DC32     0x40023c1c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_6:
        DC32     0x89abcdef

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_7:
        DC32     0x40023c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_8:
        DC32     0x2030405

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_9:
        DC32     0x1ff80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_10:
        DC32     0x1ff80004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_11:
        DC32     0x1ff80008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_12:
        DC32     0x1ff8000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_13:
        DC32     0x1ff80010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_14:
        DC32     0x1ff80014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_15:
        DC32     0x1ff80018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_16:
        DC32     0x1ff8001c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1857   
// 1858 /**
// 1859   * @}
// 1860   */
// 1861 
// 1862 /**
// 1863   * @}
// 1864   */
// 1865 
// 1866 #endif /* HAL_FLASH_MODULE_ENABLED */
// 1867 /**
// 1868   * @}
// 1869   */
// 1870 
// 1871 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 1 988 bytes in section .text
// 
// 1 988 bytes of CODE memory
//
//Errors: none
//Warnings: none
