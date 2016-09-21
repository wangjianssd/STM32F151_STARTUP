///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sd.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sd.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_sd.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sd.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_sd.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   SD card HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Secure Digital (SD) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral Control functions 
//   13   *           + Peripheral State functions
//   14   *         
//   15   @verbatim
//   16   ==============================================================================
//   17                         ##### How to use this driver #####
//   18   ==============================================================================
//   19   [..]
//   20     This driver implements a high level communication layer for read and write from/to 
//   21     this memory. The needed STM32 hardware resources (SDIO and GPIO) are performed by 
//   22     the user in HAL_SD_MspInit() function (MSP layer).                             
//   23     Basically, the MSP layer configuration should be the same as we provide in the 
//   24     examples.
//   25     You can easily tailor this configuration according to hardware resources.
//   26 
//   27   [..]
//   28     This driver is a generic layered driver for SDIO memories which uses the HAL 
//   29     SDIO driver functions to interface with SD and uSD cards devices. 
//   30     It is used as follows:
//   31  
//   32     (#)Initialize the SDIO low level resources by implement the HAL_SD_MspInit() API:
//   33         (##) Enable the SDIO interface clock using __HAL_RCC_SDIO_CLK_ENABLE(); 
//   34         (##) SDIO pins configuration for SD card
//   35             (+++) Enable the clock for the SDIO GPIOs using the functions __HAL_RCC_GPIOx_CLK_ENABLE();   
//   36             (+++) Configure these SDIO pins as alternate function pull-up using HAL_GPIO_Init()
//   37                   and according to your pin assignment;
//   38         (##) DMA Configuration if you need to use DMA process (HAL_SD_ReadBlocks_DMA()
//   39              and HAL_SD_WriteBlocks_DMA() APIs).
//   40             (+++) Enable the DMAx interface clock using __HAL_RCC_DMAx_CLK_ENABLE(); 
//   41             (+++) Configure the DMA using the function HAL_DMA_Init() with predeclared and filled. 
//   42         (##) NVIC configuration if you need to use interrupt process when using DMA transfer.
//   43             (+++) Configure the SDIO and DMA interrupt priorities using functions
//   44                   HAL_NVIC_SetPriority(); DMA priority is superior to SDIO's priority
//   45             (+++) Enable the NVIC DMA and SDIO IRQs using function HAL_NVIC_EnableIRQ()
//   46             (+++) SDIO interrupts are managed using the macros __HAL_SD_SDIO_ENABLE_IT() 
//   47                   and __HAL_SD_SDIO_DISABLE_IT() inside the communication process.
//   48             (+++) SDIO interrupts pending bits are managed using the macros __HAL_SD_SDIO_GET_IT()
//   49                   and __HAL_SD_SDIO_CLEAR_IT()
//   50     (#) At this stage, you can perform SD read/write/erase operations after SD card initialization  
//   51 
//   52          
//   53   *** SD Card Initialization and configuration ***
//   54   ================================================    
//   55   [..]
//   56     To initialize the SD Card, use the HAL_SD_Init() function.  It Initializes 
//   57     the SD Card and put it into Standby State (Ready for data transfer). 
//   58     This function provide the following operations:
//   59   
//   60     (#) Apply the SD Card initialization process at 400KHz and check the SD Card 
//   61         type (Standard Capacity or High Capacity). You can change or adapt this 
//   62         frequency by adjusting the "ClockDiv" field. 
//   63         The SD Card frequency (SDIO_CK) is computed as follows:
//   64   
//   65            SDIO_CK = SDIOCLK / (ClockDiv + 2)
//   66   
//   67         In initialization mode and according to the SD Card standard, 
//   68         make sure that the SDIO_CK frequency doesn't exceed 400KHz.
//   69   
//   70     (#) Get the SD CID and CSD data. All these information are managed by the SDCardInfo 
//   71         structure. This structure provide also ready computed SD Card capacity 
//   72         and Block size.
//   73         
//   74         -@- These information are stored in SD handle structure in case of future use.  
//   75   
//   76     (#) Configure the SD Card Data transfer frequency. By Default, the card transfer 
//   77         frequency is set to 48MHz / (SDIO_TRANSFER_CLK_DIV + 2) = 8MHz. You can change or adapt this frequency by adjusting 
//   78         the "ClockDiv" field.
//   79         The SD Card frequency (SDIO_CK) is computed as follows:
//   80 
//   81            SDIO_CK = SDIOCLK / (ClockDiv + 2) 
//   82 
//   83         In transfer mode and according to the SD Card standard, make sure that the 
//   84         SDIO_CK frequency doesn't exceed 25MHz and 50MHz in High-speed mode switch.
//   85         To be able to use a frequency higher than 24MHz, you should use the SDIO 
//   86         peripheral in bypass mode. Refer to the corresponding reference manual 
//   87         for more details.
//   88   
//   89     (#) Select the corresponding SD Card according to the address read with the step 2.
//   90     
//   91     (#) Configure the SD Card in wide bus mode: 4-bits data.
//   92   
//   93   *** SD Card Read operation ***
//   94   ==============================
//   95   [..] 
//   96     (+) You can read from SD card in polling mode by using function HAL_SD_ReadBlocks(). 
//   97         This function support only 512-bytes block length (the block size should be 
//   98         chosen as 512 bytes).
//   99         You can choose either one block read operation or multiple block read operation 
//  100         by adjusting the "NumberOfBlocks" parameter.
//  101 
//  102     (+) You can read from SD card in DMA mode by using function HAL_SD_ReadBlocks_DMA().
//  103         This function support only 512-bytes block length (the block size should be 
//  104         chosen as 512 bytes).
//  105         You can choose either one block read operation or multiple block read operation 
//  106         by adjusting the "NumberOfBlocks" parameter.
//  107         After this, you have to call the function HAL_SD_CheckReadOperation(), to insure
//  108         that the read transfer is done correctly in both DMA and SD sides.
//  109   
//  110   *** SD Card Write operation ***
//  111   =============================== 
//  112   [..] 
//  113     (+) You can write to SD card in polling mode by using function HAL_SD_WriteBlocks(). 
//  114         This function support only 512-bytes block length (the block size should be 
//  115         chosen as 512 bytes).
//  116         You can choose either one block read operation or multiple block read operation 
//  117         by adjusting the "NumberOfBlocks" parameter.
//  118 
//  119     (+) You can write to SD card in DMA mode by using function HAL_SD_WriteBlocks_DMA().
//  120         This function support only 512-bytes block length (the block size should be 
//  121         chosen as 512 byte).
//  122         You can choose either one block read operation or multiple block read operation 
//  123         by adjusting the "NumberOfBlocks" parameter.
//  124         After this, you have to call the function HAL_SD_CheckWriteOperation(), to insure
//  125         that the write transfer is done correctly in both DMA and SD sides.  
//  126   
//  127   *** SD card status ***
//  128   ====================== 
//  129   [..]
//  130     (+) At any time, you can check the SD Card status and get the SD card state 
//  131         by using the HAL_SD_GetStatus() function. This function checks first if the 
//  132         SD card is still connected and then get the internal SD Card transfer state.     
//  133     (+) You can also get the SD card SD Status register by using the HAL_SD_SendSDStatus() 
//  134         function.    
//  135 
//  136   *** SD HAL driver macros list ***
//  137   ==================================
//  138   [..]
//  139     Below the list of most used macros in SD HAL driver.
//  140 
//  141     (+) __HAL_SD_SDIO_ENABLE : Enable the SD device
//  142     (+) __HAL_SD_SDIO_DISABLE : Disable the SD device
//  143     (+) __HAL_SD_SDIO_DMA_ENABLE: Enable the SDIO DMA transfer
//  144     (+) __HAL_SD_SDIO_DMA_DISABLE: Disable the SDIO DMA transfer
//  145     (+) __HAL_SD_SDIO_ENABLE_IT: Enable the SD device interrupt
//  146     (+) __HAL_SD_SDIO_DISABLE_IT: Disable the SD device interrupt
//  147     (+) __HAL_SD_SDIO_GET_FLAG:Check whether the specified SD flag is set or not
//  148     (+) __HAL_SD_SDIO_CLEAR_FLAG: Clear the SD's pending flags
//  149       
//  150     (@) You can refer to the SD HAL driver header file for more useful macros 
//  151       
//  152   @endverbatim
//  153   ******************************************************************************
//  154   * @attention
//  155   *
//  156   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  157   *
//  158   * Redistribution and use in source and binary forms, with or without modification,
//  159   * are permitted provided that the following conditions are met:
//  160   *   1. Redistributions of source code must retain the above copyright notice,
//  161   *      this list of conditions and the following disclaimer.
//  162   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  163   *      this list of conditions and the following disclaimer in the documentation
//  164   *      and/or other materials provided with the distribution.
//  165   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  166   *      may be used to endorse or promote products derived from this software
//  167   *      without specific prior written permission.
//  168   *
//  169   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  170   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  171   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  172   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  173   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  174   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  175   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  176   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  177   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  178   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  179   *
//  180   ******************************************************************************
//  181   */ 
//  182 
//  183 /* Includes ------------------------------------------------------------------*/
//  184 #include "stm32l1xx_hal.h"
//  185 
//  186 #ifdef HAL_SD_MODULE_ENABLED
//  187 
//  188 /** @addtogroup STM32L1xx_HAL_Driver
//  189   * @{
//  190   */
//  191 
//  192 /** @addtogroup SD 
//  193   * @{
//  194   */
//  195 
//  196 #if defined(STM32L151xD) || defined(STM32L152xD) || defined(STM32L162xD)
//  197 
//  198 /* Private typedef -----------------------------------------------------------*/
//  199 /* Private define ------------------------------------------------------------*/
//  200 /** @addtogroup SD_Private_Defines
//  201   * @{
//  202   */
//  203 /** 
//  204   * @brief  SDIO Data block size 
//  205   */ 
//  206 #define DATA_BLOCK_SIZE                  ((uint32_t)(9 << 4))
//  207 /** 
//  208   * @brief  SDIO Static flags, Timeout, FIFO Address  
//  209   */
//  210 #define SDIO_STATIC_FLAGS               ((uint32_t)(SDIO_FLAG_CCRCFAIL | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_CTIMEOUT |\ 
//  211                                                     SDIO_FLAG_DTIMEOUT | SDIO_FLAG_TXUNDERR | SDIO_FLAG_RXOVERR  |\ 
//  212                                                     SDIO_FLAG_CMDREND  | SDIO_FLAG_CMDSENT  | SDIO_FLAG_DATAEND  |\ 
//  213                                                     SDIO_FLAG_DBCKEND))  
//  214 
//  215 #define SDIO_CMD0TIMEOUT                (0x00010000U)
//  216 
//  217 /** 
//  218   * @brief  Mask for errors Card Status R1 (OCR Register) 
//  219   */
//  220 #define SD_OCR_ADDR_OUT_OF_RANGE        (0x80000000U)
//  221 #define SD_OCR_ADDR_MISALIGNED          (0x40000000U)
//  222 #define SD_OCR_BLOCK_LEN_ERR            (0x20000000U)
//  223 #define SD_OCR_ERASE_SEQ_ERR            (0x10000000U)
//  224 #define SD_OCR_BAD_ERASE_PARAM          (0x08000000U)
//  225 #define SD_OCR_WRITE_PROT_VIOLATION     (0x04000000U)
//  226 #define SD_OCR_LOCK_UNLOCK_FAILED       (0x01000000U)
//  227 #define SD_OCR_COM_CRC_FAILED           (0x00800000U)
//  228 #define SD_OCR_ILLEGAL_CMD              (0x00400000U)
//  229 #define SD_OCR_CARD_ECC_FAILED          (0x00200000U)
//  230 #define SD_OCR_CC_ERROR                 (0x00100000U)
//  231 #define SD_OCR_GENERAL_UNKNOWN_ERROR    (0x00080000U)
//  232 #define SD_OCR_STREAM_READ_UNDERRUN     (0x00040000U)
//  233 #define SD_OCR_STREAM_WRITE_OVERRUN     (0x00020000U)
//  234 #define SD_OCR_CID_CSD_OVERWRITE        (0x00010000U)
//  235 #define SD_OCR_WP_ERASE_SKIP            (0x00008000U)
//  236 #define SD_OCR_CARD_ECC_DISABLED        (0x00004000U)
//  237 #define SD_OCR_ERASE_RESET              (0x00002000U)
//  238 #define SD_OCR_AKE_SEQ_ERROR            (0x00000008U)
//  239 #define SD_OCR_ERRORBITS                (0xFDFFE008U)
//  240 
//  241 /** 
//  242   * @brief  Masks for R6 Response 
//  243   */
//  244 #define SD_R6_GENERAL_UNKNOWN_ERROR     (0x00002000U)
//  245 #define SD_R6_ILLEGAL_CMD               (0x00004000U)
//  246 #define SD_R6_COM_CRC_FAILED            (0x00008000U)
//  247 
//  248 #define SD_VOLTAGE_WINDOW_SD            (0x80100000U)
//  249 #define SD_HIGH_CAPACITY                (0x40000000U)
//  250 #define SD_STD_CAPACITY                 (0x00000000U)
//  251 #define SD_CHECK_PATTERN                (0x000001AAU)
//  252 
//  253 #define SD_MAX_VOLT_TRIAL               (0x0000FFFFU)
//  254 #define SD_ALLZERO                      (0x00000000U)
//  255 
//  256 #define SD_WIDE_BUS_SUPPORT             (0x00040000U)
//  257 #define SD_SINGLE_BUS_SUPPORT           (0x00010000U)
//  258 #define SD_CARD_LOCKED                  (0x02000000U)
//  259 
//  260 #define SD_DATATIMEOUT                  (0xFFFFFFFFU)
//  261 #define SD_0TO7BITS                     (0x000000FFU)
//  262 #define SD_8TO15BITS                    (0x0000FF00U)
//  263 #define SD_16TO23BITS                   (0x00FF0000U)
//  264 #define SD_24TO31BITS                   (0xFF000000U)
//  265 #define SD_MAX_DATA_LENGTH              (0x01FFFFFFU)
//  266 
//  267 #define SD_HALFFIFO                     (0x00000008U)
//  268 #define SD_HALFFIFOBYTES                (0x00000020U)
//  269 
//  270 /** 
//  271   * @brief  Command Class Supported 
//  272   */
//  273 #define SD_CCCC_LOCK_UNLOCK             (0x00000080U)
//  274 #define SD_CCCC_WRITE_PROT              (0x00000040U)
//  275 #define SD_CCCC_ERASE                   (0x00000020U)
//  276 
//  277 /** 
//  278   * @brief  Following commands are SD Card Specific commands.
//  279   *         SDIO_APP_CMD should be sent before sending these commands. 
//  280   */
//  281 #define SD_SDIO_SEND_IF_COND            ((uint32_t)SD_CMD_HS_SEND_EXT_CSD)
//  282 
//  283 /**
//  284   * @}
//  285   */
//  286   
//  287 /* Private macro -------------------------------------------------------------*/
//  288 /* Private variables ---------------------------------------------------------*/
//  289 /* Private function prototypes -----------------------------------------------*/
//  290 /** @addtogroup SD_Private_Functions_Prototypes
//  291   * @{
//  292   */
//  293 static HAL_SD_ErrorTypedef SD_Initialize_Cards(SD_HandleTypeDef *hsd);
//  294 static HAL_SD_ErrorTypedef SD_Select_Deselect(SD_HandleTypeDef *hsd, uint64_t addr);
//  295 static HAL_SD_ErrorTypedef SD_PowerON(SD_HandleTypeDef *hsd); 
//  296 static HAL_SD_ErrorTypedef SD_PowerOFF(SD_HandleTypeDef *hsd);
//  297 static HAL_SD_ErrorTypedef SD_SendStatus(SD_HandleTypeDef *hsd, uint32_t *pCardStatus);
//  298 static HAL_SD_CardStateTypedef SD_GetState(SD_HandleTypeDef *hsd);
//  299 static HAL_SD_ErrorTypedef SD_IsCardProgramming(SD_HandleTypeDef *hsd, uint8_t *pStatus);
//  300 static HAL_SD_ErrorTypedef SD_CmdError(SD_HandleTypeDef *hsd);
//  301 static HAL_SD_ErrorTypedef SD_CmdResp1Error(SD_HandleTypeDef *hsd, uint8_t SD_CMD);
//  302 static HAL_SD_ErrorTypedef SD_CmdResp7Error(SD_HandleTypeDef *hsd);
//  303 static HAL_SD_ErrorTypedef SD_CmdResp3Error(SD_HandleTypeDef *hsd);
//  304 static HAL_SD_ErrorTypedef SD_CmdResp2Error(SD_HandleTypeDef *hsd);
//  305 static HAL_SD_ErrorTypedef SD_CmdResp6Error(SD_HandleTypeDef *hsd, uint8_t SD_CMD, uint16_t *pRCA);
//  306 static HAL_SD_ErrorTypedef SD_WideBus_Enable(SD_HandleTypeDef *hsd);
//  307 static HAL_SD_ErrorTypedef SD_WideBus_Disable(SD_HandleTypeDef *hsd);
//  308 static HAL_SD_ErrorTypedef SD_FindSCR(SD_HandleTypeDef *hsd, uint32_t *pSCR);  
//  309 static void SD_DMA_RxCplt(DMA_HandleTypeDef *hdma);
//  310 static void SD_DMA_RxError(DMA_HandleTypeDef *hdma);
//  311 static void SD_DMA_TxCplt(DMA_HandleTypeDef *hdma);
//  312 static void SD_DMA_TxError(DMA_HandleTypeDef *hdma);
//  313 /**
//  314   * @}
//  315   */
//  316 /* Exported functions --------------------------------------------------------*/
//  317 /** @addtogroup SD_Exported_Functions
//  318   * @{
//  319   */
//  320 
//  321 /** @addtogroup SD_Exported_Functions_Group1
//  322  *  @brief   Initialization and de-initialization functions 
//  323  *
//  324 @verbatim  
//  325   ==============================================================================
//  326           ##### Initialization and de-initialization functions #####
//  327   ==============================================================================
//  328   [..]  
//  329     This section provides functions allowing to initialize/de-initialize the SD
//  330     card device to be ready for use.
//  331       
//  332  
//  333 @endverbatim
//  334   * @{
//  335   */
//  336 
//  337 /**
//  338   * @brief  Initializes the SD card according to the specified parameters in the 
//  339             SD_HandleTypeDef and create the associated handle.
//  340   * @param  hsd: SD handle
//  341   * @param  SDCardInfo: HAL_SD_CardInfoTypedef structure for SD card information   
//  342   * @retval HAL SD error state
//  343   */
//  344 HAL_SD_ErrorTypedef HAL_SD_Init(SD_HandleTypeDef *hsd, HAL_SD_CardInfoTypedef *SDCardInfo)
//  345 { 
//  346   __IO HAL_SD_ErrorTypedef errorstate = SD_OK;
//  347   SD_InitTypeDef tmpinit;
//  348   
//  349   /* Initialize the low level hardware (MSP) */
//  350   HAL_SD_MspInit(hsd);
//  351   
//  352   /* Default SDIO peripheral configuration for SD card initialization */
//  353   tmpinit.ClockEdge           = SDIO_CLOCK_EDGE_RISING;
//  354   tmpinit.ClockBypass         = SDIO_CLOCK_BYPASS_DISABLE;
//  355   tmpinit.ClockPowerSave      = SDIO_CLOCK_POWER_SAVE_DISABLE;
//  356   tmpinit.BusWide             = SDIO_BUS_WIDE_1B;
//  357   tmpinit.HardwareFlowControl = SDIO_HARDWARE_FLOW_CONTROL_DISABLE;
//  358   tmpinit.ClockDiv            = SDIO_INIT_CLK_DIV;
//  359   
//  360   /* Initialize SDIO peripheral interface with default configuration */
//  361   SDIO_Init(hsd->Instance, tmpinit);
//  362   
//  363   /* Identify card operating voltage */
//  364   errorstate = SD_PowerON(hsd); 
//  365   
//  366   if(errorstate != SD_OK)     
//  367   {
//  368     return errorstate;
//  369   }
//  370   
//  371   /* Initialize the present SDIO card(s) and put them in idle state */
//  372   errorstate = SD_Initialize_Cards(hsd);
//  373   
//  374   if (errorstate != SD_OK)
//  375   {
//  376     return errorstate;
//  377   }
//  378   
//  379   /* Read CSD/CID MSD registers */
//  380   errorstate = HAL_SD_Get_CardInfo(hsd, SDCardInfo);
//  381   
//  382   if (errorstate == SD_OK)
//  383   {
//  384     /* Select the Card */
//  385     errorstate = SD_Select_Deselect(hsd, (uint32_t)(((uint32_t)SDCardInfo->RCA) << 16));
//  386   }
//  387   
//  388   /* Configure SDIO peripheral interface */
//  389   SDIO_Init(hsd->Instance, hsd->Init);   
//  390   
//  391   return errorstate;
//  392 }
//  393 
//  394 /**
//  395   * @brief  De-Initializes the SD card.
//  396   * @param  hsd: SD handle
//  397   * @retval HAL status
//  398   */
//  399 HAL_StatusTypeDef HAL_SD_DeInit(SD_HandleTypeDef *hsd)
//  400 {
//  401   
//  402   /* Set SD power state to off */ 
//  403   SD_PowerOFF(hsd);
//  404   
//  405   /* De-Initialize the MSP layer */
//  406   HAL_SD_MspDeInit(hsd);
//  407   
//  408   return HAL_OK;
//  409 }
//  410 
//  411 
//  412 /**
//  413   * @brief  Initializes the SD MSP.
//  414   * @param  hsd: SD handle
//  415   * @retval None
//  416   */
//  417 __weak void HAL_SD_MspInit(SD_HandleTypeDef *hsd)
//  418 {
//  419   /* Prevent unused argument(s) compilation warning */
//  420   UNUSED(hsd);
//  421 
//  422   /* NOTE : This function Should not be modified, when the callback is needed,
//  423             the HAL_SD_MspInit could be implemented in the user file
//  424    */
//  425 }
//  426 
//  427 /**
//  428   * @brief  De-Initialize SD MSP.
//  429   * @param  hsd: SD handle
//  430   * @retval None
//  431   */
//  432 __weak void HAL_SD_MspDeInit(SD_HandleTypeDef *hsd)
//  433 {
//  434   /* Prevent unused argument(s) compilation warning */
//  435   UNUSED(hsd);
//  436 
//  437   /* NOTE : This function Should not be modified, when the callback is needed,
//  438             the HAL_SD_MspDeInit could be implemented in the user file
//  439    */
//  440 }
//  441 
//  442 /**
//  443   * @}
//  444   */
//  445 
//  446 /** @addtogroup SD_Exported_Functions_Group2
//  447  *  @brief   Data transfer functions 
//  448  *
//  449 @verbatim   
//  450   ==============================================================================
//  451                         ##### IO operation functions #####
//  452   ==============================================================================  
//  453   [..]
//  454     This subsection provides a set of functions allowing to manage the data 
//  455     transfer from/to SD card.
//  456 
//  457 @endverbatim
//  458   * @{
//  459   */
//  460 
//  461 /**
//  462   * @brief  Reads block(s) from a specified address in a card. The Data transfer 
//  463   *         is managed by polling mode.  
//  464   * @param  hsd: SD handle
//  465   * @param  pReadBuffer: pointer to the buffer that will contain the received data
//  466   * @param  ReadAddr: Address from where data is to be read  
//  467   * @param  BlockSize: SD card Data block size 
//  468   * @note   BlockSize must be 512 bytes.
//  469   * @param  NumberOfBlocks: Number of SD blocks to read   
//  470   * @retval SD Card error state
//  471   */
//  472 HAL_SD_ErrorTypedef HAL_SD_ReadBlocks(SD_HandleTypeDef *hsd, uint32_t *pReadBuffer, uint64_t ReadAddr, uint32_t BlockSize, uint32_t NumberOfBlocks)
//  473 {
//  474   SDIO_CmdInitTypeDef  sdio_cmdinitstructure;
//  475   SDIO_DataInitTypeDef sdio_datainitstructure;
//  476   HAL_SD_ErrorTypedef errorstate = SD_OK;
//  477   uint32_t count = 0, *tempbuff = (uint32_t *)pReadBuffer;
//  478   
//  479   /* Initialize data control register */
//  480   hsd->Instance->DCTRL = 0;
//  481   
//  482   if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
//  483   {
//  484     BlockSize = 512;
//  485     ReadAddr /= 512;
//  486   }
//  487   
//  488   /* Set Block Size for Card */ 
//  489   sdio_cmdinitstructure.Argument         = (uint32_t) BlockSize;
//  490   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
//  491   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
//  492   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
//  493   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
//  494   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  495   
//  496   /* Check for error conditions */
//  497   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
//  498   
//  499   if (errorstate != SD_OK)
//  500   {
//  501     return errorstate;
//  502   }
//  503   
//  504   /* Configure the SD DPSM (Data Path State Machine) */
//  505   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
//  506   sdio_datainitstructure.DataLength    = NumberOfBlocks * BlockSize;
//  507   sdio_datainitstructure.DataBlockSize = DATA_BLOCK_SIZE;
//  508   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_SDIO;
//  509   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
//  510   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
//  511   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
//  512   
//  513   if(NumberOfBlocks > 1)
//  514   {
//  515     /* Send CMD18 READ_MULT_BLOCK with argument data address */
//  516     sdio_cmdinitstructure.CmdIndex = SD_CMD_READ_MULT_BLOCK;
//  517   }
//  518   else
//  519   {
//  520     /* Send CMD17 READ_SINGLE_BLOCK */
//  521     sdio_cmdinitstructure.CmdIndex = SD_CMD_READ_SINGLE_BLOCK;    
//  522   }
//  523   
//  524   sdio_cmdinitstructure.Argument         = (uint32_t)ReadAddr;
//  525   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  526   
//  527   /* Read block(s) in polling mode */
//  528   if(NumberOfBlocks > 1)
//  529   {
//  530     /* Check for error conditions */
//  531     errorstate = SD_CmdResp1Error(hsd, SD_CMD_READ_MULT_BLOCK);
//  532     
//  533     if (errorstate != SD_OK)
//  534     {
//  535       return errorstate;
//  536     }
//  537     
//  538     /* Poll on SDIO flags */
//  539     while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DATAEND | SDIO_FLAG_STBITERR))
//  540     {
//  541       if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXFIFOHF))
//  542       {
//  543         /* Read data from SDIO Rx FIFO */
//  544         for (count = 0; count < 8; count++)
//  545         {
//  546           *(tempbuff + count) = SDIO_ReadFIFO(hsd->Instance);
//  547         }
//  548         
//  549         tempbuff += 8;
//  550       }
//  551     }      
//  552   }
//  553   else
//  554   {
//  555     /* Check for error conditions */
//  556     errorstate = SD_CmdResp1Error(hsd, SD_CMD_READ_SINGLE_BLOCK); 
//  557     
//  558     if (errorstate != SD_OK)
//  559     {
//  560       return errorstate;
//  561     }    
//  562     
//  563     /* In case of single block transfer, no need of stop transfer at all */
//  564     while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DBCKEND | SDIO_FLAG_STBITERR))
//  565     {
//  566       if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXFIFOHF))
//  567       {
//  568         /* Read data from SDIO Rx FIFO */
//  569         for (count = 0; count < 8; count++)
//  570         {
//  571           *(tempbuff + count) = SDIO_ReadFIFO(hsd->Instance);
//  572         }
//  573         
//  574         tempbuff += 8;
//  575       }
//  576     }
//  577   }
//  578   
//  579   /* Send stop transmission command in case of multiblock read */
//  580   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DATAEND) && (NumberOfBlocks > 1))
//  581   {    
//  582     if ((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1) ||\ 
//  583       (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0) ||\ 
//  584         (hsd->CardType == HIGH_CAPACITY_SD_CARD))
//  585     {
//  586       /* Send stop transmission command */
//  587       errorstate = HAL_SD_StopTransfer(hsd);
//  588     }
//  589   }
//  590   
//  591   /* Get error state */
//  592   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DTIMEOUT))
//  593   {
//  594     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
//  595     
//  596     errorstate = SD_DATA_TIMEOUT;
//  597     
//  598     return errorstate;
//  599   }
//  600   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DCRCFAIL))
//  601   {
//  602     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
//  603     
//  604     errorstate = SD_DATA_CRC_FAIL;
//  605     
//  606     return errorstate;
//  607   }
//  608   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR))
//  609   {
//  610     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_RXOVERR);
//  611     
//  612     errorstate = SD_RX_OVERRUN;
//  613     
//  614     return errorstate;
//  615   }
//  616   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_STBITERR))
//  617   {
//  618     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
//  619     
//  620     errorstate = SD_START_BIT_ERR;
//  621     
//  622     return errorstate;
//  623   }
//  624   else
//  625   {
//  626     /* No error flag set */
//  627   }
//  628   
//  629   count = SD_DATATIMEOUT;
//  630   
//  631   /* Empty FIFO if there is still any data */
//  632   while ((__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXDAVL)) && (count > 0))
//  633   {
//  634     *tempbuff = SDIO_ReadFIFO(hsd->Instance);
//  635     tempbuff++;
//  636     count--;
//  637   }
//  638   
//  639   /* Clear all the static flags */
//  640   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
//  641   
//  642   return errorstate;
//  643 }
//  644 
//  645 /**
//  646   * @brief  Allows to write block(s) to a specified address in a card. The Data
//  647   *         transfer is managed by polling mode.  
//  648   * @param  hsd: SD handle
//  649   * @param  pWriteBuffer: pointer to the buffer that will contain the data to transmit
//  650   * @param  WriteAddr: Address from where data is to be written 
//  651   * @param  BlockSize: SD card Data block size 
//  652   * @note   BlockSize must be 512 bytes.
//  653   * @param  NumberOfBlocks: Number of SD blocks to write 
//  654   * @retval SD Card error state
//  655   */
//  656 HAL_SD_ErrorTypedef HAL_SD_WriteBlocks(SD_HandleTypeDef *hsd, uint32_t *pWriteBuffer, uint64_t WriteAddr, uint32_t BlockSize, uint32_t NumberOfBlocks)
//  657 {
//  658   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
//  659   SDIO_DataInitTypeDef sdio_datainitstructure;
//  660   HAL_SD_ErrorTypedef errorstate = SD_OK;
//  661   uint32_t totalnumberofbytes = 0, bytestransferred = 0, count = 0, restwords = 0;
//  662   uint32_t *tempbuff = (uint32_t *)pWriteBuffer;
//  663   uint8_t cardstate  = 0;
//  664   
//  665   /* Initialize data control register */
//  666   hsd->Instance->DCTRL = 0;
//  667   
//  668   if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
//  669   {
//  670     BlockSize = 512;
//  671     WriteAddr /= 512;
//  672   }
//  673   
//  674   /* Set Block Size for Card */ 
//  675   sdio_cmdinitstructure.Argument         = (uint32_t)BlockSize;
//  676   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
//  677   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
//  678   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
//  679   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
//  680   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  681   
//  682   /* Check for error conditions */
//  683   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
//  684   
//  685   if (errorstate != SD_OK)
//  686   {
//  687     return errorstate;
//  688   }
//  689   
//  690   if(NumberOfBlocks > 1)
//  691   {
//  692     /* Send CMD25 WRITE_MULT_BLOCK with argument data address */
//  693     sdio_cmdinitstructure.CmdIndex = SD_CMD_WRITE_MULT_BLOCK;
//  694   }
//  695   else
//  696   {
//  697     /* Send CMD24 WRITE_SINGLE_BLOCK */
//  698     sdio_cmdinitstructure.CmdIndex = SD_CMD_WRITE_SINGLE_BLOCK;
//  699   }
//  700   
//  701   sdio_cmdinitstructure.Argument         = (uint32_t)WriteAddr;
//  702   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  703   
//  704   /* Check for error conditions */
//  705   if(NumberOfBlocks > 1)
//  706   {
//  707     errorstate = SD_CmdResp1Error(hsd, SD_CMD_WRITE_MULT_BLOCK);
//  708   }
//  709   else
//  710   {
//  711     errorstate = SD_CmdResp1Error(hsd, SD_CMD_WRITE_SINGLE_BLOCK);
//  712   }  
//  713   
//  714   if (errorstate != SD_OK)
//  715   {
//  716     return errorstate;
//  717   }
//  718   
//  719   /* Set total number of bytes to write */
//  720   totalnumberofbytes = NumberOfBlocks * BlockSize;
//  721   
//  722   /* Configure the SD DPSM (Data Path State Machine) */ 
//  723   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
//  724   sdio_datainitstructure.DataLength    = NumberOfBlocks * BlockSize;
//  725   sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_512B;
//  726   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_CARD;
//  727   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
//  728   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
//  729   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
//  730   
//  731   /* Write block(s) in polling mode */
//  732   if(NumberOfBlocks > 1)
//  733   {
//  734     while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXUNDERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DATAEND | SDIO_FLAG_STBITERR))
//  735     {
//  736       if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXFIFOHE))
//  737       {
//  738         if ((totalnumberofbytes - bytestransferred) < 32)
//  739         {
//  740           restwords = ((totalnumberofbytes - bytestransferred) % 4 == 0) ? ((totalnumberofbytes - bytestransferred) / 4) : (( totalnumberofbytes -  bytestransferred) / 4 + 1);
//  741           
//  742           /* Write data to SDIO Tx FIFO */
//  743           for (count = 0; count < restwords; count++)
//  744           {
//  745             SDIO_WriteFIFO(hsd->Instance, tempbuff);
//  746             tempbuff++;
//  747             bytestransferred += 4;
//  748           }
//  749         }
//  750         else
//  751         {
//  752           /* Write data to SDIO Tx FIFO */
//  753           for (count = 0; count < 8; count++)
//  754           {
//  755             SDIO_WriteFIFO(hsd->Instance, (tempbuff + count));
//  756           }
//  757           
//  758           tempbuff += 8;
//  759           bytestransferred += 32;
//  760         }
//  761       }
//  762     }   
//  763   }
//  764   else
//  765   {
//  766     /* In case of single data block transfer no need of stop command at all */ 
//  767     while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXUNDERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DBCKEND | SDIO_FLAG_STBITERR))
//  768     {
//  769       if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXFIFOHE))
//  770       {
//  771         if ((totalnumberofbytes - bytestransferred) < 32)
//  772         {
//  773           restwords = ((totalnumberofbytes - bytestransferred) % 4 == 0) ? ((totalnumberofbytes - bytestransferred) / 4) : (( totalnumberofbytes -  bytestransferred) / 4 + 1);
//  774           
//  775           /* Write data to SDIO Tx FIFO */
//  776           for (count = 0; count < restwords; count++)
//  777           {
//  778             SDIO_WriteFIFO(hsd->Instance, tempbuff);
//  779             tempbuff++; 
//  780             bytestransferred += 4;
//  781           }
//  782         }
//  783         else
//  784         {
//  785           /* Write data to SDIO Tx FIFO */
//  786           for (count = 0; count < 8; count++)
//  787           {
//  788             SDIO_WriteFIFO(hsd->Instance, (tempbuff + count));
//  789           }
//  790           
//  791           tempbuff += 8;
//  792           bytestransferred += 32;
//  793         }
//  794       }
//  795     }  
//  796   }
//  797   
//  798   /* Send stop transmission command in case of multiblock write */
//  799   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DATAEND) && (NumberOfBlocks > 1))
//  800   {    
//  801     if ((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1) || (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0) ||\ 
//  802       (hsd->CardType == HIGH_CAPACITY_SD_CARD))
//  803     {
//  804       /* Send stop transmission command */
//  805       errorstate = HAL_SD_StopTransfer(hsd);
//  806     }
//  807   }
//  808   
//  809   /* Get error state */
//  810   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DTIMEOUT))
//  811   {
//  812     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
//  813     
//  814     errorstate = SD_DATA_TIMEOUT;
//  815     
//  816     return errorstate;
//  817   }
//  818   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DCRCFAIL))
//  819   {
//  820     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
//  821     
//  822     errorstate = SD_DATA_CRC_FAIL;
//  823     
//  824     return errorstate;
//  825   }
//  826   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXUNDERR))
//  827   {
//  828     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_TXUNDERR);
//  829     
//  830     errorstate = SD_TX_UNDERRUN;
//  831     
//  832     return errorstate;
//  833   }
//  834   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_STBITERR))
//  835   {
//  836     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
//  837     
//  838     errorstate = SD_START_BIT_ERR;
//  839     
//  840     return errorstate;
//  841   }
//  842   else
//  843   {
//  844     /* No error flag set */
//  845   }
//  846   
//  847   /* Clear all the static flags */
//  848   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
//  849   
//  850   /* Wait till the card is in programming state */
//  851   errorstate = SD_IsCardProgramming(hsd, &cardstate);
//  852   
//  853   while ((errorstate == SD_OK) && ((cardstate == SD_CARD_PROGRAMMING) || (cardstate == SD_CARD_RECEIVING)))
//  854   {
//  855     errorstate = SD_IsCardProgramming(hsd, &cardstate);
//  856   }
//  857   
//  858   return errorstate;
//  859 }
//  860 
//  861 /**
//  862   * @brief  Reads block(s) from a specified address in a card. The Data transfer 
//  863   *         is managed by DMA mode. 
//  864   * @note   This API should be followed by the function HAL_SD_CheckReadOperation()
//  865   *         to check the completion of the read process   
//  866   * @param  hsd: SD handle                 
//  867   * @param  pReadBuffer: Pointer to the buffer that will contain the received data
//  868   * @param  ReadAddr: Address from where data is to be read  
//  869   * @param  BlockSize: SD card Data block size 
//  870   * @note   BlockSize must be 512 bytes.
//  871   * @param  NumberOfBlocks: Number of blocks to read.
//  872   * @retval SD Card error state
//  873   */
//  874 HAL_SD_ErrorTypedef HAL_SD_ReadBlocks_DMA(SD_HandleTypeDef *hsd, uint32_t *pReadBuffer, uint64_t ReadAddr, uint32_t BlockSize, uint32_t NumberOfBlocks)
//  875 {
//  876   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
//  877   SDIO_DataInitTypeDef sdio_datainitstructure;
//  878   HAL_SD_ErrorTypedef errorstate = SD_OK;
//  879   
//  880   /* Initialize data control register */
//  881   hsd->Instance->DCTRL = 0;
//  882   
//  883   /* Initialize handle flags */
//  884   hsd->SdTransferCplt  = 0;
//  885   hsd->DmaTransferCplt = 0;
//  886   hsd->SdTransferErr   = SD_OK; 
//  887   
//  888   /* Initialize SD Read operation */
//  889   if(NumberOfBlocks > 1)
//  890   {
//  891     hsd->SdOperation = SD_READ_MULTIPLE_BLOCK;
//  892   }
//  893   else
//  894   {
//  895     hsd->SdOperation = SD_READ_SINGLE_BLOCK;
//  896   }
//  897   
//  898   /* Enable transfer interrupts */
//  899   __HAL_SD_SDIO_ENABLE_IT(hsd, (SDIO_IT_DCRCFAIL |\ 
//  900                                 SDIO_IT_DTIMEOUT |\ 
//  901                                 SDIO_IT_DATAEND  |\ 
//  902                                 SDIO_IT_RXOVERR  |\ 
//  903                                 SDIO_IT_STBITERR));
//  904   
//  905   /* Enable SDIO DMA transfer */
//  906   __HAL_SD_SDIO_DMA_ENABLE();
//  907   
//  908   /* Configure DMA user callbacks */
//  909   hsd->hdmarx->XferCpltCallback  = SD_DMA_RxCplt;
//  910   hsd->hdmarx->XferErrorCallback = SD_DMA_RxError;
//  911   
//  912   /* Enable the DMA Stream */
//  913   HAL_DMA_Start_IT(hsd->hdmarx, (uint32_t)&hsd->Instance->FIFO, (uint32_t)pReadBuffer, (uint32_t)(BlockSize * NumberOfBlocks)/4);
//  914   
//  915   if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
//  916   {
//  917     BlockSize = 512;
//  918     ReadAddr /= 512;
//  919   }
//  920   
//  921   /* Set Block Size for Card */ 
//  922   sdio_cmdinitstructure.Argument         = (uint32_t)BlockSize;
//  923   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
//  924   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
//  925   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
//  926   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
//  927   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  928   
//  929   /* Check for error conditions */
//  930   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
//  931   
//  932   if (errorstate != SD_OK)
//  933   {
//  934     return errorstate;
//  935   }
//  936   
//  937   /* Configure the SD DPSM (Data Path State Machine) */ 
//  938   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
//  939   sdio_datainitstructure.DataLength    = BlockSize * NumberOfBlocks;
//  940   sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_512B;
//  941   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_SDIO;
//  942   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
//  943   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
//  944   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
//  945   
//  946   /* Check number of blocks command */
//  947   if(NumberOfBlocks > 1)
//  948   {
//  949     /* Send CMD18 READ_MULT_BLOCK with argument data address */
//  950     sdio_cmdinitstructure.CmdIndex = SD_CMD_READ_MULT_BLOCK;
//  951   }
//  952   else
//  953   {
//  954     /* Send CMD17 READ_SINGLE_BLOCK */
//  955     sdio_cmdinitstructure.CmdIndex = SD_CMD_READ_SINGLE_BLOCK;
//  956   }
//  957   
//  958   sdio_cmdinitstructure.Argument = (uint32_t)ReadAddr;
//  959   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
//  960   
//  961   /* Check for error conditions */
//  962   if(NumberOfBlocks > 1)
//  963   {
//  964     errorstate = SD_CmdResp1Error(hsd, SD_CMD_READ_MULT_BLOCK);
//  965   }
//  966   else
//  967   {
//  968     errorstate = SD_CmdResp1Error(hsd, SD_CMD_READ_SINGLE_BLOCK);
//  969   }
//  970   
//  971   /* Update the SD transfer error in SD handle */
//  972   hsd->SdTransferErr = errorstate;
//  973   
//  974   return errorstate;
//  975 }
//  976 
//  977 
//  978 /**
//  979   * @brief  Writes block(s) to a specified address in a card. The Data transfer 
//  980   *         is managed by DMA mode. 
//  981   * @note   This API should be followed by the function HAL_SD_CheckWriteOperation()
//  982   *         to check the completion of the write process (by SD current status polling).  
//  983   * @param  hsd: SD handle
//  984   * @param  pWriteBuffer: pointer to the buffer that will contain the data to transmit
//  985   * @param  WriteAddr: Address from where data is to be read   
//  986   * @param  BlockSize: the SD card Data block size 
//  987   * @note   BlockSize must be 512 bytes.
//  988   * @param  NumberOfBlocks: Number of blocks to write
//  989   * @retval SD Card error state
//  990   */
//  991 HAL_SD_ErrorTypedef HAL_SD_WriteBlocks_DMA(SD_HandleTypeDef *hsd, uint32_t *pWriteBuffer, uint64_t WriteAddr, uint32_t BlockSize, uint32_t NumberOfBlocks)
//  992 {
//  993   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
//  994   SDIO_DataInitTypeDef sdio_datainitstructure;
//  995   HAL_SD_ErrorTypedef errorstate = SD_OK;
//  996   
//  997   /* Initialize data control register */
//  998   hsd->Instance->DCTRL = 0;
//  999   
// 1000   /* Initialize handle flags */
// 1001   hsd->SdTransferCplt  = 0;
// 1002   hsd->DmaTransferCplt = 0;
// 1003   hsd->SdTransferErr   = SD_OK;
// 1004   
// 1005   /* Initialize SD Write operation */
// 1006   if(NumberOfBlocks > 1)
// 1007   {
// 1008     hsd->SdOperation = SD_WRITE_MULTIPLE_BLOCK;
// 1009   }
// 1010   else
// 1011   {
// 1012     hsd->SdOperation = SD_WRITE_SINGLE_BLOCK;
// 1013   }  
// 1014   
// 1015   /* Enable transfer interrupts */
// 1016   __HAL_SD_SDIO_ENABLE_IT(hsd, (SDIO_IT_DCRCFAIL |\ 
// 1017                                 SDIO_IT_DTIMEOUT |\ 
// 1018                                 SDIO_IT_DATAEND  |\ 
// 1019                                 SDIO_IT_TXUNDERR |\ 
// 1020                                 SDIO_IT_STBITERR)); 
// 1021   
// 1022   /* Configure DMA user callbacks */
// 1023   hsd->hdmatx->XferCpltCallback  = SD_DMA_TxCplt;
// 1024   hsd->hdmatx->XferErrorCallback = SD_DMA_TxError;
// 1025   
// 1026   /* Enable the DMA Stream */
// 1027   HAL_DMA_Start_IT(hsd->hdmatx, (uint32_t)pWriteBuffer, (uint32_t)&hsd->Instance->FIFO, (uint32_t)(BlockSize * NumberOfBlocks)/4);
// 1028 
// 1029   /* Enable SDIO DMA transfer */
// 1030   __HAL_SD_SDIO_DMA_ENABLE();
// 1031   
// 1032   if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
// 1033   {
// 1034     BlockSize = 512;
// 1035     WriteAddr /= 512;
// 1036   }
// 1037 
// 1038   /* Set Block Size for Card */ 
// 1039   sdio_cmdinitstructure.Argument         = (uint32_t)BlockSize;
// 1040   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
// 1041   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 1042   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 1043   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 1044   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1045 
// 1046   /* Check for error conditions */
// 1047   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
// 1048 
// 1049   if (errorstate != SD_OK)
// 1050   {
// 1051     return errorstate;
// 1052   }
// 1053   
// 1054   /* Check number of blocks command */
// 1055   if(NumberOfBlocks <= 1)
// 1056   {
// 1057     /* Send CMD24 WRITE_SINGLE_BLOCK */
// 1058     sdio_cmdinitstructure.CmdIndex = SD_CMD_WRITE_SINGLE_BLOCK;
// 1059   }
// 1060   else
// 1061   {
// 1062     /* Send CMD25 WRITE_MULT_BLOCK with argument data address */
// 1063     sdio_cmdinitstructure.CmdIndex = SD_CMD_WRITE_MULT_BLOCK;
// 1064   }
// 1065   
// 1066   sdio_cmdinitstructure.Argument         = (uint32_t)WriteAddr;
// 1067   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1068 
// 1069   /* Check for error conditions */
// 1070   if(NumberOfBlocks > 1)
// 1071   {
// 1072     errorstate = SD_CmdResp1Error(hsd, SD_CMD_WRITE_MULT_BLOCK);
// 1073   }
// 1074   else
// 1075   {
// 1076     errorstate = SD_CmdResp1Error(hsd, SD_CMD_WRITE_SINGLE_BLOCK);
// 1077   }
// 1078   
// 1079   if (errorstate != SD_OK)
// 1080   {
// 1081     return errorstate;
// 1082   }
// 1083   
// 1084   /* Configure the SD DPSM (Data Path State Machine) */ 
// 1085   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
// 1086   sdio_datainitstructure.DataLength    = BlockSize * NumberOfBlocks;
// 1087   sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_512B;
// 1088   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_CARD;
// 1089   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
// 1090   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
// 1091   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
// 1092   
// 1093   hsd->SdTransferErr = errorstate;
// 1094   
// 1095   return errorstate;
// 1096 }
// 1097 
// 1098 /**
// 1099   * @brief  This function waits until the SD DMA data read transfer is finished. 
// 1100   *         This API should be called after HAL_SD_ReadBlocks_DMA() function
// 1101   *         to insure that all data sent by the card is already transferred by the 
// 1102   *         DMA controller.
// 1103   * @param  hsd: SD handle
// 1104   * @param  Timeout: Timeout duration  
// 1105   * @retval SD Card error state
// 1106   */
// 1107 HAL_SD_ErrorTypedef HAL_SD_CheckReadOperation(SD_HandleTypeDef *hsd, uint32_t Timeout)
// 1108 {
// 1109   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1110   uint32_t timeout = Timeout;
// 1111   uint32_t tmp1, tmp2;
// 1112   HAL_SD_ErrorTypedef tmp3;
// 1113   
// 1114   /* Wait for DMA/SD transfer end or SD error variables to be in SD handle */
// 1115   tmp1 = hsd->DmaTransferCplt; 
// 1116   tmp2 = hsd->SdTransferCplt;
// 1117   tmp3 = (HAL_SD_ErrorTypedef)hsd->SdTransferErr;
// 1118     
// 1119   while ((tmp1 == 0) && (tmp2 == 0) && (tmp3 == SD_OK) && (timeout > 0))
// 1120   {
// 1121     tmp1 = hsd->DmaTransferCplt; 
// 1122     tmp2 = hsd->SdTransferCplt;
// 1123     tmp3 = (HAL_SD_ErrorTypedef)hsd->SdTransferErr;    
// 1124     timeout--;
// 1125   }
// 1126   
// 1127   timeout = Timeout;
// 1128   
// 1129   /* Wait until the Rx transfer is no longer active */
// 1130   while((__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXACT)) && (timeout > 0))
// 1131   {
// 1132     timeout--;  
// 1133   }
// 1134   
// 1135   /* Send stop command in multiblock read */
// 1136   if (hsd->SdOperation == SD_READ_MULTIPLE_BLOCK)
// 1137   {
// 1138     errorstate = HAL_SD_StopTransfer(hsd);
// 1139   }
// 1140   
// 1141   if ((timeout == 0) && (errorstate == SD_OK))
// 1142   {
// 1143     errorstate = SD_DATA_TIMEOUT;
// 1144   }
// 1145   
// 1146   /* Clear all the static flags */
// 1147   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 1148   
// 1149   /* Return error state */
// 1150   if (hsd->SdTransferErr != SD_OK)
// 1151   {
// 1152     return (HAL_SD_ErrorTypedef)(hsd->SdTransferErr);
// 1153   }
// 1154   
// 1155   return errorstate;
// 1156 }
// 1157 
// 1158 /**
// 1159   * @brief  This function waits until the SD DMA data write transfer is finished. 
// 1160   *         This API should be called after HAL_SD_WriteBlocks_DMA() function
// 1161   *         to insure that all data sent by the card is already transferred by the 
// 1162   *         DMA controller.
// 1163   * @param  hsd: SD handle
// 1164   * @param  Timeout: Timeout duration  
// 1165   * @retval SD Card error state
// 1166   */
// 1167 HAL_SD_ErrorTypedef HAL_SD_CheckWriteOperation(SD_HandleTypeDef *hsd, uint32_t Timeout)
// 1168 {
// 1169   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1170   uint32_t timeout = Timeout;
// 1171   uint32_t tmp1, tmp2;
// 1172   HAL_SD_ErrorTypedef tmp3;
// 1173 
// 1174   /* Wait for DMA/SD transfer end or SD error variables to be in SD handle */
// 1175   tmp1 = hsd->DmaTransferCplt; 
// 1176   tmp2 = hsd->SdTransferCplt;
// 1177   tmp3 = (HAL_SD_ErrorTypedef)hsd->SdTransferErr;
// 1178     
// 1179   while ((tmp1 == 0) && (tmp2 == 0) && (tmp3 == SD_OK) && (timeout > 0))
// 1180   {
// 1181     tmp1 = hsd->DmaTransferCplt; 
// 1182     tmp2 = hsd->SdTransferCplt;
// 1183     tmp3 = (HAL_SD_ErrorTypedef)hsd->SdTransferErr;
// 1184     timeout--;
// 1185   }
// 1186   
// 1187   timeout = Timeout;
// 1188   
// 1189   /* Wait until the Tx transfer is no longer active */
// 1190   while((__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_TXACT))  && (timeout > 0))
// 1191   {
// 1192     timeout--;  
// 1193   }
// 1194 
// 1195   /* Send stop command in multiblock write */
// 1196   if (hsd->SdOperation == SD_WRITE_MULTIPLE_BLOCK)
// 1197   {
// 1198     errorstate = HAL_SD_StopTransfer(hsd);
// 1199   }
// 1200   
// 1201   if ((timeout == 0) && (errorstate == SD_OK))
// 1202   {
// 1203     errorstate = SD_DATA_TIMEOUT;
// 1204   }
// 1205   
// 1206   /* Clear all the static flags */
// 1207   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 1208   
// 1209   /* Return error state */
// 1210   if (hsd->SdTransferErr != SD_OK)
// 1211   {
// 1212     return (HAL_SD_ErrorTypedef)(hsd->SdTransferErr);
// 1213   }
// 1214   
// 1215   /* Wait until write is complete */
// 1216   while(HAL_SD_GetStatus(hsd) != SD_TRANSFER_OK)
// 1217   {    
// 1218   }
// 1219 
// 1220   return errorstate; 
// 1221 }
// 1222 
// 1223 /**
// 1224   * @brief  Erases the specified memory area of the given SD card.
// 1225   * @param  hsd: SD handle 
// 1226   * @param  startaddr: Start byte address
// 1227   * @param  endaddr: End byte address
// 1228   * @retval SD Card error state
// 1229   */
// 1230 HAL_SD_ErrorTypedef HAL_SD_Erase(SD_HandleTypeDef *hsd, uint64_t startaddr, uint64_t endaddr)
// 1231 {
// 1232   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1233   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 1234   
// 1235   uint32_t delay         = 0;
// 1236   __IO uint32_t maxdelay = 0;
// 1237   uint8_t cardstate      = 0;
// 1238   
// 1239   /* Check if the card command class supports erase command */
// 1240   if (((hsd->CSD[1] >> 20) & SD_CCCC_ERASE) == 0)
// 1241   {
// 1242     errorstate = SD_REQUEST_NOT_APPLICABLE;
// 1243     
// 1244     return errorstate;
// 1245   }
// 1246   
// 1247   /* Get max delay value */
// 1248   maxdelay = 120000 / (((hsd->Instance->CLKCR) & 0xFF) + 2);
// 1249   
// 1250   if((SDIO_GetResponse(SDIO_RESP1) & SD_CARD_LOCKED) == SD_CARD_LOCKED)
// 1251   {
// 1252     errorstate = SD_LOCK_UNLOCK_FAILED;
// 1253     
// 1254     return errorstate;
// 1255   }
// 1256   
// 1257   /* Get start and end block for high capacity cards */
// 1258   if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
// 1259   {
// 1260     startaddr /= 512;
// 1261     endaddr   /= 512;
// 1262   }
// 1263   
// 1264   /* According to sd-card spec 1.0 ERASE_GROUP_START (CMD32) and erase_group_end(CMD33) */
// 1265   if ((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1) || (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0) ||\ 
// 1266     (hsd->CardType == HIGH_CAPACITY_SD_CARD))
// 1267   {
// 1268     /* Send CMD32 SD_ERASE_GRP_START with argument as addr  */
// 1269     sdio_cmdinitstructure.Argument         =(uint32_t)startaddr;
// 1270     sdio_cmdinitstructure.CmdIndex         = SD_CMD_SD_ERASE_GRP_START;
// 1271     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 1272     sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 1273     sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 1274     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1275     
// 1276     /* Check for error conditions */
// 1277     errorstate = SD_CmdResp1Error(hsd, SD_CMD_SD_ERASE_GRP_START);
// 1278     
// 1279     if (errorstate != SD_OK)
// 1280     {
// 1281       return errorstate;
// 1282     }
// 1283     
// 1284     /* Send CMD33 SD_ERASE_GRP_END with argument as addr  */
// 1285     sdio_cmdinitstructure.Argument         = (uint32_t)endaddr;
// 1286     sdio_cmdinitstructure.CmdIndex         = SD_CMD_SD_ERASE_GRP_END;
// 1287     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1288     
// 1289     /* Check for error conditions */
// 1290     errorstate = SD_CmdResp1Error(hsd, SD_CMD_SD_ERASE_GRP_END);
// 1291     
// 1292     if (errorstate != SD_OK)
// 1293     {
// 1294       return errorstate;
// 1295     }
// 1296   }
// 1297   
// 1298   /* Send CMD38 ERASE */
// 1299   sdio_cmdinitstructure.Argument         = 0;
// 1300   sdio_cmdinitstructure.CmdIndex         = SD_CMD_ERASE;
// 1301   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1302   
// 1303   /* Check for error conditions */
// 1304   errorstate = SD_CmdResp1Error(hsd, SD_CMD_ERASE);
// 1305   
// 1306   if (errorstate != SD_OK)
// 1307   {
// 1308     return errorstate;
// 1309   }
// 1310   
// 1311   for (; delay < maxdelay; delay++)
// 1312   {
// 1313   }
// 1314   
// 1315   /* Wait until the card is in programming state */
// 1316   errorstate = SD_IsCardProgramming(hsd, &cardstate);
// 1317   
// 1318   delay = SD_DATATIMEOUT;
// 1319   
// 1320   while ((delay > 0) && (errorstate == SD_OK) && ((cardstate == SD_CARD_PROGRAMMING) || (cardstate == SD_CARD_RECEIVING)))
// 1321   {
// 1322     errorstate = SD_IsCardProgramming(hsd, &cardstate);
// 1323     delay--;
// 1324   }
// 1325   
// 1326   return errorstate;
// 1327 }
// 1328 
// 1329 /**
// 1330   * @brief  This function handles SD card interrupt request.
// 1331   * @param  hsd: SD handle
// 1332   * @retval None
// 1333   */
// 1334 void HAL_SD_IRQHandler(SD_HandleTypeDef *hsd)
// 1335 {  
// 1336   /* Check for SDIO interrupt flags */
// 1337   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_DATAEND))
// 1338   {
// 1339     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_IT_DATAEND);  
// 1340       
// 1341     /* SD transfer is complete */
// 1342     hsd->SdTransferCplt = 1;
// 1343 
// 1344     /* No transfer error */ 
// 1345     hsd->SdTransferErr  = SD_OK;
// 1346 
// 1347     HAL_SD_XferCpltCallback(hsd);  
// 1348   }  
// 1349   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_DCRCFAIL))
// 1350   {
// 1351     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
// 1352     
// 1353     hsd->SdTransferErr = SD_DATA_CRC_FAIL;
// 1354     
// 1355     HAL_SD_XferErrorCallback(hsd);
// 1356     
// 1357   }
// 1358   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_DTIMEOUT))
// 1359   {
// 1360     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
// 1361     
// 1362     hsd->SdTransferErr = SD_DATA_TIMEOUT;
// 1363     
// 1364     HAL_SD_XferErrorCallback(hsd);
// 1365   }
// 1366   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_RXOVERR))
// 1367   {
// 1368     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_RXOVERR);
// 1369     
// 1370     hsd->SdTransferErr = SD_RX_OVERRUN;
// 1371     
// 1372     HAL_SD_XferErrorCallback(hsd);
// 1373   }
// 1374   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_TXUNDERR))
// 1375   {
// 1376     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_TXUNDERR);
// 1377     
// 1378     hsd->SdTransferErr = SD_TX_UNDERRUN;
// 1379     
// 1380     HAL_SD_XferErrorCallback(hsd);
// 1381   }
// 1382   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_IT_STBITERR))
// 1383   {
// 1384     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
// 1385     
// 1386     hsd->SdTransferErr = SD_START_BIT_ERR;
// 1387     
// 1388     HAL_SD_XferErrorCallback(hsd);
// 1389   }
// 1390   else
// 1391   {
// 1392     /* No error flag set */
// 1393   }
// 1394 
// 1395   /* Disable all SDIO peripheral interrupt sources */
// 1396   __HAL_SD_SDIO_DISABLE_IT(hsd, SDIO_IT_DCRCFAIL | SDIO_IT_DTIMEOUT | SDIO_IT_DATAEND  |\ 
// 1397                                 SDIO_IT_TXFIFOHE | SDIO_IT_RXFIFOHF | SDIO_IT_TXUNDERR |\ 
// 1398                                 SDIO_IT_RXOVERR  | SDIO_IT_STBITERR);                               
// 1399 }
// 1400 
// 1401 
// 1402 /**
// 1403   * @brief  SD end of transfer callback.
// 1404   * @param  hsd: SD handle 
// 1405   * @retval None
// 1406   */
// 1407 __weak void HAL_SD_XferCpltCallback(SD_HandleTypeDef *hsd)
// 1408 {
// 1409   /* Prevent unused argument(s) compilation warning */
// 1410   UNUSED(hsd);
// 1411 
// 1412   /* NOTE : This function Should not be modified, when the callback is needed,
// 1413             the HAL_SD_XferCpltCallback could be implemented in the user file
// 1414    */ 
// 1415 }
// 1416 
// 1417 /**
// 1418   * @brief  SD Transfer Error callback.
// 1419   * @param  hsd: SD handle
// 1420   * @retval None
// 1421   */
// 1422 __weak void HAL_SD_XferErrorCallback(SD_HandleTypeDef *hsd)
// 1423 {
// 1424   /* Prevent unused argument(s) compilation warning */
// 1425   UNUSED(hsd);
// 1426 
// 1427   /* NOTE : This function Should not be modified, when the callback is needed,
// 1428             the HAL_SD_XferErrorCallback could be implemented in the user file
// 1429    */ 
// 1430 }
// 1431 
// 1432 /**
// 1433   * @brief  SD Transfer complete Rx callback in non blocking mode.
// 1434   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1435   *                the configuration information for the specified DMA module.
// 1436   * @retval None
// 1437   */
// 1438 __weak void HAL_SD_DMA_RxCpltCallback(DMA_HandleTypeDef *hdma)
// 1439 {
// 1440   /* Prevent unused argument(s) compilation warning */
// 1441   UNUSED(hdma);
// 1442 
// 1443   /* NOTE : This function Should not be modified, when the callback is needed,
// 1444             the HAL_SD_DMA_RxCpltCallback could be implemented in the user file
// 1445    */ 
// 1446 }  
// 1447 
// 1448 /**
// 1449   * @brief  SD DMA transfer complete Rx error callback.
// 1450   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1451   *                the configuration information for the specified DMA module.
// 1452   * @retval None
// 1453   */
// 1454 __weak void HAL_SD_DMA_RxErrorCallback(DMA_HandleTypeDef *hdma)
// 1455 {
// 1456   /* Prevent unused argument(s) compilation warning */
// 1457   UNUSED(hdma);
// 1458 
// 1459   /* NOTE : This function Should not be modified, when the callback is needed,
// 1460             the HAL_SD_DMA_RxErrorCallback could be implemented in the user file
// 1461    */ 
// 1462 }
// 1463 
// 1464 /**
// 1465   * @brief  SD Transfer complete Tx callback in non blocking mode.
// 1466   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1467   *                the configuration information for the specified DMA module.
// 1468   * @retval None
// 1469   */
// 1470 __weak void HAL_SD_DMA_TxCpltCallback(DMA_HandleTypeDef *hdma)
// 1471 {
// 1472   /* Prevent unused argument(s) compilation warning */
// 1473   UNUSED(hdma);
// 1474 
// 1475   /* NOTE : This function Should not be modified, when the callback is needed,
// 1476             the HAL_SD_DMA_TxCpltCallback could be implemented in the user file
// 1477    */ 
// 1478 }  
// 1479 
// 1480 /**
// 1481   * @brief  SD DMA transfer complete error Tx callback.
// 1482   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1483   *                the configuration information for the specified DMA module.
// 1484   * @retval None
// 1485   */
// 1486 __weak void HAL_SD_DMA_TxErrorCallback(DMA_HandleTypeDef *hdma)
// 1487 {
// 1488   /* Prevent unused argument(s) compilation warning */
// 1489   UNUSED(hdma);
// 1490 
// 1491   /* NOTE : This function Should not be modified, when the callback is needed,
// 1492             the HAL_SD_DMA_TxErrorCallback could be implemented in the user file
// 1493    */ 
// 1494 }
// 1495 
// 1496 /**
// 1497   * @}
// 1498   */
// 1499 
// 1500 /** @addtogroup SD_Exported_Functions_Group3
// 1501  *  @brief   management functions 
// 1502  *
// 1503 @verbatim   
// 1504   ==============================================================================
// 1505                       ##### Peripheral Control functions #####
// 1506   ==============================================================================  
// 1507   [..]
// 1508     This subsection provides a set of functions allowing to control the SD card 
// 1509     operations.
// 1510 
// 1511 @endverbatim
// 1512   * @{
// 1513   */
// 1514 
// 1515 /**
// 1516   * @brief  Returns information about specific card.
// 1517   * @param  hsd: SD handle
// 1518   * @param  pCardInfo: Pointer to a HAL_SD_CardInfoTypedef structure that  
// 1519   *         contains all SD cardinformation  
// 1520   * @retval SD Card error state
// 1521   */
// 1522 HAL_SD_ErrorTypedef HAL_SD_Get_CardInfo(SD_HandleTypeDef *hsd, HAL_SD_CardInfoTypedef *pCardInfo)
// 1523 {
// 1524   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1525   uint32_t tmp = 0;
// 1526   
// 1527   pCardInfo->CardType = (uint8_t)(hsd->CardType);
// 1528   pCardInfo->RCA      = (uint16_t)(hsd->RCA);
// 1529   
// 1530   /* Byte 0 */
// 1531   tmp = (hsd->CSD[0] & 0xFF000000U) >> 24;
// 1532   pCardInfo->SD_csd.CSDStruct      = (uint8_t)((tmp & 0xC0) >> 6);
// 1533   pCardInfo->SD_csd.SysSpecVersion = (uint8_t)((tmp & 0x3C) >> 2);
// 1534   pCardInfo->SD_csd.Reserved1      = tmp & 0x03;
// 1535   
// 1536   /* Byte 1 */
// 1537   tmp = (hsd->CSD[0] & 0x00FF0000U) >> 16;
// 1538   pCardInfo->SD_csd.TAAC = (uint8_t)tmp;
// 1539   
// 1540   /* Byte 2 */
// 1541   tmp = (hsd->CSD[0] & 0x0000FF00U) >> 8;
// 1542   pCardInfo->SD_csd.NSAC = (uint8_t)tmp;
// 1543   
// 1544   /* Byte 3 */
// 1545   tmp = hsd->CSD[0] & 0x000000FFU;
// 1546   pCardInfo->SD_csd.MaxBusClkFrec = (uint8_t)tmp;
// 1547   
// 1548   /* Byte 4 */
// 1549   tmp = (hsd->CSD[1] & 0xFF000000U) >> 24;
// 1550   pCardInfo->SD_csd.CardComdClasses = (uint16_t)(tmp << 4);
// 1551   
// 1552   /* Byte 5 */
// 1553   tmp = (hsd->CSD[1] & 0x00FF0000U) >> 16;
// 1554   pCardInfo->SD_csd.CardComdClasses |= (uint16_t)((tmp & 0xF0) >> 4);
// 1555   pCardInfo->SD_csd.RdBlockLen       = (uint8_t)(tmp & 0x0F);
// 1556   
// 1557   /* Byte 6 */
// 1558   tmp = (hsd->CSD[1] & 0x0000FF00U) >> 8;
// 1559   pCardInfo->SD_csd.PartBlockRead   = (uint8_t)((tmp & 0x80) >> 7);
// 1560   pCardInfo->SD_csd.WrBlockMisalign = (uint8_t)((tmp & 0x40) >> 6);
// 1561   pCardInfo->SD_csd.RdBlockMisalign = (uint8_t)((tmp & 0x20) >> 5);
// 1562   pCardInfo->SD_csd.DSRImpl         = (uint8_t)((tmp & 0x10) >> 4);
// 1563   pCardInfo->SD_csd.Reserved2       = 0; /*!< Reserved */
// 1564   
// 1565   if ((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1) || (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0))
// 1566   {
// 1567     pCardInfo->SD_csd.DeviceSize = (tmp & 0x03) << 10;
// 1568     
// 1569     /* Byte 7 */
// 1570     tmp = (uint8_t)(hsd->CSD[1] & 0x000000FFU);
// 1571     pCardInfo->SD_csd.DeviceSize |= (tmp) << 2;
// 1572     
// 1573     /* Byte 8 */
// 1574     tmp = (uint8_t)((hsd->CSD[2] & 0xFF000000U) >> 24);
// 1575     pCardInfo->SD_csd.DeviceSize |= (tmp & 0xC0) >> 6;
// 1576     
// 1577     pCardInfo->SD_csd.MaxRdCurrentVDDMin = (tmp & 0x38) >> 3;
// 1578     pCardInfo->SD_csd.MaxRdCurrentVDDMax = (tmp & 0x07);
// 1579     
// 1580     /* Byte 9 */
// 1581     tmp = (uint8_t)((hsd->CSD[2] & 0x00FF0000U) >> 16);
// 1582     pCardInfo->SD_csd.MaxWrCurrentVDDMin = (tmp & 0xE0) >> 5;
// 1583     pCardInfo->SD_csd.MaxWrCurrentVDDMax = (tmp & 0x1C) >> 2;
// 1584     pCardInfo->SD_csd.DeviceSizeMul      = (tmp & 0x03) << 1;
// 1585     /* Byte 10 */
// 1586     tmp = (uint8_t)((hsd->CSD[2] & 0x0000FF00U) >> 8);
// 1587     pCardInfo->SD_csd.DeviceSizeMul |= (tmp & 0x80) >> 7;
// 1588     
// 1589     pCardInfo->CardCapacity  = (pCardInfo->SD_csd.DeviceSize + 1) ;
// 1590     pCardInfo->CardCapacity *= (1 << (pCardInfo->SD_csd.DeviceSizeMul + 2));
// 1591     pCardInfo->CardBlockSize = 1 << (pCardInfo->SD_csd.RdBlockLen);
// 1592     pCardInfo->CardCapacity *= pCardInfo->CardBlockSize;
// 1593   }
// 1594   else if (hsd->CardType == HIGH_CAPACITY_SD_CARD)
// 1595   {
// 1596     /* Byte 7 */
// 1597     tmp = (uint8_t)(hsd->CSD[1] & 0x000000FFU);
// 1598     pCardInfo->SD_csd.DeviceSize = (tmp & 0x3F) << 16;
// 1599     
// 1600     /* Byte 8 */
// 1601     tmp = (uint8_t)((hsd->CSD[2] & 0xFF000000U) >> 24);
// 1602     
// 1603     pCardInfo->SD_csd.DeviceSize |= (tmp << 8);
// 1604     
// 1605     /* Byte 9 */
// 1606     tmp = (uint8_t)((hsd->CSD[2] & 0x00FF0000U) >> 16);
// 1607     
// 1608     pCardInfo->SD_csd.DeviceSize |= (tmp);
// 1609     
// 1610     /* Byte 10 */
// 1611     tmp = (uint8_t)((hsd->CSD[2] & 0x0000FF00U) >> 8);
// 1612     
// 1613     pCardInfo->CardCapacity = (uint64_t)((((uint64_t)pCardInfo->SD_csd.DeviceSize + 1)) * 512 * 1024);
// 1614     pCardInfo->CardBlockSize = 512;    
// 1615   }
// 1616   else
// 1617   {
// 1618     /* Not supported card type */
// 1619     errorstate = SD_ERROR;
// 1620   }
// 1621     
// 1622   pCardInfo->SD_csd.EraseGrSize = (tmp & 0x40) >> 6;
// 1623   pCardInfo->SD_csd.EraseGrMul  = (tmp & 0x3F) << 1;
// 1624   
// 1625   /* Byte 11 */
// 1626   tmp = (uint8_t)(hsd->CSD[2] & 0x000000FFU);
// 1627   pCardInfo->SD_csd.EraseGrMul     |= (tmp & 0x80) >> 7;
// 1628   pCardInfo->SD_csd.WrProtectGrSize = (tmp & 0x7F);
// 1629   
// 1630   /* Byte 12 */
// 1631   tmp = (uint8_t)((hsd->CSD[3] & 0xFF000000U) >> 24);
// 1632   pCardInfo->SD_csd.WrProtectGrEnable = (tmp & 0x80) >> 7;
// 1633   pCardInfo->SD_csd.ManDeflECC        = (tmp & 0x60) >> 5;
// 1634   pCardInfo->SD_csd.WrSpeedFact       = (tmp & 0x1C) >> 2;
// 1635   pCardInfo->SD_csd.MaxWrBlockLen     = (tmp & 0x03) << 2;
// 1636   
// 1637   /* Byte 13 */
// 1638   tmp = (uint8_t)((hsd->CSD[3] & 0x00FF0000U) >> 16);
// 1639   pCardInfo->SD_csd.MaxWrBlockLen      |= (tmp & 0xC0) >> 6;
// 1640   pCardInfo->SD_csd.WriteBlockPaPartial = (tmp & 0x20) >> 5;
// 1641   pCardInfo->SD_csd.Reserved3           = 0;
// 1642   pCardInfo->SD_csd.ContentProtectAppli = (tmp & 0x01);
// 1643   
// 1644   /* Byte 14 */
// 1645   tmp = (uint8_t)((hsd->CSD[3] & 0x0000FF00U) >> 8);
// 1646   pCardInfo->SD_csd.FileFormatGrouop = (tmp & 0x80) >> 7;
// 1647   pCardInfo->SD_csd.CopyFlag         = (tmp & 0x40) >> 6;
// 1648   pCardInfo->SD_csd.PermWrProtect    = (tmp & 0x20) >> 5;
// 1649   pCardInfo->SD_csd.TempWrProtect    = (tmp & 0x10) >> 4;
// 1650   pCardInfo->SD_csd.FileFormat       = (tmp & 0x0C) >> 2;
// 1651   pCardInfo->SD_csd.ECC              = (tmp & 0x03);
// 1652   
// 1653   /* Byte 15 */
// 1654   tmp = (uint8_t)(hsd->CSD[3] & 0x000000FFU);
// 1655   pCardInfo->SD_csd.CSD_CRC   = (tmp & 0xFE) >> 1;
// 1656   pCardInfo->SD_csd.Reserved4 = 1;
// 1657   
// 1658   /* Byte 0 */
// 1659   tmp = (uint8_t)((hsd->CID[0] & 0xFF000000U) >> 24);
// 1660   pCardInfo->SD_cid.ManufacturerID = tmp;
// 1661   
// 1662   /* Byte 1 */
// 1663   tmp = (uint8_t)((hsd->CID[0] & 0x00FF0000U) >> 16);
// 1664   pCardInfo->SD_cid.OEM_AppliID = tmp << 8;
// 1665   
// 1666   /* Byte 2 */
// 1667   tmp = (uint8_t)((hsd->CID[0] & 0x000000FF00U) >> 8);
// 1668   pCardInfo->SD_cid.OEM_AppliID |= tmp;
// 1669   
// 1670   /* Byte 3 */
// 1671   tmp = (uint8_t)(hsd->CID[0] & 0x000000FFU);
// 1672   pCardInfo->SD_cid.ProdName1 = tmp << 24;
// 1673   
// 1674   /* Byte 4 */
// 1675   tmp = (uint8_t)((hsd->CID[1] & 0xFF000000U) >> 24);
// 1676   pCardInfo->SD_cid.ProdName1 |= tmp << 16;
// 1677   
// 1678   /* Byte 5 */
// 1679   tmp = (uint8_t)((hsd->CID[1] & 0x00FF0000U) >> 16);
// 1680   pCardInfo->SD_cid.ProdName1 |= tmp << 8;
// 1681   
// 1682   /* Byte 6 */
// 1683   tmp = (uint8_t)((hsd->CID[1] & 0x0000FF00U) >> 8);
// 1684   pCardInfo->SD_cid.ProdName1 |= tmp;
// 1685   
// 1686   /* Byte 7 */
// 1687   tmp = (uint8_t)(hsd->CID[1] & 0x000000FFU);
// 1688   pCardInfo->SD_cid.ProdName2 = tmp;
// 1689   
// 1690   /* Byte 8 */
// 1691   tmp = (uint8_t)((hsd->CID[2] & 0xFF000000U) >> 24);
// 1692   pCardInfo->SD_cid.ProdRev = tmp;
// 1693   
// 1694   /* Byte 9 */
// 1695   tmp = (uint8_t)((hsd->CID[2] & 0x00FF0000U) >> 16);
// 1696   pCardInfo->SD_cid.ProdSN = tmp << 24;
// 1697   
// 1698   /* Byte 10 */
// 1699   tmp = (uint8_t)((hsd->CID[2] & 0x0000FF00U) >> 8);
// 1700   pCardInfo->SD_cid.ProdSN |= tmp << 16;
// 1701   
// 1702   /* Byte 11 */
// 1703   tmp = (uint8_t)(hsd->CID[2] & 0x000000FFU);
// 1704   pCardInfo->SD_cid.ProdSN |= tmp << 8;
// 1705   
// 1706   /* Byte 12 */
// 1707   tmp = (uint8_t)((hsd->CID[3] & 0xFF000000U) >> 24);
// 1708   pCardInfo->SD_cid.ProdSN |= tmp;
// 1709   
// 1710   /* Byte 13 */
// 1711   tmp = (uint8_t)((hsd->CID[3] & 0x00FF0000U) >> 16);
// 1712   pCardInfo->SD_cid.Reserved1   |= (tmp & 0xF0) >> 4;
// 1713   pCardInfo->SD_cid.ManufactDate = (tmp & 0x0F) << 8;
// 1714   
// 1715   /* Byte 14 */
// 1716   tmp = (uint8_t)((hsd->CID[3] & 0x0000FF00U) >> 8);
// 1717   pCardInfo->SD_cid.ManufactDate |= tmp;
// 1718   
// 1719   /* Byte 15 */
// 1720   tmp = (uint8_t)(hsd->CID[3] & 0x000000FFU);
// 1721   pCardInfo->SD_cid.CID_CRC   = (tmp & 0xFE) >> 1;
// 1722   pCardInfo->SD_cid.Reserved2 = 1;
// 1723   
// 1724   return errorstate;
// 1725 }
// 1726 
// 1727 /**
// 1728   * @brief  Enables wide bus operation for the requested card if supported by 
// 1729   *         card.
// 1730   * @param  hsd: SD handle       
// 1731   * @param  WideMode: Specifies the SD card wide bus mode 
// 1732   *          This parameter can be one of the following values:
// 1733   *            @arg SDIO_BUS_WIDE_8B: 8-bit data transfer (Only for MMC)
// 1734   *            @arg SDIO_BUS_WIDE_4B: 4-bit data transfer
// 1735   *            @arg SDIO_BUS_WIDE_1B: 1-bit data transfer
// 1736   * @retval SD Card error state
// 1737   */
// 1738 HAL_SD_ErrorTypedef HAL_SD_WideBusOperation_Config(SD_HandleTypeDef *hsd, uint32_t WideMode)
// 1739 {
// 1740   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1741   SDIO_InitTypeDef tmpinit;
// 1742   
// 1743   /* MMC Card does not support this feature */
// 1744   if (hsd->CardType == MULTIMEDIA_CARD)
// 1745   {
// 1746     errorstate = SD_UNSUPPORTED_FEATURE;
// 1747   }
// 1748   else if ((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1) || (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0) ||\ 
// 1749     (hsd->CardType == HIGH_CAPACITY_SD_CARD))
// 1750   {
// 1751     if (WideMode == SDIO_BUS_WIDE_8B)
// 1752     {
// 1753       errorstate = SD_UNSUPPORTED_FEATURE;
// 1754     }
// 1755     else if (WideMode == SDIO_BUS_WIDE_4B)
// 1756     {
// 1757       errorstate = SD_WideBus_Enable(hsd);
// 1758     }
// 1759     else if (WideMode == SDIO_BUS_WIDE_1B)
// 1760     {
// 1761       errorstate = SD_WideBus_Disable(hsd);
// 1762     }
// 1763     else
// 1764     {
// 1765       /* WideMode is not a valid argument*/
// 1766       errorstate = SD_INVALID_PARAMETER;
// 1767     }
// 1768       
// 1769     if (errorstate == SD_OK)
// 1770     {
// 1771       /* Configure the SDIO peripheral */
// 1772       tmpinit.ClockEdge           = hsd->Init.ClockEdge;
// 1773       tmpinit.ClockBypass         = hsd->Init.ClockBypass;
// 1774       tmpinit.ClockPowerSave      = hsd->Init.ClockPowerSave;
// 1775       tmpinit.BusWide             = WideMode;
// 1776       tmpinit.HardwareFlowControl = hsd->Init.HardwareFlowControl;
// 1777       tmpinit.ClockDiv            = hsd->Init.ClockDiv;
// 1778       
// 1779       /* Configure SDIO peripheral interface */
// 1780       SDIO_Init(hsd->Instance, tmpinit);
// 1781     }
// 1782     else
// 1783     {
// 1784       /* An error occured while enabling/disabling the wide bus*/
// 1785     }
// 1786   }
// 1787   else
// 1788   {
// 1789     /* Not supported card type */
// 1790     errorstate = SD_ERROR;
// 1791   }
// 1792   
// 1793   return errorstate;
// 1794 }
// 1795 
// 1796 /**
// 1797   * @brief  Aborts an ongoing data transfer.
// 1798   * @param  hsd: SD handle
// 1799   * @retval SD Card error state
// 1800   */
// 1801 HAL_SD_ErrorTypedef HAL_SD_StopTransfer(SD_HandleTypeDef *hsd)
// 1802 {
// 1803   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 1804   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1805   
// 1806   /* Send CMD12 STOP_TRANSMISSION  */
// 1807   sdio_cmdinitstructure.Argument         = 0;
// 1808   sdio_cmdinitstructure.CmdIndex         = SD_CMD_STOP_TRANSMISSION;
// 1809   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 1810   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 1811   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 1812   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1813   
// 1814   /* Check for error conditions */
// 1815   errorstate = SD_CmdResp1Error(hsd, SD_CMD_STOP_TRANSMISSION);
// 1816   
// 1817   return errorstate;
// 1818 }
// 1819 
// 1820 /**
// 1821   * @brief  Switches the SD card to High Speed mode.
// 1822   *         This API must be used after "Transfer State"
// 1823   * @note   This operation should be followed by the configuration 
// 1824   *         of PLL to have SDIOCK clock between 67 and 75 MHz
// 1825   * @param  hsd: SD handle
// 1826   * @retval SD Card error state
// 1827   */
// 1828 HAL_SD_ErrorTypedef HAL_SD_HighSpeed (SD_HandleTypeDef *hsd)
// 1829 {
// 1830   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1831   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 1832   SDIO_DataInitTypeDef sdio_datainitstructure;
// 1833   
// 1834   uint8_t SD_hs[64]  = {0};
// 1835   uint32_t SD_scr[2] = {0, 0};
// 1836   uint32_t SD_SPEC   = 0 ;
// 1837   uint32_t count = 0, *tempbuff = (uint32_t *)SD_hs;
// 1838   
// 1839   /* Initialize the Data control register */
// 1840   hsd->Instance->DCTRL = 0;
// 1841   
// 1842   /* Get SCR Register */
// 1843   errorstate = SD_FindSCR(hsd, SD_scr);
// 1844   
// 1845   if (errorstate != SD_OK)
// 1846   {
// 1847     return errorstate;
// 1848   }
// 1849   
// 1850   /* Test the Version supported by the card*/ 
// 1851   SD_SPEC = (SD_scr[1]  & 0x01000000U) | (SD_scr[1]  & 0x02000000U);
// 1852   
// 1853   if (SD_SPEC != SD_ALLZERO)
// 1854   {
// 1855     /* Set Block Size for Card */
// 1856     sdio_cmdinitstructure.Argument         = (uint32_t)64;
// 1857     sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
// 1858     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 1859     sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 1860     sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 1861     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 1862     
// 1863     /* Check for error conditions */
// 1864     errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
// 1865     
// 1866     if (errorstate != SD_OK)
// 1867     {
// 1868       return errorstate;
// 1869     }
// 1870     
// 1871     /* Configure the SD DPSM (Data Path State Machine) */
// 1872     sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
// 1873     sdio_datainitstructure.DataLength    = 64;
// 1874     sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_64B ;
// 1875     sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_SDIO;
// 1876     sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
// 1877     sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
// 1878     SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
// 1879     
// 1880     /* Send CMD6 switch mode */
// 1881     sdio_cmdinitstructure.Argument         = 0x80FFFF01U;
// 1882     sdio_cmdinitstructure.CmdIndex         = SD_CMD_HS_SWITCH;
// 1883     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure); 
// 1884     
// 1885     /* Check for error conditions */
// 1886     errorstate = SD_CmdResp1Error(hsd, SD_CMD_HS_SWITCH);
// 1887     
// 1888     if (errorstate != SD_OK)
// 1889     {
// 1890       return errorstate;
// 1891     }
// 1892         
// 1893     while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DBCKEND | SDIO_FLAG_STBITERR))
// 1894     {
// 1895       if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXFIFOHF))
// 1896       {
// 1897         for (count = 0; count < 8; count++)
// 1898         {
// 1899           *(tempbuff + count) = SDIO_ReadFIFO(hsd->Instance);
// 1900         }
// 1901         
// 1902         tempbuff += 8;
// 1903       }
// 1904     }
// 1905     
// 1906     if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DTIMEOUT))
// 1907     {
// 1908       __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
// 1909       
// 1910       errorstate = SD_DATA_TIMEOUT;
// 1911       
// 1912       return errorstate;
// 1913     }
// 1914     else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DCRCFAIL))
// 1915     {
// 1916       __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
// 1917       
// 1918       errorstate = SD_DATA_CRC_FAIL;
// 1919       
// 1920       return errorstate;
// 1921     }
// 1922     else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR))
// 1923     {
// 1924       __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_RXOVERR);
// 1925       
// 1926       errorstate = SD_RX_OVERRUN;
// 1927       
// 1928       return errorstate;
// 1929     }
// 1930     else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_STBITERR))
// 1931     {
// 1932       __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
// 1933       
// 1934       errorstate = SD_START_BIT_ERR;
// 1935       
// 1936       return errorstate;
// 1937     }
// 1938     else
// 1939     {
// 1940       /* No error flag set */
// 1941     }
// 1942     
// 1943     count = SD_DATATIMEOUT;
// 1944     
// 1945     while ((__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXDAVL)) && (count > 0))
// 1946     {
// 1947       *tempbuff = SDIO_ReadFIFO(hsd->Instance);
// 1948       tempbuff++;
// 1949       count--;
// 1950     }
// 1951     
// 1952     /* Clear all the static flags */
// 1953     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 1954     
// 1955     /* Test if the switch mode HS is ok */
// 1956     if ((SD_hs[13]& 2) != 2)
// 1957     {
// 1958       errorstate = SD_UNSUPPORTED_FEATURE;
// 1959     } 
// 1960   }
// 1961   
// 1962   return errorstate;
// 1963 }
// 1964 
// 1965 /**
// 1966   * @}
// 1967   */
// 1968 
// 1969 /** @addtogroup SD_Exported_Functions_Group4
// 1970  *  @brief   Peripheral State functions 
// 1971  *
// 1972 @verbatim   
// 1973   ==============================================================================
// 1974                       ##### Peripheral State functions #####
// 1975   ==============================================================================  
// 1976   [..]
// 1977     This subsection permits to get in runtime the status of the peripheral 
// 1978     and the data flow.
// 1979 
// 1980 @endverbatim
// 1981   * @{
// 1982   */
// 1983 
// 1984 /**
// 1985   * @brief  Returns the current SD card's status.
// 1986   * @param  hsd: SD handle
// 1987   * @param  pSDstatus: Pointer to the buffer that will contain the SD card status 
// 1988   *         SD Status register)
// 1989   * @retval SD Card error state
// 1990   */
// 1991 HAL_SD_ErrorTypedef HAL_SD_SendSDStatus(SD_HandleTypeDef *hsd, uint32_t *pSDstatus)
// 1992 {
// 1993   SDIO_CmdInitTypeDef  sdio_cmdinitstructure;
// 1994   SDIO_DataInitTypeDef sdio_datainitstructure;
// 1995   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 1996   uint32_t count = 0;
// 1997   
// 1998   /* Check SD response */
// 1999   if ((SDIO_GetResponse(SDIO_RESP1) & SD_CARD_LOCKED) == SD_CARD_LOCKED)
// 2000   {
// 2001     errorstate = SD_LOCK_UNLOCK_FAILED;
// 2002     
// 2003     return errorstate;
// 2004   }
// 2005   
// 2006   /* Set block size for card if it is not equal to current block size for card */
// 2007   sdio_cmdinitstructure.Argument         = 64;
// 2008   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
// 2009   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2010   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2011   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2012   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2013   
// 2014   /* Check for error conditions */
// 2015   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
// 2016   
// 2017   if (errorstate != SD_OK)
// 2018   {
// 2019     return errorstate;
// 2020   }
// 2021   
// 2022   /* Send CMD55 */
// 2023   sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 2024   sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 2025   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2026   
// 2027   /* Check for error conditions */
// 2028   errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 2029   
// 2030   if (errorstate != SD_OK)
// 2031   {
// 2032     return errorstate;
// 2033   }
// 2034   
// 2035   /* Configure the SD DPSM (Data Path State Machine) */ 
// 2036   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
// 2037   sdio_datainitstructure.DataLength    = 64;
// 2038   sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_64B;
// 2039   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_SDIO;
// 2040   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
// 2041   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
// 2042   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
// 2043   
// 2044   /* Send ACMD13 (SD_APP_STATUS)  with argument as card's RCA */
// 2045   sdio_cmdinitstructure.Argument         = 0;
// 2046   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SD_APP_STATUS;
// 2047   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2048   
// 2049   /* Check for error conditions */
// 2050   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SD_APP_STATUS);
// 2051   
// 2052   if (errorstate != SD_OK)
// 2053   {
// 2054     return errorstate;
// 2055   }
// 2056   
// 2057   /* Get status data */
// 2058   while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DBCKEND | SDIO_FLAG_STBITERR))
// 2059   {
// 2060     if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXFIFOHF))
// 2061     {
// 2062       for (count = 0; count < 8; count++)
// 2063       {
// 2064         *(pSDstatus + count) = SDIO_ReadFIFO(hsd->Instance);
// 2065       }
// 2066       
// 2067       pSDstatus += 8;
// 2068     }
// 2069   }
// 2070   
// 2071   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DTIMEOUT))
// 2072   {
// 2073     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
// 2074     
// 2075     errorstate = SD_DATA_TIMEOUT;
// 2076     
// 2077     return errorstate;
// 2078   }
// 2079   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DCRCFAIL))
// 2080   {
// 2081     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
// 2082     
// 2083     errorstate = SD_DATA_CRC_FAIL;
// 2084     
// 2085     return errorstate;
// 2086   }
// 2087   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR))
// 2088   {
// 2089     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_RXOVERR);
// 2090     
// 2091     errorstate = SD_RX_OVERRUN;
// 2092     
// 2093     return errorstate;
// 2094   }
// 2095   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_STBITERR))
// 2096   {
// 2097     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
// 2098     
// 2099     errorstate = SD_START_BIT_ERR;
// 2100     
// 2101     return errorstate;
// 2102   }
// 2103   else
// 2104   {
// 2105     /* No error flag set */
// 2106   }  
// 2107   
// 2108   count = SD_DATATIMEOUT;
// 2109   while ((__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXDAVL)) && (count > 0))
// 2110   {
// 2111     *pSDstatus = SDIO_ReadFIFO(hsd->Instance);
// 2112     pSDstatus++;
// 2113     count--;
// 2114   }
// 2115   
// 2116   /* Clear all the static status flags*/
// 2117   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 2118   
// 2119   return errorstate;
// 2120 }
// 2121 
// 2122 /**
// 2123   * @brief  Gets the current sd card data status.
// 2124   * @param  hsd: SD handle
// 2125   * @retval Data Transfer state
// 2126   */
// 2127 HAL_SD_TransferStateTypedef HAL_SD_GetStatus(SD_HandleTypeDef *hsd)
// 2128 {
// 2129   HAL_SD_CardStateTypedef cardstate =  SD_CARD_TRANSFER;
// 2130 
// 2131   /* Get SD card state */
// 2132   cardstate = SD_GetState(hsd);
// 2133   
// 2134   /* Find SD status according to card state*/
// 2135   if (cardstate == SD_CARD_TRANSFER)
// 2136   {
// 2137     return SD_TRANSFER_OK;
// 2138   }
// 2139   else if(cardstate == SD_CARD_ERROR)
// 2140   {
// 2141     return SD_TRANSFER_ERROR;
// 2142   }
// 2143   else
// 2144   {
// 2145     return SD_TRANSFER_BUSY;
// 2146   }
// 2147 }
// 2148 
// 2149 /**
// 2150   * @brief  Gets the SD card status.
// 2151   * @param  hsd: SD handle      
// 2152   * @param  pCardStatus: Pointer to the HAL_SD_CardStatusTypedef structure that 
// 2153   *         will contain the SD card status information 
// 2154   * @retval SD Card error state
// 2155   */
// 2156 HAL_SD_ErrorTypedef HAL_SD_GetCardStatus(SD_HandleTypeDef *hsd, HAL_SD_CardStatusTypedef *pCardStatus)
// 2157 {
// 2158   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2159   uint32_t tmp = 0;
// 2160   uint32_t sd_status[16];
// 2161   
// 2162   errorstate = HAL_SD_SendSDStatus(hsd, sd_status);
// 2163   
// 2164   if (errorstate  != SD_OK)
// 2165   {
// 2166     return errorstate;
// 2167   }
// 2168   
// 2169   /* Byte 0 */
// 2170   tmp = (sd_status[0] & 0xC0) >> 6;
// 2171   pCardStatus->DAT_BUS_WIDTH = (uint8_t)tmp;
// 2172   
// 2173   /* Byte 0 */
// 2174   tmp = (sd_status[0] & 0x20) >> 5;
// 2175   pCardStatus->SECURED_MODE = (uint8_t)tmp;
// 2176   
// 2177   /* Byte 2 */
// 2178   tmp = (sd_status[2] & 0xFF);
// 2179   pCardStatus->SD_CARD_TYPE = (uint8_t)(tmp << 8);
// 2180   
// 2181   /* Byte 3 */
// 2182   tmp = (sd_status[3] & 0xFF);
// 2183   pCardStatus->SD_CARD_TYPE |= (uint8_t)tmp;
// 2184   
// 2185   /* Byte 4 */
// 2186   tmp = (sd_status[4] & 0xFF);
// 2187   pCardStatus->SIZE_OF_PROTECTED_AREA = (uint8_t)(tmp << 24);
// 2188   
// 2189   /* Byte 5 */
// 2190   tmp = (sd_status[5] & 0xFF);
// 2191   pCardStatus->SIZE_OF_PROTECTED_AREA |= (uint8_t)(tmp << 16);
// 2192   
// 2193   /* Byte 6 */
// 2194   tmp = (sd_status[6] & 0xFF);
// 2195   pCardStatus->SIZE_OF_PROTECTED_AREA |= (uint8_t)(tmp << 8);
// 2196   
// 2197   /* Byte 7 */
// 2198   tmp = (sd_status[7] & 0xFF);
// 2199   pCardStatus->SIZE_OF_PROTECTED_AREA |= (uint8_t)tmp;
// 2200   
// 2201   /* Byte 8 */
// 2202   tmp = (sd_status[8] & 0xFF);
// 2203   pCardStatus->SPEED_CLASS = (uint8_t)tmp;
// 2204   
// 2205   /* Byte 9 */
// 2206   tmp = (sd_status[9] & 0xFF);
// 2207   pCardStatus->PERFORMANCE_MOVE = (uint8_t)tmp;
// 2208   
// 2209   /* Byte 10 */
// 2210   tmp = (sd_status[10] & 0xF0) >> 4;
// 2211   pCardStatus->AU_SIZE = (uint8_t)tmp;
// 2212   
// 2213   /* Byte 11 */
// 2214   tmp = (sd_status[11] & 0xFF);
// 2215   pCardStatus->ERASE_SIZE = (uint8_t)(tmp << 8);
// 2216   
// 2217   /* Byte 12 */
// 2218   tmp = (sd_status[12] & 0xFF);
// 2219   pCardStatus->ERASE_SIZE |= (uint8_t)tmp;
// 2220   
// 2221   /* Byte 13 */
// 2222   tmp = (sd_status[13] & 0xFC) >> 2;
// 2223   pCardStatus->ERASE_TIMEOUT = (uint8_t)tmp;
// 2224   
// 2225   /* Byte 13 */
// 2226   tmp = (sd_status[13] & 0x3);
// 2227   pCardStatus->ERASE_OFFSET = (uint8_t)tmp;
// 2228   
// 2229   return errorstate;
// 2230 }
// 2231          
// 2232 /**
// 2233   * @}
// 2234   */
// 2235   
// 2236 /**
// 2237   * @}
// 2238   */
// 2239 
// 2240 /* Private function ----------------------------------------------------------*/  
// 2241 /** @addtogroup SD_Private_Functions
// 2242   * @{
// 2243   */
// 2244   
// 2245 /**
// 2246   * @brief  SD DMA transfer complete Rx callback.
// 2247   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2248   *                the configuration information for the specified DMA module.
// 2249   * @retval None
// 2250   */
// 2251 static void SD_DMA_RxCplt(DMA_HandleTypeDef *hdma)
// 2252 {
// 2253   SD_HandleTypeDef *hsd = (SD_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 2254   
// 2255   /* DMA transfer is complete */
// 2256   hsd->DmaTransferCplt = 1;
// 2257   
// 2258   /* Wait until SD transfer is complete */
// 2259   while(hsd->SdTransferCplt == 0)
// 2260   {
// 2261   }
// 2262   
// 2263   /* Disable the DMA channel */
// 2264   HAL_DMA_Abort(hdma);
// 2265 
// 2266   /* Transfer complete user callback */
// 2267   HAL_SD_DMA_RxCpltCallback(hsd->hdmarx);   
// 2268 }
// 2269 
// 2270 /**
// 2271   * @brief  SD DMA transfer Error Rx callback.
// 2272   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2273   *                the configuration information for the specified DMA module.
// 2274   * @retval None
// 2275   */
// 2276 static void SD_DMA_RxError(DMA_HandleTypeDef *hdma)
// 2277 {
// 2278   SD_HandleTypeDef *hsd = (SD_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 2279   
// 2280   /* Transfer complete user callback */
// 2281   HAL_SD_DMA_RxErrorCallback(hsd->hdmarx);
// 2282 }
// 2283 
// 2284 /**
// 2285   * @brief  SD DMA transfer complete Tx callback.
// 2286   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2287   *                the configuration information for the specified DMA module.
// 2288   * @retval None
// 2289   */
// 2290 static void SD_DMA_TxCplt(DMA_HandleTypeDef *hdma)
// 2291 {
// 2292   SD_HandleTypeDef *hsd = (SD_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 2293   
// 2294   /* DMA transfer is complete */
// 2295   hsd->DmaTransferCplt = 1;
// 2296   
// 2297   /* Wait until SD transfer is complete */
// 2298   while(hsd->SdTransferCplt == 0)
// 2299   {
// 2300   }
// 2301  
// 2302   /* Disable the DMA channel */
// 2303   HAL_DMA_Abort(hdma);
// 2304 
// 2305   /* Transfer complete user callback */
// 2306   HAL_SD_DMA_TxCpltCallback(hsd->hdmatx);  
// 2307 }
// 2308 
// 2309 /**
// 2310   * @brief  SD DMA transfer Error Tx callback.
// 2311   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2312   *                the configuration information for the specified DMA module.
// 2313   * @retval None
// 2314   */
// 2315 static void SD_DMA_TxError(DMA_HandleTypeDef *hdma)
// 2316 {
// 2317   SD_HandleTypeDef *hsd = ( SD_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2318   
// 2319   /* Transfer complete user callback */
// 2320   HAL_SD_DMA_TxErrorCallback(hsd->hdmatx);
// 2321 }
// 2322 
// 2323 /**
// 2324   * @brief  Returns the SD current state.
// 2325   * @param  hsd: SD handle
// 2326   * @retval SD card current state
// 2327   */
// 2328 static HAL_SD_CardStateTypedef SD_GetState(SD_HandleTypeDef *hsd)
// 2329 {
// 2330   uint32_t resp1 = 0;
// 2331   
// 2332   if (SD_SendStatus(hsd, &resp1) != SD_OK)
// 2333   {
// 2334     return SD_CARD_ERROR;
// 2335   }
// 2336   else
// 2337   {
// 2338     return (HAL_SD_CardStateTypedef)((resp1 >> 9) & 0x0F);
// 2339   }
// 2340 }
// 2341 
// 2342 /**
// 2343   * @brief  Initializes all cards or single card as the case may be Card(s) come 
// 2344   *         into standby state.
// 2345   * @param  hsd: SD handle
// 2346   * @retval SD Card error state
// 2347   */
// 2348 static HAL_SD_ErrorTypedef SD_Initialize_Cards(SD_HandleTypeDef *hsd)
// 2349 {
// 2350   SDIO_CmdInitTypeDef sdio_cmdinitstructure; 
// 2351   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2352   uint16_t sd_rca = 1;
// 2353   
// 2354   if(SDIO_GetPowerState(hsd->Instance) == 0) /* Power off */
// 2355   {
// 2356     errorstate = SD_REQUEST_NOT_APPLICABLE;
// 2357     
// 2358     return errorstate;
// 2359   }
// 2360   
// 2361   if(hsd->CardType != SECURE_DIGITAL_IO_CARD)
// 2362   {
// 2363     /* Send CMD2 ALL_SEND_CID */
// 2364     sdio_cmdinitstructure.Argument         = 0;
// 2365     sdio_cmdinitstructure.CmdIndex         = SD_CMD_ALL_SEND_CID;
// 2366     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_LONG;
// 2367     sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2368     sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2369     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2370     
// 2371     /* Check for error conditions */
// 2372     errorstate = SD_CmdResp2Error(hsd);
// 2373     
// 2374     if(errorstate != SD_OK)
// 2375     {
// 2376       return errorstate;
// 2377     }
// 2378     
// 2379     /* Get Card identification number data */
// 2380     hsd->CID[0] = SDIO_GetResponse(SDIO_RESP1);
// 2381     hsd->CID[1] = SDIO_GetResponse(SDIO_RESP2);
// 2382     hsd->CID[2] = SDIO_GetResponse(SDIO_RESP3);
// 2383     hsd->CID[3] = SDIO_GetResponse(SDIO_RESP4);
// 2384   }
// 2385   
// 2386   if((hsd->CardType == STD_CAPACITY_SD_CARD_V1_1)    || (hsd->CardType == STD_CAPACITY_SD_CARD_V2_0) ||\ 
// 2387      (hsd->CardType == SECURE_DIGITAL_IO_COMBO_CARD) || (hsd->CardType == HIGH_CAPACITY_SD_CARD))
// 2388   {
// 2389     /* Send CMD3 SET_REL_ADDR with argument 0 */
// 2390     /* SD Card publishes its RCA. */
// 2391     sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_REL_ADDR;
// 2392     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2393     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2394     
// 2395     /* Check for error conditions */
// 2396     errorstate = SD_CmdResp6Error(hsd, SD_CMD_SET_REL_ADDR, &sd_rca);
// 2397     
// 2398     if(errorstate != SD_OK)
// 2399     {
// 2400       return errorstate;
// 2401     }
// 2402   }
// 2403   
// 2404   if (hsd->CardType != SECURE_DIGITAL_IO_CARD)
// 2405   {
// 2406     /* Get the SD card RCA */
// 2407     hsd->RCA = sd_rca;
// 2408     
// 2409     /* Send CMD9 SEND_CSD with argument as card's RCA */
// 2410     sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 2411     sdio_cmdinitstructure.CmdIndex         = SD_CMD_SEND_CSD;
// 2412     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_LONG;
// 2413     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2414     
// 2415     /* Check for error conditions */
// 2416     errorstate = SD_CmdResp2Error(hsd);
// 2417     
// 2418     if(errorstate != SD_OK)
// 2419     {
// 2420       return errorstate;
// 2421     }
// 2422     
// 2423     /* Get Card Specific Data */
// 2424     hsd->CSD[0] = SDIO_GetResponse(SDIO_RESP1);
// 2425     hsd->CSD[1] = SDIO_GetResponse(SDIO_RESP2);
// 2426     hsd->CSD[2] = SDIO_GetResponse(SDIO_RESP3);
// 2427     hsd->CSD[3] = SDIO_GetResponse(SDIO_RESP4);
// 2428   }
// 2429   
// 2430   /* All cards are initialized */
// 2431   return errorstate;
// 2432 }
// 2433 
// 2434 /**
// 2435   * @brief  Selects of Deselects the corresponding card.
// 2436   * @param  hsd: SD handle
// 2437   * @param  addr: Address of the card to be selected  
// 2438   * @retval SD Card error state
// 2439   */
// 2440 static HAL_SD_ErrorTypedef SD_Select_Deselect(SD_HandleTypeDef *hsd, uint64_t addr)
// 2441 {
// 2442   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 2443   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2444   
// 2445   /* Send CMD7 SDIO_SEL_DESEL_CARD */
// 2446   sdio_cmdinitstructure.Argument         = (uint32_t)addr;
// 2447   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SEL_DESEL_CARD;
// 2448   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2449   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2450   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2451   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2452   
// 2453   /* Check for error conditions */
// 2454   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SEL_DESEL_CARD);
// 2455   
// 2456   return errorstate;
// 2457 }
// 2458 
// 2459 /**
// 2460   * @brief  Enquires cards about their operating voltage and configures clock
// 2461   *         controls and stores SD information that will be needed in future
// 2462   *         in the SD handle.
// 2463   * @param  hsd: SD handle
// 2464   * @retval SD Card error state
// 2465   */
// 2466 static HAL_SD_ErrorTypedef SD_PowerON(SD_HandleTypeDef *hsd)
// 2467 {
// 2468   SDIO_CmdInitTypeDef sdio_cmdinitstructure; 
// 2469   __IO HAL_SD_ErrorTypedef errorstate = SD_OK; 
// 2470   uint32_t response = 0, count = 0, validvoltage = 0;
// 2471   uint32_t sdtype = SD_STD_CAPACITY;
// 2472   
// 2473   /* Power ON Sequence -------------------------------------------------------*/
// 2474   /* Disable SDIO Clock */
// 2475   __HAL_SD_SDIO_DISABLE(); 
// 2476   
// 2477   /* Set Power State to ON */
// 2478   SDIO_PowerState_ON(hsd->Instance);
// 2479   
// 2480   /* 1ms: required power up waiting time before starting the SD initialization 
// 2481      sequence */
// 2482   HAL_Delay(1);
// 2483   
// 2484   /* Enable SDIO Clock */
// 2485   __HAL_SD_SDIO_ENABLE();
// 2486   
// 2487   /* CMD0: GO_IDLE_STATE -----------------------------------------------------*/
// 2488   /* No CMD response required */
// 2489   sdio_cmdinitstructure.Argument         = 0;
// 2490   sdio_cmdinitstructure.CmdIndex         = SD_CMD_GO_IDLE_STATE;
// 2491   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_NO;
// 2492   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2493   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2494   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2495   
// 2496   /* Check for error conditions */
// 2497   errorstate = SD_CmdError(hsd);
// 2498   
// 2499   if(errorstate != SD_OK)
// 2500   {
// 2501     /* CMD Response Timeout (wait for CMDSENT flag) */
// 2502     return errorstate;
// 2503   }
// 2504   
// 2505   /* CMD8: SEND_IF_COND ------------------------------------------------------*/
// 2506   /* Send CMD8 to verify SD card interface operating condition */
// 2507   /* Argument: - [31:12]: Reserved (shall be set to '0')
// 2508   - [11:8]: Supply Voltage (VHS) 0x1 (Range: 2.7-3.6 V)
// 2509   - [7:0]: Check Pattern (recommended 0xAA) */
// 2510   /* CMD Response: R7 */
// 2511   sdio_cmdinitstructure.Argument         = SD_CHECK_PATTERN;
// 2512   sdio_cmdinitstructure.CmdIndex         = SD_SDIO_SEND_IF_COND;
// 2513   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2514   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2515   
// 2516   /* Check for error conditions */ 
// 2517   errorstate = SD_CmdResp7Error(hsd);
// 2518   
// 2519   if (errorstate == SD_OK)
// 2520   {
// 2521     /* SD Card 2.0 */
// 2522     hsd->CardType = STD_CAPACITY_SD_CARD_V2_0; 
// 2523     sdtype        = SD_HIGH_CAPACITY;
// 2524   }
// 2525   
// 2526   /* Send CMD55 */
// 2527   sdio_cmdinitstructure.Argument         = 0;
// 2528   sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 2529   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2530   
// 2531   /* Check for error conditions */
// 2532   errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 2533   
// 2534   /* If errorstate is Command Timeout, it is a MMC card */
// 2535   /* If errorstate is SD_OK it is a SD card: SD card 2.0 (voltage range mismatch)
// 2536      or SD card 1.x */
// 2537   if(errorstate == SD_OK)
// 2538   {
// 2539     /* SD CARD */
// 2540     /* Send ACMD41 SD_APP_OP_COND with Argument 0x80100000 */
// 2541     while((!validvoltage) && (count < SD_MAX_VOLT_TRIAL))
// 2542     {
// 2543       
// 2544       /* SEND CMD55 APP_CMD with RCA as 0 */
// 2545       sdio_cmdinitstructure.Argument         = 0;
// 2546       sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 2547       sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2548       sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2549       sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2550       SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2551       
// 2552       /* Check for error conditions */
// 2553       errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 2554       
// 2555       if(errorstate != SD_OK)
// 2556       {
// 2557         return errorstate;
// 2558       }
// 2559       
// 2560       /* Send CMD41 */
// 2561       sdio_cmdinitstructure.Argument         = SD_VOLTAGE_WINDOW_SD | sdtype;
// 2562       sdio_cmdinitstructure.CmdIndex         = SD_CMD_SD_APP_OP_COND;
// 2563       sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2564       sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2565       sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2566       SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2567       
// 2568       /* Check for error conditions */
// 2569       errorstate = SD_CmdResp3Error(hsd);
// 2570       
// 2571       if(errorstate != SD_OK)
// 2572       {
// 2573         return errorstate;
// 2574       }
// 2575       
// 2576       /* Get command response */
// 2577       response = SDIO_GetResponse(SDIO_RESP1);
// 2578       
// 2579       /* Get operating voltage*/
// 2580       validvoltage = (((response >> 31) == 1) ? 1 : 0);
// 2581       
// 2582       count++;
// 2583     }
// 2584     
// 2585     if(count >= SD_MAX_VOLT_TRIAL)
// 2586     {
// 2587       errorstate = SD_INVALID_VOLTRANGE;
// 2588       
// 2589       return errorstate;
// 2590     }
// 2591     
// 2592     if((response & SD_HIGH_CAPACITY) == SD_HIGH_CAPACITY) /* (response &= SD_HIGH_CAPACITY) */
// 2593     {
// 2594       hsd->CardType = HIGH_CAPACITY_SD_CARD;
// 2595     }
// 2596     
// 2597   } /* else MMC Card */
// 2598   
// 2599   return errorstate;
// 2600 }
// 2601 
// 2602 /**
// 2603   * @brief  Turns the SDIO output signals off.
// 2604   * @param  hsd: SD handle
// 2605   * @retval SD Card error state
// 2606   */
// 2607 static HAL_SD_ErrorTypedef SD_PowerOFF(SD_HandleTypeDef *hsd)
// 2608 {
// 2609   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2610   
// 2611   /* Set Power State to OFF */
// 2612   SDIO_PowerState_OFF(hsd->Instance);
// 2613   
// 2614   return errorstate;
// 2615 }
// 2616 
// 2617 /**
// 2618   * @brief  Returns the current card's status.
// 2619   * @param  hsd: SD handle
// 2620   * @param  pCardStatus: pointer to the buffer that will contain the SD card 
// 2621   *         status (Card Status register)  
// 2622   * @retval SD Card error state
// 2623   */
// 2624 static HAL_SD_ErrorTypedef SD_SendStatus(SD_HandleTypeDef *hsd, uint32_t *pCardStatus)
// 2625 {
// 2626   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 2627   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2628   
// 2629   if(pCardStatus == NULL)
// 2630   {
// 2631     errorstate = SD_INVALID_PARAMETER;
// 2632     
// 2633     return errorstate;
// 2634   }
// 2635   
// 2636   /* Send Status command */
// 2637   sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 2638   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SEND_STATUS;
// 2639   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 2640   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 2641   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 2642   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 2643   
// 2644   /* Check for error conditions */
// 2645   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SEND_STATUS);
// 2646   
// 2647   if(errorstate != SD_OK)
// 2648   {
// 2649     return errorstate;
// 2650   }
// 2651   
// 2652   /* Get SD card status */
// 2653   *pCardStatus = SDIO_GetResponse(SDIO_RESP1);
// 2654   
// 2655   return errorstate;
// 2656 }
// 2657 
// 2658 /**
// 2659   * @brief  Checks for error conditions for CMD0.
// 2660   * @param  hsd: SD handle
// 2661   * @retval SD Card error state
// 2662   */
// 2663 static HAL_SD_ErrorTypedef SD_CmdError(SD_HandleTypeDef *hsd)
// 2664 {
// 2665   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2666   uint32_t timeout, tmp;
// 2667   
// 2668   timeout = SDIO_CMD0TIMEOUT;
// 2669   
// 2670   tmp = __HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CMDSENT);
// 2671     
// 2672   while((timeout > 0) && (!tmp))
// 2673   {
// 2674     tmp = __HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CMDSENT);
// 2675     timeout--;
// 2676   }
// 2677   
// 2678   if(timeout == 0)
// 2679   {
// 2680     errorstate = SD_CMD_RSP_TIMEOUT;
// 2681     return errorstate;
// 2682   }
// 2683   
// 2684   /* Clear all the static flags */
// 2685   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 2686   
// 2687   return errorstate;
// 2688 }
// 2689 
// 2690 /**
// 2691   * @brief  Checks for error conditions for R7 response.
// 2692   * @param  hsd: SD handle
// 2693   * @retval SD Card error state
// 2694   */
// 2695 static HAL_SD_ErrorTypedef SD_CmdResp7Error(SD_HandleTypeDef *hsd)
// 2696 {
// 2697   HAL_SD_ErrorTypedef errorstate = SD_ERROR;
// 2698   uint32_t timeout = SDIO_CMD0TIMEOUT, tmp;
// 2699   
// 2700   tmp = __HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT); 
// 2701   
// 2702   while((!tmp) && (timeout > 0))
// 2703   {
// 2704     tmp = __HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT);
// 2705     timeout--;
// 2706   }
// 2707   
// 2708   tmp = __HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT); 
// 2709   
// 2710   if((timeout == 0) || tmp)
// 2711   {
// 2712     /* Card is not V2.0 compliant or card does not support the set voltage range */
// 2713     errorstate = SD_CMD_RSP_TIMEOUT;
// 2714     
// 2715     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 2716     
// 2717     return errorstate;
// 2718   }
// 2719   
// 2720   if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CMDREND))
// 2721   {
// 2722     /* Card is SD V2.0 compliant */
// 2723     errorstate = SD_OK;
// 2724     
// 2725     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CMDREND);
// 2726     
// 2727     return errorstate;
// 2728   }
// 2729   
// 2730   return errorstate;
// 2731 }
// 2732 
// 2733 /**
// 2734   * @brief  Checks for error conditions for R1 response.
// 2735   * @param  hsd: SD handle
// 2736   * @param  SD_CMD: The sent command index  
// 2737   * @retval SD Card error state
// 2738   */
// 2739 static HAL_SD_ErrorTypedef SD_CmdResp1Error(SD_HandleTypeDef *hsd, uint8_t SD_CMD)
// 2740 {
// 2741   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2742   uint32_t response_r1;
// 2743   
// 2744   while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT))
// 2745   {
// 2746   }
// 2747   
// 2748   if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT))
// 2749   {
// 2750     errorstate = SD_CMD_RSP_TIMEOUT;
// 2751     
// 2752     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 2753     
// 2754     return errorstate;
// 2755   }
// 2756   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL))
// 2757   {
// 2758     errorstate = SD_CMD_CRC_FAIL;
// 2759     
// 2760     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CCRCFAIL);
// 2761     
// 2762     return errorstate;
// 2763   }
// 2764   else
// 2765   {
// 2766     /* No error flag set */
// 2767   }
// 2768   
// 2769   /* Check response received is of desired command */
// 2770   if(SDIO_GetCommandResponse(hsd->Instance) != SD_CMD)
// 2771   {
// 2772     errorstate = SD_ILLEGAL_CMD;
// 2773     
// 2774     return errorstate;
// 2775   }
// 2776   
// 2777   /* Clear all the static flags */
// 2778   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 2779   
// 2780   /* We have received response, retrieve it for analysis  */
// 2781   response_r1 = SDIO_GetResponse(SDIO_RESP1);
// 2782   
// 2783   if((response_r1 & SD_OCR_ERRORBITS) == SD_ALLZERO)
// 2784   {
// 2785     return errorstate;
// 2786   }
// 2787   
// 2788   if((response_r1 & SD_OCR_ADDR_OUT_OF_RANGE) == SD_OCR_ADDR_OUT_OF_RANGE)
// 2789   {
// 2790     return(SD_ADDR_OUT_OF_RANGE);
// 2791   }
// 2792   
// 2793   if((response_r1 & SD_OCR_ADDR_MISALIGNED) == SD_OCR_ADDR_MISALIGNED)
// 2794   {
// 2795     return(SD_ADDR_MISALIGNED);
// 2796   }
// 2797   
// 2798   if((response_r1 & SD_OCR_BLOCK_LEN_ERR) == SD_OCR_BLOCK_LEN_ERR)
// 2799   {
// 2800     return(SD_BLOCK_LEN_ERR);
// 2801   }
// 2802   
// 2803   if((response_r1 & SD_OCR_ERASE_SEQ_ERR) == SD_OCR_ERASE_SEQ_ERR)
// 2804   {
// 2805     return(SD_ERASE_SEQ_ERR);
// 2806   }
// 2807   
// 2808   if((response_r1 & SD_OCR_BAD_ERASE_PARAM) == SD_OCR_BAD_ERASE_PARAM)
// 2809   {
// 2810     return(SD_BAD_ERASE_PARAM);
// 2811   }
// 2812   
// 2813   if((response_r1 & SD_OCR_WRITE_PROT_VIOLATION) == SD_OCR_WRITE_PROT_VIOLATION)
// 2814   {
// 2815     return(SD_WRITE_PROT_VIOLATION);
// 2816   }
// 2817   
// 2818   if((response_r1 & SD_OCR_LOCK_UNLOCK_FAILED) == SD_OCR_LOCK_UNLOCK_FAILED)
// 2819   {
// 2820     return(SD_LOCK_UNLOCK_FAILED);
// 2821   }
// 2822   
// 2823   if((response_r1 & SD_OCR_COM_CRC_FAILED) == SD_OCR_COM_CRC_FAILED)
// 2824   {
// 2825     return(SD_COM_CRC_FAILED);
// 2826   }
// 2827   
// 2828   if((response_r1 & SD_OCR_ILLEGAL_CMD) == SD_OCR_ILLEGAL_CMD)
// 2829   {
// 2830     return(SD_ILLEGAL_CMD);
// 2831   }
// 2832   
// 2833   if((response_r1 & SD_OCR_CARD_ECC_FAILED) == SD_OCR_CARD_ECC_FAILED)
// 2834   {
// 2835     return(SD_CARD_ECC_FAILED);
// 2836   }
// 2837   
// 2838   if((response_r1 & SD_OCR_CC_ERROR) == SD_OCR_CC_ERROR)
// 2839   {
// 2840     return(SD_CC_ERROR);
// 2841   }
// 2842   
// 2843   if((response_r1 & SD_OCR_GENERAL_UNKNOWN_ERROR) == SD_OCR_GENERAL_UNKNOWN_ERROR)
// 2844   {
// 2845     return(SD_GENERAL_UNKNOWN_ERROR);
// 2846   }
// 2847   
// 2848   if((response_r1 & SD_OCR_STREAM_READ_UNDERRUN) == SD_OCR_STREAM_READ_UNDERRUN)
// 2849   {
// 2850     return(SD_STREAM_READ_UNDERRUN);
// 2851   }
// 2852   
// 2853   if((response_r1 & SD_OCR_STREAM_WRITE_OVERRUN) == SD_OCR_STREAM_WRITE_OVERRUN)
// 2854   {
// 2855     return(SD_STREAM_WRITE_OVERRUN);
// 2856   }
// 2857   
// 2858   if((response_r1 & SD_OCR_CID_CSD_OVERWRITE) == SD_OCR_CID_CSD_OVERWRITE)
// 2859   {
// 2860     return(SD_CID_CSD_OVERWRITE);
// 2861   }
// 2862   
// 2863   if((response_r1 & SD_OCR_WP_ERASE_SKIP) == SD_OCR_WP_ERASE_SKIP)
// 2864   {
// 2865     return(SD_WP_ERASE_SKIP);
// 2866   }
// 2867   
// 2868   if((response_r1 & SD_OCR_CARD_ECC_DISABLED) == SD_OCR_CARD_ECC_DISABLED)
// 2869   {
// 2870     return(SD_CARD_ECC_DISABLED);
// 2871   }
// 2872   
// 2873   if((response_r1 & SD_OCR_ERASE_RESET) == SD_OCR_ERASE_RESET)
// 2874   {
// 2875     return(SD_ERASE_RESET);
// 2876   }
// 2877   
// 2878   if((response_r1 & SD_OCR_AKE_SEQ_ERROR) == SD_OCR_AKE_SEQ_ERROR)
// 2879   {
// 2880     return(SD_AKE_SEQ_ERROR);
// 2881   }
// 2882   
// 2883   return errorstate;
// 2884 }
// 2885 
// 2886 /**
// 2887   * @brief  Checks for error conditions for R3 (OCR) response.
// 2888   * @param  hsd: SD handle
// 2889   * @retval SD Card error state
// 2890   */
// 2891 static HAL_SD_ErrorTypedef SD_CmdResp3Error(SD_HandleTypeDef *hsd)
// 2892 {
// 2893   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2894   
// 2895   while (!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT))
// 2896   {
// 2897   }
// 2898   
// 2899   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT))
// 2900   {
// 2901     errorstate = SD_CMD_RSP_TIMEOUT;
// 2902     
// 2903     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 2904     
// 2905     return errorstate;
// 2906   }
// 2907   
// 2908   /* Clear all the static flags */
// 2909   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 2910   
// 2911   return errorstate;
// 2912 }
// 2913 
// 2914 /**
// 2915   * @brief  Checks for error conditions for R2 (CID or CSD) response.
// 2916   * @param  hsd: SD handle
// 2917   * @retval SD Card error state
// 2918   */
// 2919 static HAL_SD_ErrorTypedef SD_CmdResp2Error(SD_HandleTypeDef *hsd)
// 2920 {
// 2921   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2922   
// 2923   while (!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT))
// 2924   {
// 2925   }
// 2926     
// 2927   if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT))
// 2928   {
// 2929     errorstate = SD_CMD_RSP_TIMEOUT;
// 2930     
// 2931     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 2932     
// 2933     return errorstate;
// 2934   }
// 2935   else if (__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL))
// 2936   {
// 2937     errorstate = SD_CMD_CRC_FAIL;
// 2938     
// 2939     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CCRCFAIL);
// 2940     
// 2941     return errorstate;
// 2942   }
// 2943   else
// 2944   {
// 2945     /* No error flag set */
// 2946   }
// 2947   
// 2948   /* Clear all the static flags */
// 2949   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 2950   
// 2951   return errorstate;
// 2952 }
// 2953 
// 2954 /**
// 2955   * @brief  Checks for error conditions for R6 (RCA) response.
// 2956   * @param  hsd: SD handle
// 2957   * @param  SD_CMD: The sent command index
// 2958   * @param  pRCA: Pointer to the variable that will contain the SD card relative 
// 2959   *         address RCA   
// 2960   * @retval SD Card error state
// 2961   */
// 2962 static HAL_SD_ErrorTypedef SD_CmdResp6Error(SD_HandleTypeDef *hsd, uint8_t SD_CMD, uint16_t *pRCA)
// 2963 {
// 2964   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 2965   uint32_t response_r1;
// 2966   
// 2967   while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT))
// 2968   {
// 2969   }
// 2970   
// 2971   if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT))
// 2972   {
// 2973     errorstate = SD_CMD_RSP_TIMEOUT;
// 2974     
// 2975     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 2976     
// 2977     return errorstate;
// 2978   }
// 2979   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL))
// 2980   {
// 2981     errorstate = SD_CMD_CRC_FAIL;
// 2982     
// 2983     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CCRCFAIL);
// 2984     
// 2985     return errorstate;
// 2986   }
// 2987   else
// 2988   {
// 2989     /* No error flag set */
// 2990   }
// 2991   
// 2992   /* Check response received is of desired command */
// 2993   if(SDIO_GetCommandResponse(hsd->Instance) != SD_CMD)
// 2994   {
// 2995     errorstate = SD_ILLEGAL_CMD;
// 2996     
// 2997     return errorstate;
// 2998   }
// 2999   
// 3000   /* Clear all the static flags */
// 3001   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 3002   
// 3003   /* We have received response, retrieve it.  */
// 3004   response_r1 = SDIO_GetResponse(SDIO_RESP1);
// 3005   
// 3006   if((response_r1 & (SD_R6_GENERAL_UNKNOWN_ERROR | SD_R6_ILLEGAL_CMD | SD_R6_COM_CRC_FAILED)) == SD_ALLZERO)
// 3007   {
// 3008     *pRCA = (uint16_t) (response_r1 >> 16);
// 3009     
// 3010     return errorstate;
// 3011   }
// 3012   
// 3013   if((response_r1 & SD_R6_GENERAL_UNKNOWN_ERROR) == SD_R6_GENERAL_UNKNOWN_ERROR)
// 3014   {
// 3015     return(SD_GENERAL_UNKNOWN_ERROR);
// 3016   }
// 3017   
// 3018   if((response_r1 & SD_R6_ILLEGAL_CMD) == SD_R6_ILLEGAL_CMD)
// 3019   {
// 3020     return(SD_ILLEGAL_CMD);
// 3021   }
// 3022   
// 3023   if((response_r1 & SD_R6_COM_CRC_FAILED) == SD_R6_COM_CRC_FAILED)
// 3024   {
// 3025     return(SD_COM_CRC_FAILED);
// 3026   }
// 3027   
// 3028   return errorstate;
// 3029 }
// 3030 
// 3031 /**
// 3032   * @brief  Enables the SDIO wide bus mode.
// 3033   * @param  hsd: SD handle
// 3034   * @retval SD Card error state
// 3035   */
// 3036 static HAL_SD_ErrorTypedef SD_WideBus_Enable(SD_HandleTypeDef *hsd)
// 3037 {
// 3038   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 3039   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 3040   
// 3041   uint32_t scr[2] = {0, 0};
// 3042   
// 3043   if((SDIO_GetResponse(SDIO_RESP1) & SD_CARD_LOCKED) == SD_CARD_LOCKED)
// 3044   {
// 3045     errorstate = SD_LOCK_UNLOCK_FAILED;
// 3046     
// 3047     return errorstate;
// 3048   }
// 3049   
// 3050   /* Get SCR Register */
// 3051   errorstate = SD_FindSCR(hsd, scr);
// 3052   
// 3053   if(errorstate != SD_OK)
// 3054   {
// 3055     return errorstate;
// 3056   }
// 3057   
// 3058   /* If requested card supports wide bus operation */
// 3059   if((scr[1] & SD_WIDE_BUS_SUPPORT) != SD_ALLZERO)
// 3060   {
// 3061     /* Send CMD55 APP_CMD with argument as card's RCA.*/
// 3062     sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 3063     sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 3064     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 3065     sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 3066     sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 3067     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3068     
// 3069     /* Check for error conditions */
// 3070     errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 3071     
// 3072     if(errorstate != SD_OK)
// 3073     {
// 3074       return errorstate;
// 3075     }
// 3076     
// 3077     /* Send ACMD6 APP_CMD with argument as 2 for wide bus mode */
// 3078     sdio_cmdinitstructure.Argument         = 2;
// 3079     sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_SD_SET_BUSWIDTH;
// 3080     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3081     
// 3082     /* Check for error conditions */
// 3083     errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_SD_SET_BUSWIDTH);
// 3084     
// 3085     if(errorstate != SD_OK)
// 3086     {
// 3087       return errorstate;
// 3088     }
// 3089     
// 3090     return errorstate;
// 3091   }
// 3092   else
// 3093   {
// 3094     errorstate = SD_REQUEST_NOT_APPLICABLE;
// 3095     
// 3096     return errorstate;
// 3097   }
// 3098 }   
// 3099 
// 3100 /**
// 3101   * @brief  Disables the SDIO wide bus mode.
// 3102   * @param  hsd: SD handle
// 3103   * @retval SD Card error state
// 3104   */
// 3105 static HAL_SD_ErrorTypedef SD_WideBus_Disable(SD_HandleTypeDef *hsd)
// 3106 {
// 3107   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 3108   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 3109   
// 3110   uint32_t scr[2] = {0, 0};
// 3111   
// 3112   if((SDIO_GetResponse(SDIO_RESP1) & SD_CARD_LOCKED) == SD_CARD_LOCKED)
// 3113   {
// 3114     errorstate = SD_LOCK_UNLOCK_FAILED;
// 3115     
// 3116     return errorstate;
// 3117   }
// 3118   
// 3119   /* Get SCR Register */
// 3120   errorstate = SD_FindSCR(hsd, scr);
// 3121   
// 3122   if(errorstate != SD_OK)
// 3123   {
// 3124     return errorstate;
// 3125   }
// 3126   
// 3127   /* If requested card supports 1 bit mode operation */
// 3128   if((scr[1] & SD_SINGLE_BUS_SUPPORT) != SD_ALLZERO)
// 3129   {
// 3130     /* Send CMD55 APP_CMD with argument as card's RCA */
// 3131     sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 3132     sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 3133     sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 3134     sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 3135     sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 3136     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3137     
// 3138     /* Check for error conditions */
// 3139     errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 3140     
// 3141     if(errorstate != SD_OK)
// 3142     {
// 3143       return errorstate;
// 3144     }
// 3145     
// 3146     /* Send ACMD6 APP_CMD with argument as 0 for single bus mode */
// 3147     sdio_cmdinitstructure.Argument         = 0;
// 3148     sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_SD_SET_BUSWIDTH;
// 3149     SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3150     
// 3151     /* Check for error conditions */
// 3152     errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_SD_SET_BUSWIDTH);
// 3153     
// 3154     if(errorstate != SD_OK)
// 3155     {
// 3156       return errorstate;
// 3157     }
// 3158     
// 3159     return errorstate;
// 3160   }
// 3161   else
// 3162   {
// 3163     errorstate = SD_REQUEST_NOT_APPLICABLE;
// 3164     
// 3165     return errorstate;
// 3166   }
// 3167 }
// 3168   
// 3169   
// 3170 /**
// 3171   * @brief  Finds the SD card SCR register value.
// 3172   * @param  hsd: SD handle
// 3173   * @param  pSCR: pointer to the buffer that will contain the SCR value  
// 3174   * @retval SD Card error state
// 3175   */
// 3176 static HAL_SD_ErrorTypedef SD_FindSCR(SD_HandleTypeDef *hsd, uint32_t *pSCR)
// 3177 {
// 3178   SDIO_CmdInitTypeDef  sdio_cmdinitstructure;
// 3179   SDIO_DataInitTypeDef sdio_datainitstructure;
// 3180   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 3181   uint32_t index = 0;
// 3182   uint32_t tempscr[2] = {0, 0};
// 3183   
// 3184   /* Set Block Size To 8 Bytes */
// 3185   /* Send CMD55 APP_CMD with argument as card's RCA */
// 3186   sdio_cmdinitstructure.Argument         = (uint32_t)8;
// 3187   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SET_BLOCKLEN;
// 3188   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 3189   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 3190   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 3191   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3192   
// 3193   /* Check for error conditions */
// 3194   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SET_BLOCKLEN);
// 3195   
// 3196   if(errorstate != SD_OK)
// 3197   {
// 3198     return errorstate;
// 3199   }
// 3200   
// 3201   /* Send CMD55 APP_CMD with argument as card's RCA */
// 3202   sdio_cmdinitstructure.Argument         = (uint32_t)((hsd->RCA) << 16);
// 3203   sdio_cmdinitstructure.CmdIndex         = SD_CMD_APP_CMD;
// 3204   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3205   
// 3206   /* Check for error conditions */
// 3207   errorstate = SD_CmdResp1Error(hsd, SD_CMD_APP_CMD);
// 3208   
// 3209   if(errorstate != SD_OK)
// 3210   {
// 3211     return errorstate;
// 3212   }
// 3213   sdio_datainitstructure.DataTimeOut   = SD_DATATIMEOUT;
// 3214   sdio_datainitstructure.DataLength    = 8;
// 3215   sdio_datainitstructure.DataBlockSize = SDIO_DATABLOCK_SIZE_8B;
// 3216   sdio_datainitstructure.TransferDir   = SDIO_TRANSFER_DIR_TO_SDIO;
// 3217   sdio_datainitstructure.TransferMode  = SDIO_TRANSFER_MODE_BLOCK;
// 3218   sdio_datainitstructure.DPSM          = SDIO_DPSM_ENABLE;
// 3219   SDIO_DataConfig(hsd->Instance, &sdio_datainitstructure);
// 3220   
// 3221   /* Send ACMD51 SD_APP_SEND_SCR with argument as 0 */
// 3222   sdio_cmdinitstructure.Argument         = 0;
// 3223   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SD_APP_SEND_SCR;
// 3224   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3225   
// 3226   /* Check for error conditions */
// 3227   errorstate = SD_CmdResp1Error(hsd, SD_CMD_SD_APP_SEND_SCR);
// 3228   
// 3229   if(errorstate != SD_OK)
// 3230   {
// 3231     return errorstate;
// 3232   }
// 3233   
// 3234   while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR | SDIO_FLAG_DCRCFAIL | SDIO_FLAG_DTIMEOUT | SDIO_FLAG_DBCKEND | SDIO_FLAG_STBITERR))
// 3235   {
// 3236     if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXDAVL))
// 3237     {
// 3238       *(tempscr + index) = SDIO_ReadFIFO(hsd->Instance);
// 3239       index++;
// 3240     }
// 3241   }
// 3242   
// 3243   if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DTIMEOUT))
// 3244   {
// 3245     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DTIMEOUT);
// 3246     
// 3247     errorstate = SD_DATA_TIMEOUT;
// 3248     
// 3249     return errorstate;
// 3250   }
// 3251   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_DCRCFAIL))
// 3252   {
// 3253     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_DCRCFAIL);
// 3254     
// 3255     errorstate = SD_DATA_CRC_FAIL;
// 3256     
// 3257     return errorstate;
// 3258   }
// 3259   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_RXOVERR))
// 3260   {
// 3261     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_RXOVERR);
// 3262     
// 3263     errorstate = SD_RX_OVERRUN;
// 3264     
// 3265     return errorstate;
// 3266   }
// 3267   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_STBITERR))
// 3268   {
// 3269     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_STBITERR);
// 3270     
// 3271     errorstate = SD_START_BIT_ERR;
// 3272     
// 3273     return errorstate;
// 3274   }
// 3275   else
// 3276   {
// 3277     /* No error flag set */
// 3278   }
// 3279   
// 3280   /* Clear all the static flags */
// 3281   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 3282   
// 3283   *(pSCR + 1) = ((tempscr[0] & SD_0TO7BITS) << 24)  | ((tempscr[0] & SD_8TO15BITS) << 8) |\ 
// 3284     ((tempscr[0] & SD_16TO23BITS) >> 8) | ((tempscr[0] & SD_24TO31BITS) >> 24);
// 3285   
// 3286   *(pSCR) = ((tempscr[1] & SD_0TO7BITS) << 24)  | ((tempscr[1] & SD_8TO15BITS) << 8) |\ 
// 3287     ((tempscr[1] & SD_16TO23BITS) >> 8) | ((tempscr[1] & SD_24TO31BITS) >> 24);
// 3288   
// 3289   return errorstate;
// 3290 }
// 3291 
// 3292 /**
// 3293   * @brief  Checks if the SD card is in programming state.
// 3294   * @param  hsd: SD handle
// 3295   * @param  pStatus: pointer to the variable that will contain the SD card state  
// 3296   * @retval SD Card error state
// 3297   */
// 3298 static HAL_SD_ErrorTypedef SD_IsCardProgramming(SD_HandleTypeDef *hsd, uint8_t *pStatus)
// 3299 {
// 3300   SDIO_CmdInitTypeDef sdio_cmdinitstructure;
// 3301   HAL_SD_ErrorTypedef errorstate = SD_OK;
// 3302   __IO uint32_t responseR1 = 0;
// 3303   
// 3304   sdio_cmdinitstructure.Argument         = (uint32_t)(hsd->RCA << 16);
// 3305   sdio_cmdinitstructure.CmdIndex         = SD_CMD_SEND_STATUS;
// 3306   sdio_cmdinitstructure.Response         = SDIO_RESPONSE_SHORT;
// 3307   sdio_cmdinitstructure.WaitForInterrupt = SDIO_WAIT_NO;
// 3308   sdio_cmdinitstructure.CPSM             = SDIO_CPSM_ENABLE;
// 3309   SDIO_SendCommand(hsd->Instance, &sdio_cmdinitstructure);
// 3310   
// 3311   while(!__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL | SDIO_FLAG_CMDREND | SDIO_FLAG_CTIMEOUT))
// 3312   {
// 3313   }
// 3314   
// 3315   if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CTIMEOUT))
// 3316   {
// 3317     errorstate = SD_CMD_RSP_TIMEOUT;
// 3318     
// 3319     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CTIMEOUT);
// 3320     
// 3321     return errorstate;
// 3322   }
// 3323   else if(__HAL_SD_SDIO_GET_FLAG(hsd, SDIO_FLAG_CCRCFAIL))
// 3324   {
// 3325     errorstate = SD_CMD_CRC_FAIL;
// 3326     
// 3327     __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_FLAG_CCRCFAIL);
// 3328     
// 3329     return errorstate;
// 3330   }
// 3331   else
// 3332   {
// 3333     /* No error flag set */
// 3334   }
// 3335   
// 3336   /* Check response received is of desired command */
// 3337   if((uint32_t)SDIO_GetCommandResponse(hsd->Instance) != SD_CMD_SEND_STATUS)
// 3338   {
// 3339     errorstate = SD_ILLEGAL_CMD;
// 3340     
// 3341     return errorstate;
// 3342   }
// 3343   
// 3344   /* Clear all the static flags */
// 3345   __HAL_SD_SDIO_CLEAR_FLAG(hsd, SDIO_STATIC_FLAGS);
// 3346   
// 3347   
// 3348   /* We have received response, retrieve it for analysis */
// 3349   responseR1 = SDIO_GetResponse(SDIO_RESP1);
// 3350   
// 3351   /* Find out card status */
// 3352   *pStatus = (uint8_t)((responseR1 >> 9) & 0x0000000F);
// 3353   
// 3354   if((responseR1 & SD_OCR_ERRORBITS) == SD_ALLZERO)
// 3355   {
// 3356     return errorstate;
// 3357   }
// 3358   
// 3359   if((responseR1 & SD_OCR_ADDR_OUT_OF_RANGE) == SD_OCR_ADDR_OUT_OF_RANGE)
// 3360   {
// 3361     return(SD_ADDR_OUT_OF_RANGE);
// 3362   }
// 3363   
// 3364   if((responseR1 & SD_OCR_ADDR_MISALIGNED) == SD_OCR_ADDR_MISALIGNED)
// 3365   {
// 3366     return(SD_ADDR_MISALIGNED);
// 3367   }
// 3368   
// 3369   if((responseR1 & SD_OCR_BLOCK_LEN_ERR) == SD_OCR_BLOCK_LEN_ERR)
// 3370   {
// 3371     return(SD_BLOCK_LEN_ERR);
// 3372   }
// 3373   
// 3374   if((responseR1 & SD_OCR_ERASE_SEQ_ERR) == SD_OCR_ERASE_SEQ_ERR)
// 3375   {
// 3376     return(SD_ERASE_SEQ_ERR);
// 3377   }
// 3378   
// 3379   if((responseR1 & SD_OCR_BAD_ERASE_PARAM) == SD_OCR_BAD_ERASE_PARAM)
// 3380   {
// 3381     return(SD_BAD_ERASE_PARAM);
// 3382   }
// 3383   
// 3384   if((responseR1 & SD_OCR_WRITE_PROT_VIOLATION) == SD_OCR_WRITE_PROT_VIOLATION)
// 3385   {
// 3386     return(SD_WRITE_PROT_VIOLATION);
// 3387   }
// 3388   
// 3389   if((responseR1 & SD_OCR_LOCK_UNLOCK_FAILED) == SD_OCR_LOCK_UNLOCK_FAILED)
// 3390   {
// 3391     return(SD_LOCK_UNLOCK_FAILED);
// 3392   }
// 3393   
// 3394   if((responseR1 & SD_OCR_COM_CRC_FAILED) == SD_OCR_COM_CRC_FAILED)
// 3395   {
// 3396     return(SD_COM_CRC_FAILED);
// 3397   }
// 3398   
// 3399   if((responseR1 & SD_OCR_ILLEGAL_CMD) == SD_OCR_ILLEGAL_CMD)
// 3400   {
// 3401     return(SD_ILLEGAL_CMD);
// 3402   }
// 3403   
// 3404   if((responseR1 & SD_OCR_CARD_ECC_FAILED) == SD_OCR_CARD_ECC_FAILED)
// 3405   {
// 3406     return(SD_CARD_ECC_FAILED);
// 3407   }
// 3408   
// 3409   if((responseR1 & SD_OCR_CC_ERROR) == SD_OCR_CC_ERROR)
// 3410   {
// 3411     return(SD_CC_ERROR);
// 3412   }
// 3413   
// 3414   if((responseR1 & SD_OCR_GENERAL_UNKNOWN_ERROR) == SD_OCR_GENERAL_UNKNOWN_ERROR)
// 3415   {
// 3416     return(SD_GENERAL_UNKNOWN_ERROR);
// 3417   }
// 3418   
// 3419   if((responseR1 & SD_OCR_STREAM_READ_UNDERRUN) == SD_OCR_STREAM_READ_UNDERRUN)
// 3420   {
// 3421     return(SD_STREAM_READ_UNDERRUN);
// 3422   }
// 3423   
// 3424   if((responseR1 & SD_OCR_STREAM_WRITE_OVERRUN) == SD_OCR_STREAM_WRITE_OVERRUN)
// 3425   {
// 3426     return(SD_STREAM_WRITE_OVERRUN);
// 3427   }
// 3428   
// 3429   if((responseR1 & SD_OCR_CID_CSD_OVERWRITE) == SD_OCR_CID_CSD_OVERWRITE)
// 3430   {
// 3431     return(SD_CID_CSD_OVERWRITE);
// 3432   }
// 3433   
// 3434   if((responseR1 & SD_OCR_WP_ERASE_SKIP) == SD_OCR_WP_ERASE_SKIP)
// 3435   {
// 3436     return(SD_WP_ERASE_SKIP);
// 3437   }
// 3438   
// 3439   if((responseR1 & SD_OCR_CARD_ECC_DISABLED) == SD_OCR_CARD_ECC_DISABLED)
// 3440   {
// 3441     return(SD_CARD_ECC_DISABLED);
// 3442   }
// 3443   
// 3444   if((responseR1 & SD_OCR_ERASE_RESET) == SD_OCR_ERASE_RESET)
// 3445   {
// 3446     return(SD_ERASE_RESET);
// 3447   }
// 3448   
// 3449   if((responseR1 & SD_OCR_AKE_SEQ_ERROR) == SD_OCR_AKE_SEQ_ERROR)
// 3450   {
// 3451     return(SD_AKE_SEQ_ERROR);
// 3452   }
// 3453   
// 3454   return errorstate;
// 3455 }   
// 3456 
// 3457 /**
// 3458   * @}
// 3459   */
// 3460 
// 3461 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
// 3462 #endif /* HAL_SD_MODULE_ENABLED */
// 3463 
// 3464 /**
// 3465   * @}
// 3466   */
// 3467 
// 3468 /**
// 3469   * @}
// 3470   */
// 3471 
// 3472 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
