///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:16
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_spi.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_spi.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_spi.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_spi.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_spi.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   SPI LL module driver.
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   12   *
//   13   * Redistribution and use in source and binary forms, with or without modification,
//   14   * are permitted provided that the following conditions are met:
//   15   *   1. Redistributions of source code must retain the above copyright notice,
//   16   *      this list of conditions and the following disclaimer.
//   17   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   18   *      this list of conditions and the following disclaimer in the documentation
//   19   *      and/or other materials provided with the distribution.
//   20   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   21   *      may be used to endorse or promote products derived from this software
//   22   *      without specific prior written permission.
//   23   *
//   24   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   25   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   26   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   27   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   28   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   29   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   30   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   31   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   32   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   33   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   34   *
//   35   ******************************************************************************
//   36   */
//   37 #if defined(USE_FULL_LL_DRIVER)
//   38 
//   39 /* Includes ------------------------------------------------------------------*/
//   40 #include "stm32l1xx_ll_spi.h"
//   41 #include "stm32l1xx_ll_bus.h"
//   42 #include "stm32l1xx_ll_rcc.h"
//   43 
//   44 #ifdef  USE_FULL_ASSERT
//   45 #include "stm32_assert.h"
//   46 #else
//   47 #define assert_param(expr) ((void)0U)
//   48 #endif
//   49 
//   50 /** @addtogroup STM32L1xx_LL_Driver
//   51   * @{
//   52   */
//   53 
//   54 #if defined (SPI1) || defined (SPI2) || defined (SPI3)
//   55 
//   56 /** @addtogroup SPI_LL
//   57   * @{
//   58   */
//   59 
//   60 /* Private types -------------------------------------------------------------*/
//   61 /* Private variables ---------------------------------------------------------*/
//   62 
//   63 /* Private constants ---------------------------------------------------------*/
//   64 /** @defgroup SPI_LL_Private_Constants SPI Private Constants
//   65   * @{
//   66   */
//   67 /* SPI registers Masks */
//   68 #define SPI_CR1_CLEAR_MASK                 (SPI_CR1_CPHA    | SPI_CR1_CPOL     | SPI_CR1_MSTR   | \ 
//   69                                             SPI_CR1_BR      | SPI_CR1_LSBFIRST | SPI_CR1_SSI    | \ 
//   70                                             SPI_CR1_SSM     | SPI_CR1_RXONLY   | SPI_CR1_DFF    | \ 
//   71                                             SPI_CR1_CRCNEXT | SPI_CR1_CRCEN    | SPI_CR1_BIDIOE | \ 
//   72                                             SPI_CR1_BIDIMODE)
//   73 /**
//   74   * @}
//   75   */
//   76 
//   77 /* Private macros ------------------------------------------------------------*/
//   78 /** @defgroup SPI_LL_Private_Macros SPI Private Macros
//   79   * @{
//   80   */
//   81 #define IS_LL_SPI_TRANSFER_DIRECTION(__VALUE__) (((__VALUE__) == LL_SPI_FULL_DUPLEX)    \ 
//   82                                               || ((__VALUE__) == LL_SPI_SIMPLEX_RX)     \ 
//   83                                               || ((__VALUE__) == LL_SPI_HALF_DUPLEX_RX) \ 
//   84                                               || ((__VALUE__) == LL_SPI_HALF_DUPLEX_TX))
//   85 
//   86 #define IS_LL_SPI_MODE(__VALUE__) (((__VALUE__) == LL_SPI_MODE_MASTER) \ 
//   87                                 || ((__VALUE__) == LL_SPI_MODE_SLAVE))
//   88 
//   89 #define IS_LL_SPI_DATAWIDTH(__VALUE__) (((__VALUE__) == LL_SPI_DATAWIDTH_8BIT)  \ 
//   90                                      || ((__VALUE__) == LL_SPI_DATAWIDTH_16BIT))
//   91 
//   92 #define IS_LL_SPI_POLARITY(__VALUE__) (((__VALUE__) == LL_SPI_POLARITY_LOW) \ 
//   93                                     || ((__VALUE__) == LL_SPI_POLARITY_HIGH))
//   94 
//   95 #define IS_LL_SPI_PHASE(__VALUE__) (((__VALUE__) == LL_SPI_PHASE_1EDGE) \ 
//   96                                  || ((__VALUE__) == LL_SPI_PHASE_2EDGE))
//   97 
//   98 #define IS_LL_SPI_NSS(__VALUE__) (((__VALUE__) == LL_SPI_NSS_SOFT) \ 
//   99                                || ((__VALUE__) == LL_SPI_NSS_HARD_INPUT) \ 
//  100                                || ((__VALUE__) == LL_SPI_NSS_HARD_OUTPUT))
//  101 
//  102 #define IS_LL_SPI_BAUDRATE(__VALUE__) (((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV2)   \ 
//  103                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV4)   \ 
//  104                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV8)   \ 
//  105                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV16)  \ 
//  106                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV32)  \ 
//  107                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV64)  \ 
//  108                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV128) \ 
//  109                                     || ((__VALUE__) == LL_SPI_BAUDRATEPRESCALER_DIV256))
//  110 
//  111 #define IS_LL_SPI_BITORDER(__VALUE__) (((__VALUE__) == LL_SPI_LSB_FIRST) \ 
//  112                                     || ((__VALUE__) == LL_SPI_MSB_FIRST))
//  113 
//  114 #define IS_LL_SPI_CRCCALCULATION(__VALUE__) (((__VALUE__) == LL_SPI_CRCCALCULATION_ENABLE) \ 
//  115                                           || ((__VALUE__) == LL_SPI_CRCCALCULATION_DISABLE))
//  116 
//  117 #define IS_LL_SPI_CRC_POLYNOMIAL(__VALUE__) ((__VALUE__) >= 0x1U)
//  118 
//  119 /**
//  120   * @}
//  121   */
//  122 
//  123 /* Private function prototypes -----------------------------------------------*/
//  124 
//  125 /* Exported functions --------------------------------------------------------*/
//  126 /** @addtogroup SPI_LL_Exported_Functions
//  127   * @{
//  128   */
//  129 
//  130 /** @addtogroup SPI_LL_EF_Init
//  131   * @{
//  132   */
//  133 
//  134 /**
//  135   * @brief  De-initialize the SPI registers to their default reset values.
//  136   * @param  SPIx SPI Instance
//  137   * @retval An ErrorStatus enumeration value:
//  138   *          - SUCCESS: SPI registers are de-initialized
//  139   *          - ERROR: SPI registers are not de-initialized
//  140   */
//  141 ErrorStatus LL_SPI_DeInit(SPI_TypeDef *SPIx)
//  142 {
//  143   ErrorStatus status = ERROR;
//  144 
//  145   /* Check the parameters */
//  146   assert_param(IS_SPI_ALL_INSTANCE(SPIx));
//  147 
//  148 #if defined(SPI1)
//  149   if (SPIx == SPI1)
//  150   {
//  151     /* Force reset of SPI clock */
//  152     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_SPI1);
//  153 
//  154     /* Release reset of SPI clock */
//  155     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_SPI1);
//  156 
//  157     status = SUCCESS;
//  158   }
//  159 #endif /* SPI1 */
//  160 #if defined(SPI2)
//  161   if (SPIx == SPI2)
//  162   {
//  163     /* Force reset of SPI clock */
//  164     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_SPI2);
//  165 
//  166     /* Release reset of SPI clock */
//  167     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_SPI2);
//  168 
//  169     status = SUCCESS;
//  170   }
//  171 #endif /* SPI2 */
//  172 #if defined(SPI3)
//  173   if (SPIx == SPI3)
//  174   {
//  175     /* Force reset of SPI clock */
//  176     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_SPI3);
//  177 
//  178     /* Release reset of SPI clock */
//  179     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_SPI3);
//  180 
//  181     status = SUCCESS;
//  182   }
//  183 #endif /* SPI3 */
//  184 
//  185   return status;
//  186 }
//  187 
//  188 /**
//  189   * @brief  Initialize the SPI registers according to the specified parameters in SPI_InitStruct.
//  190   * @note   As some bits in SPI configuration registers can only be written when the SPI is disabled (SPI_CR1_SPE bit =0),
//  191   *         SPI IP should be in disabled state prior calling this function. Otherwise, ERROR result will be returned.
//  192   * @param  SPIx SPI Instance
//  193   * @param  SPI_InitStruct pointer to a @ref LL_SPI_InitTypeDef structure
//  194   * @retval An ErrorStatus enumeration value. (Return always SUCCESS)
//  195   */
//  196 ErrorStatus LL_SPI_Init(SPI_TypeDef *SPIx, LL_SPI_InitTypeDef *SPI_InitStruct)
//  197 {
//  198   ErrorStatus status = ERROR;
//  199 
//  200   /* Check the SPI Instance SPIx*/
//  201   assert_param(IS_SPI_ALL_INSTANCE(SPIx));
//  202 
//  203   /* Check the SPI parameters from SPI_InitStruct*/
//  204   assert_param(IS_LL_SPI_TRANSFER_DIRECTION(SPI_InitStruct->TransferDirection));
//  205   assert_param(IS_LL_SPI_MODE(SPI_InitStruct->Mode));
//  206   assert_param(IS_LL_SPI_DATAWIDTH(SPI_InitStruct->DataWidth));
//  207   assert_param(IS_LL_SPI_POLARITY(SPI_InitStruct->ClockPolarity));
//  208   assert_param(IS_LL_SPI_PHASE(SPI_InitStruct->ClockPhase));
//  209   assert_param(IS_LL_SPI_NSS(SPI_InitStruct->NSS));
//  210   assert_param(IS_LL_SPI_BAUDRATE(SPI_InitStruct->BaudRate));
//  211   assert_param(IS_LL_SPI_BITORDER(SPI_InitStruct->BitOrder));
//  212   assert_param(IS_LL_SPI_CRCCALCULATION(SPI_InitStruct->CRCCalculation));
//  213 
//  214   if (LL_SPI_IsEnabled(SPIx) == 0x00000000U)
//  215   {
//  216     /*---------------------------- SPIx CR1 Configuration ------------------------
//  217      * Configure SPIx CR1 with parameters:
//  218      * - TransferDirection:  SPI_CR1_BIDIMODE, SPI_CR1_BIDIOE and SPI_CR1_RXONLY bits
//  219      * - Master/Slave Mode:  SPI_CR1_MSTR bit
//  220      * - DataWidth:          SPI_CR1_DFF bit
//  221      * - ClockPolarity:      SPI_CR1_CPOL bit
//  222      * - ClockPhase:         SPI_CR1_CPHA bit
//  223      * - NSS management:     SPI_CR1_SSM bit
//  224      * - BaudRate prescaler: SPI_CR1_BR[2:0] bits
//  225      * - BitOrder:           SPI_CR1_LSBFIRST bit
//  226      * - CRCCalculation:     SPI_CR1_CRCEN bit
//  227      */
//  228     MODIFY_REG(SPIx->CR1,
//  229                SPI_CR1_CLEAR_MASK,
//  230                SPI_InitStruct->TransferDirection | SPI_InitStruct->Mode | SPI_InitStruct->DataWidth |
//  231                SPI_InitStruct->ClockPolarity | SPI_InitStruct->ClockPhase |
//  232                SPI_InitStruct->NSS | SPI_InitStruct->BaudRate |
//  233                SPI_InitStruct->BitOrder | SPI_InitStruct->CRCCalculation);
//  234 
//  235     /*---------------------------- SPIx CR2 Configuration ------------------------
//  236      * Configure SPIx CR2 with parameters:
//  237      * - NSS management:     SSOE bit
//  238      */
//  239     MODIFY_REG(SPIx->CR2, SPI_CR2_SSOE, (SPI_InitStruct->NSS >> 16U));
//  240 
//  241     /*---------------------------- SPIx CRCPR Configuration ----------------------
//  242      * Configure SPIx CRCPR with parameters:
//  243      * - CRCPoly:            CRCPOLY[15:0] bits
//  244      */
//  245     if (SPI_InitStruct->CRCCalculation == LL_SPI_CRCCALCULATION_ENABLE)
//  246     {
//  247       assert_param(IS_LL_SPI_CRC_POLYNOMIAL(SPI_InitStruct->CRCPoly));
//  248       LL_SPI_SetCRCPolynomial(SPIx, SPI_InitStruct->CRCPoly);
//  249     }
//  250     status = SUCCESS;
//  251   }
//  252 
//  253 #if defined (SPI_I2S_SUPPORT)
//  254   /* Activate the SPI mode (Reset I2SMOD bit in I2SCFGR register) */
//  255   CLEAR_BIT(SPIx->I2SCFGR, SPI_I2SCFGR_I2SMOD);
//  256 #endif /* SPI_I2S_SUPPORT */
//  257   return status;
//  258 }
//  259 
//  260 /**
//  261   * @brief  Set each @ref LL_SPI_InitTypeDef field to default value.
//  262   * @param  SPI_InitStruct pointer to a @ref LL_SPI_InitTypeDef structure
//  263   * whose fields will be set to default values.
//  264   * @retval None
//  265   */
//  266 void LL_SPI_StructInit(LL_SPI_InitTypeDef *SPI_InitStruct)
//  267 {
//  268   /* Set SPI_InitStruct fields to default values */
//  269   SPI_InitStruct->TransferDirection = LL_SPI_FULL_DUPLEX;
//  270   SPI_InitStruct->Mode              = LL_SPI_MODE_SLAVE;
//  271   SPI_InitStruct->DataWidth         = LL_SPI_DATAWIDTH_8BIT;
//  272   SPI_InitStruct->ClockPolarity     = LL_SPI_POLARITY_LOW;
//  273   SPI_InitStruct->ClockPhase        = LL_SPI_PHASE_1EDGE;
//  274   SPI_InitStruct->NSS               = LL_SPI_NSS_HARD_INPUT;
//  275   SPI_InitStruct->BaudRate          = LL_SPI_BAUDRATEPRESCALER_DIV2;
//  276   SPI_InitStruct->BitOrder          = LL_SPI_MSB_FIRST;
//  277   SPI_InitStruct->CRCCalculation    = LL_SPI_CRCCALCULATION_DISABLE;
//  278   SPI_InitStruct->CRCPoly           = 7U;
//  279 }
//  280 
//  281 /**
//  282   * @}
//  283   */
//  284 
//  285 /**
//  286   * @}
//  287   */
//  288 
//  289 /**
//  290   * @}
//  291   */
//  292 
//  293 #if defined(SPI_I2S_SUPPORT)
//  294 /** @addtogroup I2S_LL
//  295   * @{
//  296   */
//  297 
//  298 /* Private types -------------------------------------------------------------*/
//  299 /* Private variables ---------------------------------------------------------*/
//  300 /* Private constants ---------------------------------------------------------*/
//  301 /** @defgroup I2S_LL_Private_Constants I2S Private Constants
//  302   * @{
//  303   */
//  304 /* I2S registers Masks */
//  305 #define I2S_I2SCFGR_CLEAR_MASK             (SPI_I2SCFGR_CHLEN   | SPI_I2SCFGR_DATLEN | \ 
//  306                                             SPI_I2SCFGR_CKPOL   | SPI_I2SCFGR_I2SSTD | \ 
//  307                                             SPI_I2SCFGR_I2SCFG  | SPI_I2SCFGR_I2SMOD )
//  308 
//  309 #define I2S_I2SPR_CLEAR_MASK               0x0002U
//  310 /**
//  311   * @}
//  312   */
//  313 /* Private macros ------------------------------------------------------------*/
//  314 /** @defgroup I2S_LL_Private_Macros I2S Private Macros
//  315   * @{
//  316   */
//  317 
//  318 #define IS_LL_I2S_DATAFORMAT(__VALUE__)  (((__VALUE__) == LL_I2S_DATAFORMAT_16B)          \ 
//  319                                        || ((__VALUE__) == LL_I2S_DATAFORMAT_16B_EXTENDED) \ 
//  320                                        || ((__VALUE__) == LL_I2S_DATAFORMAT_24B)          \ 
//  321                                        || ((__VALUE__) == LL_I2S_DATAFORMAT_32B))
//  322 
//  323 #define IS_LL_I2S_CPOL(__VALUE__)        (((__VALUE__) == LL_I2S_POLARITY_LOW)  \ 
//  324                                        || ((__VALUE__) == LL_I2S_POLARITY_HIGH))
//  325 
//  326 #define IS_LL_I2S_STANDARD(__VALUE__)    (((__VALUE__) == LL_I2S_STANDARD_PHILIPS)   \ 
//  327                                        || ((__VALUE__) == LL_I2S_STANDARD_MSB)       \ 
//  328                                        || ((__VALUE__) == LL_I2S_STANDARD_LSB)       \ 
//  329                                        || ((__VALUE__) == LL_I2S_STANDARD_PCM_SHORT) \ 
//  330                                        || ((__VALUE__) == LL_I2S_STANDARD_PCM_LONG))
//  331 
//  332 #define IS_LL_I2S_MODE(__VALUE__)        (((__VALUE__) == LL_I2S_MODE_SLAVE_TX)  \ 
//  333                                        || ((__VALUE__) == LL_I2S_MODE_SLAVE_RX)  \ 
//  334                                        || ((__VALUE__) == LL_I2S_MODE_MASTER_TX) \ 
//  335                                        || ((__VALUE__) == LL_I2S_MODE_MASTER_RX))
//  336 
//  337 #define IS_LL_I2S_MCLK_OUTPUT(__VALUE__) (((__VALUE__) == LL_I2S_MCLK_OUTPUT_ENABLE) \ 
//  338                                        || ((__VALUE__) == LL_I2S_MCLK_OUTPUT_DISABLE))
//  339 
//  340 #define IS_LL_I2S_AUDIO_FREQ(__VALUE__) ((((__VALUE__) >= LL_I2S_AUDIOFREQ_8K)    \ 
//  341                                        && ((__VALUE__) <= LL_I2S_AUDIOFREQ_192K)) \ 
//  342                                        || ((__VALUE__) == LL_I2S_AUDIOFREQ_DEFAULT))
//  343 
//  344 #define IS_LL_I2S_PRESCALER_LINEAR(__VALUE__)  ((__VALUE__) >= 0x2U)
//  345 
//  346 #define IS_LL_I2S_PRESCALER_PARITY(__VALUE__) (((__VALUE__) == LL_I2S_PRESCALER_PARITY_EVEN) \ 
//  347                                            || ((__VALUE__) == LL_I2S_PRESCALER_PARITY_ODD))
//  348 /**
//  349   * @}
//  350   */
//  351 
//  352 /* Private function prototypes -----------------------------------------------*/
//  353 
//  354 /* Exported functions --------------------------------------------------------*/
//  355 /** @addtogroup I2S_LL_Exported_Functions
//  356   * @{
//  357   */
//  358 
//  359 /** @addtogroup I2S_LL_EF_Init
//  360   * @{
//  361   */
//  362 
//  363 /**
//  364   * @brief  De-initialize the SPI/I2S registers to their default reset values.
//  365   * @param  SPIx SPI Instance
//  366   * @retval An ErrorStatus enumeration value:
//  367   *          - SUCCESS: SPI registers are de-initialized
//  368   *          - ERROR: SPI registers are not de-initialized
//  369   */
//  370 ErrorStatus LL_I2S_DeInit(SPI_TypeDef *SPIx)
//  371 {
//  372   return LL_SPI_DeInit(SPIx);
//  373 }
//  374 
//  375 /**
//  376   * @brief  Initializes the SPI/I2S registers according to the specified parameters in I2S_InitStruct.
//  377   * @note   As some bits in SPI configuration registers can only be written when the SPI is disabled (SPI_CR1_SPE bit =0),
//  378   *         SPI IP should be in disabled state prior calling this function. Otherwise, ERROR result will be returned.
//  379   * @param  SPIx SPI Instance
//  380   * @param  I2S_InitStruct pointer to a @ref LL_I2S_InitTypeDef structure
//  381   * @retval An ErrorStatus enumeration value:
//  382   *          - SUCCESS: SPI registers are Initialized
//  383   *          - ERROR: SPI registers are not Initialized
//  384   */
//  385 ErrorStatus LL_I2S_Init(SPI_TypeDef *SPIx, LL_I2S_InitTypeDef *I2S_InitStruct)
//  386 {
//  387   uint16_t i2sdiv = 2U, i2sodd = 0U, packetlength = 1U;
//  388   uint32_t tmp = 0U;
//  389   LL_RCC_ClocksTypeDef rcc_clocks;
//  390   uint32_t sourceclock = 0U;
//  391   ErrorStatus status = ERROR;
//  392 
//  393   /* Check the I2S parameters */
//  394   assert_param(IS_I2S_ALL_INSTANCE(SPIx));
//  395   assert_param(IS_LL_I2S_MODE(I2S_InitStruct->Mode));
//  396   assert_param(IS_LL_I2S_STANDARD(I2S_InitStruct->Standard));
//  397   assert_param(IS_LL_I2S_DATAFORMAT(I2S_InitStruct->DataFormat));
//  398   assert_param(IS_LL_I2S_MCLK_OUTPUT(I2S_InitStruct->MCLKOutput));
//  399   assert_param(IS_LL_I2S_AUDIO_FREQ(I2S_InitStruct->AudioFreq));
//  400   assert_param(IS_LL_I2S_CPOL(I2S_InitStruct->ClockPolarity));
//  401 
//  402   if (LL_I2S_IsEnabled(SPIx) == 0x00000000U)
//  403   {
//  404     /*---------------------------- SPIx I2SCFGR Configuration --------------------
//  405      * Configure SPIx I2SCFGR with parameters:
//  406      * - Mode:          SPI_I2SCFGR_I2SCFG[1:0] bit
//  407      * - Standard:      SPI_I2SCFGR_I2SSTD[1:0] and SPI_I2SCFGR_PCMSYNC bits
//  408      * - DataFormat:    SPI_I2SCFGR_CHLEN and SPI_I2SCFGR_DATLEN bits
//  409      * - ClockPolarity: SPI_I2SCFGR_CKPOL bit
//  410      */
//  411 
//  412     /* Write to SPIx I2SCFGR */
//  413     MODIFY_REG(SPIx->I2SCFGR,
//  414                I2S_I2SCFGR_CLEAR_MASK,
//  415                I2S_InitStruct->Mode | I2S_InitStruct->Standard |
//  416                I2S_InitStruct->DataFormat | I2S_InitStruct->ClockPolarity |
//  417                SPI_I2SCFGR_I2SMOD);
//  418 
//  419     /*---------------------------- SPIx I2SPR Configuration ----------------------
//  420      * Configure SPIx I2SPR with parameters:
//  421      * - MCLKOutput:    SPI_I2SPR_MCKOE bit
//  422      * - AudioFreq:     SPI_I2SPR_I2SDIV[7:0] and SPI_I2SPR_ODD bits
//  423      */
//  424 
//  425     /* If the default value has to be written, reinitialize i2sdiv and i2sodd*/
//  426     if (I2S_InitStruct->AudioFreq == LL_I2S_AUDIOFREQ_DEFAULT)
//  427     {
//  428       i2sodd = 0U;
//  429       i2sdiv = 2U;
//  430     }
//  431     /* If the requested audio frequency is not the default, compute the prescaler */
//  432     else
//  433     {
//  434       /* Check the frame length (For the Prescaler computing) */
//  435       if (I2S_InitStruct->DataFormat == LL_I2S_DATAFORMAT_16B)
//  436       {
//  437         /* Packet length is 16 bits */
//  438         packetlength = 1U;
//  439       }
//  440       else
//  441       {
//  442         /* Packet length is 32 bits */
//  443         packetlength = 2U;
//  444       }
//  445 
//  446       /* I2S Clock source is System clock: Get System Clock frequency */
//  447       LL_RCC_GetSystemClocksFreq(&rcc_clocks);
//  448 
//  449       /* Get the source clock value: based on System Clock value */
//  450       sourceclock = rcc_clocks.SYSCLK_Frequency;
//  451 
//  452       /* Compute the Real divider depending on the MCLK output state with a floating point */
//  453       if (I2S_InitStruct->MCLKOutput == LL_I2S_MCLK_OUTPUT_ENABLE)
//  454       {
//  455         /* MCLK output is enabled */
//  456         tmp = (uint16_t)(((((sourceclock / 256U) * 10U) / I2S_InitStruct->AudioFreq)) + 5U);
//  457       }
//  458       else
//  459       {
//  460         /* MCLK output is disabled */
//  461         tmp = (uint16_t)(((((sourceclock / (32U * packetlength)) * 10U) / I2S_InitStruct->AudioFreq)) + 5U);
//  462       }
//  463 
//  464       /* Remove the floating point */
//  465       tmp = tmp / 10U;
//  466 
//  467       /* Check the parity of the divider */
//  468       i2sodd = (uint16_t)(tmp & (uint16_t)0x0001U);
//  469 
//  470       /* Compute the i2sdiv prescaler */
//  471       i2sdiv = (uint16_t)((tmp - i2sodd) / 2U);
//  472 
//  473       /* Get the Mask for the Odd bit (SPI_I2SPR[8]) register */
//  474       i2sodd = (uint16_t)(i2sodd << 8U);
//  475     }
//  476 
//  477     /* Test if the divider is 1 or 0 or greater than 0xFF */
//  478     if ((i2sdiv < 2U) || (i2sdiv > 0xFFU))
//  479     {
//  480       /* Set the default values */
//  481       i2sdiv = 2U;
//  482       i2sodd = 0U;
//  483     }
//  484 
//  485     /* Write to SPIx I2SPR register the computed value */
//  486     WRITE_REG(SPIx->I2SPR, i2sdiv | i2sodd | I2S_InitStruct->MCLKOutput);
//  487 
//  488     status = SUCCESS;
//  489   }
//  490   return status;
//  491 }
//  492 
//  493 /**
//  494   * @brief  Set each @ref LL_I2S_InitTypeDef field to default value.
//  495   * @param  I2S_InitStruct pointer to a @ref LL_I2S_InitTypeDef structure
//  496   *         whose fields will be set to default values.
//  497   * @retval None
//  498   */
//  499 void LL_I2S_StructInit(LL_I2S_InitTypeDef *I2S_InitStruct)
//  500 {
//  501   /*--------------- Reset I2S init structure parameters values -----------------*/
//  502   I2S_InitStruct->Mode              = LL_I2S_MODE_SLAVE_TX;
//  503   I2S_InitStruct->Standard          = LL_I2S_STANDARD_PHILIPS;
//  504   I2S_InitStruct->DataFormat        = LL_I2S_DATAFORMAT_16B;
//  505   I2S_InitStruct->MCLKOutput        = LL_I2S_MCLK_OUTPUT_DISABLE;
//  506   I2S_InitStruct->AudioFreq         = LL_I2S_AUDIOFREQ_DEFAULT;
//  507   I2S_InitStruct->ClockPolarity     = LL_I2S_POLARITY_LOW;
//  508 }
//  509 
//  510 /**
//  511   * @brief  Set linear and parity prescaler.
//  512   * @note   To calculate value of PrescalerLinear(I2SDIV[7:0] bits) and PrescalerParity(ODD bit)\n
//  513   *         Check Audio frequency table and formulas inside Reference Manual (SPI/I2S).
//  514   * @param  SPIx SPI Instance
//  515   * @param  PrescalerLinear value: Min_Data=0x02 and Max_Data=0xFF.
//  516   * @param  PrescalerParity This parameter can be one of the following values:
//  517   *         @arg @ref LL_I2S_PRESCALER_PARITY_EVEN
//  518   *         @arg @ref LL_I2S_PRESCALER_PARITY_ODD
//  519   * @retval None
//  520   */
//  521 void LL_I2S_ConfigPrescaler(SPI_TypeDef *SPIx, uint32_t PrescalerLinear, uint32_t PrescalerParity)
//  522 {
//  523   /* Check the I2S parameters */
//  524   assert_param(IS_I2S_ALL_INSTANCE(SPIx));
//  525   assert_param(IS_LL_I2S_PRESCALER_LINEAR(PrescalerLinear));
//  526   assert_param(IS_LL_I2S_PRESCALER_PARITY(PrescalerParity));
//  527 
//  528   /* Write to SPIx I2SPR */
//  529   MODIFY_REG(SPIx->I2SPR, SPI_I2SPR_I2SDIV | SPI_I2SPR_ODD, PrescalerLinear | (PrescalerParity << 8U));
//  530 }
//  531 
//  532 /**
//  533   * @}
//  534   */
//  535 
//  536 /**
//  537   * @}
//  538   */
//  539 
//  540 /**
//  541   * @}
//  542   */
//  543 #endif /* SPI_I2S_SUPPORT */
//  544 
//  545 #endif /* defined (SPI1) || defined (SPI2) || defined (SPI3) */
//  546 
//  547 /**
//  548   * @}
//  549   */
//  550 
//  551 #endif /* USE_FULL_LL_DRIVER */
//  552 
//  553 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
