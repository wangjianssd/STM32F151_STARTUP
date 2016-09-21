///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:26
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_fsmc.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_fsmc.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_fsmc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_fsmc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_fsmc.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   FSMC Low Layer HAL module driver.
//    8   *
//    9   *          This file provides firmware functions to manage the following
//   10   *          functionalities of the Flexible Static Memory Controller (FSMC) peripheral memories:
//   11   *           + Initialization/de-initialization functions
//   12   *           + Peripheral Control functions
//   13   *           + Peripheral State functions
//   14   *
//   15   @verbatim
//   16   =============================================================================
//   17                         ##### FSMC peripheral features #####
//   18   =============================================================================
//   19     [..] The Flexible static memory controller (FSMC) includes following memory controllers:
//   20          (+) The NOR/PSRAM memory controller
//   21 
//   22     [..] The FSMC functional block makes the interface with synchronous and asynchronous static
//   23          memories. Its main purposes are:
//   24          (+) to translate AHB transactions into the appropriate external device protocol.
//   25          (+) to meet the access time requirements of the external memory devices.
//   26 
//   27     [..] All external memories share the addresses, data and control signals with the controller.
//   28          Each external device is accessed by means of a unique Chip Select. The FSMC performs
//   29          only one access at a time to an external device.
//   30          The main features of the FSMC controller are the following:
//   31           (+) Interface with static-memory mapped devices including:
//   32              (++) Static random access memory (SRAM).
//   33              (++) NOR Flash memory.
//   34              (++) PSRAM (4 memory banks).
//   35           (+) Independent Chip Select control for each memory bank
//   36           (+) Independent configuration for each memory bank
//   37 
//   38   @endverbatim
//   39   ******************************************************************************
//   40   * @attention
//   41   *
//   42   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   43   *
//   44   * Redistribution and use in source and binary forms, with or without modification,
//   45   * are permitted provided that the following conditions are met:
//   46   *   1. Redistributions of source code must retain the above copyright notice,
//   47   *      this list of conditions and the following disclaimer.
//   48   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   49   *      this list of conditions and the following disclaimer in the documentation
//   50   *      and/or other materials provided with the distribution.
//   51   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   52   *      may be used to endorse or promote products derived from this software
//   53   *      without specific prior written permission.
//   54   *
//   55   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   56   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   57   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   58   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   59   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   60   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   61   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   62   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   63   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   64   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   65   *
//   66   ******************************************************************************
//   67   */
//   68 
//   69 /* Includes ------------------------------------------------------------------*/
//   70 #include "stm32l1xx_hal.h"
//   71 
//   72 /** @addtogroup STM32L1xx_HAL_Driver
//   73   * @{
//   74   */
//   75 
//   76 #if defined(FSMC_BANK1)
//   77 
//   78 #if defined(HAL_SRAM_MODULE_ENABLED) || defined(HAL_NOR_MODULE_ENABLED)
//   79 
//   80 /** @defgroup FSMC_LL FSMC Low Layer
//   81   * @brief FSMC driver modules
//   82   * @{
//   83   */
//   84 
//   85 /* Private typedef -----------------------------------------------------------*/
//   86 /* Private define ------------------------------------------------------------*/
//   87 /** @defgroup FSMC_LL_Private_Constants FSMC Low Layer Private Constants
//   88   * @{
//   89   */
//   90 
//   91 /* ----------------------- FSMC registers bit mask --------------------------- */
//   92 /* --- BCR Register ---*/
//   93 /* BCR register clear mask */
//   94 #define BCR_CLEAR_MASK                 ((uint32_t)(FSMC_BCRx_FACCEN  | FSMC_BCRx_MUXEN     | \ 
//   95                                                    FSMC_BCRx_MTYP    | FSMC_BCRx_MWID      | \ 
//   96                                                    FSMC_BCRx_BURSTEN | FSMC_BCRx_WAITPOL   | \ 
//   97                                                    FSMC_BCRx_WRAPMOD | FSMC_BCRx_WAITCFG   | \ 
//   98                                                    FSMC_BCRx_WREN    | FSMC_BCRx_WAITEN    | \ 
//   99                                                    FSMC_BCRx_EXTMOD  | FSMC_BCRx_ASYNCWAIT | \ 
//  100                                                    FSMC_BCRx_CBURSTRW))
//  101 /* --- BTR Register ---*/
//  102 /* BTR register clear mask */
//  103 #define BTR_CLEAR_MASK                 ((uint32_t)(FSMC_BTRx_ADDSET | FSMC_BTRx_ADDHLD  |\ 
//  104                                                    FSMC_BTRx_DATAST | FSMC_BTRx_BUSTURN |\ 
//  105                                                    FSMC_BTRx_CLKDIV | FSMC_BTRx_DATLAT  |\ 
//  106                                                    FSMC_BTRx_ACCMOD))
//  107 
//  108 /* --- BWTR Register ---*/
//  109 /* BWTR register clear mask */
//  110 #define BWTR_CLEAR_MASK                ((uint32_t)(FSMC_BWTRx_ADDSET | FSMC_BWTRx_ADDHLD | \ 
//  111                                                    FSMC_BWTRx_DATAST | FSMC_BWTRx_ACCMOD | \ 
//  112                                                    FSMC_BWTRx_BUSTURN))
//  113 
//  114 /**
//  115   * @}
//  116   */
//  117 
//  118 /* Private macro -------------------------------------------------------------*/
//  119 /** @defgroup FSMC_LL_Private_Macros FSMC Low Layer Private Macros
//  120   * @{
//  121   */
//  122 
//  123 /**
//  124   * @}
//  125   */
//  126 
//  127 /* Private variables ---------------------------------------------------------*/
//  128 /* Private function prototypes -----------------------------------------------*/
//  129 /* Exported functions --------------------------------------------------------*/
//  130 
//  131 /** @defgroup FSMC_LL_Exported_Functions FSMC Low Layer Exported Functions
//  132   * @{
//  133   */
//  134 
//  135 /** @defgroup FSMC_NORSRAM FSMC NORSRAM Controller functions
//  136   * @brief    NORSRAM Controller functions
//  137   *
//  138   @verbatim
//  139   ==============================================================================
//  140                    ##### How to use NORSRAM device driver #####
//  141   ==============================================================================
//  142 
//  143   [..]
//  144     This driver contains a set of APIs to interface with the FSMC NORSRAM banks in order
//  145     to run the NORSRAM external devices.
//  146 
//  147     (+) FSMC NORSRAM bank reset using the function FSMC_NORSRAM_DeInit()
//  148     (+) FSMC NORSRAM bank control configuration using the function FSMC_NORSRAM_Init()
//  149     (+) FSMC NORSRAM bank timing configuration using the function FSMC_NORSRAM_Timing_Init()
//  150     (+) FSMC NORSRAM bank extended timing configuration using the function
//  151         FSMC_NORSRAM_Extended_Timing_Init()
//  152     (+) FSMC NORSRAM bank enable/disable write operation using the functions
//  153         FSMC_NORSRAM_WriteOperation_Enable()/FSMC_NORSRAM_WriteOperation_Disable()
//  154 
//  155 
//  156 @endverbatim
//  157   * @{
//  158   */
//  159 
//  160 /** @defgroup FSMC_NORSRAM_Group1 Initialization/de-initialization functions
//  161   * @brief    Initialization and Configuration functions
//  162   *
//  163   @verbatim
//  164   ==============================================================================
//  165               ##### Initialization and de_initialization functions #####
//  166   ==============================================================================
//  167   [..]
//  168     This section provides functions allowing to:
//  169     (+) Initialize and configure the FSMC NORSRAM interface
//  170     (+) De-initialize the FSMC NORSRAM interface
//  171     (+) Configure the FSMC clock and associated GPIOs
//  172 
//  173 @endverbatim
//  174   * @{
//  175   */
//  176 
//  177 /**
//  178   * @brief  Initialize the FSMC_NORSRAM device according to the specified
//  179   *         control parameters in the FSMC_NORSRAM_InitTypeDef
//  180   * @param  Device Pointer to NORSRAM device instance
//  181   * @param  Init Pointer to NORSRAM Initialization structure
//  182   * @retval HAL status
//  183   */
//  184 HAL_StatusTypeDef  FSMC_NORSRAM_Init(FSMC_NORSRAM_TypeDef *Device, FSMC_NORSRAM_InitTypeDef *Init)
//  185 {
//  186   /* Check the parameters */
//  187   assert_param(IS_FSMC_NORSRAM_DEVICE(Device));
//  188   assert_param(IS_FSMC_NORSRAM_BANK(Init->NSBank));
//  189   assert_param(IS_FSMC_MUX(Init->DataAddressMux));
//  190   assert_param(IS_FSMC_MEMORY(Init->MemoryType));
//  191   assert_param(IS_FSMC_NORSRAM_MEMORY_WIDTH(Init->MemoryDataWidth));
//  192   assert_param(IS_FSMC_BURSTMODE(Init->BurstAccessMode));
//  193   assert_param(IS_FSMC_WAIT_POLARITY(Init->WaitSignalPolarity));
//  194   assert_param(IS_FSMC_WRAP_MODE(Init->WrapMode));
//  195   assert_param(IS_FSMC_WAIT_SIGNAL_ACTIVE(Init->WaitSignalActive));
//  196   assert_param(IS_FSMC_WRITE_OPERATION(Init->WriteOperation));
//  197   assert_param(IS_FSMC_WAITE_SIGNAL(Init->WaitSignal));
//  198   assert_param(IS_FSMC_EXTENDED_MODE(Init->ExtendedMode));
//  199   assert_param(IS_FSMC_ASYNWAIT(Init->AsynchronousWait));
//  200   assert_param(IS_FSMC_WRITE_BURST(Init->WriteBurst));
//  201 
//  202   /* Disable NORSRAM Device */
//  203   __FSMC_NORSRAM_DISABLE(Device, Init->NSBank);
//  204 
//  205   /* Set NORSRAM device control parameters */
//  206   if (Init->MemoryType == FSMC_MEMORY_TYPE_NOR)
//  207   {
//  208     MODIFY_REG(Device->BTCR[Init->NSBank], BCR_CLEAR_MASK, (uint32_t)(FSMC_NORSRAM_FLASH_ACCESS_ENABLE
//  209                | Init->DataAddressMux
//  210                | Init->MemoryType
//  211                | Init->MemoryDataWidth
//  212                | Init->BurstAccessMode
//  213                | Init->WaitSignalPolarity
//  214                | Init->WrapMode
//  215                | Init->WaitSignalActive
//  216                | Init->WriteOperation
//  217                | Init->WaitSignal
//  218                | Init->ExtendedMode
//  219                | Init->AsynchronousWait
//  220                | Init->WriteBurst
//  221                                                                      )
//  222               );
//  223   }
//  224   else
//  225   {
//  226     MODIFY_REG(Device->BTCR[Init->NSBank], BCR_CLEAR_MASK, (uint32_t)(FSMC_NORSRAM_FLASH_ACCESS_DISABLE
//  227                | Init->DataAddressMux
//  228                | Init->MemoryType
//  229                | Init->MemoryDataWidth
//  230                | Init->BurstAccessMode
//  231                | Init->WaitSignalPolarity
//  232                | Init->WrapMode
//  233                | Init->WaitSignalActive
//  234                | Init->WriteOperation
//  235                | Init->WaitSignal
//  236                | Init->ExtendedMode
//  237                | Init->AsynchronousWait
//  238                | Init->WriteBurst
//  239                                                                      )
//  240               );
//  241   }
//  242 
//  243   return HAL_OK;
//  244 }
//  245 
//  246 
//  247 /**
//  248   * @brief  DeInitialize the FSMC_NORSRAM peripheral
//  249   * @param  Device Pointer to NORSRAM device instance
//  250   * @param  ExDevice Pointer to NORSRAM extended mode device instance
//  251   * @param  Bank NORSRAM bank number
//  252   * @retval HAL status
//  253   */
//  254 HAL_StatusTypeDef FSMC_NORSRAM_DeInit(FSMC_NORSRAM_TypeDef *Device, FSMC_NORSRAM_EXTENDED_TypeDef *ExDevice, uint32_t Bank)
//  255 {
//  256   /* Check the parameters */
//  257   assert_param(IS_FSMC_NORSRAM_DEVICE(Device));
//  258   assert_param(IS_FSMC_NORSRAM_EXTENDED_DEVICE(ExDevice));
//  259   assert_param(IS_FSMC_NORSRAM_BANK(Bank));
//  260 
//  261   /* Disable the FSMC_NORSRAM device */
//  262   __FSMC_NORSRAM_DISABLE(Device, Bank);
//  263 
//  264   /* De-initialize the FSMC_NORSRAM device */
//  265   /* FSMC_NORSRAM_BANK1 */
//  266   if (Bank == FSMC_NORSRAM_BANK1)
//  267   {
//  268     Device->BTCR[Bank] = 0x000030DB;
//  269   }
//  270   /* FSMC_NORSRAM_BANK2, FSMC_NORSRAM_BANK3 or FSMC_NORSRAM_BANK4 */
//  271   else
//  272   {
//  273     Device->BTCR[Bank] = 0x000030D2;
//  274   }
//  275 
//  276   Device->BTCR[Bank + 1] = 0x0FFFFFFF;
//  277   ExDevice->BWTR[Bank]   = 0x0FFFFFFF;
//  278 
//  279   return HAL_OK;
//  280 }
//  281 
//  282 
//  283 /**
//  284   * @brief  Initialize the FSMC_NORSRAM Timing according to the specified
//  285   *         parameters in the FSMC_NORSRAM_TimingTypeDef
//  286   * @param  Device Pointer to NORSRAM device instance
//  287   * @param  Timing Pointer to NORSRAM Timing structure
//  288   * @param  Bank NORSRAM bank number
//  289   * @retval HAL status
//  290   */
//  291 HAL_StatusTypeDef FSMC_NORSRAM_Timing_Init(FSMC_NORSRAM_TypeDef *Device, FSMC_NORSRAM_TimingTypeDef *Timing, uint32_t Bank)
//  292 {
//  293   /* Check the parameters */
//  294   assert_param(IS_FSMC_NORSRAM_DEVICE(Device));
//  295   assert_param(IS_FSMC_ADDRESS_SETUP_TIME(Timing->AddressSetupTime));
//  296   assert_param(IS_FSMC_ADDRESS_HOLD_TIME(Timing->AddressHoldTime));
//  297   assert_param(IS_FSMC_DATASETUP_TIME(Timing->DataSetupTime));
//  298   assert_param(IS_FSMC_TURNAROUND_TIME(Timing->BusTurnAroundDuration));
//  299   assert_param(IS_FSMC_CLK_DIV(Timing->CLKDivision));
//  300   assert_param(IS_FSMC_DATA_LATENCY(Timing->DataLatency));
//  301   assert_param(IS_FSMC_ACCESS_MODE(Timing->AccessMode));
//  302   assert_param(IS_FSMC_NORSRAM_BANK(Bank));
//  303 
//  304   /* Set FSMC_NORSRAM device timing parameters */
//  305   MODIFY_REG(Device->BTCR[Bank + 1],                                                    \ 
//  306              BTR_CLEAR_MASK,                                                                     \ 
//  307              (uint32_t)(Timing->AddressSetupTime                                               | \ 
//  308                         ((Timing->AddressHoldTime)        << POSITION_VAL(FSMC_BTRx_ADDHLD))        | \ 
//  309                         ((Timing->DataSetupTime)          << POSITION_VAL(FSMC_BTRx_DATAST))        | \ 
//  310                         ((Timing->BusTurnAroundDuration)  << POSITION_VAL(FSMC_BTRx_BUSTURN))       | \ 
//  311                         (((Timing->CLKDivision) - 1)        << POSITION_VAL(FSMC_BTRx_CLKDIV))        | \ 
//  312                         (((Timing->DataLatency) - 2)        << POSITION_VAL(FSMC_BTRx_DATLAT))        | \ 
//  313                         (Timing->AccessMode)));
//  314 
//  315   return HAL_OK;
//  316 }
//  317 
//  318 /**
//  319   * @brief  Initialize the FSMC_NORSRAM Extended mode Timing according to the specified
//  320   *         parameters in the FSMC_NORSRAM_TimingTypeDef
//  321   * @param  Device Pointer to NORSRAM device instance
//  322   * @param  Timing Pointer to NORSRAM Timing structure
//  323   * @param  Bank NORSRAM bank number
//  324   * @param  ExtendedMode FSMC Extended Mode
//  325   *          This parameter can be one of the following values:
//  326   *            @arg FSMC_EXTENDED_MODE_DISABLE
//  327   *            @arg FSMC_EXTENDED_MODE_ENABLE
//  328   * @retval HAL status
//  329   */
//  330 HAL_StatusTypeDef  FSMC_NORSRAM_Extended_Timing_Init(FSMC_NORSRAM_EXTENDED_TypeDef *Device, FSMC_NORSRAM_TimingTypeDef *Timing, uint32_t Bank, uint32_t ExtendedMode)
//  331 {
//  332   /* Check the parameters */
//  333   assert_param(IS_FSMC_EXTENDED_MODE(ExtendedMode));
//  334 
//  335   /* Set NORSRAM device timing register for write configuration, if extended mode is used */
//  336   if (ExtendedMode == FSMC_EXTENDED_MODE_ENABLE)
//  337   {
//  338     /* Check the parameters */
//  339     assert_param(IS_FSMC_NORSRAM_EXTENDED_DEVICE(Device));
//  340     assert_param(IS_FSMC_ADDRESS_SETUP_TIME(Timing->AddressSetupTime));
//  341     assert_param(IS_FSMC_ADDRESS_HOLD_TIME(Timing->AddressHoldTime));
//  342     assert_param(IS_FSMC_DATASETUP_TIME(Timing->DataSetupTime));
//  343     assert_param(IS_FSMC_TURNAROUND_TIME(Timing->BusTurnAroundDuration));
//  344     assert_param(IS_FSMC_ACCESS_MODE(Timing->AccessMode));
//  345     assert_param(IS_FSMC_NORSRAM_BANK(Bank));
//  346 
//  347     /* Set NORSRAM device timing register for write configuration, if extended mode is used */
//  348     MODIFY_REG(Device->BWTR[Bank],                                                  \ 
//  349                BWTR_CLEAR_MASK,                                                              \ 
//  350                (uint32_t)(Timing->AddressSetupTime                                         | \ 
//  351                           ((Timing->AddressHoldTime)        << POSITION_VAL(FSMC_BWTRx_ADDHLD)) | \ 
//  352                           ((Timing->DataSetupTime)          << POSITION_VAL(FSMC_BWTRx_DATAST)) | \ 
//  353                           Timing->AccessMode                                                          | \ 
//  354                           ((Timing->BusTurnAroundDuration)  << POSITION_VAL(FSMC_BWTRx_BUSTURN))));
//  355   }
//  356   else
//  357   {
//  358     Device->BWTR[Bank] = 0x0FFFFFFF;
//  359   }
//  360 
//  361   return HAL_OK;
//  362 }
//  363 
//  364 
//  365 /**
//  366   * @}
//  367   */
//  368 
//  369 
//  370 /** @defgroup FSMC_NORSRAM_Group2 Control functions
//  371  *  @brief   management functions
//  372  *
//  373 @verbatim
//  374   ==============================================================================
//  375                       ##### FSMC_NORSRAM Control functions #####
//  376   ==============================================================================
//  377   [..]
//  378     This subsection provides a set of functions allowing to control dynamically
//  379     the FSMC NORSRAM interface.
//  380 
//  381 @endverbatim
//  382   * @{
//  383   */
//  384 
//  385 /**
//  386   * @brief  Enables dynamically FSMC_NORSRAM write operation.
//  387   * @param  Device Pointer to NORSRAM device instance
//  388   * @param  Bank NORSRAM bank number
//  389   * @retval HAL status
//  390   */
//  391 HAL_StatusTypeDef FSMC_NORSRAM_WriteOperation_Enable(FSMC_NORSRAM_TypeDef *Device, uint32_t Bank)
//  392 {
//  393   /* Check the parameters */
//  394   assert_param(IS_FSMC_NORSRAM_DEVICE(Device));
//  395   assert_param(IS_FSMC_NORSRAM_BANK(Bank));
//  396 
//  397   /* Enable write operation */
//  398   SET_BIT(Device->BTCR[Bank], FSMC_WRITE_OPERATION_ENABLE);
//  399 
//  400   return HAL_OK;
//  401 }
//  402 
//  403 /**
//  404   * @brief  Disables dynamically FSMC_NORSRAM write operation.
//  405   * @param  Device Pointer to NORSRAM device instance
//  406   * @param  Bank NORSRAM bank number
//  407   * @retval HAL status
//  408   */
//  409 HAL_StatusTypeDef FSMC_NORSRAM_WriteOperation_Disable(FSMC_NORSRAM_TypeDef *Device, uint32_t Bank)
//  410 {
//  411   /* Check the parameters */
//  412   assert_param(IS_FSMC_NORSRAM_DEVICE(Device));
//  413   assert_param(IS_FSMC_NORSRAM_BANK(Bank));
//  414 
//  415   /* Disable write operation */
//  416   CLEAR_BIT(Device->BTCR[Bank], FSMC_WRITE_OPERATION_ENABLE);
//  417 
//  418   return HAL_OK;
//  419 }
//  420 
//  421 /**
//  422   * @}
//  423   */
//  424 
//  425 /**
//  426   * @}
//  427   */
//  428 /**
//  429   * @}
//  430   */
//  431 
//  432 /**
//  433   * @}
//  434   */
//  435 
//  436 #endif /* defined(HAL_SRAM_MODULE_ENABLED) || defined(HAL_NOR_MODULE_ENABLED) */
//  437 
//  438 #endif /* FSMC_BANK1 */
//  439 
//  440 /**
//  441   * @}
//  442   */
//  443 
//  444 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
