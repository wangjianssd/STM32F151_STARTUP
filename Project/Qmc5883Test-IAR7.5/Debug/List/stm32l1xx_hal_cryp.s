///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_cryp.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_cryp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_cryp.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   CRYP HAL module driver.
//    8   *    
//    9   *          This file provides firmware functions to manage the following 
//   10   *          functionalities of the Cryptography (CRYP) peripheral:
//   11   *           + Initialization and de-initialization functions
//   12   *           + Processing functions by algorithm using polling mode
//   13   *           + Processing functions by algorithm using interrupt mode
//   14   *           + Processing functions by algorithm using DMA mode
//   15   *           + Peripheral State functions
//   16   *         
//   17   @verbatim
//   18   ==============================================================================
//   19                      ##### How to use this driver #####
//   20   ==============================================================================
//   21     [..]
//   22       The CRYP HAL driver can be used as follows:
//   23 
//   24       (#)Initialize the CRYP low level resources by implementing the HAL_CRYP_MspInit():
//   25          (##) Enable the CRYP interface clock using __HAL_RCC_CRYP_CLK_ENABLE()
//   26          (##) In case of using interrupts (e.g. HAL_CRYP_AESECB_Encrypt_IT())
//   27              (+) Configure the CRYP interrupt priority using HAL_NVIC_SetPriority()
//   28              (+) Enable the CRYP IRQ handler using HAL_NVIC_EnableIRQ()
//   29              (+) In CRYP IRQ handler, call HAL_CRYP_IRQHandler()
//   30          (##) In case of using DMA to control data transfer (e.g. HAL_CRYP_AESECB_Encrypt_DMA())
//   31              (+) Enable the DMA2 interface clock using 
//   32                  (++) __HAL_RCC_DMA2_CLK_ENABLE()
//   33              (+) Configure and enable two DMA Channels one for managing data transfer from
//   34                  memory to peripheral (input channel) and another channel for managing data
//   35                  transfer from peripheral to memory (output channel)
//   36              (+) Associate the initialized DMA handle to the CRYP DMA handle
//   37                  using  __HAL_LINKDMA()
//   38              (+) Configure the priority and enable the NVIC for the transfer complete
//   39                  interrupt on the two DMA Streams. The output stream should have higher
//   40                  priority than the input stream.
//   41                  (++) HAL_NVIC_SetPriority()
//   42                  (++) HAL_NVIC_EnableIRQ()
//   43     
//   44       (#)Initialize the CRYP HAL using HAL_CRYP_Init(). This function configures mainly:
//   45          (##) The data type: 1-bit, 8-bit, 16-bit and 32-bit
//   46          (##) The encryption/decryption key.
//   47          (##) The initialization vector (counter). It is not used ECB mode.
//   48     
//   49       (#)Three processing (encryption/decryption) functions are available:
//   50          (##) Polling mode: encryption and decryption APIs are blocking functions
//   51               i.e. they process the data and wait till the processing is finished
//   52               e.g. HAL_CRYP_AESCBC_Encrypt()
//   53          (##) Interrupt mode: encryption and decryption APIs are not blocking functions
//   54               i.e. they process the data under interrupt
//   55               e.g. HAL_CRYP_AESCBC_Encrypt_IT()
//   56          (##) DMA mode: encryption and decryption APIs are not blocking functions
//   57               i.e. the data transfer is ensured by DMA
//   58               e.g. HAL_CRYP_AESCBC_Encrypt_DMA()
//   59     
//   60       (#)When the processing function is called for the first time after HAL_CRYP_Init()
//   61          the CRYP peripheral is initialized and processes the buffer in input.
//   62          At second call, the processing function performs an append of the already
//   63          processed buffer.
//   64          When a new data block is to be processed, call HAL_CRYP_Init() then the
//   65          processing function.
//   66          
//   67       (#)Call HAL_CRYP_DeInit() to deinitialize the CRYP peripheral.
//   68 
//   69   @endverbatim
//   70   ******************************************************************************
//   71   * @attention
//   72   *
//   73   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   74   *
//   75   * Redistribution and use in source and binary forms, with or without modification,
//   76   * are permitted provided that the following conditions are met:
//   77   *   1. Redistributions of source code must retain the above copyright notice,
//   78   *      this list of conditions and the following disclaimer.
//   79   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   80   *      this list of conditions and the following disclaimer in the documentation
//   81   *      and/or other materials provided with the distribution.
//   82   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   83   *      may be used to endorse or promote products derived from this software
//   84   *      without specific prior written permission.
//   85   *
//   86   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   87   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   88   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   89   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   90   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   91   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   92   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   93   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   94   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   95   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   96   *
//   97   ******************************************************************************  
//   98   */ 
//   99 
//  100 /* Includes ------------------------------------------------------------------*/
//  101 #include "stm32l1xx_hal.h"
//  102 
//  103 #ifdef HAL_CRYP_MODULE_ENABLED
//  104 
//  105 /** @addtogroup STM32L1xx_HAL_Driver
//  106   * @{
//  107   */
//  108 
//  109 /** @defgroup CRYP CRYP
//  110   * @brief CRYP HAL module driver.
//  111   * @{
//  112   */
//  113 
//  114 #if defined(STM32L162xC) || defined(STM32L162xCA) || defined(STM32L162xD) || defined(STM32L162xE) || defined(STM32L162xDX)
//  115 
//  116 /* Private typedef -----------------------------------------------------------*/
//  117 /* Private define ------------------------------------------------------------*/
//  118 
//  119 /** @defgroup CRYP_Private_Defines CRYP Private Defines
//  120   * @{
//  121   */
//  122 
//  123 #define  CRYP_ALGO_CHAIN_MASK         (AES_CR_MODE | AES_CR_CHMOD)
//  124 
//  125 /**
//  126   * @}
//  127   */
//  128 
//  129 /* Private macro -------------------------------------------------------------*/
//  130 /* Private variables ---------------------------------------------------------*/
//  131 /* Private function prototypes -----------------------------------------------*/
//  132 
//  133 /** @defgroup CRYP_Private_Functions CRYP Private Functions
//  134   * @{
//  135   */
//  136 
//  137 static HAL_StatusTypeDef  CRYP_EncryptDecrypt_IT(CRYP_HandleTypeDef *hcryp);
//  138 static void               CRYP_SetInitVector(CRYP_HandleTypeDef *hcryp, uint8_t *InitVector);
//  139 static void               CRYP_SetKey(CRYP_HandleTypeDef *hcryp, uint8_t *Key);
//  140 static HAL_StatusTypeDef  CRYP_ProcessData(CRYP_HandleTypeDef *hcryp, uint8_t* Input, uint16_t Ilength, uint8_t* Output, uint32_t Timeout);
//  141 static void               CRYP_DMAInCplt(DMA_HandleTypeDef *hdma);
//  142 static void               CRYP_DMAOutCplt(DMA_HandleTypeDef *hdma);
//  143 static void               CRYP_DMAError(DMA_HandleTypeDef *hdma);
//  144 static void               CRYP_SetDMAConfig(CRYP_HandleTypeDef *hcryp, uint32_t inputaddr, uint16_t Size, uint32_t outputaddr);
//  145 
//  146 /**
//  147   * @}
//  148   */
//  149 
//  150 /* Private functions ---------------------------------------------------------*/
//  151 
//  152 /** @defgroup CRYP_Exported_Functions CRYP Exported Functions
//  153   * @{
//  154   */
//  155 
//  156 /** @defgroup CRYP_Exported_Functions_Group1 Initialization and de-initialization functions 
//  157  *  @brief    Initialization and Configuration functions. 
//  158  *
//  159 @verbatim    
//  160   ==============================================================================
//  161               ##### Initialization and de-initialization functions #####
//  162   ==============================================================================
//  163     [..]  This section provides functions allowing to:
//  164       (+) Initialize the CRYP according to the specified parameters 
//  165           in the CRYP_InitTypeDef and creates the associated handle
//  166       (+) DeInitialize the CRYP peripheral
//  167       (+) Initialize the CRYP MSP
//  168       (+) DeInitialize CRYP MSP 
//  169  
//  170 @endverbatim
//  171   * @{
//  172   */
//  173 
//  174 /**
//  175   * @brief  Initializes the CRYP according to the specified
//  176   *         parameters in the CRYP_InitTypeDef and creates the associated handle.
//  177   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  178   *         the configuration information for CRYP module
//  179   * @retval HAL status
//  180   */
//  181 HAL_StatusTypeDef HAL_CRYP_Init(CRYP_HandleTypeDef *hcryp)
//  182 { 
//  183   /* Check the CRYP handle allocation */
//  184   if(hcryp == NULL)
//  185   {
//  186     return HAL_ERROR;
//  187   }
//  188   
//  189   /* Check the parameters */
//  190   assert_param(IS_AES_ALL_INSTANCE(hcryp->Instance));
//  191   assert_param(IS_CRYP_DATATYPE(hcryp->Init.DataType));
//  192   
//  193   if(hcryp->State == HAL_CRYP_STATE_RESET)
//  194   {
//  195     /* Allocate lock resource and initialize it */
//  196     hcryp->Lock = HAL_UNLOCKED;
//  197 
//  198     /* Init the low level hardware */
//  199     HAL_CRYP_MspInit(hcryp);
//  200   }
//  201   
//  202   /* Check if AES already enabled */
//  203   if (HAL_IS_BIT_CLR(hcryp->Instance->CR, AES_CR_EN))
//  204   {
//  205     /* Change the CRYP state */
//  206     hcryp->State = HAL_CRYP_STATE_BUSY;  
//  207 
//  208     /* Set the data type*/
//  209     MODIFY_REG(hcryp->Instance->CR, AES_CR_DATATYPE, hcryp->Init.DataType);
//  210     
//  211     /* Reset CrypInCount and CrypOutCount */
//  212     hcryp->CrypInCount = 0;
//  213     hcryp->CrypOutCount = 0;
//  214     
//  215     /* Change the CRYP state */
//  216     hcryp->State = HAL_CRYP_STATE_READY;
//  217     
//  218     /* Set the default CRYP phase */
//  219     hcryp->Phase = HAL_CRYP_PHASE_READY;
//  220     
//  221     /* Return function status */
//  222     return HAL_OK;
//  223   }
//  224   else
//  225   {
//  226     /* The Datatype selection must be changed if the AES is disabled. Writing these bits while the AES is */
//  227     /* enabled is forbidden to avoid unpredictable AES behavior.*/
//  228 
//  229     /* Return function status */
//  230     return HAL_ERROR;
//  231   }
//  232 
//  233 }
//  234 
//  235 /**
//  236   * @brief  DeInitializes the CRYP peripheral. 
//  237   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  238   *         the configuration information for CRYP module
//  239   * @retval HAL status
//  240   */
//  241 HAL_StatusTypeDef HAL_CRYP_DeInit(CRYP_HandleTypeDef *hcryp)
//  242 {
//  243   /* Check the CRYP handle allocation */
//  244   if(hcryp == NULL)
//  245   {
//  246     return HAL_ERROR;
//  247   }
//  248   
//  249   /* Change the CRYP state */
//  250   hcryp->State = HAL_CRYP_STATE_BUSY;
//  251   
//  252   /* Set the default CRYP phase */
//  253   hcryp->Phase = HAL_CRYP_PHASE_READY;
//  254   
//  255   /* Reset CrypInCount and CrypOutCount */
//  256   hcryp->CrypInCount = 0;
//  257   hcryp->CrypOutCount = 0;
//  258   
//  259   /* Disable the CRYP Peripheral Clock */
//  260   __HAL_CRYP_DISABLE(hcryp);
//  261   
//  262   /* DeInit the low level hardware: CLOCK, NVIC.*/
//  263   HAL_CRYP_MspDeInit(hcryp);
//  264   
//  265   /* Change the CRYP state */
//  266   hcryp->State = HAL_CRYP_STATE_RESET;
//  267   
//  268   /* Release Lock */
//  269   __HAL_UNLOCK(hcryp);
//  270   
//  271   /* Return function status */
//  272   return HAL_OK;
//  273 }
//  274 
//  275 /**
//  276   * @brief  Initializes the CRYP MSP.
//  277   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  278   *         the configuration information for CRYP module
//  279   * @retval None
//  280   */
//  281 __weak void HAL_CRYP_MspInit(CRYP_HandleTypeDef *hcryp)
//  282 {
//  283   /* Prevent unused argument(s) compilation warning */
//  284   UNUSED(hcryp);
//  285 
//  286   /* NOTE : This function should not be modified; when the callback is needed, 
//  287             the HAL_CRYP_MspInit can be implemented in the user file */
//  288 }
//  289 
//  290 /**
//  291   * @brief  DeInitializes CRYP MSP.
//  292   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  293   *         the configuration information for CRYP module
//  294   * @retval None
//  295   */
//  296 __weak void HAL_CRYP_MspDeInit(CRYP_HandleTypeDef *hcryp)
//  297 {
//  298   /* Prevent unused argument(s) compilation warning */
//  299   UNUSED(hcryp);
//  300 
//  301   /* NOTE : This function should not be modified; when the callback is needed, 
//  302             the HAL_CRYP_MspDeInit can be implemented in the user file */
//  303 }
//  304 
//  305 /**
//  306   * @}
//  307   */
//  308 
//  309 /** @defgroup CRYP_Exported_Functions_Group2 AES processing functions 
//  310  *  @brief   processing functions. 
//  311  *
//  312 @verbatim   
//  313   ==============================================================================
//  314                       ##### AES processing functions #####
//  315   ==============================================================================  
//  316     [..]  This section provides functions allowing to:
//  317       (+) Encrypt plaintext using AES algorithm in different chaining modes
//  318       (+) Decrypt cyphertext using AES algorithm in different chaining modes
//  319     [..]  Three processing functions are available:
//  320       (+) Polling mode
//  321       (+) Interrupt mode
//  322       (+) DMA mode
//  323 
//  324 @endverbatim
//  325   * @{
//  326   */
//  327 
//  328 /**
//  329   * @brief  Initializes the CRYP peripheral in AES ECB encryption mode
//  330   *         then encrypt pPlainData. The cypher data are available in pCypherData
//  331   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  332   *         the configuration information for CRYP module
//  333   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  334   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  335   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  336   * @param  Timeout: Specify Timeout value 
//  337   * @retval HAL status
//  338   */
//  339 HAL_StatusTypeDef HAL_CRYP_AESECB_Encrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData, uint32_t Timeout)
//  340 {
//  341   /* Process Locked */
//  342   __HAL_LOCK(hcryp);
//  343 
//  344   /* Check that data aligned on u32 and Size multiple of 16*/
//  345   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  346   {
//  347     /* Process Locked */
//  348     __HAL_UNLOCK(hcryp);
//  349 
//  350     /* Return function status */
//  351     return HAL_ERROR;
//  352   }
//  353   
//  354   /* Check if HAL_CRYP_Init has been called */
//  355   if(hcryp->State != HAL_CRYP_STATE_RESET)
//  356   {
//  357     /* Change the CRYP state */
//  358     hcryp->State = HAL_CRYP_STATE_BUSY;
//  359     
//  360     /* Check if initialization phase has already been performed */
//  361     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  362     {
//  363       /* Set the key */
//  364       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  365       
//  366       /* Reset the CHMOD & MODE bits */
//  367       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  368       
//  369       /* Set the CRYP peripheral in AES ECB mode */
//  370       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_ENCRYPT);
//  371       
//  372       /* Enable CRYP */
//  373       __HAL_CRYP_ENABLE(hcryp);
//  374       
//  375       /* Set the phase */
//  376       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  377     }
//  378     
//  379     /* Write Plain Data and Get Cypher Data */
//  380     if(CRYP_ProcessData(hcryp, pPlainData, Size, pCypherData, Timeout) != HAL_OK)
//  381     {
//  382       return HAL_TIMEOUT;
//  383     }
//  384     
//  385     /* Change the CRYP state */
//  386     hcryp->State = HAL_CRYP_STATE_READY;
//  387     
//  388     /* Process Unlocked */
//  389     __HAL_UNLOCK(hcryp);
//  390     
//  391     /* Return function status */
//  392     return HAL_OK;
//  393   }
//  394   else
//  395   {
//  396     /* Process Locked */
//  397     __HAL_UNLOCK(hcryp);
//  398 	
//  399     /* Return function status */
//  400     return HAL_ERROR;
//  401   }
//  402 }
//  403 
//  404 /**
//  405   * @brief  Initializes the CRYP peripheral in AES CBC encryption mode
//  406   *         then encrypt pPlainData. The cypher data are available in pCypherData
//  407   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  408   *         the configuration information for CRYP module
//  409   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  410   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  411   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  412   * @param  Timeout: Specify Timeout value  
//  413   * @retval HAL status
//  414   */
//  415 HAL_StatusTypeDef HAL_CRYP_AESCBC_Encrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData, uint32_t Timeout)
//  416 {
//  417   /* Process Locked */
//  418   __HAL_LOCK(hcryp);
//  419   
//  420   /* Check that data aligned on u32 */
//  421   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  422   {
//  423     /* Process Locked */
//  424     __HAL_UNLOCK(hcryp);
//  425 
//  426     /* Return function status */
//  427     return HAL_ERROR;
//  428   }
//  429   
//  430   /* Check if HAL_CRYP_Init has been called */
//  431   if(hcryp->State != HAL_CRYP_STATE_RESET)
//  432   {
//  433     /* Change the CRYP state */
//  434     hcryp->State = HAL_CRYP_STATE_BUSY;
//  435     
//  436     /* Check if initialization phase has already been performed */
//  437     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  438     {
//  439       /* Set the key */
//  440       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  441       
//  442       /* Reset the CHMOD & MODE bits */
//  443       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  444       
//  445       /* Set the CRYP peripheral in AES CBC mode */
//  446       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_ENCRYPT);
//  447       
//  448       /* Set the Initialization Vector */
//  449       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
//  450       
//  451       /* Enable CRYP */
//  452       __HAL_CRYP_ENABLE(hcryp);
//  453       
//  454       /* Set the phase */
//  455       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  456     }
//  457     
//  458     /* Write Plain Data and Get Cypher Data */
//  459     if(CRYP_ProcessData(hcryp, pPlainData, Size, pCypherData, Timeout) != HAL_OK)
//  460     {
//  461       return HAL_TIMEOUT;
//  462     }
//  463     
//  464     /* Change the CRYP state */
//  465     hcryp->State = HAL_CRYP_STATE_READY;
//  466     
//  467     /* Process Unlocked */
//  468     __HAL_UNLOCK(hcryp);
//  469     
//  470     /* Return function status */
//  471     return HAL_OK;
//  472   }
//  473   else
//  474   {
//  475     /* Process Locked */
//  476     __HAL_UNLOCK(hcryp);
//  477 
//  478     /* Return function status */
//  479     return HAL_ERROR;
//  480   }
//  481 }
//  482 
//  483 /**
//  484   * @brief  Initializes the CRYP peripheral in AES CTR encryption mode
//  485   *         then encrypt pPlainData. The cypher data are available in pCypherData
//  486   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  487   *         the configuration information for CRYP module
//  488   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  489   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  490   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  491   * @param  Timeout: Specify Timeout value  
//  492   * @retval HAL status
//  493   */
//  494 HAL_StatusTypeDef HAL_CRYP_AESCTR_Encrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData, uint32_t Timeout)
//  495 {  
//  496   /* Process Locked */
//  497   __HAL_LOCK(hcryp);
//  498   
//  499   /* Check that data aligned on u32 */
//  500   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  501   {
//  502     /* Process Locked */
//  503     __HAL_UNLOCK(hcryp);
//  504 
//  505     /* Return function status */
//  506     return HAL_ERROR;
//  507   }
//  508   
//  509   /* Check if HAL_CRYP_Init has been called */
//  510   if(hcryp->State != HAL_CRYP_STATE_RESET)
//  511   {
//  512     /* Change the CRYP state */
//  513     hcryp->State = HAL_CRYP_STATE_BUSY;
//  514     
//  515     /* Check if initialization phase has already been performed */
//  516     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  517     {
//  518       /* Set the key */
//  519       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  520       
//  521       /* Reset the CHMOD & MODE bits */
//  522       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  523       
//  524       /* Set the CRYP peripheral in AES CTR mode */
//  525       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_ENCRYPT);
//  526       
//  527       /* Set the Initialization Vector */
//  528       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
//  529       
//  530       /* Enable CRYP */
//  531       __HAL_CRYP_ENABLE(hcryp);
//  532       
//  533       /* Set the phase */
//  534       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  535     }
//  536     
//  537     /* Write Plain Data and Get Cypher Data */
//  538     if(CRYP_ProcessData(hcryp, pPlainData, Size, pCypherData, Timeout) != HAL_OK)
//  539     {
//  540       return HAL_TIMEOUT;
//  541     }
//  542     
//  543     /* Change the CRYP state */
//  544     hcryp->State = HAL_CRYP_STATE_READY;
//  545     
//  546     /* Process Unlocked */
//  547     __HAL_UNLOCK(hcryp);
//  548     
//  549     /* Return function status */
//  550     return HAL_OK;
//  551   }
//  552   else
//  553   {
//  554     /* Release Lock */
//  555     __HAL_UNLOCK(hcryp);
//  556   
//  557     /* Return function status */
//  558     return HAL_ERROR;
//  559   }
//  560 }
//  561 
//  562 /**
//  563   * @brief  Initializes the CRYP peripheral in AES ECB decryption mode
//  564   *         then decrypted pCypherData. The cypher data are available in pPlainData
//  565   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  566   *         the configuration information for CRYP module
//  567   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  568   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  569   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  570   * @param  Timeout: Specify Timeout value  
//  571   * @retval HAL status
//  572   */
//  573 HAL_StatusTypeDef HAL_CRYP_AESECB_Decrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData, uint32_t Timeout)
//  574 {
//  575   /* Process Locked */
//  576   __HAL_LOCK(hcryp);
//  577   
//  578   /* Check that data aligned on u32 */
//  579   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  580   {
//  581     /* Process Locked */
//  582     __HAL_UNLOCK(hcryp);
//  583 
//  584     /* Return function status */
//  585     return HAL_ERROR;
//  586   }
//  587   
//  588   /* Check if HAL_CRYP_Init has been called */
//  589   if(hcryp->State != HAL_CRYP_STATE_RESET)
//  590   {
//  591     /* Change the CRYP state */
//  592     hcryp->State = HAL_CRYP_STATE_BUSY;
//  593     
//  594     /* Check if initialization phase has already been performed */
//  595     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  596     {
//  597       /* Set the key */
//  598       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  599       
//  600       /* Reset the CHMOD & MODE bits */
//  601       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  602       
//  603       /* Set the CRYP peripheral in AES ECB decryption mode (with key derivation) */
//  604       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_KEYDERDECRYPT);
//  605       
//  606       /* Enable CRYP */
//  607       __HAL_CRYP_ENABLE(hcryp);
//  608       
//  609       /* Set the phase */
//  610       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  611     }
//  612     
//  613     /* Write Cypher Data and Get Plain Data */
//  614     if(CRYP_ProcessData(hcryp, pCypherData, Size, pPlainData, Timeout) != HAL_OK)
//  615     {
//  616       return HAL_TIMEOUT;
//  617     }
//  618     
//  619     /* Change the CRYP state */
//  620     hcryp->State = HAL_CRYP_STATE_READY;
//  621     
//  622     /* Process Unlocked */
//  623     __HAL_UNLOCK(hcryp);
//  624     
//  625     /* Return function status */
//  626     return HAL_OK;
//  627   }
//  628   else
//  629   {
//  630     /* Release Lock */
//  631     __HAL_UNLOCK(hcryp);
//  632   
//  633     /* Return function status */
//  634     return HAL_ERROR;
//  635   }
//  636 }
//  637 
//  638 /**
//  639   * @brief  Initializes the CRYP peripheral in AES ECB decryption mode
//  640   *         then decrypted pCypherData. The cypher data are available in pPlainData
//  641   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  642   *         the configuration information for CRYP module
//  643   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  644   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  645   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  646   * @param  Timeout: Specify Timeout value  
//  647   * @retval HAL status
//  648   */
//  649 HAL_StatusTypeDef HAL_CRYP_AESCBC_Decrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData, uint32_t Timeout)
//  650 {
//  651   /* Process Locked */
//  652   __HAL_LOCK(hcryp);
//  653   
//  654   /* Check that data aligned on u32 */
//  655   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  656   {
//  657     /* Process Locked */
//  658     __HAL_UNLOCK(hcryp);
//  659 
//  660     /* Return function status */
//  661     return HAL_ERROR;
//  662   }
//  663   
//  664   /* Check if HAL_CRYP_Init has been called */
//  665   if(hcryp->State != HAL_CRYP_STATE_RESET)
//  666   {
//  667     /* Change the CRYP state */
//  668     hcryp->State = HAL_CRYP_STATE_BUSY;
//  669     
//  670     /* Check if initialization phase has already been performed */
//  671     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  672     {
//  673       /* Set the key */
//  674       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  675       
//  676       /* Reset the CHMOD & MODE bits */
//  677       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  678       
//  679       /* Set the CRYP peripheral in AES CBC decryption mode (with key derivation) */
//  680       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_KEYDERDECRYPT);
//  681       
//  682       /* Set the Initialization Vector */
//  683       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
//  684       
//  685       /* Enable CRYP */
//  686       __HAL_CRYP_ENABLE(hcryp);
//  687       
//  688       /* Set the phase */
//  689       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  690     }
//  691     
//  692     /* Write Cypher Data and Get Plain Data */
//  693     if(CRYP_ProcessData(hcryp, pCypherData, Size, pPlainData, Timeout) != HAL_OK)
//  694     {
//  695       return HAL_TIMEOUT;
//  696     }
//  697     
//  698     /* Change the CRYP state */
//  699     hcryp->State = HAL_CRYP_STATE_READY;
//  700     
//  701     /* Process Unlocked */
//  702     __HAL_UNLOCK(hcryp);
//  703     
//  704     /* Return function status */
//  705     return HAL_OK;
//  706   }
//  707   else
//  708   {
//  709     /* Release Lock */
//  710     __HAL_UNLOCK(hcryp);
//  711   
//  712     /* Return function status */
//  713     return HAL_ERROR;
//  714   }
//  715 }
//  716 
//  717 /**
//  718   * @brief  Initializes the CRYP peripheral in AES CTR decryption mode
//  719   *         then decrypted pCypherData. The cypher data are available in pPlainData
//  720   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  721   *         the configuration information for CRYP module
//  722   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  723   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
//  724   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  725   * @param  Timeout: Specify Timeout value   
//  726   * @retval HAL status
//  727   */
//  728 HAL_StatusTypeDef HAL_CRYP_AESCTR_Decrypt(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData, uint32_t Timeout)
//  729 {  
//  730   /* Process Locked */
//  731   __HAL_LOCK(hcryp);
//  732   
//  733   /* Check that data aligned on u32 */
//  734   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  735   {
//  736     /* Process Locked */
//  737     __HAL_UNLOCK(hcryp);
//  738 
//  739     /* Return function status */
//  740     return HAL_ERROR;
//  741   }
//  742   
//  743   /* Check if initialization phase has already been performed */
//  744   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->Phase == HAL_CRYP_PHASE_READY))
//  745   {
//  746     /* Change the CRYP state */
//  747     hcryp->State = HAL_CRYP_STATE_BUSY;
//  748     
//  749     /* Set the key */
//  750     CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  751     
//  752     /* Reset the CHMOD & MODE bits */
//  753     CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  754     
//  755     /* Set the CRYP peripheral in AES CTR decryption mode */
//  756     __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_DECRYPT);
//  757     
//  758     /* Set the Initialization Vector */
//  759     CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
//  760     
//  761     /* Enable CRYP */
//  762     __HAL_CRYP_ENABLE(hcryp);
//  763     
//  764     /* Set the phase */
//  765     hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  766   }
//  767   
//  768   /* Write Cypher Data and Get Plain Data */
//  769   if(CRYP_ProcessData(hcryp, pCypherData, Size, pPlainData, Timeout) != HAL_OK)
//  770   {
//  771     return HAL_TIMEOUT;
//  772   }
//  773   
//  774   /* Change the CRYP state */
//  775   hcryp->State = HAL_CRYP_STATE_READY;
//  776   
//  777   /* Process Unlocked */
//  778   __HAL_UNLOCK(hcryp);
//  779   
//  780   /* Return function status */
//  781   return HAL_OK;
//  782 }
//  783 
//  784 /**
//  785   * @brief  Initializes the CRYP peripheral in AES ECB encryption mode using Interrupt.
//  786   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  787   *         the configuration information for CRYP module
//  788   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  789   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
//  790   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  791   * @retval HAL status
//  792   */
//  793 HAL_StatusTypeDef HAL_CRYP_AESECB_Encrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
//  794 {
//  795   uint32_t inputaddr = 0;
//  796   
//  797   /* Check that data aligned on u32 */
//  798   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  799   {
//  800     /* Process Locked */
//  801     __HAL_UNLOCK(hcryp);
//  802 
//  803     /* Return function status */
//  804     return HAL_ERROR;
//  805   }
//  806   
//  807   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
//  808   {
//  809     /* Process Locked */
//  810     __HAL_LOCK(hcryp);
//  811     
//  812     /* Get the buffer addresses and sizes */
//  813     hcryp->CrypInCount = Size;
//  814     hcryp->pCrypInBuffPtr = pPlainData;
//  815     hcryp->pCrypOutBuffPtr = pCypherData;
//  816     hcryp->CrypOutCount = Size;
//  817     
//  818     /* Change the CRYP state */
//  819     hcryp->State = HAL_CRYP_STATE_BUSY;
//  820     
//  821     /* Check if initialization phase has already been performed */
//  822     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  823     {
//  824       /* Set the key */
//  825       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  826       
//  827       /* Reset the CHMOD & MODE bits */
//  828       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  829       
//  830       /* Set the CRYP peripheral in AES ECB mode */
//  831       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_ENCRYPT);
//  832       
//  833       /* Set the phase */
//  834       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  835     }
//  836     
//  837     /* Enable Interrupts */
//  838     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
//  839     
//  840     /* Enable CRYP */
//  841     __HAL_CRYP_ENABLE(hcryp);
//  842     
//  843     /* Get the last input data adress */
//  844     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
//  845     
//  846     /* Write the Input block in the Data Input register */
//  847     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  848     inputaddr+=4;
//  849     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  850     inputaddr+=4;
//  851     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
//  852     inputaddr+=4;
//  853     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  854     hcryp->pCrypInBuffPtr += 16;
//  855     hcryp->CrypInCount -= 16;
//  856     
//  857     /* Return function status */
//  858     return HAL_OK;
//  859   }
//  860   else
//  861   {
//  862     /* Release Lock */
//  863     __HAL_UNLOCK(hcryp);
//  864   
//  865     /* Return function status */
//  866     return HAL_ERROR;
//  867   }
//  868 }
//  869 
//  870 /**
//  871   * @brief  Initializes the CRYP peripheral in AES CBC encryption mode using Interrupt.
//  872   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  873   *         the configuration information for CRYP module
//  874   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  875   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
//  876   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  877   * @retval HAL status
//  878   */
//  879 HAL_StatusTypeDef HAL_CRYP_AESCBC_Encrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
//  880 {
//  881   uint32_t inputaddr = 0;
//  882   
//  883   /* Check that data aligned on u32 */
//  884   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  885   {
//  886     /* Process Locked */
//  887     __HAL_UNLOCK(hcryp);
//  888 
//  889     /* Return function status */
//  890     return HAL_ERROR;
//  891   }
//  892   
//  893   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
//  894   {
//  895     /* Process Locked */
//  896     __HAL_LOCK(hcryp);
//  897     
//  898     /* Get the buffer addresses and sizes */
//  899     hcryp->CrypInCount = Size;
//  900     hcryp->pCrypInBuffPtr = pPlainData;
//  901     hcryp->pCrypOutBuffPtr = pCypherData;
//  902     hcryp->CrypOutCount = Size;
//  903     
//  904     /* Change the CRYP state */
//  905     hcryp->State = HAL_CRYP_STATE_BUSY;
//  906     
//  907     /* Check if initialization phase has already been performed */
//  908     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  909     {
//  910       /* Set the key */
//  911       CRYP_SetKey(hcryp, hcryp->Init.pKey);
//  912       
//  913       /* Reset the CHMOD & MODE bits */
//  914       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
//  915       
//  916       /* Set the CRYP peripheral in AES CBC mode */
//  917       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_ENCRYPT);
//  918       
//  919       /* Set the Initialization Vector */
//  920       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
//  921       
//  922       /* Set the phase */
//  923       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
//  924     }
//  925     
//  926     /* Enable Interrupts */
//  927     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
//  928     
//  929     /* Enable CRYP */
//  930     __HAL_CRYP_ENABLE(hcryp);
//  931     
//  932     /* Get the last input data adress */
//  933     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
//  934     
//  935     /* Write the Input block in the Data Input register */
//  936     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  937     inputaddr+=4;
//  938     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  939     inputaddr+=4;
//  940     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
//  941     inputaddr+=4;
//  942     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
//  943     hcryp->pCrypInBuffPtr += 16;
//  944     hcryp->CrypInCount -= 16;
//  945     
//  946     /* Return function status */
//  947     return HAL_OK;
//  948   }
//  949   else
//  950   {
//  951     /* Release Lock */
//  952     __HAL_UNLOCK(hcryp);
//  953    
//  954     /* Return function status */
//  955     return HAL_ERROR;
//  956   }
//  957 }
//  958 
//  959 /**
//  960   * @brief  Initializes the CRYP peripheral in AES CTR encryption mode using Interrupt.
//  961   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
//  962   *         the configuration information for CRYP module
//  963   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
//  964   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
//  965   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
//  966   * @retval HAL status
//  967   */
//  968 HAL_StatusTypeDef HAL_CRYP_AESCTR_Encrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
//  969 {
//  970   uint32_t inputaddr = 0;
//  971   
//  972   /* Check that data aligned on u32 */
//  973   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
//  974   {
//  975     /* Process Locked */
//  976     __HAL_UNLOCK(hcryp);
//  977 
//  978     /* Return function status */
//  979     return HAL_ERROR;
//  980   }
//  981   
//  982   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
//  983   {
//  984     /* Process Locked */
//  985     __HAL_LOCK(hcryp);
//  986     
//  987     /* Get the buffer addresses and sizes */
//  988     hcryp->CrypInCount = Size;
//  989     hcryp->pCrypInBuffPtr = pPlainData;
//  990     hcryp->pCrypOutBuffPtr = pCypherData;
//  991     hcryp->CrypOutCount = Size;
//  992     
//  993     /* Change the CRYP state */
//  994     hcryp->State = HAL_CRYP_STATE_BUSY;
//  995     
//  996     /* Check if initialization phase has already been performed */
//  997     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
//  998     {
//  999       /* Set the key */
// 1000       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1001       
// 1002       /* Reset the CHMOD & MODE bits */
// 1003       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1004       
// 1005       /* Set the CRYP peripheral in AES CTR mode */
// 1006       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_ENCRYPT);
// 1007       
// 1008       /* Set the Initialization Vector */
// 1009       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1010       
// 1011       /* Set the phase */
// 1012       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1013     }
// 1014     
// 1015     /* Enable Interrupts */
// 1016     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
// 1017     
// 1018     /* Enable CRYP */
// 1019     __HAL_CRYP_ENABLE(hcryp);
// 1020     
// 1021     /* Get the last input data adress */
// 1022     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
// 1023     
// 1024     /* Write the Input block in the Data Input register */
// 1025     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1026     inputaddr+=4;
// 1027     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1028     inputaddr+=4;
// 1029     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 1030     inputaddr+=4;
// 1031     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1032     hcryp->pCrypInBuffPtr += 16;
// 1033     hcryp->CrypInCount -= 16;
// 1034     
// 1035     /* Return function status */
// 1036     return HAL_OK;
// 1037   }
// 1038   else
// 1039   {
// 1040     /* Release Lock */
// 1041     __HAL_UNLOCK(hcryp);
// 1042   
// 1043     /* Return function status */
// 1044     return HAL_ERROR;
// 1045   }
// 1046 }
// 1047 
// 1048 /**
// 1049   * @brief  Initializes the CRYP peripheral in AES ECB decryption mode using Interrupt.
// 1050   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1051   *         the configuration information for CRYP module
// 1052   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1053   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
// 1054   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1055   * @retval HAL status
// 1056   */
// 1057 HAL_StatusTypeDef HAL_CRYP_AESECB_Decrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1058 {
// 1059   uint32_t inputaddr = 0;
// 1060   
// 1061   /* Check that data aligned on u32 */
// 1062   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1063   {
// 1064     /* Process Locked */
// 1065     __HAL_UNLOCK(hcryp);
// 1066 
// 1067     /* Return function status */
// 1068     return HAL_ERROR;
// 1069   }
// 1070   
// 1071   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1072   {
// 1073     /* Process Locked */
// 1074     __HAL_LOCK(hcryp);
// 1075     
// 1076     /* Get the buffer addresses and sizes */
// 1077     hcryp->CrypInCount = Size;
// 1078     hcryp->pCrypInBuffPtr = pCypherData;
// 1079     hcryp->pCrypOutBuffPtr = pPlainData;
// 1080     hcryp->CrypOutCount = Size;
// 1081     
// 1082     /* Change the CRYP state */
// 1083     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1084     
// 1085     /* Check if initialization phase has already been performed */
// 1086     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1087     {
// 1088       /* Set the key */
// 1089       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1090       
// 1091       /* Reset the CHMOD & MODE bits */
// 1092       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1093       
// 1094       /* Set the CRYP peripheral in AES ECB decryption mode (with key derivation) */
// 1095       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_KEYDERDECRYPT);
// 1096       
// 1097       /* Set the phase */
// 1098       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1099     }
// 1100     
// 1101     /* Enable Interrupts */
// 1102     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
// 1103     
// 1104     /* Enable CRYP */
// 1105     __HAL_CRYP_ENABLE(hcryp);
// 1106     
// 1107     /* Get the last input data adress */
// 1108     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
// 1109     
// 1110     /* Write the Input block in the Data Input register */
// 1111     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1112     inputaddr+=4;
// 1113     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1114     inputaddr+=4;
// 1115     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 1116     inputaddr+=4;
// 1117     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1118     hcryp->pCrypInBuffPtr += 16;
// 1119     hcryp->CrypInCount -= 16;    
// 1120     
// 1121     /* Return function status */
// 1122     return HAL_OK;
// 1123   }
// 1124   else
// 1125   {
// 1126     /* Release Lock */
// 1127     __HAL_UNLOCK(hcryp);
// 1128   
// 1129     /* Return function status */
// 1130     return HAL_ERROR;
// 1131   }
// 1132 }
// 1133 
// 1134 /**
// 1135   * @brief  Initializes the CRYP peripheral in AES CBC decryption mode using IT.
// 1136   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1137   *         the configuration information for CRYP module
// 1138   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1139   * @param  Size: Length of the plaintext buffer, must be a multiple of 16
// 1140   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1141   * @retval HAL status
// 1142   */
// 1143 HAL_StatusTypeDef HAL_CRYP_AESCBC_Decrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1144 {
// 1145   uint32_t inputaddr = 0;
// 1146   
// 1147   /* Check that data aligned on u32 */
// 1148   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1149   {
// 1150     /* Process Locked */
// 1151     __HAL_UNLOCK(hcryp);
// 1152 
// 1153     /* Return function status */
// 1154     return HAL_ERROR;
// 1155   }
// 1156   
// 1157   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1158   {
// 1159     /* Process Locked */
// 1160     __HAL_LOCK(hcryp);
// 1161     
// 1162     /* Get the buffer addresses and sizes */
// 1163     hcryp->CrypInCount = Size;
// 1164     hcryp->pCrypInBuffPtr = pCypherData;
// 1165     hcryp->pCrypOutBuffPtr = pPlainData;
// 1166     hcryp->CrypOutCount = Size;
// 1167     
// 1168     /* Change the CRYP state */
// 1169     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1170     
// 1171     /* Check if initialization phase has already been performed */
// 1172     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1173     {
// 1174       /* Set the key */
// 1175       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1176       
// 1177       /* Reset the CHMOD & MODE bits */
// 1178       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1179       
// 1180       /* Set the CRYP peripheral in AES CBC decryption mode (with key derivation) */
// 1181       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_KEYDERDECRYPT);
// 1182       
// 1183       /* Set the Initialization Vector */
// 1184       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1185       
// 1186       /* Set the phase */
// 1187       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1188     }
// 1189     
// 1190     /* Enable Interrupts */
// 1191     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
// 1192     
// 1193     /* Enable CRYP */
// 1194     __HAL_CRYP_ENABLE(hcryp);
// 1195     
// 1196     /* Get the last input data adress */
// 1197     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
// 1198     
// 1199     /* Write the Input block in the Data Input register */
// 1200     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1201     inputaddr+=4;
// 1202     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1203     inputaddr+=4;
// 1204     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 1205     inputaddr+=4;
// 1206     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1207     hcryp->pCrypInBuffPtr += 16;
// 1208     hcryp->CrypInCount -= 16;    
// 1209     
// 1210     /* Return function status */
// 1211     return HAL_OK;
// 1212   }
// 1213   else
// 1214   {
// 1215     /* Release Lock */
// 1216     __HAL_UNLOCK(hcryp);
// 1217   
// 1218     /* Return function status */
// 1219     return HAL_ERROR;
// 1220   }
// 1221 }
// 1222 
// 1223 /**
// 1224   * @brief  Initializes the CRYP peripheral in AES CTR decryption mode using Interrupt.
// 1225   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1226   *         the configuration information for CRYP module
// 1227   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1228   * @param  Size: Length of the plaintext buffer, must be a multiple of 16
// 1229   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1230   * @retval HAL status
// 1231   */
// 1232 HAL_StatusTypeDef HAL_CRYP_AESCTR_Decrypt_IT(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1233 {
// 1234   uint32_t inputaddr = 0;
// 1235   
// 1236   /* Check that data aligned on u32 */
// 1237   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1238   {
// 1239     /* Process Locked */
// 1240     __HAL_UNLOCK(hcryp);
// 1241 
// 1242     /* Return function status */
// 1243     return HAL_ERROR;
// 1244   }
// 1245   
// 1246   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1247   {
// 1248     /* Process Locked */
// 1249     __HAL_LOCK(hcryp);
// 1250     
// 1251     /* Get the buffer addresses and sizes */
// 1252     hcryp->CrypInCount = Size;
// 1253     hcryp->pCrypInBuffPtr = pCypherData;
// 1254     hcryp->pCrypOutBuffPtr = pPlainData;
// 1255     hcryp->CrypOutCount = Size;
// 1256     
// 1257     /* Change the CRYP state */
// 1258     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1259     
// 1260     /* Check if initialization phase has already been performed */
// 1261     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1262     {
// 1263       /* Set the key */
// 1264       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1265       
// 1266       /* Reset the CHMOD & MODE bits */
// 1267       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1268       
// 1269       /* Set the CRYP peripheral in AES CTR decryption mode */
// 1270       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_DECRYPT);
// 1271       
// 1272       /* Set the Initialization Vector */
// 1273       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1274       
// 1275       /* Set the phase */
// 1276       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1277     }
// 1278     
// 1279     /* Enable Interrupts */
// 1280     __HAL_CRYP_ENABLE_IT(hcryp, CRYP_IT_CC);
// 1281     
// 1282     /* Enable CRYP */
// 1283     __HAL_CRYP_ENABLE(hcryp);
// 1284     
// 1285     /* Get the last input data adress */
// 1286     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
// 1287     
// 1288     /* Write the Input block in the Data Input register */
// 1289     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1290     inputaddr+=4;
// 1291     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1292     inputaddr+=4;
// 1293     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 1294     inputaddr+=4;
// 1295     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1296     hcryp->pCrypInBuffPtr += 16;
// 1297     hcryp->CrypInCount -= 16;    
// 1298     
// 1299     /* Return function status */
// 1300     return HAL_OK;
// 1301   }
// 1302   else
// 1303   {
// 1304     /* Release Lock */
// 1305     __HAL_UNLOCK(hcryp);
// 1306   
// 1307     /* Return function status */
// 1308     return HAL_ERROR;
// 1309   }
// 1310 }
// 1311 
// 1312 /**
// 1313   * @brief  Initializes the CRYP peripheral in AES ECB encryption mode using DMA.
// 1314   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1315   *         the configuration information for CRYP module
// 1316   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1317   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
// 1318   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1319   * @retval HAL status
// 1320   */
// 1321 HAL_StatusTypeDef HAL_CRYP_AESECB_Encrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
// 1322 {
// 1323   uint32_t inputaddr = 0, outputaddr = 0;
// 1324   
// 1325   /* Check that data aligned on u32 */
// 1326   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1327   {
// 1328     /* Process Locked */
// 1329     __HAL_UNLOCK(hcryp);
// 1330 
// 1331     /* Return function status */
// 1332     return HAL_ERROR;
// 1333   }
// 1334   
// 1335   /* Check if HAL_CRYP_Init has been called */
// 1336   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1337   {
// 1338     /* Process Locked */
// 1339     __HAL_LOCK(hcryp);
// 1340     
// 1341     inputaddr  = (uint32_t)pPlainData;
// 1342     outputaddr = (uint32_t)pCypherData;
// 1343     
// 1344     /* Change the CRYP state */
// 1345     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1346     
// 1347     /* Check if initialization phase has already been performed */
// 1348     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1349     {
// 1350       /* Set the key */
// 1351       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1352       
// 1353       /* Set the CRYP peripheral in AES ECB mode */
// 1354       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_ENCRYPT);
// 1355       
// 1356       /* Set the phase */
// 1357       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1358     }
// 1359     /* Set the input and output addresses and start DMA transfer */ 
// 1360     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1361     
// 1362     /* Process Unlocked */
// 1363     __HAL_UNLOCK(hcryp);
// 1364     
// 1365     /* Return function status */
// 1366     return HAL_OK;
// 1367   }
// 1368   else
// 1369   {  
// 1370     /* Release Lock */
// 1371     __HAL_UNLOCK(hcryp);
// 1372   
// 1373     return HAL_ERROR;   
// 1374   }
// 1375 }
// 1376 
// 1377 /**
// 1378   * @brief  Initializes the CRYP peripheral in AES CBC encryption mode using DMA.
// 1379   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1380   *         the configuration information for CRYP module
// 1381   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1382   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
// 1383   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1384   * @retval HAL status
// 1385   */
// 1386 HAL_StatusTypeDef HAL_CRYP_AESCBC_Encrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
// 1387 {
// 1388   uint32_t inputaddr = 0, outputaddr = 0;
// 1389   
// 1390   /* Check that data aligned on u32 */
// 1391   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1392   {
// 1393     /* Process Locked */
// 1394     __HAL_UNLOCK(hcryp);
// 1395 
// 1396     /* Return function status */
// 1397     return HAL_ERROR;
// 1398   }
// 1399   
// 1400   /* Check if HAL_CRYP_Init has been called */
// 1401   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1402   {
// 1403     /* Process Locked */
// 1404     __HAL_LOCK(hcryp);
// 1405     
// 1406     inputaddr  = (uint32_t)pPlainData;
// 1407     outputaddr = (uint32_t)pCypherData;
// 1408     
// 1409     /* Change the CRYP state */
// 1410     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1411     
// 1412     /* Check if initialization phase has already been performed */
// 1413     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1414     {
// 1415       /* Set the key */
// 1416       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1417       
// 1418       /* Set the CRYP peripheral in AES CBC mode */
// 1419       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_ENCRYPT);
// 1420       
// 1421       /* Set the Initialization Vector */
// 1422       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1423       
// 1424       /* Set the phase */
// 1425       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1426     }
// 1427     /* Set the input and output addresses and start DMA transfer */ 
// 1428     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1429     
// 1430     /* Process Unlocked */
// 1431     __HAL_UNLOCK(hcryp);
// 1432     
// 1433     /* Return function status */
// 1434     return HAL_OK;
// 1435   }
// 1436   else
// 1437   {
// 1438     /* Release Lock */
// 1439     __HAL_UNLOCK(hcryp);
// 1440   
// 1441     return HAL_ERROR;   
// 1442   }
// 1443 }
// 1444 
// 1445 /**
// 1446   * @brief  Initializes the CRYP peripheral in AES CTR encryption mode using DMA.
// 1447   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1448   *         the configuration information for CRYP module
// 1449   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1450   * @param  Size: Length of the plaintext buffer, must be a multiple of 16.
// 1451   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1452   * @retval HAL status
// 1453   */
// 1454 HAL_StatusTypeDef HAL_CRYP_AESCTR_Encrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pPlainData, uint16_t Size, uint8_t *pCypherData)
// 1455 {
// 1456   uint32_t inputaddr = 0, outputaddr = 0;
// 1457   
// 1458   /* Check that data aligned on u32 */
// 1459   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1460   {
// 1461     /* Process Locked */
// 1462     __HAL_UNLOCK(hcryp);
// 1463 
// 1464     /* Return function status */
// 1465     return HAL_ERROR;
// 1466   }
// 1467   
// 1468   /* Check if HAL_CRYP_Init has been called */
// 1469   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1470   {
// 1471     /* Process Locked */
// 1472     __HAL_LOCK(hcryp);
// 1473     
// 1474     inputaddr  = (uint32_t)pPlainData;
// 1475     outputaddr = (uint32_t)pCypherData;
// 1476     
// 1477     /* Change the CRYP state */
// 1478     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1479     
// 1480     /* Check if initialization phase has already been performed */
// 1481     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1482     {
// 1483       /* Set the key */
// 1484       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1485       
// 1486       /* Set the CRYP peripheral in AES CTR mode */
// 1487       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_ENCRYPT);
// 1488       
// 1489       /* Set the Initialization Vector */
// 1490       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1491       
// 1492       /* Set the phase */
// 1493       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1494     }
// 1495     
// 1496     /* Set the input and output addresses and start DMA transfer */ 
// 1497     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1498     
// 1499     /* Process Unlocked */
// 1500     __HAL_UNLOCK(hcryp);
// 1501     
// 1502     /* Return function status */
// 1503     return HAL_OK;
// 1504   }
// 1505   else
// 1506   {
// 1507     /* Release Lock */
// 1508     __HAL_UNLOCK(hcryp);
// 1509   
// 1510     return HAL_ERROR;   
// 1511   }
// 1512 }
// 1513 
// 1514 /**
// 1515   * @brief  Initializes the CRYP peripheral in AES ECB decryption mode using DMA.
// 1516   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1517   *         the configuration information for CRYP module
// 1518   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1519   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
// 1520   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1521   * @retval HAL status
// 1522   */
// 1523 HAL_StatusTypeDef HAL_CRYP_AESECB_Decrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1524 {  
// 1525   uint32_t inputaddr = 0, outputaddr = 0;
// 1526   
// 1527   /* Check that data aligned on u32 */
// 1528   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1529   {
// 1530     /* Process Locked */
// 1531     __HAL_UNLOCK(hcryp);
// 1532 
// 1533     /* Return function status */
// 1534     return HAL_ERROR;
// 1535   }
// 1536   
// 1537   /* Check if HAL_CRYP_Init has been called */
// 1538   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1539   {
// 1540     /* Process Locked */
// 1541     __HAL_LOCK(hcryp);
// 1542     
// 1543     inputaddr  = (uint32_t)pCypherData;
// 1544     outputaddr = (uint32_t)pPlainData;
// 1545     
// 1546     /* Change the CRYP state */
// 1547     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1548     
// 1549     /* Check if initialization phase has already been performed */
// 1550     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1551     {
// 1552       /* Set the key */
// 1553       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1554       
// 1555       /* Reset the CHMOD & MODE bits */
// 1556       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1557       
// 1558       /* Set the CRYP peripheral in AES ECB decryption mode (with key derivation) */
// 1559       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_ECB_KEYDERDECRYPT);
// 1560       
// 1561       /* Set the phase */
// 1562       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1563     }
// 1564     
// 1565     /* Set the input and output addresses and start DMA transfer */ 
// 1566     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1567     
// 1568     /* Process Unlocked */
// 1569     __HAL_UNLOCK(hcryp);
// 1570     
// 1571     /* Return function status */
// 1572     return HAL_OK;
// 1573   }
// 1574   else
// 1575   {
// 1576     /* Release Lock */
// 1577     __HAL_UNLOCK(hcryp);
// 1578   
// 1579     return HAL_ERROR;   
// 1580   }
// 1581 }
// 1582 
// 1583 /**
// 1584   * @brief  Initializes the CRYP peripheral in AES CBC encryption mode using DMA.
// 1585   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1586   *         the configuration information for CRYP module
// 1587   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1588   * @param  Size: Length of the plaintext buffer, must be a multiple of 16 bytes
// 1589   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1590   * @retval HAL status
// 1591   */
// 1592 HAL_StatusTypeDef HAL_CRYP_AESCBC_Decrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1593 {
// 1594   uint32_t inputaddr = 0, outputaddr = 0;
// 1595   
// 1596   /* Check that data aligned on u32 */
// 1597   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1598   {
// 1599     /* Process Locked */
// 1600     __HAL_UNLOCK(hcryp);
// 1601 
// 1602     /* Return function status */
// 1603     return HAL_ERROR;
// 1604   }
// 1605   
// 1606   /* Check if HAL_CRYP_Init has been called */
// 1607   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1608   {
// 1609     /* Process Locked */
// 1610     __HAL_LOCK(hcryp);
// 1611     
// 1612     inputaddr  = (uint32_t)pCypherData;
// 1613     outputaddr = (uint32_t)pPlainData;
// 1614     
// 1615     /* Change the CRYP state */
// 1616     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1617     
// 1618     /* Check if initialization phase has already been performed */
// 1619     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1620     {
// 1621       /* Set the key */
// 1622       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1623       
// 1624       /* Reset the CHMOD & MODE bits */
// 1625       CLEAR_BIT(hcryp->Instance->CR, CRYP_ALGO_CHAIN_MASK);
// 1626       
// 1627       /* Set the CRYP peripheral in AES CBC decryption mode (with key derivation) */
// 1628       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CBC_KEYDERDECRYPT);
// 1629       
// 1630       /* Set the Initialization Vector */
// 1631       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1632       
// 1633       /* Set the phase */
// 1634       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1635     }
// 1636     
// 1637     /* Set the input and output addresses and start DMA transfer */ 
// 1638     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1639     
// 1640     /* Process Unlocked */
// 1641     __HAL_UNLOCK(hcryp);
// 1642     
// 1643     /* Return function status */
// 1644     return HAL_OK;
// 1645   }
// 1646   else
// 1647   {
// 1648     /* Release Lock */
// 1649     __HAL_UNLOCK(hcryp);
// 1650   
// 1651     return HAL_ERROR;   
// 1652   }
// 1653 }
// 1654 
// 1655 /**
// 1656   * @brief  Initializes the CRYP peripheral in AES CTR decryption mode using DMA.
// 1657   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1658   *         the configuration information for CRYP module
// 1659   * @param  pCypherData: Pointer to the cyphertext buffer (aligned on u32)
// 1660   * @param  Size: Length of the plaintext buffer, must be a multiple of 16
// 1661   * @param  pPlainData: Pointer to the plaintext buffer (aligned on u32)
// 1662   * @retval HAL status
// 1663   */
// 1664 HAL_StatusTypeDef HAL_CRYP_AESCTR_Decrypt_DMA(CRYP_HandleTypeDef *hcryp, uint8_t *pCypherData, uint16_t Size, uint8_t *pPlainData)
// 1665 {  
// 1666   uint32_t inputaddr = 0, outputaddr = 0;
// 1667   
// 1668   /* Check that data aligned on u32 */
// 1669   if((((uint32_t)pPlainData & (uint32_t)0x00000003) != 0) || (((uint32_t)pCypherData & (uint32_t)0x00000003) != 0) || ((Size & (uint16_t)0x000F) != 0))
// 1670   {
// 1671     /* Process Locked */
// 1672     __HAL_UNLOCK(hcryp);
// 1673 
// 1674     /* Return function status */
// 1675     return HAL_ERROR;
// 1676   }
// 1677   
// 1678   /* Check if HAL_CRYP_Init has been called */
// 1679   if ((hcryp->State != HAL_CRYP_STATE_RESET) && (hcryp->State == HAL_CRYP_STATE_READY))
// 1680   {
// 1681     /* Process Locked */
// 1682     __HAL_LOCK(hcryp);
// 1683     
// 1684     inputaddr  = (uint32_t)pCypherData;
// 1685     outputaddr = (uint32_t)pPlainData;
// 1686     
// 1687     /* Change the CRYP state */
// 1688     hcryp->State = HAL_CRYP_STATE_BUSY;
// 1689     
// 1690     /* Check if initialization phase has already been performed */
// 1691     if(hcryp->Phase == HAL_CRYP_PHASE_READY)
// 1692     {
// 1693       /* Set the key */
// 1694       CRYP_SetKey(hcryp, hcryp->Init.pKey);
// 1695       
// 1696       /* Set the CRYP peripheral in AES CTR mode */
// 1697       __HAL_CRYP_SET_MODE(hcryp, CRYP_CR_ALGOMODE_AES_CTR_DECRYPT);
// 1698       
// 1699       /* Set the Initialization Vector */
// 1700       CRYP_SetInitVector(hcryp, hcryp->Init.pInitVect);
// 1701       
// 1702       /* Set the phase */
// 1703       hcryp->Phase = HAL_CRYP_PHASE_PROCESS;
// 1704     }
// 1705     
// 1706     /* Set the input and output addresses and start DMA transfer */ 
// 1707     CRYP_SetDMAConfig(hcryp, inputaddr, Size, outputaddr);
// 1708     
// 1709     /* Process Unlocked */
// 1710     __HAL_UNLOCK(hcryp);
// 1711     
// 1712     /* Return function status */
// 1713     return HAL_OK;
// 1714   }
// 1715   else
// 1716   {
// 1717     /* Release Lock */
// 1718     __HAL_UNLOCK(hcryp);
// 1719   
// 1720     return HAL_ERROR;   
// 1721   }
// 1722 }
// 1723 
// 1724 /**
// 1725   * @}
// 1726   */
// 1727 
// 1728 /** @defgroup CRYP_Exported_Functions_Group3 DMA callback functions 
// 1729  *  @brief   DMA callback functions. 
// 1730  *
// 1731 @verbatim   
// 1732   ==============================================================================
// 1733                       ##### DMA callback functions  #####
// 1734   ==============================================================================  
// 1735     [..]  This section provides DMA callback functions:
// 1736       (+) DMA Input data transfer complete
// 1737       (+) DMA Output data transfer complete
// 1738       (+) DMA error
// 1739 
// 1740 @endverbatim
// 1741   * @{
// 1742   */
// 1743 
// 1744 /**
// 1745   * @brief  CRYP error callback.
// 1746   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1747   *         the configuration information for CRYP module
// 1748   * @retval None
// 1749   */
// 1750  __weak void HAL_CRYP_ErrorCallback(CRYP_HandleTypeDef *hcryp)
// 1751 {
// 1752   /* Prevent unused argument(s) compilation warning */
// 1753   UNUSED(hcryp);
// 1754 
// 1755   /* NOTE : This function should not be modified; when the callback is needed, 
// 1756             the HAL_CRYP_ErrorCallback can be implemented in the user file
// 1757    */ 
// 1758 }
// 1759 
// 1760 /**
// 1761   * @brief  Input transfer completed callback.
// 1762   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1763   *         the configuration information for CRYP module
// 1764   * @retval None
// 1765   */
// 1766 __weak void HAL_CRYP_InCpltCallback(CRYP_HandleTypeDef *hcryp)
// 1767 {
// 1768   /* Prevent unused argument(s) compilation warning */
// 1769   UNUSED(hcryp);
// 1770 
// 1771   /* NOTE : This function should not be modified; when the callback is needed, 
// 1772             the HAL_CRYP_InCpltCallback can be implemented in the user file
// 1773    */ 
// 1774 }
// 1775 
// 1776 /**
// 1777   * @brief  Output transfer completed callback.
// 1778   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1779   *         the configuration information for CRYP module
// 1780   * @retval None
// 1781   */
// 1782 __weak void HAL_CRYP_OutCpltCallback(CRYP_HandleTypeDef *hcryp)
// 1783 {
// 1784   /* Prevent unused argument(s) compilation warning */
// 1785   UNUSED(hcryp);
// 1786 
// 1787   /* NOTE : This function should not be modified; when the callback is needed, 
// 1788             the HAL_CRYP_OutCpltCallback can be implemented in the user file
// 1789    */ 
// 1790 }
// 1791 
// 1792 /**
// 1793   * @}
// 1794   */
// 1795 
// 1796 /** @defgroup CRYP_Exported_Functions_Group4 CRYP IRQ handler 
// 1797  *  @brief   CRYP IRQ handler.
// 1798  *
// 1799 @verbatim   
// 1800   ==============================================================================
// 1801                 ##### CRYP IRQ handler management #####
// 1802   ==============================================================================  
// 1803 [..]  This section provides CRYP IRQ handler function.
// 1804 
// 1805 @endverbatim
// 1806   * @{
// 1807   */
// 1808 
// 1809 /**
// 1810   * @brief  This function handles CRYP interrupt request.
// 1811   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1812   *         the configuration information for CRYP module
// 1813   * @retval None
// 1814   */
// 1815 void HAL_CRYP_IRQHandler(CRYP_HandleTypeDef *hcryp)
// 1816 {
// 1817   /* Check if error occurred*/
// 1818   if (__HAL_CRYP_GET_IT_SOURCE(hcryp, CRYP_IT_ERR) != RESET)
// 1819   {
// 1820     if (__HAL_CRYP_GET_FLAG(hcryp,CRYP_FLAG_RDERR) != RESET)
// 1821     {
// 1822       __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_RDERR);
// 1823     }
// 1824     
// 1825     if (__HAL_CRYP_GET_FLAG(hcryp,CRYP_FLAG_WRERR) != RESET)
// 1826     {
// 1827       __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_WRERR);
// 1828     }
// 1829     
// 1830     if (__HAL_CRYP_GET_FLAG(hcryp, CRYP_FLAG_CCF) != RESET)
// 1831     {
// 1832       __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_CCF);
// 1833     }
// 1834     
// 1835     hcryp->State= HAL_CRYP_STATE_ERROR;
// 1836     /* Disable Computation Complete Interrupt */
// 1837     __HAL_CRYP_DISABLE_IT(hcryp,CRYP_IT_CC);
// 1838     __HAL_CRYP_DISABLE_IT(hcryp,CRYP_IT_ERR);
// 1839     
// 1840     HAL_CRYP_ErrorCallback(hcryp);
// 1841     
// 1842     /* Process Unlocked */
// 1843     __HAL_UNLOCK(hcryp);
// 1844     
// 1845     return;
// 1846   }
// 1847   
// 1848   /* Check if computation complete interrupt was enabled*/
// 1849   if (__HAL_CRYP_GET_IT_SOURCE(hcryp, CRYP_IT_CC) != RESET)
// 1850   {
// 1851     /* Clear CCF Flag */
// 1852     __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_CCF);
// 1853   
// 1854     CRYP_EncryptDecrypt_IT(hcryp);
// 1855   }
// 1856 }
// 1857 
// 1858 /**
// 1859   * @}
// 1860   */
// 1861 
// 1862 /** @defgroup CRYP_Exported_Functions_Group5 Peripheral State functions 
// 1863  *  @brief   Peripheral State functions. 
// 1864  *
// 1865 @verbatim   
// 1866   ==============================================================================
// 1867                       ##### Peripheral State functions #####
// 1868   ==============================================================================  
// 1869     [..]
// 1870     This subsection permits to get in run-time the status of the peripheral.
// 1871 
// 1872 @endverbatim
// 1873   * @{
// 1874   */
// 1875 
// 1876 /**
// 1877   * @brief  Returns the CRYP state.
// 1878   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1879   *         the configuration information for CRYP module
// 1880   * @retval HAL state
// 1881   */
// 1882 HAL_CRYP_STATETypeDef HAL_CRYP_GetState(CRYP_HandleTypeDef *hcryp)
// 1883 {
// 1884   return hcryp->State;
// 1885 }
// 1886 
// 1887 /**
// 1888   * @}
// 1889   */
// 1890 
// 1891 /**
// 1892   * @}
// 1893   */
// 1894 
// 1895 /** @addtogroup CRYP_Private_Functions
// 1896   * @{
// 1897   */
// 1898 
// 1899 /**
// 1900   * @brief  IT function called under interruption context to continue encryption or decryption
// 1901   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 1902   *         the configuration information for CRYP module
// 1903   * @retval HAL status
// 1904   */
// 1905 static HAL_StatusTypeDef CRYP_EncryptDecrypt_IT(CRYP_HandleTypeDef *hcryp)
// 1906 {
// 1907   uint32_t inputaddr = 0, outputaddr = 0;
// 1908 
// 1909   /* Get the last Output data adress */
// 1910   outputaddr = (uint32_t)hcryp->pCrypOutBuffPtr;
// 1911   
// 1912   /* Read the Output block from the Output Register */
// 1913   *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 1914   outputaddr+=4;
// 1915   *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 1916   outputaddr+=4;
// 1917   *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 1918   outputaddr+=4;
// 1919   *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 1920   
// 1921   hcryp->pCrypOutBuffPtr += 16;
// 1922   hcryp->CrypOutCount -= 16;
// 1923   
// 1924   /* Check if all input text is encrypted or decrypted */
// 1925   if(hcryp->CrypOutCount == 0)
// 1926   {
// 1927     /* Disable Computation Complete Interrupt */
// 1928     __HAL_CRYP_DISABLE_IT(hcryp, CRYP_IT_CC);
// 1929     __HAL_CRYP_DISABLE_IT(hcryp, CRYP_IT_ERR);
// 1930     
// 1931     /* Process Unlocked */
// 1932     __HAL_UNLOCK(hcryp);
// 1933     
// 1934     /* Change the CRYP state */
// 1935     hcryp->State = HAL_CRYP_STATE_READY;
// 1936     
// 1937     /* Call computation complete callback */
// 1938     HAL_CRYPEx_ComputationCpltCallback(hcryp);
// 1939   }
// 1940   else /* Process the rest of input text */
// 1941   {
// 1942     /* Get the last Intput data adress */
// 1943     inputaddr = (uint32_t)hcryp->pCrypInBuffPtr;
// 1944     
// 1945     /* Write the Input block in the Data Input register */
// 1946     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1947     inputaddr+=4;
// 1948     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1949     inputaddr+=4;
// 1950     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 1951     inputaddr+=4;
// 1952     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 1953     hcryp->pCrypInBuffPtr += 16;
// 1954     hcryp->CrypInCount -= 16;      
// 1955   }
// 1956   return HAL_OK;
// 1957 }
// 1958 /**
// 1959   * @brief  DMA CRYP Input Data process complete callback.
// 1960   * @param  hdma: DMA handle
// 1961   * @retval None
// 1962   */
// 1963 static void CRYP_DMAInCplt(DMA_HandleTypeDef *hdma)  
// 1964 {
// 1965   CRYP_HandleTypeDef* hcryp = (CRYP_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1966   
// 1967   /* Disable the DMA transfer for input request  */
// 1968   CLEAR_BIT(hcryp->Instance->CR, AES_CR_DMAINEN);
// 1969   
// 1970   /* Call input data transfer complete callback */
// 1971   HAL_CRYP_InCpltCallback(hcryp);
// 1972 }
// 1973 
// 1974 /**
// 1975   * @brief  DMA CRYP Output Data process complete callback.
// 1976   * @param  hdma: DMA handle
// 1977   * @retval None
// 1978   */
// 1979 static void CRYP_DMAOutCplt(DMA_HandleTypeDef *hdma)
// 1980 {
// 1981   CRYP_HandleTypeDef* hcryp = (CRYP_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1982   
// 1983   /* Disable the DMA transfer for output request by resetting the DMAOUTEN bit
// 1984      in the DMACR register */
// 1985   CLEAR_BIT(hcryp->Instance->CR, AES_CR_DMAOUTEN);
// 1986 
// 1987   /* Clear CCF Flag */
// 1988   __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_CCF);
// 1989 
// 1990   /* Disable CRYP */
// 1991   __HAL_CRYP_DISABLE(hcryp);
// 1992   
// 1993   /* Change the CRYP state to ready */
// 1994   hcryp->State = HAL_CRYP_STATE_READY;
// 1995   
// 1996   /* Call output data transfer complete callback */
// 1997   HAL_CRYP_OutCpltCallback(hcryp);
// 1998 }
// 1999 
// 2000 /**
// 2001   * @brief  DMA CRYP communication error callback. 
// 2002   * @param  hdma: DMA handle
// 2003   * @retval None
// 2004   */
// 2005 static void CRYP_DMAError(DMA_HandleTypeDef *hdma)
// 2006 {
// 2007   CRYP_HandleTypeDef* hcryp = (CRYP_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 2008   hcryp->State= HAL_CRYP_STATE_ERROR;
// 2009   HAL_CRYP_ErrorCallback(hcryp);
// 2010 }
// 2011 
// 2012 /**
// 2013   * @brief  Writes the Key in Key registers. 
// 2014   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 2015   *         the configuration information for CRYP module
// 2016   * @param  Key: Pointer to Key buffer
// 2017   * @note Key must be written as little endian.
// 2018   *         If Key pointer points at address n, 
// 2019   *         n[15:0] contains key[96:127], 
// 2020   *         (n+4)[15:0] contains key[64:95], 
// 2021   *         (n+8)[15:0] contains key[32:63] and 
// 2022   *         (n+12)[15:0] contains key[0:31]
// 2023   * @retval None
// 2024   */
// 2025 static void CRYP_SetKey(CRYP_HandleTypeDef *hcryp, uint8_t *Key)
// 2026 {  
// 2027   uint32_t keyaddr = (uint32_t)Key;
// 2028   
// 2029   hcryp->Instance->KEYR3 = __REV(*(uint32_t*)(keyaddr));
// 2030   keyaddr+=4;
// 2031   hcryp->Instance->KEYR2 = __REV(*(uint32_t*)(keyaddr));
// 2032   keyaddr+=4;
// 2033   hcryp->Instance->KEYR1 = __REV(*(uint32_t*)(keyaddr));
// 2034   keyaddr+=4;
// 2035   hcryp->Instance->KEYR0 = __REV(*(uint32_t*)(keyaddr));
// 2036 }
// 2037 
// 2038 /**
// 2039   * @brief  Writes the InitVector/InitCounter in IV registers. 
// 2040   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 2041   *         the configuration information for CRYP module
// 2042   * @param  InitVector: Pointer to InitVector/InitCounter buffer
// 2043   * @note Init Vector must be written as little endian.
// 2044   *         If Init Vector pointer points at address n, 
// 2045   *         n[15:0] contains Vector[96:127], 
// 2046   *         (n+4)[15:0] contains Vector[64:95], 
// 2047   *         (n+8)[15:0] contains Vector[32:63] and 
// 2048   *         (n+12)[15:0] contains Vector[0:31]
// 2049   * @retval None
// 2050   */
// 2051 static void CRYP_SetInitVector(CRYP_HandleTypeDef *hcryp, uint8_t *InitVector)
// 2052 {
// 2053   uint32_t ivaddr = (uint32_t)InitVector;
// 2054   
// 2055   hcryp->Instance->IVR3 = __REV(*(uint32_t*)(ivaddr));
// 2056   ivaddr+=4;
// 2057   hcryp->Instance->IVR2 = __REV(*(uint32_t*)(ivaddr));
// 2058   ivaddr+=4;
// 2059   hcryp->Instance->IVR1 = __REV(*(uint32_t*)(ivaddr));
// 2060   ivaddr+=4;
// 2061   hcryp->Instance->IVR0 = __REV(*(uint32_t*)(ivaddr));
// 2062 }
// 2063 
// 2064 /**
// 2065   * @brief  Process Data: Writes Input data in polling mode and reads the output data
// 2066   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 2067   *         the configuration information for CRYP module
// 2068   * @param  Input: Pointer to the Input buffer
// 2069   * @param  Ilength: Length of the Input buffer, must be a multiple of 16.
// 2070   * @param  Output: Pointer to the returned buffer
// 2071   * @param  Timeout: Specify Timeout value  
// 2072   * @retval None
// 2073   */
// 2074 static HAL_StatusTypeDef CRYP_ProcessData(CRYP_HandleTypeDef *hcryp, uint8_t* Input, uint16_t Ilength, uint8_t* Output, uint32_t Timeout)
// 2075 {
// 2076   uint32_t tickstart = 0;
// 2077   
// 2078   uint32_t index = 0;
// 2079   uint32_t inputaddr  = (uint32_t)Input;
// 2080   uint32_t outputaddr = (uint32_t)Output;
// 2081   
// 2082   for(index=0; (index < Ilength); index += 16)
// 2083   {
// 2084     /* Write the Input block in the Data Input register */
// 2085     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 2086     inputaddr+=4;
// 2087     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 2088     inputaddr+=4;
// 2089     hcryp->Instance->DINR  = *(uint32_t*)(inputaddr);
// 2090     inputaddr+=4;
// 2091     hcryp->Instance->DINR = *(uint32_t*)(inputaddr);
// 2092     inputaddr+=4;
// 2093     
// 2094     /* Get timeout */
// 2095     tickstart = HAL_GetTick();
// 2096     
// 2097     while(HAL_IS_BIT_CLR(hcryp->Instance->SR, AES_SR_CCF))
// 2098     {    
// 2099       /* Check for the Timeout */
// 2100       if(Timeout != HAL_MAX_DELAY)
// 2101       {
// 2102         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 2103         {
// 2104           /* Change state */
// 2105           hcryp->State = HAL_CRYP_STATE_TIMEOUT;
// 2106           
// 2107           /* Process Unlocked */          
// 2108           __HAL_UNLOCK(hcryp);
// 2109           
// 2110           return HAL_TIMEOUT;
// 2111         }
// 2112       }
// 2113     }
// 2114     /* Clear CCF Flag */
// 2115     __HAL_CRYP_CLEAR_FLAG(hcryp, CRYP_CLEARFLAG_CCF);
// 2116     
// 2117     /* Read the Output block from the Data Output Register */
// 2118     *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 2119     outputaddr+=4;
// 2120     *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 2121     outputaddr+=4;
// 2122     *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 2123     outputaddr+=4;
// 2124     *(uint32_t*)(outputaddr) = hcryp->Instance->DOUTR;
// 2125     outputaddr+=4;
// 2126   }
// 2127   /* Return function status */
// 2128   return HAL_OK;
// 2129 }
// 2130 
// 2131 /**
// 2132   * @brief  Set the DMA configuration and start the DMA transfer
// 2133   * @param  hcryp: pointer to a CRYP_HandleTypeDef structure that contains
// 2134   *         the configuration information for CRYP module
// 2135   * @param  inputaddr: address of the Input buffer
// 2136   * @param  Size: Size of the Input buffer, must be a multiple of 16.
// 2137   * @param  outputaddr: address of the Output buffer
// 2138   * @retval None
// 2139   */
// 2140 static void CRYP_SetDMAConfig(CRYP_HandleTypeDef *hcryp, uint32_t inputaddr, uint16_t Size, uint32_t outputaddr)
// 2141 {
// 2142   /* Set the CRYP DMA transfer complete callback */
// 2143   hcryp->hdmain->XferCpltCallback = CRYP_DMAInCplt;
// 2144   /* Set the DMA error callback */
// 2145   hcryp->hdmain->XferErrorCallback = CRYP_DMAError;
// 2146   
// 2147   /* Set the CRYP DMA transfer complete callback */
// 2148   hcryp->hdmaout->XferCpltCallback = CRYP_DMAOutCplt;
// 2149   /* Set the DMA error callback */
// 2150   hcryp->hdmaout->XferErrorCallback = CRYP_DMAError;
// 2151 
// 2152   /* Enable the DMA In DMA Stream */
// 2153   HAL_DMA_Start_IT(hcryp->hdmain, inputaddr, (uint32_t)&hcryp->Instance->DINR, Size/4);
// 2154 
// 2155   /* Enable the DMA Out DMA Stream */
// 2156   HAL_DMA_Start_IT(hcryp->hdmaout, (uint32_t)&hcryp->Instance->DOUTR, outputaddr, Size/4);
// 2157 
// 2158   /* Enable In and Out DMA requests */
// 2159   SET_BIT(hcryp->Instance->CR, (AES_CR_DMAINEN | AES_CR_DMAOUTEN));
// 2160 
// 2161   /* Enable CRYP */
// 2162   __HAL_CRYP_ENABLE(hcryp);
// 2163 }
// 2164 
// 2165 /**
// 2166   * @}
// 2167   */
// 2168 
// 2169 #endif /* STM32L162xC || STM32L162xCA || STM32L162xD || STM32L162xE || STM32L162xDX*/
// 2170 
// 2171 /**
// 2172   * @}
// 2173   */
// 2174 
// 2175 /**
// 2176   * @}
// 2177   */
// 2178 
// 2179 #endif /* HAL_CRYP_MODULE_ENABLED */
// 2180 
// 2181 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
