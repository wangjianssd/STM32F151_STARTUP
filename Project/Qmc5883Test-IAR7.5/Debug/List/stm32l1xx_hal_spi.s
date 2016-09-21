///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_spi.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_spi.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_spi.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   SPI HAL module driver.
//    8   *    
//    9   *          This file provides firmware functions to manage the following 
//   10   *          functionalities of the Serial Peripheral Interface (SPI) peripheral:
//   11   *           + Initialization and de-initialization functions
//   12   *           + IO operation functions
//   13   *           + Peripheral Control functions 
//   14   *           + Peripheral State functions
//   15   @verbatim
//   16   ==============================================================================
//   17                         ##### How to use this driver #####
//   18   ==============================================================================
//   19     [..]
//   20       The SPI HAL driver can be used as follows:
//   21 
//   22       (#) Declare a SPI_HandleTypeDef handle structure, for example:
//   23           SPI_HandleTypeDef  hspi; 
//   24 
//   25       (#)Initialize the SPI low level resources by implementing the HAL_SPI_MspInit ()API:
//   26           (##) Enable the SPIx interface clock 
//   27           (##) SPI pins configuration
//   28               (+++) Enable the clock for the SPI GPIOs 
//   29               (+++) Configure these SPI pins as alternate function push-pull
//   30           (##) NVIC configuration if you need to use interrupt process
//   31               (+++) Configure the SPIx interrupt priority
//   32               (+++) Enable the NVIC SPI IRQ handle
//   33           (##) DMA Configuration if you need to use DMA process
//   34               (+++) Declare a DMA_HandleTypeDef handle structure for the transmit or receive Channel
//   35               (+++) Enable the DMAx clock
//   36               (+++) Configure the DMA handle parameters 
//   37               (+++) Configure the DMA Tx or Rx Channel
//   38               (+++) Associate the initilalized hdma_tx(or _rx) handle to the hspi DMA Tx (or Rx) handle
//   39               (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on the DMA Tx or Rx Channel
//   40 
//   41       (#) Program the Mode, Direction , Data size, Baudrate Prescaler, NSS 
//   42           management, Clock polarity and phase, FirstBit and CRC configuration in the hspi Init structure.
//   43 
//   44       (#) Initialize the SPI registers by calling the HAL_SPI_Init() API:
//   45           (++) This API configures also the low level Hardware GPIO, CLOCK, CORTEX...etc)
//   46               by calling the customed HAL_SPI_MspInit() API.
//   47      [..]
//   48        Circular mode restriction:
//   49       (#) The DMA circular mode cannot be used when the SPI is configured in these modes:
//   50           (##) Master 2Lines RxOnly
//   51           (##) Master 1Line Rx
//   52       (#) The CRC feature is not managed when the DMA circular mode is enabled
//   53       (#) When the SPI DMA Pause/Stop features are used, we must use the following APIs 
//   54           the HAL_SPI_DMAPause()/ HAL_SPI_DMAStop() only under the SPI callbacks
//   55 
//   56 
//   57             
//   58   @endverbatim
//   59   ******************************************************************************
//   60   * @attention
//   61   *
//   62   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   63   *
//   64   * Redistribution and use in source and binary forms, with or without modification,
//   65   * are permitted provided that the following conditions are met:
//   66   *   1. Redistributions of source code must retain the above copyright notice,
//   67   *      this list of conditions and the following disclaimer.
//   68   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   69   *      this list of conditions and the following disclaimer in the documentation
//   70   *      and/or other materials provided with the distribution.
//   71   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   72   *      may be used to endorse or promote products derived from this software
//   73   *      without specific prior written permission.
//   74   *
//   75   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   76   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   77   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   78   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   79   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   80   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   81   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   82   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   83   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   84   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   85   *
//   86   ******************************************************************************
//   87   */
//   88 
//   89 /* Includes ------------------------------------------------------------------*/
//   90 #include "stm32l1xx_hal.h"
//   91 
//   92 /** @addtogroup STM32L1xx_HAL_Driver
//   93   * @{
//   94   */
//   95 
//   96 /** @defgroup SPI SPI
//   97   * @brief SPI HAL module driver
//   98   * @{
//   99   */
//  100 
//  101 #ifdef HAL_SPI_MODULE_ENABLED
//  102 
//  103 /* Private typedef -----------------------------------------------------------*/
//  104 /* Private define ------------------------------------------------------------*/
//  105 /** @defgroup SPI_Private_Constants SPI Private Constants
//  106   * @{
//  107   */
//  108 #define SPI_TIMEOUT_VALUE  10
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /* Private macro -------------------------------------------------------------*/
//  114 /* Private variables ---------------------------------------------------------*/
//  115 /* Private function prototypes -----------------------------------------------*/
//  116 /** @defgroup SPI_Private_Functions SPI Private Functions
//  117   * @{
//  118   */
//  119 
//  120 static void SPI_TxCloseIRQHandler(struct __SPI_HandleTypeDef *hspi);
//  121 static void SPI_TxISR(struct __SPI_HandleTypeDef *hspi);
//  122 static void SPI_RxCloseIRQHandler(struct __SPI_HandleTypeDef *hspi);
//  123 static void SPI_2LinesRxISR(struct __SPI_HandleTypeDef *hspi);
//  124 static void SPI_RxISR(struct __SPI_HandleTypeDef *hspi);
//  125 static void SPI_DMATransmitCplt(struct __DMA_HandleTypeDef *hdma);
//  126 static void SPI_DMAReceiveCplt(struct __DMA_HandleTypeDef *hdma);
//  127 static void SPI_DMATransmitReceiveCplt(struct __DMA_HandleTypeDef *hdma);
//  128 static void SPI_DMAHalfTransmitCplt(struct __DMA_HandleTypeDef *hdma);
//  129 static void SPI_DMAHalfReceiveCplt(struct __DMA_HandleTypeDef *hdma);
//  130 static void SPI_DMAHalfTransmitReceiveCplt(struct __DMA_HandleTypeDef *hdma);
//  131 static void SPI_DMAError(struct __DMA_HandleTypeDef *hdma);
//  132 static HAL_StatusTypeDef SPI_WaitOnFlagUntilTimeout(struct __SPI_HandleTypeDef *hspi, uint32_t Flag, FlagStatus Status, uint32_t Timeout);
//  133 /**
//  134   * @}
//  135   */
//  136 
//  137 /* Exported functions ---------------------------------------------------------*/
//  138 
//  139 /** @defgroup SPI_Exported_Functions SPI Exported Functions
//  140   * @{
//  141   */
//  142 
//  143 /** @defgroup SPI_Exported_Functions_Group1 Initialization and de-initialization functions 
//  144  *  @brief    Initialization and Configuration functions 
//  145  *
//  146 @verbatim
//  147  ===============================================================================
//  148               ##### Initialization and de-initialization functions #####
//  149  ===============================================================================
//  150     [..]  This subsection provides a set of functions allowing to initialize and 
//  151           de-initialiaze the SPIx peripheral:
//  152 
//  153       (+) User must implement HAL_SPI_MspInit() function in which he configures 
//  154           all related peripherals resources (CLOCK, GPIO, DMA, IT and NVIC ).
//  155 
//  156       (+) Call the function HAL_SPI_Init() to configure the selected device with 
//  157           the selected configuration:
//  158         (++) Mode
//  159         (++) Direction 
//  160         (++) Data Size
//  161         (++) Clock Polarity and Phase
//  162         (++) NSS Management
//  163         (++) BaudRate Prescaler
//  164         (++) FirstBit
//  165         (++) TIMode
//  166         (++) CRC Calculation
//  167         (++) CRC Polynomial if CRC enabled
//  168 
//  169       (+) Call the function HAL_SPI_DeInit() to restore the default configuration 
//  170           of the selected SPIx periperal.       
//  171 
//  172 @endverbatim
//  173   * @{
//  174   */
//  175 
//  176 /**
//  177   * @brief  Initializes the SPI according to the specified parameters 
//  178   *         in the SPI_InitTypeDef and create the associated handle.
//  179   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  180   *                the configuration information for SPI module.
//  181   * @retval HAL status
//  182   */
//  183 __weak HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi)
//  184 {
//  185   /* Prevent unused argument(s) compilation warning */
//  186   UNUSED(hspi);
//  187 
//  188   return HAL_ERROR;
//  189 }
//  190 
//  191 /**
//  192   * @brief  DeInitializes the SPI peripheral 
//  193   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  194   *                the configuration information for SPI module.
//  195   * @retval HAL status
//  196   */
//  197 HAL_StatusTypeDef HAL_SPI_DeInit(SPI_HandleTypeDef *hspi)
//  198 {
//  199   /* Check the SPI handle allocation */
//  200   if(hspi == NULL)
//  201   {
//  202     return HAL_ERROR;
//  203   }
//  204 
//  205   /* Disable the SPI Peripheral Clock */
//  206   __HAL_SPI_DISABLE(hspi);
//  207 
//  208   /* DeInit the low level hardware: GPIO, CLOCK, NVIC... */
//  209   HAL_SPI_MspDeInit(hspi);
//  210 
//  211   hspi->ErrorCode = HAL_SPI_ERROR_NONE;
//  212   hspi->State = HAL_SPI_STATE_RESET;
//  213 
//  214   /* Release Lock */
//  215   __HAL_UNLOCK(hspi);
//  216 
//  217   return HAL_OK;
//  218 }
//  219 
//  220 /**
//  221   * @brief SPI MSP Init
//  222   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  223   *                the configuration information for SPI module.
//  224   * @retval None
//  225   */
//  226  __weak void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi)
//  227  {
//  228   /* Prevent unused argument(s) compilation warning */
//  229   UNUSED(hspi);
//  230 
//  231    /* NOTE : This function Should not be modified, when the callback is needed,
//  232             the HAL_SPI_MspInit could be implenetd in the user file
//  233    */
//  234 }
//  235 
//  236 /**
//  237   * @brief SPI MSP DeInit
//  238   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  239   *                the configuration information for SPI module.
//  240   * @retval None
//  241   */
//  242  __weak void HAL_SPI_MspDeInit(SPI_HandleTypeDef *hspi)
//  243 {
//  244   /* Prevent unused argument(s) compilation warning */
//  245   UNUSED(hspi);
//  246 
//  247   /* NOTE : This function Should not be modified, when the callback is needed,
//  248             the HAL_SPI_MspDeInit could be implenetd in the user file
//  249    */
//  250 }
//  251 
//  252 /**
//  253   * @}
//  254   */
//  255 
//  256 /** @defgroup SPI_Exported_Functions_Group2 IO operation functions
//  257  *  @brief   Data transfers functions
//  258  *
//  259 @verbatim
//  260   ==============================================================================
//  261                       ##### IO operation functions #####
//  262  ===============================================================================
//  263     This subsection provides a set of functions allowing to manage the SPI
//  264     data transfers.
//  265 
//  266     [..] The SPI supports master and slave mode :
//  267 
//  268     (#) There are two modes of transfer:
//  269        (++) Blocking mode: The communication is performed in polling mode.
//  270             The HAL status of all data processing is returned by the same function
//  271             after finishing transfer.
//  272        (++) No-Blocking mode: The communication is performed using Interrupts
//  273             or DMA, These APIs return the HAL status.
//  274             The end of the data processing will be indicated through the 
//  275             dedicated SPI IRQ when using Interrupt mode or the DMA IRQ when 
//  276             using DMA mode.
//  277             The HAL_SPI_TxCpltCallback(), HAL_SPI_RxCpltCallback() and HAL_SPI_TxRxCpltCallback() user callbacks 
//  278             will be executed respectivelly at the end of the transmit or Receive process
//  279             The HAL_SPI_ErrorCallback()user callback will be executed when a communication error is detected
//  280 
//  281     (#) APIs provided for these 2 transfer modes (Blocking mode or Non blocking mode using either Interrupt or DMA)
//  282         exist for 1Line (simplex) and 2Lines (full duplex) modes.
//  283 
//  284 @endverbatim
//  285   * @{
//  286   */
//  287 
//  288 /**
//  289   * @brief  Transmit an amount of data in blocking mode
//  290   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  291   *                the configuration information for SPI module.
//  292   * @param  pData: pointer to data buffer
//  293   * @param  Size: amount of data to be sent
//  294   * @param  Timeout: Timeout duration
//  295   * @retval HAL status
//  296   */
//  297 HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  298 {
//  299 
//  300   if(hspi->State == HAL_SPI_STATE_READY)
//  301   {
//  302     if((pData == NULL ) || (Size == 0)) 
//  303     {
//  304       return  HAL_ERROR;
//  305     }
//  306 
//  307     /* Check the parameters */
//  308     assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
//  309 
//  310     /* Process Locked */
//  311     __HAL_LOCK(hspi);
//  312 
//  313     /* Configure communication */
//  314     hspi->State = HAL_SPI_STATE_BUSY_TX;
//  315     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
//  316 
//  317     hspi->pTxBuffPtr  = pData;
//  318     hspi->TxXferSize  = Size;
//  319     hspi->TxXferCount = Size;
//  320 
//  321     /*Init field not used in handle to zero */
//  322     hspi->TxISR = 0;
//  323     hspi->RxISR = 0;
//  324     hspi->pRxBuffPtr  = NULL;
//  325     hspi->RxXferSize  = 0;
//  326     hspi->RxXferCount = 0;
//  327 
//  328     /* Reset CRC Calculation */
//  329     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  330     {
//  331       SPI_RESET_CRC(hspi);
//  332     }
//  333 
//  334     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
//  335     {
//  336       /* Configure communication direction : 1Line */
//  337       SPI_1LINE_TX(hspi);
//  338     }
//  339 
//  340     /* Check if the SPI is already enabled */ 
//  341     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
//  342     {
//  343       /* Enable SPI peripheral */
//  344       __HAL_SPI_ENABLE(hspi);
//  345     }
//  346 
//  347     /* Transmit data in 8 Bit mode */
//  348     if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
//  349     {
//  350       if((hspi->Init.Mode == SPI_MODE_SLAVE)|| (hspi->TxXferCount == 0x01))
//  351       {
//  352         hspi->Instance->DR = (*hspi->pTxBuffPtr++);
//  353         hspi->TxXferCount--;
//  354       }
//  355       while(hspi->TxXferCount > 0)
//  356       {
//  357         /* Wait until TXE flag is set to send data */
//  358         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  359         { 
//  360           return HAL_TIMEOUT;
//  361         }
//  362         hspi->Instance->DR = (*hspi->pTxBuffPtr++);
//  363         hspi->TxXferCount--;
//  364       }
//  365       /* Enable CRC Transmission */
//  366       if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) 
//  367       {
//  368         SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  369       }
//  370     }
//  371     /* Transmit data in 16 Bit mode */
//  372     else
//  373     {
//  374       if((hspi->Init.Mode == SPI_MODE_SLAVE) || (hspi->TxXferCount == 0x01))
//  375       {
//  376         hspi->Instance->DR = *((uint16_t*)hspi->pTxBuffPtr);
//  377         hspi->pTxBuffPtr+=2;
//  378         hspi->TxXferCount--;
//  379       }
//  380       while(hspi->TxXferCount > 0)
//  381       {
//  382         /* Wait until TXE flag is set to send data */
//  383         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  384         { 
//  385           return HAL_TIMEOUT;
//  386         }
//  387         hspi->Instance->DR = *((uint16_t*)hspi->pTxBuffPtr);
//  388         hspi->pTxBuffPtr+=2;
//  389         hspi->TxXferCount--;
//  390       }
//  391       /* Enable CRC Transmission */
//  392       if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) 
//  393       {
//  394         SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  395       }
//  396     }
//  397 
//  398     /* Wait until TXE flag is set to send data */
//  399     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  400     {
//  401       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
//  402       return HAL_TIMEOUT;
//  403     }
//  404 
//  405     /* Wait until Busy flag is reset before disabling SPI */
//  406     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_BSY, SET, Timeout) != HAL_OK)
//  407     { 
//  408       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
//  409       return HAL_TIMEOUT;
//  410     }
//  411  
//  412     /* Clear OVERUN flag in 2 Lines communication mode because received is not read */
//  413     if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
//  414     {
//  415       __HAL_SPI_CLEAR_OVRFLAG(hspi);
//  416     }
//  417 
//  418     hspi->State = HAL_SPI_STATE_READY; 
//  419 
//  420     /* Process Unlocked */
//  421     __HAL_UNLOCK(hspi);
//  422 
//  423     return HAL_OK;
//  424   }
//  425   else
//  426   {
//  427     return HAL_BUSY;
//  428   }
//  429 }
//  430 
//  431 /**
//  432   * @brief  Receive an amount of data in blocking mode 
//  433   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  434   *                the configuration information for SPI module.
//  435   * @param  pData: pointer to data buffer
//  436   * @param  Size: amount of data to be sent
//  437   * @param  Timeout: Timeout duration
//  438   * @retval HAL status
//  439   */
//  440 HAL_StatusTypeDef HAL_SPI_Receive(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout)
//  441 {
//  442   __IO uint16_t tmpreg = 0;
//  443 
//  444   if(hspi->State == HAL_SPI_STATE_READY)
//  445   {
//  446     if((pData == NULL ) || (Size == 0)) 
//  447     {
//  448       return  HAL_ERROR;
//  449     }
//  450 
//  451     /* Process Locked */
//  452     __HAL_LOCK(hspi);
//  453 
//  454     /* Configure communication */
//  455     hspi->State       = HAL_SPI_STATE_BUSY_RX;
//  456     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
//  457 
//  458     hspi->pRxBuffPtr  = pData;
//  459     hspi->RxXferSize  = Size;
//  460     hspi->RxXferCount = Size;
//  461 
//  462     /*Init field not used in handle to zero */
//  463     hspi->RxISR = 0;
//  464     hspi->TxISR = 0;
//  465     hspi->pTxBuffPtr  = NULL;
//  466     hspi->TxXferSize  = 0;
//  467     hspi->TxXferCount = 0;
//  468 
//  469     /* Configure communication direction : 1Line */
//  470     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
//  471     {
//  472       SPI_1LINE_RX(hspi);
//  473     }
//  474 
//  475     /* Reset CRC Calculation */
//  476     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  477     {
//  478       SPI_RESET_CRC(hspi);
//  479     }
//  480     
//  481     if((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES))
//  482     {
//  483       /* Process Unlocked */
//  484       __HAL_UNLOCK(hspi);
//  485 
//  486       /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line */
//  487       return HAL_SPI_TransmitReceive(hspi, pData, pData, Size, Timeout);
//  488     }
//  489 
//  490     /* Check if the SPI is already enabled */ 
//  491     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
//  492     {
//  493       /* Enable SPI peripheral */
//  494       __HAL_SPI_ENABLE(hspi);
//  495     }
//  496 
//  497     /* Receive data in 8 Bit mode */
//  498     if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
//  499     {
//  500       while(hspi->RxXferCount > 1)
//  501       {
//  502         /* Wait until RXNE flag is set */
//  503         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  504         { 
//  505           return HAL_TIMEOUT;
//  506         }
//  507 
//  508         (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
//  509         hspi->RxXferCount--;
//  510       }
//  511       /* Enable CRC Transmission */
//  512       if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) 
//  513       {
//  514         SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  515       }
//  516     }
//  517     /* Receive data in 16 Bit mode */
//  518     else
//  519     {
//  520       while(hspi->RxXferCount > 1)
//  521       {
//  522         /* Wait until RXNE flag is set to read data */
//  523         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  524         { 
//  525           return HAL_TIMEOUT;
//  526         }
//  527 
//  528         *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
//  529         hspi->pRxBuffPtr+=2;
//  530         hspi->RxXferCount--;
//  531       }
//  532       /* Enable CRC Transmission */
//  533       if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) 
//  534       {
//  535         SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  536       }
//  537     }
//  538 
//  539     /* Wait until RXNE flag is set */
//  540     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  541     { 
//  542       return HAL_TIMEOUT;
//  543     }
//  544 
//  545     /* Receive last data in 8 Bit mode */
//  546     if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
//  547     {
//  548       (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
//  549     }
//  550     /* Receive last data in 16 Bit mode */
//  551     else
//  552     {
//  553       *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
//  554       hspi->pRxBuffPtr+=2;
//  555     }
//  556     hspi->RxXferCount--;
//  557 
//  558     /* Wait until RXNE flag is set: CRC Received */
//  559     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  560     {
//  561       if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  562       {
//  563         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
//  564         return HAL_TIMEOUT;
//  565       }
//  566 
//  567       /* Read CRC to Flush RXNE flag */
//  568       tmpreg = hspi->Instance->DR;
//  569       UNUSED(tmpreg);
//  570     }
//  571     
//  572     if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi->Init.Direction == SPI_DIRECTION_2LINES_RXONLY)))
//  573     {
//  574       /* Disable SPI peripheral */
//  575       __HAL_SPI_DISABLE(hspi);
//  576     }
//  577 
//  578     hspi->State = HAL_SPI_STATE_READY;
//  579 
//  580     /* Check if CRC error occurred */
//  581     if((hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET))
//  582     {  
//  583       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
//  584 
//  585       /* Reset CRC Calculation */
//  586       SPI_RESET_CRC(hspi);
//  587 
//  588       /* Process Unlocked */
//  589       __HAL_UNLOCK(hspi);
//  590 
//  591       return HAL_ERROR; 
//  592     }
//  593 
//  594     /* Process Unlocked */
//  595     __HAL_UNLOCK(hspi);
//  596 
//  597     return HAL_OK;
//  598   }
//  599   else
//  600   {
//  601     return HAL_BUSY;
//  602   }
//  603 }
//  604 
//  605 /**
//  606   * @brief  Transmit and Receive an amount of data in blocking mode 
//  607   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  608   *                the configuration information for SPI module.
//  609   * @param  pTxData: pointer to transmission data buffer
//  610   * @param  pRxData: pointer to reception data buffer to be
//  611   * @param  Size: amount of data to be sent
//  612   * @param  Timeout: Timeout duration
//  613   * @retval HAL status
//  614   */
//  615 HAL_StatusTypeDef HAL_SPI_TransmitReceive(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size, uint32_t Timeout)
//  616 {
//  617   __IO uint16_t tmpreg = 0;
//  618 
//  619   if((hspi->State == HAL_SPI_STATE_READY) || (hspi->State == HAL_SPI_STATE_BUSY_RX))
//  620   {
//  621     if((pTxData == NULL ) || (pRxData == NULL ) || (Size == 0))
//  622     {
//  623       return  HAL_ERROR;
//  624     }
//  625 
//  626     /* Check the parameters */
//  627     assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
//  628 
//  629     /* Process Locked */
//  630     __HAL_LOCK(hspi);
//  631  
//  632     /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
//  633     if(hspi->State == HAL_SPI_STATE_READY)
//  634     {
//  635       hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
//  636     }
//  637 
//  638      /* Configure communication */   
//  639     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
//  640 
//  641     hspi->pRxBuffPtr  = pRxData;
//  642     hspi->RxXferSize  = Size;
//  643     hspi->RxXferCount = Size;  
//  644     
//  645     hspi->pTxBuffPtr  = pTxData;
//  646     hspi->TxXferSize  = Size; 
//  647     hspi->TxXferCount = Size;
//  648 
//  649     /*Init field not used in handle to zero */
//  650     hspi->RxISR = 0;
//  651     hspi->TxISR = 0;
//  652 
//  653     /* Reset CRC Calculation */
//  654     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  655     {
//  656       SPI_RESET_CRC(hspi);
//  657     }
//  658 
//  659     /* Check if the SPI is already enabled */ 
//  660     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
//  661     {
//  662       /* Enable SPI peripheral */
//  663       __HAL_SPI_ENABLE(hspi);
//  664     }
//  665 
//  666     /* Transmit and Receive data in 16 Bit mode */
//  667     if(hspi->Init.DataSize == SPI_DATASIZE_16BIT)
//  668     {
//  669       if((hspi->Init.Mode == SPI_MODE_SLAVE) || ((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->TxXferCount == 0x01)))
//  670       {
//  671         hspi->Instance->DR = *((uint16_t*)hspi->pTxBuffPtr);
//  672         hspi->pTxBuffPtr+=2;
//  673         hspi->TxXferCount--;
//  674       }
//  675       if(hspi->TxXferCount == 0)
//  676       {
//  677         /* Enable CRC Transmission */
//  678         if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  679         {
//  680           SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  681         }
//  682 
//  683         /* Wait until RXNE flag is set */
//  684         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  685         { 
//  686           return HAL_TIMEOUT;
//  687         }
//  688 
//  689         *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
//  690         hspi->pRxBuffPtr+=2;
//  691         hspi->RxXferCount--;
//  692       }
//  693       else
//  694       {
//  695         while(hspi->TxXferCount > 0)
//  696         {
//  697           /* Wait until TXE flag is set to send data */
//  698           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  699           { 
//  700             return HAL_TIMEOUT;
//  701           }
//  702 
//  703           hspi->Instance->DR = *((uint16_t*)hspi->pTxBuffPtr);
//  704           hspi->pTxBuffPtr+=2;
//  705           hspi->TxXferCount--;
//  706 
//  707           /* Enable CRC Transmission */
//  708           if((hspi->TxXferCount == 0) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
//  709           {
//  710             SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  711           }
//  712 
//  713           /* Wait until RXNE flag is set */
//  714           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  715           { 
//  716             return HAL_TIMEOUT;
//  717           }
//  718 
//  719           *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
//  720           hspi->pRxBuffPtr+=2;
//  721           hspi->RxXferCount--;
//  722         }
//  723         /* Receive the last byte */
//  724         if(hspi->Init.Mode == SPI_MODE_SLAVE)
//  725         {
//  726           /* Wait until RXNE flag is set */
//  727           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  728           {
//  729             return HAL_TIMEOUT;
//  730           }
//  731           
//  732           *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
//  733           hspi->pRxBuffPtr+=2;
//  734           hspi->RxXferCount--;
//  735         }
//  736       }
//  737     }
//  738     /* Transmit and Receive data in 8 Bit mode */
//  739     else
//  740     {
//  741       if((hspi->Init.Mode == SPI_MODE_SLAVE) || ((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->TxXferCount == 0x01)))
//  742       {
//  743         hspi->Instance->DR = (*hspi->pTxBuffPtr++);
//  744         hspi->TxXferCount--;
//  745       }
//  746       if(hspi->TxXferCount == 0)
//  747       {
//  748         /* Enable CRC Transmission */
//  749         if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  750         {
//  751           SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  752         }
//  753 
//  754         /* Wait until RXNE flag is set */
//  755         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  756         {
//  757           return HAL_TIMEOUT;
//  758         }
//  759 
//  760         (*hspi->pRxBuffPtr) = hspi->Instance->DR;
//  761         hspi->RxXferCount--;
//  762       }
//  763       else
//  764       {
//  765         while(hspi->TxXferCount > 0)
//  766         {
//  767           /* Wait until TXE flag is set to send data */
//  768           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  769           {
//  770             return HAL_TIMEOUT;
//  771           }
//  772 
//  773           hspi->Instance->DR = (*hspi->pTxBuffPtr++);
//  774           hspi->TxXferCount--;
//  775 
//  776           /* Enable CRC Transmission */
//  777           if((hspi->TxXferCount == 0) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
//  778           {
//  779             SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
//  780           }
//  781 
//  782           /* Wait until RXNE flag is set */
//  783           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  784           {
//  785             return HAL_TIMEOUT;
//  786           }
//  787 
//  788           (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
//  789           hspi->RxXferCount--;
//  790         }
//  791         if(hspi->Init.Mode == SPI_MODE_SLAVE)
//  792         {
//  793           /* Wait until RXNE flag is set */
//  794           if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  795           {
//  796             return HAL_TIMEOUT;
//  797           }
//  798           
//  799           (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
//  800           hspi->RxXferCount--;
//  801         }
//  802       }
//  803     }
//  804 
//  805     /* Read CRC from DR to close CRC calculation process */
//  806     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  807     {
//  808       /* Wait until RXNE flag is set */
//  809       if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  810       {
//  811         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
//  812         return HAL_TIMEOUT;
//  813       }
//  814       /* Read CRC */
//  815       tmpreg = hspi->Instance->DR;
//  816       UNUSED(tmpreg);
//  817     }
//  818 
//  819     /* Wait until Busy flag is reset before disabling SPI */
//  820     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_BSY, SET, Timeout) != HAL_OK)
//  821     {
//  822       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
//  823       return HAL_TIMEOUT;
//  824     }
//  825     
//  826     hspi->State = HAL_SPI_STATE_READY;
//  827 
//  828     /* Check if CRC error occurred */
//  829     if((hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET))
//  830     {
//  831       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
//  832 
//  833       /* Reset CRC Calculation */
//  834       if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  835       {
//  836         SPI_RESET_CRC(hspi);
//  837       }
//  838 
//  839       /* Process Unlocked */
//  840       __HAL_UNLOCK(hspi);
//  841       
//  842       return HAL_ERROR; 
//  843     }
//  844 
//  845     /* Process Unlocked */
//  846     __HAL_UNLOCK(hspi);
//  847 
//  848     return HAL_OK;
//  849   }
//  850   else
//  851   {
//  852     return HAL_BUSY;
//  853   }
//  854 }
//  855 
//  856 /**
//  857   * @brief  Transmit an amount of data in no-blocking mode with Interrupt
//  858   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  859   *                the configuration information for SPI module.
//  860   * @param  pData: pointer to data buffer
//  861   * @param  Size: amount of data to be sent
//  862   * @retval HAL status
//  863   */
//  864 HAL_StatusTypeDef HAL_SPI_Transmit_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
//  865 {
//  866   if(hspi->State == HAL_SPI_STATE_READY)
//  867   {
//  868     if((pData == NULL) || (Size == 0))
//  869     {
//  870       return  HAL_ERROR;
//  871     }
//  872 
//  873     /* Check the parameters */
//  874     assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
//  875 
//  876     /* Process Locked */
//  877     __HAL_LOCK(hspi);
//  878 
//  879     /* Configure communication */
//  880     hspi->State        = HAL_SPI_STATE_BUSY_TX;
//  881     hspi->ErrorCode    = HAL_SPI_ERROR_NONE;
//  882 
//  883     hspi->TxISR = &SPI_TxISR;
//  884     hspi->pTxBuffPtr   = pData;
//  885     hspi->TxXferSize   = Size;
//  886     hspi->TxXferCount  = Size;
//  887 
//  888     /*Init field not used in handle to zero */
//  889     hspi->RxISR = 0;
//  890     hspi->pRxBuffPtr   = NULL;
//  891     hspi->RxXferSize   = 0;
//  892     hspi->RxXferCount  = 0;
//  893 
//  894     /* Configure communication direction : 1Line */
//  895     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
//  896     {
//  897       SPI_1LINE_TX(hspi);
//  898     }
//  899 
//  900     /* Reset CRC Calculation */
//  901     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  902     {
//  903       SPI_RESET_CRC(hspi);
//  904     }
//  905 
//  906     if (hspi->Init.Direction == SPI_DIRECTION_2LINES)
//  907     {
//  908       __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE));
//  909     }else
//  910     {
//  911       /* Enable TXE and ERR interrupt */
//  912       __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_ERR));
//  913     }
//  914     /* Process Unlocked */
//  915     __HAL_UNLOCK(hspi);
//  916 
//  917     /* Check if the SPI is already enabled */ 
//  918     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
//  919     {
//  920       /* Enable SPI peripheral */
//  921       __HAL_SPI_ENABLE(hspi);
//  922     }
//  923 
//  924     return HAL_OK;
//  925   }
//  926   else
//  927   {
//  928     return HAL_BUSY;
//  929   }
//  930 }
//  931 
//  932 /**
//  933   * @brief  Receive an amount of data in no-blocking mode with Interrupt
//  934   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
//  935   *                the configuration information for SPI module.
//  936   * @param  pData: pointer to data buffer
//  937   * @param  Size: amount of data to be sent
//  938   * @retval HAL status
//  939   */
//  940 HAL_StatusTypeDef HAL_SPI_Receive_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
//  941 {
//  942   if(hspi->State == HAL_SPI_STATE_READY)
//  943   {
//  944     if((pData == NULL) || (Size == 0)) 
//  945     {
//  946       return  HAL_ERROR;
//  947     }
//  948 
//  949     /* Process Locked */
//  950     __HAL_LOCK(hspi);
//  951 
//  952     /* Configure communication */
//  953     hspi->State        = HAL_SPI_STATE_BUSY_RX;
//  954     hspi->ErrorCode    = HAL_SPI_ERROR_NONE;
//  955 
//  956     hspi->RxISR = &SPI_RxISR;
//  957     hspi->pRxBuffPtr   = pData;
//  958     hspi->RxXferSize   = Size;
//  959     hspi->RxXferCount  = Size ; 
//  960 
//  961    /*Init field not used in handle to zero */
//  962     hspi->TxISR = 0;
//  963     hspi->pTxBuffPtr   = NULL;
//  964     hspi->TxXferSize   = 0;
//  965     hspi->TxXferCount  = 0;
//  966 
//  967     /* Configure communication direction : 1Line */
//  968     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
//  969     {
//  970        SPI_1LINE_RX(hspi);
//  971     }
//  972     else if((hspi->Init.Direction == SPI_DIRECTION_2LINES) && (hspi->Init.Mode == SPI_MODE_MASTER))
//  973     {
//  974        /* Process Unlocked */
//  975        __HAL_UNLOCK(hspi);
//  976 
//  977        /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line */
//  978        return HAL_SPI_TransmitReceive_IT(hspi, pData, pData, Size);
//  979     }
//  980 
//  981     /* Reset CRC Calculation */
//  982     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
//  983     {
//  984       SPI_RESET_CRC(hspi);
//  985     }
//  986 
//  987     /* Enable TXE and ERR interrupt */
//  988     __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_RXNE | SPI_IT_ERR));
//  989 
//  990     /* Process Unlocked */
//  991     __HAL_UNLOCK(hspi);
//  992 
//  993     /* Note : The SPI must be enabled after unlocking current process 
//  994               to avoid the risk of SPI interrupt handle execution before current
//  995               process unlock */
//  996 
//  997         /* Check if the SPI is already enabled */ 
//  998     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
//  999     {
// 1000       /* Enable SPI peripheral */
// 1001       __HAL_SPI_ENABLE(hspi);
// 1002     }
// 1003 
// 1004     return HAL_OK;
// 1005   }
// 1006   else
// 1007   {
// 1008     return HAL_BUSY; 
// 1009   }
// 1010 }
// 1011 
// 1012 /**
// 1013   * @brief  Transmit and Receive an amount of data in no-blocking mode with Interrupt 
// 1014   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1015   *                the configuration information for SPI module.
// 1016   * @param  pTxData: pointer to transmission data buffer
// 1017   * @param  pRxData: pointer to reception data buffer to be
// 1018   * @param  Size: amount of data to be sent
// 1019   * @retval HAL status
// 1020   */
// 1021 HAL_StatusTypeDef HAL_SPI_TransmitReceive_IT(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size)
// 1022 {
// 1023 
// 1024   if((hspi->State == HAL_SPI_STATE_READY) || \ 
// 1025      ((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (hspi->State == HAL_SPI_STATE_BUSY_RX)))
// 1026   {
// 1027     if((pTxData == NULL ) || (pRxData == NULL ) || (Size == 0)) 
// 1028     {
// 1029       return  HAL_ERROR;
// 1030     }
// 1031 
// 1032     /* Check the parameters */
// 1033     assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
// 1034 
// 1035     /* Process locked */
// 1036     __HAL_LOCK(hspi);
// 1037 
// 1038     /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
// 1039     if(hspi->State != HAL_SPI_STATE_BUSY_RX)
// 1040     {
// 1041       hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
// 1042     }
// 1043 
// 1044     /* Configure communication */
// 1045     hspi->ErrorCode    = HAL_SPI_ERROR_NONE;
// 1046 
// 1047     hspi->TxISR = &SPI_TxISR;
// 1048     hspi->pTxBuffPtr   = pTxData;
// 1049     hspi->TxXferSize   = Size;
// 1050     hspi->TxXferCount  = Size;
// 1051 
// 1052     hspi->RxISR = &SPI_2LinesRxISR;
// 1053     hspi->pRxBuffPtr   = pRxData;
// 1054     hspi->RxXferSize   = Size;
// 1055     hspi->RxXferCount  = Size;
// 1056 
// 1057     /* Reset CRC Calculation */
// 1058     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1059     {
// 1060       SPI_RESET_CRC(hspi);
// 1061     }
// 1062 
// 1063     /* Enable TXE, RXNE and ERR interrupt */
// 1064     __HAL_SPI_ENABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_RXNE | SPI_IT_ERR));
// 1065 
// 1066     /* Process Unlocked */
// 1067     __HAL_UNLOCK(hspi);
// 1068 
// 1069     /* Check if the SPI is already enabled */ 
// 1070     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
// 1071     {
// 1072       /* Enable SPI peripheral */
// 1073       __HAL_SPI_ENABLE(hspi);
// 1074     }
// 1075 
// 1076     return HAL_OK;
// 1077   }
// 1078   else
// 1079   {
// 1080     return HAL_BUSY; 
// 1081   }
// 1082 }
// 1083 
// 1084 /**
// 1085   * @brief  Transmit an amount of data in no-blocking mode with DMA
// 1086   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1087   *                the configuration information for SPI module.
// 1088   * @param  pData: pointer to data buffer
// 1089   * @param  Size: amount of data to be sent
// 1090   * @retval HAL status
// 1091   */
// 1092 HAL_StatusTypeDef HAL_SPI_Transmit_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
// 1093 {
// 1094   if(hspi->State == HAL_SPI_STATE_READY)
// 1095   {
// 1096     if((pData == NULL) || (Size == 0))
// 1097     {
// 1098       return  HAL_ERROR;
// 1099     }
// 1100 
// 1101     /* Check the parameters */
// 1102     assert_param(IS_SPI_DIRECTION_2LINES_OR_1LINE(hspi->Init.Direction));
// 1103 
// 1104     /* Process Locked */
// 1105     __HAL_LOCK(hspi);
// 1106 
// 1107     /* Configure communication */
// 1108     hspi->State       = HAL_SPI_STATE_BUSY_TX;
// 1109     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
// 1110 
// 1111     hspi->pTxBuffPtr  = pData;
// 1112     hspi->TxXferSize  = Size;
// 1113     hspi->TxXferCount = Size;
// 1114 
// 1115     /*Init field not used in handle to zero */
// 1116     hspi->TxISR = 0;
// 1117     hspi->RxISR = 0;
// 1118     hspi->pRxBuffPtr  = NULL;
// 1119     hspi->RxXferSize  = 0;
// 1120     hspi->RxXferCount = 0;
// 1121 
// 1122     /* Configure communication direction : 1Line */
// 1123     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
// 1124     {
// 1125       SPI_1LINE_TX(hspi);
// 1126     }
// 1127 
// 1128     /* Reset CRC Calculation */
// 1129     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1130     {
// 1131       SPI_RESET_CRC(hspi);
// 1132     }
// 1133 
// 1134     /* Set the SPI TxDMA Half transfer complete callback */
// 1135     hspi->hdmatx->XferHalfCpltCallback = SPI_DMAHalfTransmitCplt;
// 1136     
// 1137     /* Set the SPI TxDMA transfer complete callback */
// 1138     hspi->hdmatx->XferCpltCallback = SPI_DMATransmitCplt;
// 1139 
// 1140     /* Set the DMA error callback */
// 1141     hspi->hdmatx->XferErrorCallback = SPI_DMAError;
// 1142 
// 1143     /* Enable the Tx DMA Channel */
// 1144     HAL_DMA_Start_IT(hspi->hdmatx, (uint32_t)hspi->pTxBuffPtr, (uint32_t)&hspi->Instance->DR, hspi->TxXferCount);
// 1145 
// 1146     /* Enable Tx DMA Request */
// 1147     SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1148 
// 1149     /* Process Unlocked */
// 1150     __HAL_UNLOCK(hspi);
// 1151 
// 1152     /* Check if the SPI is already enabled */ 
// 1153     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
// 1154     {
// 1155       /* Enable SPI peripheral */
// 1156       __HAL_SPI_ENABLE(hspi);
// 1157     }
// 1158 
// 1159     return HAL_OK;
// 1160   }
// 1161   else
// 1162   {
// 1163     return HAL_BUSY;
// 1164   }
// 1165 }
// 1166 
// 1167 /**
// 1168   * @brief  Receive an amount of data in no-blocking mode with DMA 
// 1169   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1170   *                the configuration information for SPI module.
// 1171   * @param  pData: pointer to data buffer
// 1172   * @note  When the CRC feature is enabled the pData Length must be Size + 1. 
// 1173   * @param  Size: amount of data to be sent
// 1174   * @retval HAL status
// 1175   */
// 1176 HAL_StatusTypeDef HAL_SPI_Receive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size)
// 1177 {
// 1178   if(hspi->State == HAL_SPI_STATE_READY)
// 1179   {
// 1180     if((pData == NULL) || (Size == 0))
// 1181     {
// 1182       return  HAL_ERROR;
// 1183     }
// 1184 
// 1185     /* Process Locked */
// 1186     __HAL_LOCK(hspi);
// 1187 
// 1188     /* Configure communication */
// 1189     hspi->State       = HAL_SPI_STATE_BUSY_RX;
// 1190     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
// 1191 
// 1192     hspi->pRxBuffPtr  = pData;
// 1193     hspi->RxXferSize  = Size;
// 1194     hspi->RxXferCount = Size;
// 1195 
// 1196     /*Init field not used in handle to zero */
// 1197     hspi->RxISR = 0;
// 1198     hspi->TxISR = 0;
// 1199     hspi->pTxBuffPtr  = NULL;
// 1200     hspi->TxXferSize  = 0;
// 1201     hspi->TxXferCount = 0;
// 1202 
// 1203     /* Configure communication direction : 1Line */
// 1204     if(hspi->Init.Direction == SPI_DIRECTION_1LINE)
// 1205     {
// 1206        SPI_1LINE_RX(hspi);
// 1207     }
// 1208     else if((hspi->Init.Direction == SPI_DIRECTION_2LINES)&&(hspi->Init.Mode == SPI_MODE_MASTER))
// 1209     {
// 1210        /* Process Unlocked */
// 1211        __HAL_UNLOCK(hspi);
// 1212 
// 1213        /* Call transmit-receive function to send Dummy data on Tx line and generate clock on CLK line */
// 1214        return HAL_SPI_TransmitReceive_DMA(hspi, pData, pData, Size);
// 1215     }
// 1216 
// 1217     /* Reset CRC Calculation */
// 1218     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1219     {
// 1220       SPI_RESET_CRC(hspi);
// 1221     }
// 1222 
// 1223     /* Set the SPI RxDMA Half transfer complete callback */
// 1224     hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfReceiveCplt;
// 1225     
// 1226     /* Set the SPI Rx DMA transfer complete callback */
// 1227     hspi->hdmarx->XferCpltCallback = SPI_DMAReceiveCplt;
// 1228 
// 1229     /* Set the DMA error callback */
// 1230     hspi->hdmarx->XferErrorCallback = SPI_DMAError;
// 1231 
// 1232     /* Enable the Rx DMA Channel */
// 1233     HAL_DMA_Start_IT(hspi->hdmarx, (uint32_t)&hspi->Instance->DR, (uint32_t)hspi->pRxBuffPtr, hspi->RxXferCount);
// 1234 
// 1235     /* Enable Rx DMA Request */  
// 1236     SET_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1237 
// 1238     /* Process Unlocked */
// 1239     __HAL_UNLOCK(hspi);
// 1240 
// 1241     /* Check if the SPI is already enabled */ 
// 1242     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
// 1243     {
// 1244       /* Enable SPI peripheral */
// 1245       __HAL_SPI_ENABLE(hspi);
// 1246     }
// 1247 
// 1248     return HAL_OK;
// 1249   }
// 1250   else
// 1251   {
// 1252     return HAL_BUSY;
// 1253   }
// 1254 }
// 1255 
// 1256 /**
// 1257   * @brief  Transmit and Receive an amount of data in no-blocking mode with DMA 
// 1258   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1259   *                the configuration information for SPI module.
// 1260   * @param  pTxData: pointer to transmission data buffer
// 1261   * @param  pRxData: pointer to reception data buffer
// 1262   * @note  When the CRC feature is enabled the pRxData Length must be Size + 1 
// 1263   * @param  Size: amount of data to be sent
// 1264   * @retval HAL status
// 1265   */
// 1266 HAL_StatusTypeDef HAL_SPI_TransmitReceive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size)
// 1267 {
// 1268   if((hspi->State == HAL_SPI_STATE_READY) || \ 
// 1269      ((hspi->Init.Mode == SPI_MODE_MASTER) && (hspi->Init.Direction == SPI_DIRECTION_2LINES) && (hspi->State == HAL_SPI_STATE_BUSY_RX)))
// 1270   {
// 1271     if((pTxData == NULL ) || (pRxData == NULL ) || (Size == 0))
// 1272     {
// 1273       return  HAL_ERROR;
// 1274     }
// 1275 
// 1276     /* Check the parameters */
// 1277     assert_param(IS_SPI_DIRECTION_2LINES(hspi->Init.Direction));
// 1278     
// 1279     /* Process locked */
// 1280     __HAL_LOCK(hspi);
// 1281 
// 1282     /* Don't overwrite in case of HAL_SPI_STATE_BUSY_RX */
// 1283     if(hspi->State != HAL_SPI_STATE_BUSY_RX)
// 1284     {
// 1285       hspi->State = HAL_SPI_STATE_BUSY_TX_RX;
// 1286     }
// 1287 
// 1288     /* Configure communication */
// 1289     hspi->ErrorCode   = HAL_SPI_ERROR_NONE;
// 1290 
// 1291     hspi->pTxBuffPtr  = (uint8_t*)pTxData;
// 1292     hspi->TxXferSize  = Size;
// 1293     hspi->TxXferCount = Size;
// 1294 
// 1295     hspi->pRxBuffPtr  = (uint8_t*)pRxData;
// 1296     hspi->RxXferSize  = Size;
// 1297     hspi->RxXferCount = Size;
// 1298 
// 1299     /*Init field not used in handle to zero */
// 1300     hspi->RxISR = 0;
// 1301     hspi->TxISR = 0;
// 1302 
// 1303     /* Reset CRC Calculation */
// 1304     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1305     {
// 1306       SPI_RESET_CRC(hspi);
// 1307     }
// 1308 
// 1309     /* Check if we are in Rx only or in Rx/Tx Mode and configure the DMA transfer complete callback */
// 1310     if(hspi->State == HAL_SPI_STATE_BUSY_RX)
// 1311     {
// 1312       /* Set the SPI Rx DMA Half transfer complete callback */
// 1313       hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfReceiveCplt;
// 1314       
// 1315       hspi->hdmarx->XferCpltCallback = SPI_DMAReceiveCplt;
// 1316     }
// 1317     else
// 1318     {
// 1319       /* Set the SPI Tx/Rx DMA Half transfer complete callback */
// 1320       hspi->hdmarx->XferHalfCpltCallback = SPI_DMAHalfTransmitReceiveCplt;
// 1321   
// 1322       hspi->hdmarx->XferCpltCallback = SPI_DMATransmitReceiveCplt;
// 1323     }
// 1324 
// 1325     /* Set the DMA error callback */
// 1326     hspi->hdmarx->XferErrorCallback = SPI_DMAError;
// 1327 
// 1328     /* Enable the Rx DMA Channel */
// 1329     HAL_DMA_Start_IT(hspi->hdmarx, (uint32_t)&hspi->Instance->DR, (uint32_t)hspi->pRxBuffPtr, hspi->RxXferCount);
// 1330 
// 1331     /* Enable Rx DMA Request */  
// 1332     SET_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1333 
// 1334     /* Set the SPI Tx DMA transfer complete callback as NULL because the communication closing
// 1335     is performed in DMA reception complete callback  */
// 1336     if(hspi->State == HAL_SPI_STATE_BUSY_TX_RX)
// 1337     {
// 1338       /* Set the DMA error callback */
// 1339       hspi->hdmatx->XferErrorCallback = SPI_DMAError;
// 1340     }
// 1341     else
// 1342     {
// 1343       hspi->hdmatx->XferErrorCallback = NULL;
// 1344     }
// 1345     
// 1346     /* Enable the Tx DMA Channel */
// 1347     HAL_DMA_Start_IT(hspi->hdmatx, (uint32_t)hspi->pTxBuffPtr, (uint32_t)&hspi->Instance->DR, hspi->TxXferCount);
// 1348 
// 1349     /* Check if the SPI is already enabled */ 
// 1350     if((hspi->Instance->CR1 &SPI_CR1_SPE) != SPI_CR1_SPE)
// 1351     {
// 1352       /* Enable SPI peripheral */
// 1353       __HAL_SPI_ENABLE(hspi);
// 1354     }
// 1355 
// 1356     /* Enable Tx DMA Request */  
// 1357     SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1358 
// 1359     /* Process Unlocked */
// 1360     __HAL_UNLOCK(hspi);
// 1361 
// 1362     return HAL_OK;
// 1363   }
// 1364   else
// 1365   {
// 1366     return HAL_BUSY;
// 1367   }
// 1368 }
// 1369 
// 1370 
// 1371 /**
// 1372   * @brief Pauses the DMA Transfer.
// 1373   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1374   *                the configuration information for the specified SPI module.
// 1375   * @retval HAL status
// 1376   */
// 1377 HAL_StatusTypeDef HAL_SPI_DMAPause(SPI_HandleTypeDef *hspi)
// 1378 {
// 1379   /* Process Locked */
// 1380   __HAL_LOCK(hspi);
// 1381   
// 1382   /* Disable the SPI DMA Tx & Rx requests */
// 1383   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1384   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1385   
// 1386   /* Process Unlocked */
// 1387   __HAL_UNLOCK(hspi);
// 1388   
// 1389   return HAL_OK; 
// 1390 }
// 1391 
// 1392 /**
// 1393   * @brief Resumes the DMA Transfer.
// 1394   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1395   *                the configuration information for the specified SPI module.
// 1396   * @retval HAL status
// 1397   */
// 1398 HAL_StatusTypeDef HAL_SPI_DMAResume(SPI_HandleTypeDef *hspi)
// 1399 {
// 1400   /* Process Locked */
// 1401   __HAL_LOCK(hspi);
// 1402   
// 1403   /* Enable the SPI DMA Tx & Rx requests */
// 1404   SET_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1405   SET_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1406   
// 1407   /* Process Unlocked */
// 1408   __HAL_UNLOCK(hspi);
// 1409   
// 1410   return HAL_OK;
// 1411 }
// 1412 
// 1413 /**
// 1414   * @brief Stops the DMA Transfer.
// 1415   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1416   *                the configuration information for the specified UART module.
// 1417   * @retval HAL status
// 1418   */
// 1419 HAL_StatusTypeDef HAL_SPI_DMAStop(SPI_HandleTypeDef *hspi)
// 1420 {
// 1421   /* The Lock is not implemented on this API to allow the user application
// 1422      to call the HAL SPI API under callbacks HAL_SPI_TxCpltCallback() or HAL_SPI_RxCpltCallback() or HAL_SPI_TxRxCpltCallback():
// 1423      when calling HAL_DMA_Abort() API the DMA TX/RX Transfer complete interrupt is generated
// 1424      and the correspond call back is executed HAL_SPI_TxCpltCallback() or HAL_SPI_RxCpltCallback() or HAL_SPI_TxRxCpltCallback()
// 1425      */
// 1426   
// 1427   /* Abort the SPI DMA tx Channel */
// 1428   if(hspi->hdmatx != NULL)
// 1429   {
// 1430     HAL_DMA_Abort(hspi->hdmatx);
// 1431   }
// 1432   /* Abort the SPI DMA rx Channel */
// 1433   if(hspi->hdmarx != NULL)
// 1434   {
// 1435     HAL_DMA_Abort(hspi->hdmarx);
// 1436   }
// 1437   
// 1438   /* Disable the SPI DMA Tx & Rx requests */
// 1439   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1440   CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1441   
// 1442   hspi->State = HAL_SPI_STATE_READY;
// 1443   
// 1444   return HAL_OK;
// 1445 }
// 1446 
// 1447 /**
// 1448   * @brief  This function handles SPI interrupt request.
// 1449   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1450   *                the configuration information for SPI module.
// 1451   * @retval HAL status
// 1452   */
// 1453 void HAL_SPI_IRQHandler(SPI_HandleTypeDef *hspi)
// 1454 {
// 1455   /* SPI in mode Receiver and Overrun not occurred ---------------------------*/
// 1456   if((__HAL_SPI_GET_IT_SOURCE(hspi, SPI_IT_RXNE) != RESET) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_RXNE) != RESET) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_OVR) == RESET))
// 1457   {
// 1458     hspi->RxISR(hspi);
// 1459     return;
// 1460   }
// 1461 
// 1462   /* SPI in mode Tramitter ---------------------------------------------------*/
// 1463   if((__HAL_SPI_GET_IT_SOURCE(hspi, SPI_IT_TXE) != RESET) && (__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_TXE) != RESET))
// 1464   {
// 1465     hspi->TxISR(hspi);
// 1466     return;
// 1467   }
// 1468 
// 1469   if(__HAL_SPI_GET_IT_SOURCE(hspi, SPI_IT_ERR) != RESET)
// 1470   {
// 1471     /* SPI CRC error interrupt occurred ---------------------------------------*/
// 1472     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
// 1473     {
// 1474       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
// 1475       __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
// 1476     }
// 1477     /* SPI Mode Fault error interrupt occurred --------------------------------*/
// 1478     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_MODF) != RESET)
// 1479     {
// 1480       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_MODF);
// 1481       __HAL_SPI_CLEAR_MODFFLAG(hspi);
// 1482     }
// 1483     
// 1484     /* SPI Overrun error interrupt occurred -----------------------------------*/
// 1485     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_OVR) != RESET)
// 1486     {
// 1487       if(hspi->State != HAL_SPI_STATE_BUSY_TX)
// 1488       {
// 1489         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_OVR);
// 1490         __HAL_SPI_CLEAR_OVRFLAG(hspi);      
// 1491       }
// 1492     }
// 1493 
// 1494     /* SPI Frame error interrupt occurred -------------------------------------*/
// 1495     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_FRE) != RESET)
// 1496     {
// 1497       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FRE);
// 1498       __HAL_SPI_CLEAR_FREFLAG(hspi);
// 1499     }
// 1500 
// 1501     /* Call the Error call Back in case of Errors */
// 1502     if(hspi->ErrorCode!=HAL_SPI_ERROR_NONE)
// 1503     {
// 1504       __HAL_SPI_DISABLE_IT(hspi, SPI_IT_RXNE | SPI_IT_TXE | SPI_IT_ERR);
// 1505       hspi->State = HAL_SPI_STATE_READY;
// 1506       HAL_SPI_ErrorCallback(hspi);
// 1507     }
// 1508   }
// 1509 }
// 1510 
// 1511 /**
// 1512   * @brief Tx Transfer completed callbacks
// 1513   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1514   *                the configuration information for SPI module.
// 1515   * @retval None
// 1516   */
// 1517 __weak void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
// 1518 {
// 1519   /* Prevent unused argument(s) compilation warning */
// 1520   UNUSED(hspi);
// 1521 
// 1522   /* NOTE : This function Should not be modified, when the callback is needed,
// 1523             the HAL_SPI_TxCpltCallback could be implenetd in the user file
// 1524    */
// 1525 }
// 1526 
// 1527 /**
// 1528   * @brief Rx Transfer completed callbacks
// 1529   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1530   *                the configuration information for SPI module.
// 1531   * @retval None
// 1532   */
// 1533 __weak void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
// 1534 {
// 1535   /* Prevent unused argument(s) compilation warning */
// 1536   UNUSED(hspi);
// 1537 
// 1538   /* NOTE : This function Should not be modified, when the callback is needed,
// 1539             the HAL_SPI_RxCpltCallback() could be implenetd in the user file
// 1540    */
// 1541 }
// 1542 
// 1543 /**
// 1544   * @brief Tx and Rx Transfer completed callbacks
// 1545   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1546   *                the configuration information for SPI module.
// 1547   * @retval None
// 1548   */
// 1549 __weak void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi)
// 1550 {
// 1551   /* Prevent unused argument(s) compilation warning */
// 1552   UNUSED(hspi);
// 1553 
// 1554   /* NOTE : This function Should not be modified, when the callback is needed,
// 1555             the HAL_SPI_TxRxCpltCallback() could be implenetd in the user file
// 1556    */
// 1557 }
// 1558 
// 1559 /**
// 1560   * @brief Tx Half Transfer completed callbacks
// 1561   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1562   *                the configuration information for SPI module.
// 1563   * @retval None
// 1564   */
// 1565 __weak void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi)
// 1566 {
// 1567   /* Prevent unused argument(s) compilation warning */
// 1568   UNUSED(hspi);
// 1569 
// 1570   /* NOTE : This function Should not be modified, when the callback is needed,
// 1571             the HAL_SPI_TxHalfCpltCallback could be implenetd in the user file
// 1572    */
// 1573 }
// 1574 
// 1575 /**
// 1576   * @brief Rx Half Transfer completed callbacks
// 1577   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1578   *                the configuration information for SPI module.
// 1579   * @retval None
// 1580   */
// 1581 __weak void HAL_SPI_RxHalfCpltCallback(SPI_HandleTypeDef *hspi)
// 1582 {
// 1583   /* Prevent unused argument(s) compilation warning */
// 1584   UNUSED(hspi);
// 1585 
// 1586   /* NOTE : This function Should not be modified, when the callback is needed,
// 1587             the HAL_SPI_RxHalfCpltCallback() could be implenetd in the user file
// 1588    */
// 1589 }
// 1590 
// 1591 /**
// 1592   * @brief Tx and Rx Transfer completed callbacks
// 1593   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1594   *                the configuration information for SPI module.
// 1595   * @retval None
// 1596   */
// 1597 __weak void HAL_SPI_TxRxHalfCpltCallback(SPI_HandleTypeDef *hspi)
// 1598 {
// 1599   /* Prevent unused argument(s) compilation warning */
// 1600   UNUSED(hspi);
// 1601 
// 1602   /* NOTE : This function Should not be modified, when the callback is needed,
// 1603             the HAL_SPI_TxRxHalfCpltCallback() could be implenetd in the user file
// 1604    */
// 1605 }
// 1606 
// 1607 /**
// 1608   * @brief SPI error callbacks
// 1609   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1610   *                the configuration information for SPI module.
// 1611   * @retval None
// 1612   */
// 1613  __weak void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi)
// 1614 {
// 1615   /* Prevent unused argument(s) compilation warning */
// 1616   UNUSED(hspi);
// 1617 
// 1618   /* NOTE : - This function Should not be modified, when the callback is needed,
// 1619             the HAL_SPI_ErrorCallback() could be implenetd in the user file.
// 1620             - The ErrorCode parameter in the hspi handle is updated by the SPI processes
// 1621             and user can use HAL_SPI_GetError() API to check the latest error occurred.
// 1622    */
// 1623 }
// 1624 
// 1625 /**
// 1626   * @}
// 1627   */
// 1628 
// 1629 /** @defgroup SPI_Exported_Functions_Group3 Peripheral State and Errors functions 
// 1630   *  @brief   SPI control functions 
// 1631   *
// 1632 @verbatim
// 1633  ===============================================================================
// 1634                       ##### Peripheral State and Errors functions #####
// 1635  ===============================================================================  
// 1636     [..]
// 1637     This subsection provides a set of functions allowing to control the SPI.
// 1638      (+) HAL_SPI_GetState() API can be helpful to check in run-time the state of the SPI peripheral
// 1639      (+) HAL_SPI_GetError() check in run-time Errors occurring during communication
// 1640 @endverbatim
// 1641   * @{
// 1642   */
// 1643 
// 1644 /**
// 1645   * @brief  Return the SPI state
// 1646   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1647   *                the configuration information for SPI module.
// 1648   * @retval HAL state
// 1649   */
// 1650 HAL_SPI_StateTypeDef HAL_SPI_GetState(SPI_HandleTypeDef *hspi)
// 1651 {
// 1652   return hspi->State;
// 1653 }
// 1654 
// 1655 /**
// 1656   * @brief  Return the SPI error code
// 1657   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1658   *                the configuration information for SPI module.
// 1659   * @retval SPI Error Code
// 1660   */
// 1661 uint32_t HAL_SPI_GetError(SPI_HandleTypeDef *hspi)
// 1662 {
// 1663   return hspi->ErrorCode;
// 1664 }
// 1665 
// 1666 /**
// 1667   * @}
// 1668   */
// 1669   
// 1670 /**
// 1671     * @}
// 1672     */
// 1673 
// 1674 
// 1675 
// 1676 /** @addtogroup SPI_Private_Functions
// 1677     * @{
// 1678     */
// 1679 
// 1680 
// 1681   /**
// 1682   * @brief  Interrupt Handler to close Tx transfer 
// 1683   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1684   *                the configuration information for SPI module.
// 1685   * @retval void
// 1686   */
// 1687 static void SPI_TxCloseIRQHandler(struct __SPI_HandleTypeDef *hspi)
// 1688 {
// 1689   /* Wait until TXE flag is set to send data */
// 1690   if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1691   {
// 1692     SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1693   }
// 1694 
// 1695   /* Disable TXE interrupt */
// 1696   __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_TXE ));
// 1697 
// 1698   /* Disable ERR interrupt if Receive process is finished */
// 1699   if(__HAL_SPI_GET_IT_SOURCE(hspi, SPI_IT_RXNE) == RESET)
// 1700   {
// 1701     __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_ERR));
// 1702 
// 1703     /* Wait until Busy flag is reset before disabling SPI */
// 1704     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_BSY, SET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1705     {
// 1706       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1707     }
// 1708 
// 1709     /* Clear OVERUN flag in 2 Lines communication mode because received is not read */
// 1710     if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
// 1711     {
// 1712       __HAL_SPI_CLEAR_OVRFLAG(hspi);
// 1713     }
// 1714     
// 1715     /* Check if Errors has been detected during transfer */
// 1716     if(hspi->ErrorCode ==  HAL_SPI_ERROR_NONE)
// 1717     {
// 1718       /* Check if we are in Tx or in Rx/Tx Mode */
// 1719       if(hspi->State == HAL_SPI_STATE_BUSY_TX_RX)
// 1720       {
// 1721         /* Set state to READY before run the Callback Complete */
// 1722         hspi->State = HAL_SPI_STATE_READY;
// 1723         HAL_SPI_TxRxCpltCallback(hspi);
// 1724       }
// 1725       else
// 1726       {
// 1727         /* Set state to READY before run the Callback Complete */
// 1728         hspi->State = HAL_SPI_STATE_READY;
// 1729         HAL_SPI_TxCpltCallback(hspi);
// 1730       }
// 1731     }
// 1732     else
// 1733     {
// 1734       /* Set state to READY before run the Callback Complete */
// 1735       hspi->State = HAL_SPI_STATE_READY;
// 1736       /* Call Error call back in case of Error */
// 1737       HAL_SPI_ErrorCallback(hspi);
// 1738     }
// 1739   }
// 1740 }
// 1741 
// 1742 /**
// 1743   * @brief  Interrupt Handler to transmit amount of data in no-blocking mode 
// 1744   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1745   *                the configuration information for SPI module.
// 1746   * @retval void
// 1747   */
// 1748 static void SPI_TxISR(struct __SPI_HandleTypeDef *hspi)
// 1749 {
// 1750   /* Transmit data in 8 Bit mode */
// 1751   if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
// 1752   {
// 1753     hspi->Instance->DR = (*hspi->pTxBuffPtr++);
// 1754   }
// 1755   /* Transmit data in 16 Bit mode */
// 1756   else
// 1757   {
// 1758     hspi->Instance->DR = *((uint16_t*)hspi->pTxBuffPtr);
// 1759     hspi->pTxBuffPtr+=2;
// 1760   }
// 1761   hspi->TxXferCount--;
// 1762 
// 1763   if(hspi->TxXferCount == 0)
// 1764   {
// 1765     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1766     {
// 1767       /* calculate and transfer CRC on Tx line */
// 1768       SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
// 1769     }
// 1770     SPI_TxCloseIRQHandler(hspi);
// 1771   }
// 1772 }
// 1773 
// 1774 /**
// 1775   * @brief  Interrupt Handler to close Rx transfer 
// 1776   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1777   *                the configuration information for SPI module.
// 1778   * @retval void
// 1779   */
// 1780 static void SPI_RxCloseIRQHandler(struct __SPI_HandleTypeDef *hspi)
// 1781 {
// 1782   __IO uint16_t tmpreg = 0;
// 1783 
// 1784   if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1785   {
// 1786     /* Wait until RXNE flag is set to send data */
// 1787     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1788     {
// 1789       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1790     }
// 1791 
// 1792     /* Read CRC to reset RXNE flag */
// 1793     tmpreg = hspi->Instance->DR;
// 1794     UNUSED(tmpreg);
// 1795 
// 1796     /* Wait until RXNE flag is set to send data */
// 1797     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, SET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1798     {
// 1799       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1800     }
// 1801 
// 1802     /* Check if CRC error occurred */
// 1803     if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
// 1804     {
// 1805       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
// 1806 
// 1807       /* Reset CRC Calculation */
// 1808       SPI_RESET_CRC(hspi);
// 1809     }
// 1810   }
// 1811 
// 1812   /* Disable RXNE interrupt */
// 1813   __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_RXNE));
// 1814 
// 1815   /* if Transmit process is finished */
// 1816   if(__HAL_SPI_GET_IT_SOURCE(hspi, SPI_IT_TXE) == RESET)
// 1817   {
// 1818     /* Disable ERR interrupt */
// 1819     __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_ERR));
// 1820 
// 1821     if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi->Init.Direction == SPI_DIRECTION_2LINES_RXONLY)))
// 1822     {
// 1823       /* Disable SPI peripheral */
// 1824       __HAL_SPI_DISABLE(hspi);
// 1825     }
// 1826     
// 1827     /* Check if Errors has been detected during transfer */
// 1828     if(hspi->ErrorCode ==  HAL_SPI_ERROR_NONE)
// 1829     {
// 1830       /* Check if we are in Rx or in Rx/Tx Mode */
// 1831       if(hspi->State == HAL_SPI_STATE_BUSY_TX_RX)
// 1832       {
// 1833         /* Set state to READY before run the Callback Complete */
// 1834         hspi->State = HAL_SPI_STATE_READY;
// 1835         HAL_SPI_TxRxCpltCallback(hspi);
// 1836       }
// 1837       else
// 1838       {
// 1839         /* Set state to READY before run the Callback Complete */
// 1840         hspi->State = HAL_SPI_STATE_READY;
// 1841         HAL_SPI_RxCpltCallback(hspi);
// 1842       }
// 1843     }
// 1844     else
// 1845     {
// 1846       /* Set state to READY before run the Callback Complete */
// 1847       hspi->State = HAL_SPI_STATE_READY;
// 1848       /* Call Error call back in case of Error */
// 1849       HAL_SPI_ErrorCallback(hspi);
// 1850     }
// 1851   }
// 1852 }
// 1853 
// 1854 /**
// 1855   * @brief  Interrupt Handler to receive amount of data in 2Lines mode 
// 1856   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1857   *                the configuration information for SPI module.
// 1858   * @retval void
// 1859   */
// 1860 static void SPI_2LinesRxISR(struct __SPI_HandleTypeDef *hspi)
// 1861 {
// 1862   /* Receive data in 8 Bit mode */
// 1863   if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
// 1864   {
// 1865     (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
// 1866   }
// 1867   /* Receive data in 16 Bit mode */
// 1868   else
// 1869   {
// 1870     *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
// 1871     hspi->pRxBuffPtr+=2;
// 1872   }
// 1873   hspi->RxXferCount--;
// 1874 
// 1875   if(hspi->RxXferCount==0)
// 1876   {
// 1877     SPI_RxCloseIRQHandler(hspi);
// 1878   }
// 1879 }
// 1880 
// 1881 /**
// 1882   * @brief  Interrupt Handler to receive amount of data in no-blocking mode 
// 1883   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 1884   *                the configuration information for SPI module.
// 1885   * @retval void
// 1886   */
// 1887 static void SPI_RxISR(struct __SPI_HandleTypeDef *hspi)
// 1888 {
// 1889   /* Receive data in 8 Bit mode */
// 1890   if(hspi->Init.DataSize == SPI_DATASIZE_8BIT)
// 1891   {
// 1892     (*hspi->pRxBuffPtr++) = hspi->Instance->DR;
// 1893   }
// 1894   /* Receive data in 16 Bit mode */
// 1895   else
// 1896   {
// 1897     *((uint16_t*)hspi->pRxBuffPtr) = hspi->Instance->DR;
// 1898     hspi->pRxBuffPtr+=2;
// 1899   }
// 1900     hspi->RxXferCount--;
// 1901 
// 1902   /* Enable CRC Transmission */
// 1903   if((hspi->RxXferCount == 1) && (hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE))
// 1904   {
// 1905     /* Set CRC Next to calculate CRC on Rx side */
// 1906     SET_BIT(hspi->Instance->CR1, SPI_CR1_CRCNEXT);
// 1907   }
// 1908 
// 1909   if(hspi->RxXferCount == 0)
// 1910   {
// 1911     SPI_RxCloseIRQHandler(hspi);
// 1912   }
// 1913 }
// 1914 
// 1915 /**
// 1916   * @brief DMA SPI transmit process complete callback 
// 1917   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1918   *                the configuration information for the specified DMA module.
// 1919   * @retval None
// 1920   */
// 1921 static void SPI_DMATransmitCplt(struct __DMA_HandleTypeDef *hdma)
// 1922 {
// 1923   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1924 
// 1925   /* DMA Normal Mode */
// 1926   if((hdma->Instance->CCR & DMA_CIRCULAR) == 0)
// 1927   {
// 1928     /* Wait until TXE flag is set to send data */
// 1929     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1930     {
// 1931       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1932     }
// 1933 
// 1934     /* Disable Tx DMA Request */
// 1935     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1936 
// 1937     /* Wait until Busy flag is reset before disabling SPI */
// 1938     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_BSY, SET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1939     {
// 1940       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1941     }
// 1942 
// 1943     hspi->TxXferCount = 0;
// 1944     hspi->State = HAL_SPI_STATE_READY;
// 1945   }
// 1946 
// 1947   /* Clear OVERUN flag in 2 Lines communication mode because received is not read */
// 1948   if(hspi->Init.Direction == SPI_DIRECTION_2LINES)
// 1949   {
// 1950     __HAL_SPI_CLEAR_OVRFLAG(hspi);
// 1951   }
// 1952 
// 1953   /* Check if Errors has been detected during transfer */
// 1954   if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
// 1955   {
// 1956     HAL_SPI_ErrorCallback(hspi);
// 1957   }
// 1958   else
// 1959   {
// 1960     HAL_SPI_TxCpltCallback(hspi);
// 1961   }
// 1962 }
// 1963 
// 1964 /**
// 1965   * @brief DMA SPI receive process complete callback 
// 1966   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1967   *                the configuration information for the specified DMA module.
// 1968   * @retval None
// 1969   */
// 1970 static void SPI_DMAReceiveCplt(struct __DMA_HandleTypeDef *hdma)
// 1971 {
// 1972   __IO uint16_t tmpreg = 0;
// 1973 
// 1974   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 1975 
// 1976   /* DMA Normal mode */
// 1977   if((hdma->Instance->CCR & DMA_CIRCULAR) == 0)
// 1978   {
// 1979     if((hspi->Init.Mode == SPI_MODE_MASTER)&&((hspi->Init.Direction == SPI_DIRECTION_1LINE)||(hspi->Init.Direction == SPI_DIRECTION_2LINES_RXONLY)))
// 1980     {
// 1981       /* Disable SPI peripheral */
// 1982       __HAL_SPI_DISABLE(hspi);
// 1983     }
// 1984 
// 1985     /* Disable Rx DMA Request */
// 1986     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 1987 
// 1988     /* Disable Tx DMA Request (done by default to handle the case Master RX direction 2 lines) */
// 1989     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 1990 
// 1991     /* Reset CRC Calculation */
// 1992     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 1993     {
// 1994       /* Wait until RXNE flag is set to send data */
// 1995       if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 1996       {
// 1997         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 1998       }
// 1999 
// 2000       /* Read CRC */
// 2001       tmpreg = hspi->Instance->DR;
// 2002       UNUSED(tmpreg);
// 2003 
// 2004       /* Wait until RXNE flag is set */
// 2005       if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, SET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 2006       {
// 2007         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 2008       }
// 2009 
// 2010       /* Check if CRC error occurred */
// 2011       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
// 2012       {
// 2013         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
// 2014         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
// 2015       }
// 2016     }
// 2017 
// 2018     hspi->RxXferCount = 0;
// 2019     hspi->State = HAL_SPI_STATE_READY;
// 2020 
// 2021     /* Check if Errors has been detected during transfer */
// 2022     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
// 2023     {
// 2024       HAL_SPI_ErrorCallback(hspi);
// 2025     }
// 2026     else
// 2027     {
// 2028       HAL_SPI_RxCpltCallback(hspi);
// 2029     }
// 2030   }
// 2031   else
// 2032   {
// 2033     HAL_SPI_RxCpltCallback(hspi);
// 2034   }
// 2035 }
// 2036 
// 2037 /**
// 2038   * @brief DMA SPI transmit receive process complete callback 
// 2039   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2040   *                the configuration information for the specified DMA module.
// 2041   * @retval None
// 2042   */
// 2043 static void SPI_DMATransmitReceiveCplt(struct __DMA_HandleTypeDef *hdma)   
// 2044 {
// 2045   __IO uint16_t tmpreg = 0;
// 2046 
// 2047   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2048 
// 2049   if((hdma->Instance->CCR & DMA_CIRCULAR) == 0)
// 2050   {
// 2051     /* Reset CRC Calculation */
// 2052     if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 2053     {
// 2054       /* Check if CRC is done on going (RXNE flag set) */
// 2055       if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, SET, SPI_TIMEOUT_VALUE) == HAL_OK)
// 2056       {
// 2057         /* Wait until RXNE flag is set to send data */
// 2058         if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_RXNE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 2059         {
// 2060           SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 2061         }
// 2062       }
// 2063       /* Read CRC */
// 2064       tmpreg = hspi->Instance->DR;
// 2065       UNUSED(tmpreg);
// 2066 
// 2067       /* Check if CRC error occurred */
// 2068       if(__HAL_SPI_GET_FLAG(hspi, SPI_FLAG_CRCERR) != RESET)
// 2069       {
// 2070         SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_CRC);
// 2071         __HAL_SPI_CLEAR_CRCERRFLAG(hspi);
// 2072       }
// 2073     }
// 2074 
// 2075     /* Wait until TXE flag is set to send data */
// 2076     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_TXE, RESET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 2077     {
// 2078       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 2079     }
// 2080   
// 2081     /* Disable Tx DMA Request */
// 2082     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_TXDMAEN);
// 2083 
// 2084     /* Wait until Busy flag is reset before disabling SPI */
// 2085     if(SPI_WaitOnFlagUntilTimeout(hspi, SPI_FLAG_BSY, SET, SPI_TIMEOUT_VALUE) != HAL_OK)
// 2086     {
// 2087       SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_FLAG);
// 2088     }
// 2089 
// 2090     /* Disable Rx DMA Request */
// 2091     CLEAR_BIT(hspi->Instance->CR2, SPI_CR2_RXDMAEN);
// 2092 
// 2093     hspi->TxXferCount = 0;
// 2094     hspi->RxXferCount = 0;
// 2095 
// 2096     hspi->State = HAL_SPI_STATE_READY;
// 2097 
// 2098     /* Check if Errors has been detected during transfer */
// 2099     if(hspi->ErrorCode != HAL_SPI_ERROR_NONE)
// 2100     {
// 2101       HAL_SPI_ErrorCallback(hspi);
// 2102     }
// 2103     else
// 2104     {
// 2105       HAL_SPI_TxRxCpltCallback(hspi);
// 2106     }
// 2107   }
// 2108   else
// 2109   {
// 2110     HAL_SPI_TxRxCpltCallback(hspi);
// 2111   }
// 2112 }
// 2113 
// 2114 /**
// 2115   * @brief DMA SPI half transmit process complete callback 
// 2116   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2117   *                the configuration information for the specified DMA module.
// 2118   * @retval None
// 2119   */
// 2120 static void SPI_DMAHalfTransmitCplt(struct __DMA_HandleTypeDef *hdma)
// 2121 {
// 2122   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2123 
// 2124   HAL_SPI_TxHalfCpltCallback(hspi);
// 2125 }
// 2126 
// 2127 /**
// 2128   * @brief DMA SPI half receive process complete callback 
// 2129   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2130   *                the configuration information for the specified DMA module.
// 2131   * @retval None
// 2132   */
// 2133 static void SPI_DMAHalfReceiveCplt(struct __DMA_HandleTypeDef *hdma)
// 2134 {
// 2135   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2136 
// 2137   HAL_SPI_RxHalfCpltCallback(hspi);
// 2138 }
// 2139 
// 2140 /**
// 2141   * @brief DMA SPI Half transmit receive process complete callback 
// 2142   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2143   *                the configuration information for the specified DMA module.
// 2144   * @retval None
// 2145   */
// 2146 static void SPI_DMAHalfTransmitReceiveCplt(struct __DMA_HandleTypeDef *hdma)   
// 2147 {
// 2148   SPI_HandleTypeDef* hspi = ( SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2149 
// 2150   HAL_SPI_TxRxHalfCpltCallback(hspi);
// 2151 }
// 2152 
// 2153 /**
// 2154   * @brief DMA SPI communication error callback 
// 2155   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 2156   *                the configuration information for the specified DMA module.
// 2157   * @retval None
// 2158   */
// 2159 static void SPI_DMAError(struct __DMA_HandleTypeDef *hdma)
// 2160 {
// 2161   SPI_HandleTypeDef* hspi = (SPI_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
// 2162   hspi->TxXferCount = 0;
// 2163   hspi->RxXferCount = 0;
// 2164   hspi->State= HAL_SPI_STATE_READY;
// 2165   SET_BIT(hspi->ErrorCode, HAL_SPI_ERROR_DMA);
// 2166   HAL_SPI_ErrorCallback(hspi);
// 2167 }
// 2168 
// 2169 /**
// 2170   * @brief  This function handles SPI Communication Timeout.
// 2171   * @param  hspi: pointer to a SPI_HandleTypeDef structure that contains
// 2172   *                the configuration information for SPI module.
// 2173   * @param  Flag: SPI flag to check
// 2174   * @param  Status: Flag status to check: RESET or set
// 2175   * @param  Timeout: Timeout duration
// 2176   * @retval HAL status
// 2177   */
// 2178 static HAL_StatusTypeDef SPI_WaitOnFlagUntilTimeout(struct __SPI_HandleTypeDef *hspi, uint32_t Flag, FlagStatus Status, uint32_t Timeout)  
// 2179 {
// 2180   uint32_t tickstart = 0;
// 2181 
// 2182   /* Get tick */ 
// 2183   tickstart = HAL_GetTick();
// 2184 
// 2185   /* Wait until flag is set */
// 2186   if(Status == RESET)
// 2187   {
// 2188     while(__HAL_SPI_GET_FLAG(hspi, Flag) == RESET)
// 2189     {
// 2190       if(Timeout != HAL_MAX_DELAY)
// 2191       {
// 2192         if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
// 2193         {
// 2194           /* Disable the SPI and reset the CRC: the CRC value should be cleared
// 2195              on both master and slave sides in order to resynchronize the master
// 2196              and slave for their respective CRC calculation */
// 2197 
// 2198           /* Disable TXE, RXNE and ERR interrupts for the interrupt process */
// 2199           __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_RXNE | SPI_IT_ERR));
// 2200 
// 2201           /* Disable SPI peripheral */
// 2202           __HAL_SPI_DISABLE(hspi);
// 2203 
// 2204           /* Reset CRC Calculation */
// 2205           if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 2206           {
// 2207             SPI_RESET_CRC(hspi);
// 2208           }
// 2209 
// 2210           hspi->State= HAL_SPI_STATE_READY;
// 2211 
// 2212           /* Process Unlocked */
// 2213           __HAL_UNLOCK(hspi);
// 2214 
// 2215           return HAL_TIMEOUT;
// 2216         }
// 2217       }
// 2218     }
// 2219   }
// 2220   else
// 2221   {
// 2222     while(__HAL_SPI_GET_FLAG(hspi, Flag) != RESET)
// 2223     {
// 2224       if(Timeout != HAL_MAX_DELAY)
// 2225       {
// 2226         if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
// 2227         {
// 2228           /* Disable the SPI and reset the CRC: the CRC value should be cleared
// 2229              on both master and slave sides in order to resynchronize the master
// 2230              and slave for their respective CRC calculation */
// 2231 
// 2232           /* Disable TXE, RXNE and ERR interrupts for the interrupt process */
// 2233           __HAL_SPI_DISABLE_IT(hspi, (SPI_IT_TXE | SPI_IT_RXNE | SPI_IT_ERR));
// 2234 
// 2235           /* Disable SPI peripheral */
// 2236           __HAL_SPI_DISABLE(hspi);
// 2237 
// 2238           /* Reset CRC Calculation */
// 2239           if(hspi->Init.CRCCalculation == SPI_CRCCALCULATION_ENABLE)
// 2240           {
// 2241             SPI_RESET_CRC(hspi);
// 2242           }
// 2243 
// 2244           hspi->State= HAL_SPI_STATE_READY;
// 2245 
// 2246           /* Process Unlocked */
// 2247           __HAL_UNLOCK(hspi);
// 2248 
// 2249           return HAL_TIMEOUT;
// 2250         }
// 2251       }
// 2252     }
// 2253   }
// 2254   return HAL_OK;
// 2255 }
// 2256 /**
// 2257   * @}
// 2258   */
// 2259 
// 2260 #endif /* HAL_SPI_MODULE_ENABLED */
// 2261 /**
// 2262   * @}
// 2263   */
// 2264 
// 2265 /**
// 2266   * @}
// 2267   */
// 2268 
// 2269 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
