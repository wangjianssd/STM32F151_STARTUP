///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2s.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2s.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_i2s.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_i2s.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_i2s.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   I2S HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Integrated Interchip Sound (I2S) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral State and Errors functions
//   13   @verbatim
//   14  ===============================================================================
//   15                   ##### How to use this driver #####
//   16  ===============================================================================
//   17  [..]
//   18     The I2S HAL driver can be used as follow:
//   19     
//   20     (#) Declare a I2S_HandleTypeDef handle structure.
//   21     (#) Initialize the I2S low level resources by implement the HAL_I2S_MspInit() API:
//   22         (##) Enable the SPIx interface clock.                      
//   23         (##) I2S pins configuration:
//   24             (+++) Enable the clock for the I2S GPIOs.
//   25             (+++) Configure these I2S pins as alternate function.
//   26         (##) NVIC configuration if you need to use interrupt process (HAL_I2S_Transmit_IT()
//   27              and HAL_I2S_Receive_IT() APIs).
//   28             (+++) Configure the I2Sx interrupt priority.
//   29             (+++) Enable the NVIC I2S IRQ handle.
//   30         (##) DMA Configuration if you need to use DMA process (HAL_I2S_Transmit_DMA()
//   31              and HAL_I2S_Receive_DMA() APIs:
//   32             (+++) Declare a DMA handle structure for the Tx/Rx Channel.
//   33             (+++) Enable the DMAx interface clock.
//   34             (+++) Configure the declared DMA handle structure with the required Tx/Rx parameters.                
//   35             (+++) Configure the DMA Tx/Rx Channel.
//   36             (+++) Associate the initilalized DMA handle to the I2S DMA Tx/Rx handle.
//   37             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on the 
//   38                   DMA Tx/Rx Channel.
//   39 
//   40    (#) Program the Mode, Standard, Data Format, MCLK Output, Audio frequency and Polarity
//   41        using HAL_I2S_Init() function.
//   42 
//   43    -@- The specific I2S interrupts (Transmission complete interrupt, 
//   44        RXNE interrupt and Error Interrupts) will be managed using the macros
//   45        __HAL_I2S_ENABLE_IT() and __HAL_I2S_DISABLE_IT() inside the transmit and receive process.
//   46    -@- Make sure that either:
//   47        (+@) External clock source is configured after setting correctly 
//   48             the define constant HSE_VALUE in the stm32l1xx_hal_conf.h file. 
//   49 
//   50     (#) Three mode of operations are available within this driver :     
//   51 
//   52    *** Polling mode IO operation ***
//   53    =================================
//   54    [..]    
//   55      (+) Send an amount of data in blocking mode using HAL_I2S_Transmit() 
//   56      (+) Receive an amount of data in blocking mode using HAL_I2S_Receive()
//   57    
//   58    *** Interrupt mode IO operation ***
//   59    ===================================
//   60    [..]    
//   61      (+) Send an amount of data in non blocking mode using HAL_I2S_Transmit_IT() 
//   62      (+) At transmission end of half transfer HAL_I2S_TxHalfCpltCallback is executed and user can 
//   63          add his own code by customization of function pointer HAL_I2S_TxHalfCpltCallback 
//   64      (+) At transmission end of transfer HAL_I2S_TxCpltCallback is executed and user can 
//   65          add his own code by customization of function pointer HAL_I2S_TxCpltCallback
//   66      (+) Receive an amount of data in non blocking mode using HAL_I2S_Receive_IT() 
//   67      (+) At reception end of half transfer HAL_I2S_RxHalfCpltCallback is executed and user can 
//   68          add his own code by customization of function pointer HAL_I2S_RxHalfCpltCallback 
//   69      (+) At reception end of transfer HAL_I2S_RxCpltCallback is executed and user can 
//   70          add his own code by customization of function pointer HAL_I2S_RxCpltCallback
//   71      (+) In case of transfer Error, HAL_I2S_ErrorCallback() function is executed and user can 
//   72          add his own code by customization of function pointer HAL_I2S_ErrorCallback
//   73 
//   74    *** DMA mode IO operation ***
//   75    ==============================
//   76    [..] 
//   77      (+) Send an amount of data in non blocking mode (DMA) using HAL_I2S_Transmit_DMA() 
//   78      (+) At transmission end of half transfer HAL_I2S_TxHalfCpltCallback is executed and user can 
//   79          add his own code by customization of function pointer HAL_I2S_TxHalfCpltCallback 
//   80      (+) At transmission end of transfer HAL_I2S_TxCpltCallback is executed and user can 
//   81          add his own code by customization of function pointer HAL_I2S_TxCpltCallback
//   82      (+) Receive an amount of data in non blocking mode (DMA) using HAL_I2S_Receive_DMA() 
//   83      (+) At reception end of half transfer HAL_I2S_RxHalfCpltCallback is executed and user can 
//   84          add his own code by customization of function pointer HAL_I2S_RxHalfCpltCallback 
//   85      (+) At reception end of transfer HAL_I2S_RxCpltCallback is executed and user can 
//   86          add his own code by customization of function pointer HAL_I2S_RxCpltCallback
//   87      (+) In case of transfer Error, HAL_I2S_ErrorCallback() function is executed and user can 
//   88          add his own code by customization of function pointer HAL_I2S_ErrorCallback
//   89      (+) Pause the DMA Transfer using HAL_I2S_DMAPause()
//   90      (+) Resume the DMA Transfer using HAL_I2S_DMAResume()
//   91      (+) Stop the DMA Transfer using HAL_I2S_DMAStop()
//   92 
//   93    *** I2S HAL driver macros list ***
//   94    =============================================
//   95    [..]
//   96      Below the list of most used macros in USART HAL driver.
//   97        
//   98       (+) __HAL_I2S_ENABLE: Enable the specified SPI peripheral (in I2S mode) 
//   99       (+) __HAL_I2S_DISABLE: Disable the specified SPI peripheral (in I2S mode)
//  100       (+) __HAL_I2S_ENABLE_IT : Enable the specified I2S interrupts
//  101       (+) __HAL_I2S_DISABLE_IT : Disable the specified I2S interrupts
//  102       (+) __HAL_I2S_GET_FLAG: Check whether the specified I2S flag is set or not
//  103 
//  104     [..]
//  105       (@) You can refer to the I2S HAL driver header file for more useful macros
//  106 
//  107   @endverbatim
//  108   ******************************************************************************
//  109   * @attention
//  110   *
//  111   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  112   *
//  113   * Redistribution and use in source and binary forms, with or without modification,
//  114   * are permitted provided that the following conditions are met:
//  115   *   1. Redistributions of source code must retain the above copyright notice,
//  116   *      this list of conditions and the following disclaimer.
//  117   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  118   *      this list of conditions and the following disclaimer in the documentation
//  119   *      and/or other materials provided with the distribution.
//  120   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  121   *      may be used to endorse or promote products derived from this software
//  122   *      without specific prior written permission.
//  123   *
//  124   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  125   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  126   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  127   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  128   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  129   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  130   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  131   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  132   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  133   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  134   *
//  135   ******************************************************************************
//  136   */ 
//  137 
//  138 /* Includes ------------------------------------------------------------------*/
//  139 #include "stm32l1xx_hal.h"
//  140 
//  141 /** @addtogroup STM32L1xx_HAL_Driver
//  142   * @{
//  143   */
//  144 
//  145 /** @defgroup I2S I2S
//  146   * @brief I2S HAL module driver
//  147   * @{
//  148   */
//  149 
//  150 #ifdef HAL_I2S_MODULE_ENABLED
//  151 #if defined(STM32L100xC) || \ 
//  152     defined(STM32L151xC) || defined(STM32L151xCA) || defined(STM32L151xD) || defined(STM32L151xE) || defined(STM32L151xDX) || \ 
//  153     defined(STM32L152xC) || defined(STM32L152xCA) || defined(STM32L152xD) || defined(STM32L152xE) || defined(STM32L152xDX) || \ 
//  154     defined(STM32L162xC) || defined(STM32L162xCA) || defined(STM32L162xD) || defined(STM32L162xE) || defined(STM32L162xDX)
//  155 
//  156 /* Private typedef -----------------------------------------------------------*/
//  157 /* Private define ------------------------------------------------------------*/
//  158 /* Private macro -------------------------------------------------------------*/
//  159 /* Private variables ---------------------------------------------------------*/
//  160 /* Private function prototypes -----------------------------------------------*/
//  161 static void               I2S_DMATxCplt(DMA_HandleTypeDef *hdma);
//  162 static void               I2S_DMATxHalfCplt(DMA_HandleTypeDef *hdma); 
//  163 static void               I2S_DMARxCplt(DMA_HandleTypeDef *hdma);
//  164 static void               I2S_DMARxHalfCplt(DMA_HandleTypeDef *hdma);
//  165 static void               I2S_DMAError(DMA_HandleTypeDef *hdma);
//  166 static void               I2S_Transmit_IT(I2S_HandleTypeDef *hi2s);
//  167 static void               I2S_Receive_IT(I2S_HandleTypeDef *hi2s);
//  168 static HAL_StatusTypeDef  I2S_WaitFlagStateUntilTimeout(I2S_HandleTypeDef *hi2s, uint32_t Flag, uint32_t Status, uint32_t Timeout);
//  169 
//  170 /* Private functions ---------------------------------------------------------*/
//  171 
//  172 /** @defgroup I2S_Exported_Functions I2S Exported Functions
//  173   * @{
//  174   */
//  175 
//  176 /** @defgroup  I2S_Exported_Functions_Group1 Initialization and de-initialization functions 
//  177   *  @brief    Initialization and Configuration functions 
//  178   *
//  179 @verbatim    
//  180  ===============================================================================
//  181               ##### Initialization and de-initialization functions #####
//  182  ===============================================================================
//  183     [..]  This subsection provides a set of functions allowing to initialize and 
//  184           de-initialiaze the I2Sx peripheral in simplex mode:
//  185 
//  186       (+) User must Implement HAL_I2S_MspInit() function in which he configures 
//  187           all related peripherals resources (CLOCK, GPIO, DMA, IT and NVIC ).
//  188 
//  189       (+) Call the function HAL_I2S_Init() to configure the selected device with 
//  190           the selected configuration:
//  191         (++) Mode
//  192         (++) Standard 
//  193         (++) Data Format
//  194         (++) MCLK Output
//  195         (++) Audio frequency
//  196         (++) Polarity
//  197 
//  198      (+) Call the function HAL_I2S_DeInit() to restore the default configuration 
//  199          of the selected I2Sx periperal. 
//  200   @endverbatim
//  201   * @{
//  202   */
//  203 
//  204 /**
//  205   * @brief Initializes the I2S according to the specified parameters 
//  206   *         in the I2S_InitTypeDef and create the associated handle.
//  207   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  208   *         the configuration information for I2S module
//  209   * @retval HAL status
//  210   */
//  211 HAL_StatusTypeDef HAL_I2S_Init(I2S_HandleTypeDef *hi2s)
//  212 {
//  213   uint32_t i2sdiv = 2, i2sodd = 0, packetlength = 1;
//  214   uint32_t tmp = 0, i2sclk = 0;
//  215   
//  216   /* Check the I2S handle allocation */
//  217   if(hi2s == NULL)
//  218   {
//  219     return HAL_ERROR;
//  220   }
//  221   
//  222   /* Check the I2S parameters */
//  223   assert_param(IS_I2S_ALL_INSTANCE(hi2s->Instance));
//  224   assert_param(IS_I2S_MODE(hi2s->Init.Mode));
//  225   assert_param(IS_I2S_STANDARD(hi2s->Init.Standard));
//  226   assert_param(IS_I2S_DATA_FORMAT(hi2s->Init.DataFormat));
//  227   assert_param(IS_I2S_MCLK_OUTPUT(hi2s->Init.MCLKOutput));
//  228   assert_param(IS_I2S_AUDIO_FREQ(hi2s->Init.AudioFreq));
//  229   assert_param(IS_I2S_CPOL(hi2s->Init.CPOL));  
//  230   
//  231   if(hi2s->State == HAL_I2S_STATE_RESET)
//  232   {
//  233     /* Allocate lock resource and initialize it */
//  234     hi2s->Lock = HAL_UNLOCKED;
//  235 
//  236     /* Init the low level hardware : GPIO, CLOCK, CORTEX...etc */
//  237     HAL_I2S_MspInit(hi2s);
//  238   }
//  239   
//  240   hi2s->State = HAL_I2S_STATE_BUSY;
//  241 
//  242   /* If the default value has to be written, reinitialize i2sdiv and i2sodd*/
//  243   if(hi2s->Init.AudioFreq == I2S_AUDIOFREQ_DEFAULT)
//  244   {
//  245     i2sodd = (uint32_t)0;
//  246     i2sdiv = (uint32_t)2;   
//  247   }
//  248   /* If the requested audio frequency is not the default, compute the prescaler */
//  249   else
//  250   {
//  251     /* Check the frame length (For the Prescaler computing) *******************/
//  252     if(hi2s->Init.DataFormat == I2S_DATAFORMAT_16B)
//  253     {
//  254       /* Packet length is 16 bits */
//  255       packetlength = 1;
//  256     }
//  257     else
//  258     {
//  259       /* Packet length is 32 bits */
//  260       packetlength = 2;
//  261     }
//  262 
//  263     /* Get the source clock value: based on System Clock value */
//  264     i2sclk = HAL_RCC_GetSysClockFreq();    
//  265 
//  266     /* Compute the Real divider depending on the MCLK output state, with a floating point */
//  267     if(hi2s->Init.MCLKOutput == I2S_MCLKOUTPUT_ENABLE)
//  268     {
//  269       /* MCLK output is enabled */
//  270       tmp = (uint32_t)(((((i2sclk / 256) * 10) / hi2s->Init.AudioFreq)) + 5);
//  271     }
//  272     else
//  273     {
//  274       /* MCLK output is disabled */
//  275       tmp = (uint32_t)(((((i2sclk / (32 * packetlength)) *10 ) / hi2s->Init.AudioFreq)) + 5);
//  276     }
//  277 
//  278     /* Remove the flatting point */
//  279     tmp = tmp / 10;  
//  280 
//  281     /* Check the parity of the divider */
//  282     i2sodd = (uint32_t)(tmp & (uint32_t)1);
//  283 
//  284     /* Compute the i2sdiv prescaler */
//  285     i2sdiv = (uint32_t)((tmp - i2sodd) / 2);
//  286 
//  287     /* Get the Mask for the Odd bit (SPI_I2SPR[8]) register */
//  288     i2sodd = (uint32_t) (i2sodd << 8);
//  289   }
//  290 
//  291   /* Test if the divider is 1 or 0 or greater than 0xFF */
//  292   if((i2sdiv < 2) || (i2sdiv > 0xFF))
//  293   {
//  294     /* Set the default values */
//  295     i2sdiv = 2;
//  296     i2sodd = 0;
//  297   }
//  298 
//  299   /*----------------------- SPIx I2SCFGR & I2SPR Configuration ----------------*/
//  300   /* Clear I2SMOD, I2SE, I2SCFG, PCMSYNC, I2SSTD, CKPOL, DATLEN and CHLEN bits */
//  301   /* And configure the I2S with the I2S_InitStruct values                      */
//  302   MODIFY_REG( hi2s->Instance->I2SCFGR, (SPI_I2SCFGR_CHLEN | SPI_I2SCFGR_DATLEN |\ 
//  303                                         SPI_I2SCFGR_CKPOL | SPI_I2SCFGR_I2SSTD |\ 
//  304                                         SPI_I2SCFGR_PCMSYNC | SPI_I2SCFGR_I2SCFG |\ 
//  305                                         SPI_I2SCFGR_I2SE  | SPI_I2SCFGR_I2SMOD),\ 
//  306                                        (SPI_I2SCFGR_I2SMOD | hi2s->Init.Mode |\ 
//  307                                         hi2s->Init.Standard | hi2s->Init.DataFormat |\ 
//  308                                         hi2s->Init.CPOL));
//  309 
//  310   /* Write to SPIx I2SPR register the computed value */
//  311   hi2s->Instance->I2SPR = (uint32_t)((uint32_t)i2sdiv | (uint32_t)(i2sodd | (uint32_t)hi2s->Init.MCLKOutput));
//  312 
//  313   hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  314   hi2s->State= HAL_I2S_STATE_READY;
//  315 
//  316   return HAL_OK;
//  317 }
//  318 
//  319 /**
//  320   * @brief DeInitializes the I2S peripheral 
//  321   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  322   *         the configuration information for I2S module
//  323   * @retval HAL status
//  324   */
//  325 HAL_StatusTypeDef HAL_I2S_DeInit(I2S_HandleTypeDef *hi2s)
//  326 {
//  327   /* Check the I2S handle allocation */
//  328   if(hi2s == NULL)
//  329   {
//  330     return HAL_ERROR;
//  331   }
//  332   
//  333   hi2s->State = HAL_I2S_STATE_BUSY;
//  334   
//  335   /* Disable the I2S Peripheral Clock */
//  336   __HAL_I2S_DISABLE(hi2s);
//  337 
//  338   /* DeInit the low level hardware: GPIO, CLOCK, NVIC... */
//  339   HAL_I2S_MspDeInit(hi2s);
//  340 
//  341   hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  342   hi2s->State = HAL_I2S_STATE_RESET;
//  343 
//  344   /* Release Lock */
//  345   __HAL_UNLOCK(hi2s);
//  346 
//  347   return HAL_OK;
//  348 }
//  349 
//  350 /**
//  351   * @brief I2S MSP Init
//  352   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  353   *         the configuration information for I2S module
//  354   * @retval None
//  355   */
//  356  __weak void HAL_I2S_MspInit(I2S_HandleTypeDef *hi2s)
//  357 {
//  358   /* Prevent unused argument(s) compilation warning */
//  359   UNUSED(hi2s);
//  360 
//  361   /* NOTE : This function Should not be modified, when the callback is needed,
//  362             the HAL_I2S_MspInit could be implemented in the user file
//  363    */ 
//  364 }
//  365 
//  366 /**
//  367   * @brief I2S MSP DeInit
//  368   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  369   *         the configuration information for I2S module
//  370   * @retval None
//  371   */
//  372  __weak void HAL_I2S_MspDeInit(I2S_HandleTypeDef *hi2s)
//  373 {
//  374   /* Prevent unused argument(s) compilation warning */
//  375   UNUSED(hi2s);
//  376 
//  377   /* NOTE : This function Should not be modified, when the callback is needed,
//  378             the HAL_I2S_MspDeInit could be implemented in the user file
//  379    */ 
//  380 }
//  381 
//  382 /**
//  383   * @}
//  384   */
//  385 
//  386 /** @defgroup I2S_Exported_Functions_Group2 IO operation functions 
//  387   *  @brief Data transfers functions 
//  388   *
//  389 @verbatim   
//  390  ===============================================================================
//  391                       ##### IO operation functions #####
//  392  ===============================================================================
//  393     [..]
//  394     This subsection provides a set of functions allowing to manage the I2S data 
//  395     transfers.
//  396 
//  397     (#) There are two modes of transfer:
//  398        (++) Blocking mode : The communication is performed in the polling mode. 
//  399             The status of all data processing is returned by the same function 
//  400             after finishing transfer.  
//  401        (++) No-Blocking mode : The communication is performed using Interrupts 
//  402             or DMA. These functions return the status of the transfer startup.
//  403             The end of the data processing will be indicated through the 
//  404             dedicated I2S IRQ when using Interrupt mode or the DMA IRQ when 
//  405             using DMA mode.
//  406 
//  407     (#) Blocking mode functions are :
//  408         (++) HAL_I2S_Transmit()
//  409         (++) HAL_I2S_Receive()
//  410         
//  411     (#) No-Blocking mode functions with Interrupt are :
//  412         (++) HAL_I2S_Transmit_IT()
//  413         (++) HAL_I2S_Receive_IT()
//  414 
//  415     (#) No-Blocking mode functions with DMA are :
//  416         (++) HAL_I2S_Transmit_DMA()
//  417         (++) HAL_I2S_Receive_DMA()
//  418 
//  419     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
//  420         (++) HAL_I2S_TxCpltCallback()
//  421         (++) HAL_I2S_RxCpltCallback()
//  422         (++) HAL_I2S_ErrorCallback()
//  423 
//  424 @endverbatim
//  425   * @{
//  426   */
//  427 
//  428 /**
//  429   * @brief Transmit an amount of data in blocking mode
//  430   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  431   *         the configuration information for I2S module
//  432   * @param pData: a 16-bit pointer to data buffer.
//  433   * @param Size: number of data sample to be sent:
//  434   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  435   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  436   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  437   *       the Size parameter means the number of 16-bit data length. 
//  438   * @param  Timeout: Timeout duration
//  439   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  440   *       between Master and Slave(example: audio streaming).
//  441   * @retval HAL status
//  442   */
//  443 HAL_StatusTypeDef HAL_I2S_Transmit(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size, uint32_t Timeout)
//  444 {
//  445   if((pData == NULL ) || (Size == 0)) 
//  446   {
//  447     return  HAL_ERROR;                                    
//  448   }
//  449   
//  450   /* Process Locked */
//  451   __HAL_LOCK(hi2s);
//  452 
//  453   if(hi2s->State == HAL_I2S_STATE_READY)
//  454   { 
//  455     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  456       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  457     {
//  458       hi2s->TxXferSize = (Size << 1);
//  459       hi2s->TxXferCount = (Size << 1);
//  460     }
//  461     else
//  462     {
//  463       hi2s->TxXferSize = Size;
//  464       hi2s->TxXferCount = Size;
//  465     }
//  466      
//  467     /* Set state and reset error code */
//  468     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  469     hi2s->State = HAL_I2S_STATE_BUSY_TX;
//  470     hi2s->pTxBuffPtr = pData;
//  471       
//  472     /* Check if the I2S is already enabled */ 
//  473     if((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  474     {
//  475       /* Enable I2S peripheral */
//  476       __HAL_I2S_ENABLE(hi2s);
//  477     }
//  478     
//  479     while(hi2s->TxXferCount > 0)
//  480     {
//  481       /* Wait until TXE flag is set */
//  482       if (I2S_WaitFlagStateUntilTimeout(hi2s, I2S_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  483       {
//  484         return HAL_TIMEOUT;
//  485       }
//  486       hi2s->Instance->DR = (*hi2s->pTxBuffPtr++);
//  487       hi2s->TxXferCount--;   
//  488     } 
//  489 
//  490     /* Wait until TXE flag is set, to confirm the end of the transcation */
//  491     if (I2S_WaitFlagStateUntilTimeout(hi2s, I2S_FLAG_TXE, RESET, Timeout) != HAL_OK)
//  492     {
//  493       return HAL_TIMEOUT;
//  494     } 
//  495 
//  496     /* Check if Slave mode is selected */
//  497     if(((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SCFG) == I2S_MODE_SLAVE_TX) || ((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SCFG) == I2S_MODE_SLAVE_RX))
//  498     {
//  499       /* Wait until Busy flag is reset */
//  500       if (I2S_WaitFlagStateUntilTimeout(hi2s, I2S_FLAG_BSY, SET, Timeout) != HAL_OK)
//  501       {
//  502         return HAL_TIMEOUT;
//  503       }
//  504     }
//  505     hi2s->State = HAL_I2S_STATE_READY; 
//  506     
//  507     /* Process Unlocked */
//  508     __HAL_UNLOCK(hi2s);
//  509     
//  510     return HAL_OK;
//  511   }
//  512   else
//  513   {
//  514     /* Process Unlocked */
//  515     __HAL_UNLOCK(hi2s);
//  516     return HAL_BUSY;
//  517   }
//  518 }
//  519 
//  520 /**
//  521   * @brief Receive an amount of data in blocking mode 
//  522   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  523   *         the configuration information for I2S module
//  524   * @param pData: a 16-bit pointer to data buffer.
//  525   * @param Size: number of data sample to be sent:
//  526   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  527   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  528   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  529   *       the Size parameter means the number of 16-bit data length. 
//  530   * @param Timeout: Timeout duration
//  531   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  532   *       between Master and Slave(example: audio streaming).
//  533   * @note In I2S Master Receiver mode, just after enabling the peripheral the clock will be generate
//  534   *       in continouse way and as the I2S is not disabled at the end of the I2S transaction.
//  535   * @retval HAL status
//  536   */
//  537 HAL_StatusTypeDef HAL_I2S_Receive(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size, uint32_t Timeout)
//  538 {
//  539   if((pData == NULL ) || (Size == 0)) 
//  540   {
//  541     return  HAL_ERROR;
//  542   }
//  543   
//  544   /* Process Locked */
//  545   __HAL_LOCK(hi2s);
//  546   
//  547   if(hi2s->State == HAL_I2S_STATE_READY)
//  548   { 
//  549     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  550       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  551     {
//  552       hi2s->RxXferSize = (Size << 1);
//  553       hi2s->RxXferCount = (Size << 1);
//  554     }
//  555     else
//  556     {
//  557       hi2s->RxXferSize = Size;
//  558       hi2s->RxXferCount = Size;
//  559     }
//  560         
//  561     /* Set state and reset error code */
//  562     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  563     hi2s->State = HAL_I2S_STATE_BUSY_RX;
//  564     hi2s->pRxBuffPtr = pData;
//  565     
//  566     /* Check if the I2S is already enabled */ 
//  567     if((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  568     {
//  569       /* Enable I2S peripheral */
//  570       __HAL_I2S_ENABLE(hi2s);
//  571     }
//  572      
//  573     /* Receive data */
//  574     while(hi2s->RxXferCount > 0)
//  575     {
//  576       /* Wait until RXNE flag is set */
//  577       if (I2S_WaitFlagStateUntilTimeout(hi2s, I2S_FLAG_RXNE, RESET, Timeout) != HAL_OK)
//  578       {
//  579         return HAL_TIMEOUT;
//  580       }
//  581       
//  582       (*hi2s->pRxBuffPtr++) = hi2s->Instance->DR;
//  583       hi2s->RxXferCount--;
//  584     }
//  585     
//  586     hi2s->State = HAL_I2S_STATE_READY; 
//  587     
//  588     /* Process Unlocked */
//  589     __HAL_UNLOCK(hi2s);
//  590     
//  591     return HAL_OK;
//  592   }
//  593   else
//  594   {
//  595     /* Process Unlocked */
//  596     __HAL_UNLOCK(hi2s);
//  597     return HAL_BUSY;
//  598   }
//  599 }
//  600 
//  601 /**
//  602   * @brief Transmit an amount of data in non-blocking mode with Interrupt
//  603   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  604   *         the configuration information for I2S module
//  605   * @param pData: a 16-bit pointer to data buffer.
//  606   * @param Size: number of data sample to be sent:
//  607   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  608   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  609   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  610   *       the Size parameter means the number of 16-bit data length. 
//  611   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  612   *       between Master and Slave(example: audio streaming).
//  613   * @retval HAL status
//  614   */
//  615 HAL_StatusTypeDef HAL_I2S_Transmit_IT(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size)
//  616 {
//  617   if((pData == NULL) || (Size == 0)) 
//  618   {
//  619     return  HAL_ERROR;
//  620   }
//  621   
//  622   /* Process Locked */
//  623   __HAL_LOCK(hi2s);
//  624     
//  625   if(hi2s->State == HAL_I2S_STATE_READY)
//  626   {
//  627     hi2s->pTxBuffPtr = pData;
//  628     hi2s->State = HAL_I2S_STATE_BUSY_TX;
//  629     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  630 
//  631     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  632       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  633     {
//  634       hi2s->TxXferSize = (Size << 1);
//  635       hi2s->TxXferCount = (Size << 1);
//  636     }
//  637     else
//  638     {
//  639       hi2s->TxXferSize = Size;
//  640       hi2s->TxXferCount = Size;
//  641     }
//  642 
//  643     /* Enable TXE and ERR interrupt */
//  644     __HAL_I2S_ENABLE_IT(hi2s, (I2S_IT_TXE | I2S_IT_ERR));
//  645 
//  646     /* Check if the I2S is already enabled */ 
//  647     if((hi2s->Instance->I2SCFGR &SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  648     {
//  649       /* Enable I2S peripheral */
//  650       __HAL_I2S_ENABLE(hi2s);
//  651     }
//  652 
//  653     /* Process Unlocked */
//  654     __HAL_UNLOCK(hi2s);
//  655     
//  656     return HAL_OK;
//  657   }
//  658   else
//  659   {
//  660     /* Process Unlocked */
//  661     __HAL_UNLOCK(hi2s);
//  662     return HAL_BUSY;
//  663   }
//  664 }
//  665 
//  666 /**
//  667   * @brief Receive an amount of data in non-blocking mode with Interrupt
//  668   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  669   *         the configuration information for I2S module
//  670   * @param pData: a 16-bit pointer to the Receive data buffer.
//  671   * @param Size: number of data sample to be sent:
//  672   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  673   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  674   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  675   *       the Size parameter means the number of 16-bit data length. 
//  676   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  677   *       between Master and Slave(example: audio streaming).
//  678   * @note It is recommended to use DMA for the I2S receiver to avoid de-synchronisation 
//  679   * between Master and Slave otherwise the I2S interrupt should be optimized. 
//  680   * @retval HAL status
//  681   */
//  682 HAL_StatusTypeDef HAL_I2S_Receive_IT(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size)
//  683 {
//  684     if((pData == NULL) || (Size == 0)) 
//  685     {
//  686       return  HAL_ERROR;
//  687     }
//  688 
//  689   /* Process Locked */
//  690   __HAL_LOCK(hi2s);
//  691 
//  692   if(hi2s->State == HAL_I2S_STATE_READY)
//  693   {
//  694     hi2s->pRxBuffPtr = pData;
//  695     hi2s->State = HAL_I2S_STATE_BUSY_RX;
//  696     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  697 
//  698     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  699       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  700     {
//  701       hi2s->RxXferSize = (Size << 1);
//  702       hi2s->RxXferCount = (Size << 1);
//  703     }  
//  704     else
//  705     {
//  706       hi2s->RxXferSize = Size;
//  707       hi2s->RxXferCount = Size;
//  708     }
//  709     
//  710     /* Enable TXE and ERR interrupt */
//  711     __HAL_I2S_ENABLE_IT(hi2s, (I2S_IT_RXNE | I2S_IT_ERR));
//  712     
//  713     /* Check if the I2S is already enabled */ 
//  714     if((hi2s->Instance->I2SCFGR &SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  715     {
//  716       /* Enable I2S peripheral */
//  717       __HAL_I2S_ENABLE(hi2s);
//  718     }
//  719 
//  720     /* Process Unlocked */
//  721     __HAL_UNLOCK(hi2s);
//  722 
//  723     return HAL_OK;
//  724   }
//  725   else
//  726   {
//  727     /* Process Unlocked */
//  728     __HAL_UNLOCK(hi2s);
//  729     return HAL_BUSY; 
//  730   } 
//  731 }
//  732 
//  733 /**
//  734   * @brief Transmit an amount of data in non-blocking mode with DMA
//  735   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  736   *         the configuration information for I2S module
//  737   * @param pData: a 16-bit pointer to the Transmit data buffer.
//  738   * @param Size: number of data sample to be sent:
//  739   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  740   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  741   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  742   *       the Size parameter means the number of 16-bit data length. 
//  743   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  744   *       between Master and Slave(example: audio streaming).
//  745   * @retval HAL status
//  746   */
//  747 HAL_StatusTypeDef HAL_I2S_Transmit_DMA(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size)
//  748 {
//  749   if((pData == NULL) || (Size == 0)) 
//  750   {
//  751     return  HAL_ERROR;
//  752   }
//  753 
//  754   /* Process Locked */
//  755   __HAL_LOCK(hi2s);
//  756 
//  757   if(hi2s->State == HAL_I2S_STATE_READY)
//  758   {  
//  759     hi2s->pTxBuffPtr = pData;
//  760     hi2s->State = HAL_I2S_STATE_BUSY_TX;
//  761     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  762 
//  763     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  764       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  765     {
//  766       hi2s->TxXferSize = (Size << 1);
//  767       hi2s->TxXferCount = (Size << 1);
//  768     }
//  769     else
//  770     {
//  771       hi2s->TxXferSize = Size;
//  772       hi2s->TxXferCount = Size;
//  773     }
//  774 
//  775     /* Set the I2S Tx DMA Half transfert complete callback */
//  776     hi2s->hdmatx->XferHalfCpltCallback = I2S_DMATxHalfCplt;
//  777 
//  778     /* Set the I2S Tx DMA transfert complete callback */
//  779     hi2s->hdmatx->XferCpltCallback = I2S_DMATxCplt;
//  780 
//  781     /* Set the DMA error callback */
//  782     hi2s->hdmatx->XferErrorCallback = I2S_DMAError;
//  783 
//  784     /* Enable the Tx DMA Channel */
//  785     HAL_DMA_Start_IT(hi2s->hdmatx, (uint32_t)hi2s->pTxBuffPtr, (uint32_t)&hi2s->Instance->DR, hi2s->TxXferSize);
//  786 
//  787     /* Check if the I2S is already enabled */ 
//  788     if((hi2s->Instance->I2SCFGR &SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  789     {
//  790       /* Enable I2S peripheral */
//  791       __HAL_I2S_ENABLE(hi2s);
//  792     }
//  793 
//  794     /* Check if the I2S Tx request is already enabled */ 
//  795     if((hi2s->Instance->CR2 & SPI_CR2_TXDMAEN) != SPI_CR2_TXDMAEN)
//  796     {
//  797       /* Enable Tx DMA Request */  
//  798       SET_BIT(hi2s->Instance->CR2, SPI_CR2_TXDMAEN);
//  799     }
//  800 
//  801     /* Process Unlocked */
//  802     __HAL_UNLOCK(hi2s);
//  803     
//  804     return HAL_OK;
//  805   }
//  806   else
//  807   {
//  808     /* Process Unlocked */
//  809     __HAL_UNLOCK(hi2s);
//  810     return HAL_BUSY;
//  811   }
//  812 }
//  813 
//  814 /**
//  815   * @brief Receive an amount of data in non-blocking mode with DMA 
//  816   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  817   *         the configuration information for I2S module
//  818   * @param pData: a 16-bit pointer to the Receive data buffer.
//  819   * @param Size: number of data sample to be sent:
//  820   * @note When a 16-bit data frame or a 16-bit data frame extended is selected during the I2S
//  821   *       configuration phase, the Size parameter means the number of 16-bit data length 
//  822   *       in the transaction and when a 24-bit data frame or a 32-bit data frame is selected 
//  823   *       the Size parameter means the number of 16-bit data length. 
//  824   * @note The I2S is kept enabled at the end of transaction to avoid the clock de-synchronization 
//  825   *       between Master and Slave(example: audio streaming).
//  826   * @retval HAL status
//  827   */
//  828 HAL_StatusTypeDef HAL_I2S_Receive_DMA(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size)
//  829 {
//  830   if((pData == NULL) || (Size == 0))
//  831   {
//  832     return  HAL_ERROR;
//  833   }
//  834 
//  835   /* Process Locked */
//  836   __HAL_LOCK(hi2s);
//  837 
//  838   if(hi2s->State == HAL_I2S_STATE_READY)
//  839   {
//  840     hi2s->pRxBuffPtr = pData;
//  841     hi2s->State = HAL_I2S_STATE_BUSY_RX;
//  842     hi2s->ErrorCode = HAL_I2S_ERROR_NONE;
//  843 
//  844     if(((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_24B)||\ 
//  845       ((hi2s->Instance->I2SCFGR & (SPI_I2SCFGR_DATLEN | SPI_I2SCFGR_CHLEN)) == I2S_DATAFORMAT_32B))
//  846     {
//  847       hi2s->RxXferSize = (Size << 1);
//  848       hi2s->RxXferCount = (Size << 1);
//  849     }
//  850     else
//  851     {
//  852       hi2s->RxXferSize = Size;
//  853       hi2s->RxXferCount = Size;
//  854     }
//  855     
//  856     
//  857     /* Set the I2S Rx DMA Half transfert complete callback */
//  858     hi2s->hdmarx->XferHalfCpltCallback = I2S_DMARxHalfCplt;
//  859     
//  860     /* Set the I2S Rx DMA transfert complete callback */
//  861     hi2s->hdmarx->XferCpltCallback = I2S_DMARxCplt;
//  862     
//  863     /* Set the DMA error callback */
//  864     hi2s->hdmarx->XferErrorCallback = I2S_DMAError;
//  865     
//  866     /* Check if Master Receiver mode is selected */
//  867     if((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SCFG) == I2S_MODE_MASTER_RX)
//  868     {
//  869       /* Clear the Overrun Flag by a read operation to the SPI_DR register followed by a read
//  870       access to the SPI_SR register. */ 
//  871       __HAL_I2S_CLEAR_OVRFLAG(hi2s);
//  872     }
//  873     
//  874     /* Enable the Rx DMA Channel */
//  875     HAL_DMA_Start_IT(hi2s->hdmarx, (uint32_t)&hi2s->Instance->DR, (uint32_t)hi2s->pRxBuffPtr, hi2s->RxXferSize);
//  876     
//  877     /* Check if the I2S is already enabled */ 
//  878     if((hi2s->Instance->I2SCFGR &SPI_I2SCFGR_I2SE) != SPI_I2SCFGR_I2SE)
//  879     {
//  880       /* Enable I2S peripheral */
//  881       __HAL_I2S_ENABLE(hi2s);
//  882     }
//  883 
//  884      /* Check if the I2S Rx request is already enabled */ 
//  885     if((hi2s->Instance->CR2 &SPI_CR2_RXDMAEN) != SPI_CR2_RXDMAEN)
//  886     {
//  887       /* Enable Rx DMA Request */  
//  888       SET_BIT(hi2s->Instance->CR2, SPI_CR2_RXDMAEN);
//  889     }
//  890 
//  891     /* Process Unlocked */
//  892     __HAL_UNLOCK(hi2s);
//  893 
//  894     return HAL_OK;
//  895   }
//  896   else
//  897   {
//  898     /* Process Unlocked */
//  899     __HAL_UNLOCK(hi2s);
//  900     return HAL_BUSY;
//  901   }
//  902 }
//  903 
//  904 /**
//  905   * @brief Pauses the audio stream playing from the Media.
//  906   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  907   *         the configuration information for I2S module
//  908   * @retval HAL status
//  909   */
//  910 HAL_StatusTypeDef HAL_I2S_DMAPause(I2S_HandleTypeDef *hi2s)
//  911 {
//  912   /* Process Locked */
//  913   __HAL_LOCK(hi2s);
//  914   
//  915   if(hi2s->State == HAL_I2S_STATE_BUSY_TX)
//  916   {
//  917     /* Disable the I2S DMA Tx request */
//  918     CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_TXDMAEN);
//  919   }
//  920   else if(hi2s->State == HAL_I2S_STATE_BUSY_RX)
//  921   {
//  922     /* Disable the I2S DMA Rx request */
//  923     CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_RXDMAEN);
//  924   }
//  925   
//  926   /* Process Unlocked */
//  927   __HAL_UNLOCK(hi2s);
//  928   
//  929   return HAL_OK; 
//  930 }
//  931 
//  932 /**
//  933   * @brief Resumes the audio stream playing from the Media.
//  934   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  935   *         the configuration information for I2S module
//  936   * @retval HAL status
//  937   */
//  938 HAL_StatusTypeDef HAL_I2S_DMAResume(I2S_HandleTypeDef *hi2s)
//  939 {
//  940   /* Process Locked */
//  941   __HAL_LOCK(hi2s);
//  942   
//  943   if(hi2s->State == HAL_I2S_STATE_BUSY_TX)
//  944   {
//  945     /* Enable the I2S DMA Tx request */
//  946     SET_BIT(hi2s->Instance->CR2, SPI_CR2_TXDMAEN);
//  947   }
//  948   else if(hi2s->State == HAL_I2S_STATE_BUSY_RX)
//  949   {
//  950     /* Enable the I2S DMA Rx request */
//  951     SET_BIT(hi2s->Instance->CR2, SPI_CR2_RXDMAEN);
//  952   }
//  953   
//  954   /* If the I2S peripheral is still not enabled, enable it */
//  955   if ((hi2s->Instance->I2SCFGR & SPI_I2SCFGR_I2SE) == 0)
//  956   {
//  957     /* Enable I2S peripheral */    
//  958     __HAL_I2S_ENABLE(hi2s);
//  959   }
//  960   
//  961   /* Process Unlocked */
//  962   __HAL_UNLOCK(hi2s);
//  963   
//  964   return HAL_OK;
//  965 }
//  966 
//  967 /**
//  968   * @brief Resumes the audio stream playing from the Media.
//  969   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
//  970   *         the configuration information for I2S module
//  971   * @retval HAL status
//  972   */
//  973 HAL_StatusTypeDef HAL_I2S_DMAStop(I2S_HandleTypeDef *hi2s)
//  974 {
//  975   /* Process Locked */
//  976   __HAL_LOCK(hi2s);
//  977   
//  978   /* Disable the I2S Tx/Rx DMA requests */
//  979   CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_TXDMAEN);
//  980   CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_RXDMAEN);
//  981   
//  982   /* Abort the I2S DMA Channel tx */
//  983   if(hi2s->hdmatx != NULL)
//  984   {
//  985     /* Disable the I2S DMA channel */
//  986     __HAL_DMA_DISABLE(hi2s->hdmatx);
//  987     HAL_DMA_Abort(hi2s->hdmatx);
//  988   }
//  989   /* Abort the I2S DMA Channel rx */
//  990   if(hi2s->hdmarx != NULL)
//  991   {
//  992     /* Disable the I2S DMA channel */
//  993     __HAL_DMA_DISABLE(hi2s->hdmarx);
//  994     HAL_DMA_Abort(hi2s->hdmarx);
//  995   }
//  996 
//  997   /* Disable I2S peripheral */
//  998   __HAL_I2S_DISABLE(hi2s);
//  999   
// 1000   hi2s->State = HAL_I2S_STATE_READY;
// 1001   
// 1002   /* Process Unlocked */
// 1003   __HAL_UNLOCK(hi2s);
// 1004   
// 1005   return HAL_OK;
// 1006 }
// 1007 
// 1008 /**
// 1009   * @brief  This function handles I2S interrupt request.
// 1010   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1011   *         the configuration information for I2S module
// 1012   * @retval None
// 1013   */
// 1014 void HAL_I2S_IRQHandler(I2S_HandleTypeDef *hi2s)
// 1015 {  
// 1016   uint32_t i2ssr = hi2s->Instance->SR;
// 1017   
// 1018   /* I2S in mode Receiver ------------------------------------------------*/
// 1019   if(((i2ssr & I2S_FLAG_OVR) != I2S_FLAG_OVR) &&
// 1020      ((i2ssr & I2S_FLAG_RXNE) == I2S_FLAG_RXNE) && (__HAL_I2S_GET_IT_SOURCE(hi2s, I2S_IT_RXNE) != RESET))
// 1021   {
// 1022     I2S_Receive_IT(hi2s);
// 1023     return;
// 1024   }
// 1025 
// 1026   /* I2S in mode Tramitter -----------------------------------------------*/
// 1027   if(((i2ssr & I2S_FLAG_TXE) == I2S_FLAG_TXE) && (__HAL_I2S_GET_IT_SOURCE(hi2s, I2S_IT_TXE) != RESET))
// 1028   {     
// 1029     I2S_Transmit_IT(hi2s);
// 1030     return;
// 1031   } 
// 1032 
// 1033   /* I2S interrupt error -------------------------------------------------*/
// 1034   if(__HAL_I2S_GET_IT_SOURCE(hi2s, I2S_IT_ERR) != RESET)
// 1035   {
// 1036     /* I2S Overrun error interrupt occured ---------------------------------*/
// 1037     if((i2ssr & I2S_FLAG_OVR) == I2S_FLAG_OVR)
// 1038     {
// 1039       /* Disable RXNE and ERR interrupt */
// 1040       __HAL_I2S_DISABLE_IT(hi2s, (I2S_IT_RXNE | I2S_IT_ERR));
// 1041       
// 1042       /* Set the error code and execute error callback*/
// 1043       SET_BIT(hi2s->ErrorCode, HAL_I2S_ERROR_OVR);
// 1044     } 
// 1045     
// 1046     /* I2S Underrun error interrupt occured --------------------------------*/
// 1047     if((i2ssr & I2S_FLAG_UDR) == I2S_FLAG_UDR)
// 1048     {
// 1049       /* Disable TXE and ERR interrupt */
// 1050       __HAL_I2S_DISABLE_IT(hi2s, (I2S_IT_TXE | I2S_IT_ERR));
// 1051       
// 1052       /* Set the error code and execute error callback*/
// 1053       SET_BIT(hi2s->ErrorCode, HAL_I2S_ERROR_UDR);
// 1054     }
// 1055     
// 1056     /* I2S Frame format error interrupt occured --------------------------*/
// 1057     if((i2ssr & I2S_FLAG_FRE) == I2S_FLAG_FRE)
// 1058     {
// 1059       /* Disable TXE and ERR interrupt */
// 1060       __HAL_I2S_DISABLE_IT(hi2s, (I2S_IT_TXE | I2S_IT_RXNE | I2S_IT_ERR));
// 1061 
// 1062       /* Set the error code and execute error callback*/
// 1063       SET_BIT(hi2s->ErrorCode, HAL_I2S_ERROR_FRE);
// 1064     }
// 1065     
// 1066     /* Set the I2S State ready */
// 1067     hi2s->State = HAL_I2S_STATE_READY; 
// 1068     /* Call the Error Callback */
// 1069     HAL_I2S_ErrorCallback(hi2s);
// 1070   }
// 1071 }
// 1072 
// 1073 /**
// 1074   * @brief Tx Transfer Half completed callbacks
// 1075   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1076   *         the configuration information for I2S module
// 1077   * @retval None
// 1078   */
// 1079  __weak void HAL_I2S_TxHalfCpltCallback(I2S_HandleTypeDef *hi2s)
// 1080 {
// 1081   /* Prevent unused argument(s) compilation warning */
// 1082   UNUSED(hi2s);
// 1083 
// 1084   /* NOTE : This function Should not be modified, when the callback is needed,
// 1085             the HAL_I2S_TxHalfCpltCallback could be implemented in the user file
// 1086    */ 
// 1087 }
// 1088 
// 1089 /**
// 1090   * @brief Tx Transfer completed callbacks
// 1091   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1092   *         the configuration information for I2S module
// 1093   * @retval None
// 1094   */
// 1095  __weak void HAL_I2S_TxCpltCallback(I2S_HandleTypeDef *hi2s)
// 1096 {
// 1097   /* Prevent unused argument(s) compilation warning */
// 1098   UNUSED(hi2s);
// 1099 
// 1100   /* NOTE : This function Should not be modified, when the callback is needed,
// 1101             the HAL_I2S_TxCpltCallback could be implemented in the user file
// 1102    */ 
// 1103 }
// 1104 
// 1105 /**
// 1106   * @brief Rx Transfer half completed callbacks
// 1107   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1108   *         the configuration information for I2S module
// 1109   * @retval None
// 1110   */
// 1111 __weak void HAL_I2S_RxHalfCpltCallback(I2S_HandleTypeDef *hi2s)
// 1112 {
// 1113   /* Prevent unused argument(s) compilation warning */
// 1114   UNUSED(hi2s);
// 1115 
// 1116   /* NOTE : This function Should not be modified, when the callback is needed,
// 1117             the HAL_I2S_RxHalfCpltCallback could be implemented in the user file
// 1118    */
// 1119 }
// 1120 
// 1121 /**
// 1122   * @brief Rx Transfer completed callbacks
// 1123   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1124   *         the configuration information for I2S module
// 1125   * @retval None
// 1126   */
// 1127 __weak void HAL_I2S_RxCpltCallback(I2S_HandleTypeDef *hi2s)
// 1128 {
// 1129   /* Prevent unused argument(s) compilation warning */
// 1130   UNUSED(hi2s);
// 1131 
// 1132   /* NOTE : This function Should not be modified, when the callback is needed,
// 1133             the HAL_I2S_RxCpltCallback could be implemented in the user file
// 1134    */
// 1135 }
// 1136 
// 1137 /**
// 1138   * @brief I2S error callbacks
// 1139   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1140   *         the configuration information for I2S module
// 1141   * @retval None
// 1142   */
// 1143  __weak void HAL_I2S_ErrorCallback(I2S_HandleTypeDef *hi2s)
// 1144 {
// 1145   /* Prevent unused argument(s) compilation warning */
// 1146   UNUSED(hi2s);
// 1147 
// 1148   /* NOTE : This function Should not be modified, when the callback is needed,
// 1149             the HAL_I2S_ErrorCallback could be implemented in the user file
// 1150    */ 
// 1151 }
// 1152 
// 1153 /**
// 1154   * @}
// 1155   */
// 1156 
// 1157 /** @defgroup I2S_Exported_Functions_Group3 Peripheral State and Errors functions 
// 1158   *  @brief   Peripheral State functions 
// 1159   *
// 1160 @verbatim   
// 1161  ===============================================================================
// 1162                       ##### Peripheral State and Errors functions #####
// 1163  ===============================================================================  
// 1164     [..]
// 1165     This subsection permits to get in run-time the status of the peripheral 
// 1166     and the data flow.
// 1167 
// 1168 @endverbatim
// 1169   * @{
// 1170   */
// 1171 
// 1172 /**
// 1173   * @brief  Return the I2S state
// 1174   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1175   *         the configuration information for I2S module
// 1176   * @retval HAL state
// 1177   */
// 1178 HAL_I2S_StateTypeDef HAL_I2S_GetState(I2S_HandleTypeDef *hi2s)
// 1179 {
// 1180   return hi2s->State;
// 1181 }
// 1182 
// 1183 /**
// 1184   * @brief  Return the I2S error code
// 1185   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1186   *         the configuration information for I2S module
// 1187   * @retval I2S Error Code
// 1188   */
// 1189 uint32_t HAL_I2S_GetError(I2S_HandleTypeDef *hi2s)
// 1190 {
// 1191   return hi2s->ErrorCode;
// 1192 }
// 1193 /**
// 1194   * @}
// 1195   */
// 1196 
// 1197 /**
// 1198   * @}
// 1199   */
// 1200 
// 1201 
// 1202 /** @defgroup I2S_Private_Functions I2S Private Functions
// 1203   * @{
// 1204   */
// 1205 /**
// 1206   * @brief DMA I2S transmit process complete callback 
// 1207   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1208   *                the configuration information for the specified DMA module.
// 1209   * @retval None
// 1210   */
// 1211 static void I2S_DMATxCplt(DMA_HandleTypeDef *hdma)
// 1212 {
// 1213   I2S_HandleTypeDef* hi2s = (I2S_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1214   
// 1215   if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0)
// 1216   {
// 1217     /* Disable Tx DMA Request */
// 1218     CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_TXDMAEN);
// 1219 
// 1220     hi2s->TxXferCount = 0;
// 1221     hi2s->State = HAL_I2S_STATE_READY;
// 1222   }
// 1223   HAL_I2S_TxCpltCallback(hi2s);
// 1224 }
// 1225 
// 1226 /**
// 1227   * @brief DMA I2S transmit process half complete callback 
// 1228   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1229   *                the configuration information for the specified DMA module.
// 1230   * @retval None
// 1231   */
// 1232 static void I2S_DMATxHalfCplt(DMA_HandleTypeDef *hdma)
// 1233 {
// 1234   I2S_HandleTypeDef* hi2s = (I2S_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1235 
// 1236   HAL_I2S_TxHalfCpltCallback(hi2s);
// 1237 }
// 1238 
// 1239 /**
// 1240   * @brief DMA I2S receive process complete callback 
// 1241   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1242   *                the configuration information for the specified DMA module.
// 1243   * @retval None
// 1244   */
// 1245 static void I2S_DMARxCplt(DMA_HandleTypeDef *hdma)
// 1246 {
// 1247   I2S_HandleTypeDef* hi2s = (I2S_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1248 
// 1249   if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0)
// 1250   {
// 1251     /* Disable Rx DMA Request */
// 1252     CLEAR_BIT(hi2s->Instance->CR2, SPI_CR2_RXDMAEN);
// 1253     hi2s->RxXferCount = 0;
// 1254     hi2s->State = HAL_I2S_STATE_READY;
// 1255   }
// 1256   HAL_I2S_RxCpltCallback(hi2s); 
// 1257 }
// 1258 
// 1259 /**
// 1260   * @brief DMA I2S receive process half complete callback 
// 1261   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1262   *                the configuration information for the specified DMA module.
// 1263   * @retval None
// 1264   */
// 1265 static void I2S_DMARxHalfCplt(DMA_HandleTypeDef *hdma)
// 1266 {
// 1267   I2S_HandleTypeDef* hi2s = (I2S_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1268 
// 1269   HAL_I2S_RxHalfCpltCallback(hi2s); 
// 1270 }
// 1271 
// 1272 /**
// 1273   * @brief DMA I2S communication error callback 
// 1274   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
// 1275   *                the configuration information for the specified DMA module.
// 1276   * @retval None
// 1277   */
// 1278 static void I2S_DMAError(DMA_HandleTypeDef *hdma)
// 1279 {
// 1280   I2S_HandleTypeDef* hi2s = (I2S_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
// 1281 
// 1282   /* Disable Rx and Tx DMA Request */
// 1283   CLEAR_BIT(hi2s->Instance->CR2, (SPI_CR2_RXDMAEN | SPI_CR2_TXDMAEN));
// 1284   hi2s->TxXferCount = 0;
// 1285   hi2s->RxXferCount = 0;
// 1286 
// 1287   hi2s->State= HAL_I2S_STATE_READY;
// 1288 
// 1289   /* Set the error code and execute error callback*/
// 1290   SET_BIT(hi2s->ErrorCode, HAL_I2S_ERROR_DMA);
// 1291   HAL_I2S_ErrorCallback(hi2s);
// 1292 }
// 1293 
// 1294 /**
// 1295   * @brief Transmit an amount of data in non-blocking mode with Interrupt
// 1296   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1297   *         the configuration information for I2S module
// 1298   * @retval None
// 1299   */
// 1300 static void I2S_Transmit_IT(I2S_HandleTypeDef *hi2s)
// 1301 {
// 1302   /* Transmit data */
// 1303   hi2s->Instance->DR = (*hi2s->pTxBuffPtr++);
// 1304   hi2s->TxXferCount--;
// 1305     
// 1306   if(hi2s->TxXferCount == 0)
// 1307   {
// 1308     /* Disable TXE and ERR interrupt */
// 1309     __HAL_I2S_DISABLE_IT(hi2s, (I2S_IT_TXE | I2S_IT_ERR));
// 1310 
// 1311     hi2s->State = HAL_I2S_STATE_READY;
// 1312     HAL_I2S_TxCpltCallback(hi2s);
// 1313   }
// 1314 }
// 1315 
// 1316 /**
// 1317   * @brief Receive an amount of data in non-blocking mode with Interrupt
// 1318   * @param hi2s: I2S handle
// 1319   * @retval None
// 1320   */
// 1321 static void I2S_Receive_IT(I2S_HandleTypeDef *hi2s)
// 1322 {
// 1323   /* Receive data */    
// 1324   (*hi2s->pRxBuffPtr++) = hi2s->Instance->DR;
// 1325   hi2s->RxXferCount--;
// 1326   
// 1327   if(hi2s->RxXferCount == 0)
// 1328   {
// 1329     /* Disable RXNE and ERR interrupt */
// 1330     __HAL_I2S_DISABLE_IT(hi2s, (I2S_IT_RXNE | I2S_IT_ERR));
// 1331 
// 1332     hi2s->State = HAL_I2S_STATE_READY;     
// 1333     HAL_I2S_RxCpltCallback(hi2s); 
// 1334   }
// 1335 }
// 1336 
// 1337 
// 1338 /**
// 1339   * @brief This function handles I2S Communication Timeout.
// 1340   * @param  hi2s: pointer to a I2S_HandleTypeDef structure that contains
// 1341   *         the configuration information for I2S module
// 1342   * @param Flag: Flag checked
// 1343   * @param Status: Value of the flag expected
// 1344   * @param Timeout: Duration of the timeout
// 1345   * @retval HAL status
// 1346   */
// 1347 static HAL_StatusTypeDef I2S_WaitFlagStateUntilTimeout(I2S_HandleTypeDef *hi2s, uint32_t Flag, uint32_t Status, uint32_t Timeout)
// 1348 {
// 1349   uint32_t tickstart = 0;
// 1350   
// 1351   /* Get tick */
// 1352   tickstart = HAL_GetTick();
// 1353   
// 1354   /* Wait until flag is set */
// 1355   if(Status == RESET)
// 1356   {
// 1357     while(__HAL_I2S_GET_FLAG(hi2s, Flag) == RESET)
// 1358     {
// 1359       if(Timeout != HAL_MAX_DELAY)
// 1360       {
// 1361         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1362         {
// 1363           /* Set the I2S State ready */
// 1364           hi2s->State= HAL_I2S_STATE_READY;
// 1365 
// 1366           /* Process Unlocked */
// 1367           __HAL_UNLOCK(hi2s);
// 1368 
// 1369           return HAL_TIMEOUT;
// 1370         }
// 1371       }
// 1372     }
// 1373   }
// 1374   else
// 1375   {
// 1376     while(__HAL_I2S_GET_FLAG(hi2s, Flag) != RESET)
// 1377     {
// 1378       if(Timeout != HAL_MAX_DELAY)
// 1379       {
// 1380         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1381         {
// 1382           /* Set the I2S State ready */
// 1383           hi2s->State= HAL_I2S_STATE_READY;
// 1384 
// 1385           /* Process Unlocked */
// 1386           __HAL_UNLOCK(hi2s);
// 1387 
// 1388           return HAL_TIMEOUT;
// 1389         }
// 1390       }
// 1391     }
// 1392   }
// 1393   return HAL_OK;
// 1394 }
// 1395 
// 1396 /**
// 1397   * @}
// 1398   */
// 1399 #endif /* STM32L100xC ||
// 1400           STM32L151xC || STM32L151xCA || STM32L151xD || STM32L151xE || STM32L151xDX ||\\ 
// 1401           STM32L152xC || STM32L152xCA || STM32L152xD || STM32L152xE || STM32L152xDX ||\\ 
// 1402           STM32L162xC || STM32L162xCA || STM32L162xD || STM32L162xE || STM32L162xDX */
// 1403 #endif /* HAL_I2S_MODULE_ENABLED */
// 1404 /**
// 1405   * @}
// 1406   */
// 1407 
// 1408 /**
// 1409   * @}
// 1410   */
// 1411 
// 1412 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
