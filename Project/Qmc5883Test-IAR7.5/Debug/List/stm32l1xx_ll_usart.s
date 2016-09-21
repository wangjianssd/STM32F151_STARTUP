///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:16
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_usart.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_usart.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_usart.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_usart.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_usart.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   USART LL module driver.
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
//   40 #include "stm32l1xx_ll_usart.h"
//   41 #include "stm32l1xx_ll_rcc.h"
//   42 #include "stm32l1xx_ll_bus.h"
//   43 #ifdef  USE_FULL_ASSERT
//   44 #include "stm32_assert.h"
//   45 #else
//   46 #define assert_param(expr) ((void)0U)
//   47 #endif
//   48 
//   49 /** @addtogroup STM32L1xx_LL_Driver
//   50   * @{
//   51   */
//   52 
//   53 #if defined (USART1) || defined (USART2) || defined (USART3) || defined (UART4) || defined (UART5)
//   54 
//   55 /** @addtogroup USART_LL
//   56   * @{
//   57   */
//   58 
//   59 /* Private types -------------------------------------------------------------*/
//   60 /* Private variables ---------------------------------------------------------*/
//   61 /* Private constants ---------------------------------------------------------*/
//   62 /** @addtogroup USART_LL_Private_Constants
//   63   * @{
//   64   */
//   65 
//   66 /**
//   67   * @}
//   68   */
//   69 
//   70 
//   71 /* Private macros ------------------------------------------------------------*/
//   72 /** @addtogroup USART_LL_Private_Macros
//   73   * @{
//   74   */
//   75 
//   76 /* __BAUDRATE__ The maximum Baud Rate is derived from the maximum clock available
//   77  *              divided by the smallest oversampling used on the USART (i.e. 8)    */
//   78 #define IS_LL_USART_BAUDRATE(__BAUDRATE__) ((__BAUDRATE__) <= 10000000U)
//   79 
//   80 #define IS_LL_USART_DIRECTION(__VALUE__) (((__VALUE__) == LL_USART_DIRECTION_NONE) \ 
//   81                                        || ((__VALUE__) == LL_USART_DIRECTION_RX) \ 
//   82                                        || ((__VALUE__) == LL_USART_DIRECTION_TX) \ 
//   83                                        || ((__VALUE__) == LL_USART_DIRECTION_TX_RX))
//   84 
//   85 #define IS_LL_USART_PARITY(__VALUE__) (((__VALUE__) == LL_USART_PARITY_NONE) \ 
//   86                                     || ((__VALUE__) == LL_USART_PARITY_EVEN) \ 
//   87                                     || ((__VALUE__) == LL_USART_PARITY_ODD))
//   88 
//   89 #define IS_LL_USART_DATAWIDTH(__VALUE__) (((__VALUE__) == LL_USART_DATAWIDTH_8B) \ 
//   90                                        || ((__VALUE__) == LL_USART_DATAWIDTH_9B))
//   91 
//   92 #define IS_LL_USART_OVERSAMPLING(__VALUE__) (((__VALUE__) == LL_USART_OVERSAMPLING_16) \ 
//   93                                           || ((__VALUE__) == LL_USART_OVERSAMPLING_8))
//   94 
//   95 #define IS_LL_USART_LASTBITCLKOUTPUT(__VALUE__) (((__VALUE__) == LL_USART_LASTCLKPULSE_NO_OUTPUT) \ 
//   96                                               || ((__VALUE__) == LL_USART_LASTCLKPULSE_OUTPUT))
//   97 
//   98 #define IS_LL_USART_CLOCKPHASE(__VALUE__) (((__VALUE__) == LL_USART_PHASE_1EDGE) \ 
//   99                                         || ((__VALUE__) == LL_USART_PHASE_2EDGE))
//  100 
//  101 #define IS_LL_USART_CLOCKPOLARITY(__VALUE__) (((__VALUE__) == LL_USART_POLARITY_LOW) \ 
//  102                                            || ((__VALUE__) == LL_USART_POLARITY_HIGH))
//  103 
//  104 #define IS_LL_USART_CLOCKOUTPUT(__VALUE__) (((__VALUE__) == LL_USART_CLOCK_DISABLE) \ 
//  105                                          || ((__VALUE__) == LL_USART_CLOCK_ENABLE))
//  106 
//  107 #define IS_LL_USART_STOPBITS(__VALUE__) (((__VALUE__) == LL_USART_STOPBITS_0_5) \ 
//  108                                       || ((__VALUE__) == LL_USART_STOPBITS_1) \ 
//  109                                       || ((__VALUE__) == LL_USART_STOPBITS_1_5) \ 
//  110                                       || ((__VALUE__) == LL_USART_STOPBITS_2))
//  111 
//  112 #define IS_LL_USART_HWCONTROL(__VALUE__) (((__VALUE__) == LL_USART_HWCONTROL_NONE) \ 
//  113                                        || ((__VALUE__) == LL_USART_HWCONTROL_RTS) \ 
//  114                                        || ((__VALUE__) == LL_USART_HWCONTROL_CTS) \ 
//  115                                        || ((__VALUE__) == LL_USART_HWCONTROL_RTS_CTS))
//  116 
//  117 /**
//  118   * @}
//  119   */
//  120 
//  121 /* Private function prototypes -----------------------------------------------*/
//  122 
//  123 /* Exported functions --------------------------------------------------------*/
//  124 /** @addtogroup USART_LL_Exported_Functions
//  125   * @{
//  126   */
//  127 
//  128 /** @addtogroup USART_LL_EF_Init
//  129   * @{
//  130   */
//  131 
//  132 /**
//  133   * @brief  De-initialize USART registers (Registers restored to their default values).
//  134   * @param  USARTx USART Instance
//  135   * @retval An ErrorStatus enumeration value:
//  136   *          - SUCCESS: USART registers are de-initialized
//  137   *          - ERROR: USART registers are not de-initialized
//  138   */
//  139 ErrorStatus LL_USART_DeInit(USART_TypeDef *USARTx)
//  140 {
//  141   ErrorStatus status = SUCCESS;
//  142 
//  143   /* Check the parameters */
//  144   assert_param(IS_UART_INSTANCE(USARTx));
//  145 
//  146   if (USARTx == USART1)
//  147   {
//  148     /* Force reset of USART clock */
//  149     LL_APB2_GRP1_ForceReset(LL_APB2_GRP1_PERIPH_USART1);
//  150 
//  151     /* Release reset of USART clock */
//  152     LL_APB2_GRP1_ReleaseReset(LL_APB2_GRP1_PERIPH_USART1);
//  153   }
//  154   else if (USARTx == USART2)
//  155   {
//  156     /* Force reset of USART clock */
//  157     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_USART2);
//  158 
//  159     /* Release reset of USART clock */
//  160     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_USART2);
//  161   }
//  162   else if (USARTx == USART3)
//  163   {
//  164     /* Force reset of USART clock */
//  165     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_USART3);
//  166 
//  167     /* Release reset of USART clock */
//  168     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_USART3);
//  169   }
//  170 #if defined(UART4)
//  171   else if (USARTx == UART4)
//  172   {
//  173     /* Force reset of UART clock */
//  174     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_UART4);
//  175 
//  176     /* Release reset of UART clock */
//  177     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_UART4);
//  178   }
//  179 #endif /* UART4 */
//  180 #if defined(UART5)
//  181   else if (USARTx == UART5)
//  182   {
//  183     /* Force reset of UART clock */
//  184     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_UART5);
//  185 
//  186     /* Release reset of UART clock */
//  187     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_UART5);
//  188   }
//  189 #endif /* UART5 */
//  190   else
//  191   {
//  192     status = ERROR;
//  193   }
//  194 
//  195   return (status);
//  196 }
//  197 
//  198 /**
//  199   * @brief  Initialize USART registers according to the specified
//  200   *         parameters in USART_InitStruct.
//  201   * @note   As some bits in USART configuration registers can only be written when the USART is disabled (USART_CR1_UE bit =0),
//  202   *         USART IP should be in disabled state prior calling this function. Otherwise, ERROR result will be returned.
//  203   * @note   Baud rate value stored in USART_InitStruct BaudRate field, should be valid (different from 0).
//  204   * @param  USARTx USART Instance
//  205   * @param  USART_InitStruct: pointer to a LL_USART_InitTypeDef structure
//  206   *         that contains the configuration information for the specified USART peripheral.
//  207   * @retval An ErrorStatus enumeration value:
//  208   *          - SUCCESS: USART registers are initialized according to USART_InitStruct content
//  209   *          - ERROR: Problem occurred during USART Registers initialization
//  210   */
//  211 ErrorStatus LL_USART_Init(USART_TypeDef *USARTx, LL_USART_InitTypeDef *USART_InitStruct)
//  212 {
//  213   ErrorStatus status = ERROR;
//  214   uint32_t periphclk = LL_RCC_PERIPH_FREQUENCY_NO;
//  215   LL_RCC_ClocksTypeDef rcc_clocks;
//  216 
//  217   /* Check the parameters */
//  218   assert_param(IS_UART_INSTANCE(USARTx));
//  219   assert_param(IS_LL_USART_BAUDRATE(USART_InitStruct->BaudRate));
//  220   assert_param(IS_LL_USART_DATAWIDTH(USART_InitStruct->DataWidth));
//  221   assert_param(IS_LL_USART_STOPBITS(USART_InitStruct->StopBits));
//  222   assert_param(IS_LL_USART_PARITY(USART_InitStruct->Parity));
//  223   assert_param(IS_LL_USART_DIRECTION(USART_InitStruct->TransferDirection));
//  224   assert_param(IS_LL_USART_HWCONTROL(USART_InitStruct->HardwareFlowControl));
//  225   assert_param(IS_LL_USART_OVERSAMPLING(USART_InitStruct->OverSampling));
//  226 
//  227   /* USART needs to be in disabled state, in order to be able to configure some bits in
//  228      CRx registers */
//  229   if (LL_USART_IsEnabled(USARTx) == 0U)
//  230   {
//  231     /*---------------------------- USART CR1 Configuration -----------------------
//  232      * Configure USARTx CR1 (USART Word Length, Parity, Mode and Oversampling bits) with parameters:
//  233      * - DataWidth:          USART_CR1_M bits according to USART_InitStruct->DataWidth value
//  234      * - Parity:             USART_CR1_PCE, USART_CR1_PS bits according to USART_InitStruct->Parity value
//  235      * - TransferDirection:  USART_CR1_TE, USART_CR1_RE bits according to USART_InitStruct->TransferDirection value
//  236      * - Oversampling:       USART_CR1_OVER8 bit according to USART_InitStruct->OverSampling value.
//  237      */
//  238     MODIFY_REG(USARTx->CR1,
//  239                (USART_CR1_M | USART_CR1_PCE | USART_CR1_PS |
//  240                 USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
//  241                (USART_InitStruct->DataWidth | USART_InitStruct->Parity |
//  242                 USART_InitStruct->TransferDirection | USART_InitStruct->OverSampling));
//  243 
//  244     /*---------------------------- USART CR2 Configuration -----------------------
//  245      * Configure USARTx CR2 (Stop bits) with parameters:
//  246      * - Stop Bits:          USART_CR2_STOP bits according to USART_InitStruct->StopBits value.
//  247      * - CLKEN, CPOL, CPHA and LBCL bits are to be configured using LL_USART_ClockInit().
//  248      */
//  249     LL_USART_SetStopBitsLength(USARTx, USART_InitStruct->StopBits);
//  250 
//  251     /*---------------------------- USART CR3 Configuration -----------------------
//  252      * Configure USARTx CR3 (Hardware Flow Control) with parameters:
//  253      * - HardwareFlowControl: USART_CR3_RTSE, USART_CR3_CTSE bits according to USART_InitStruct->HardwareFlowControl value.
//  254      */
//  255     LL_USART_SetHWFlowCtrl(USARTx, USART_InitStruct->HardwareFlowControl);
//  256 
//  257     /*---------------------------- USART BRR Configuration -----------------------
//  258      * Retrieve Clock frequency used for USART Peripheral
//  259      */
//  260     LL_RCC_GetSystemClocksFreq(&rcc_clocks);
//  261     if (USARTx == USART1)
//  262     {
//  263       periphclk = rcc_clocks.PCLK2_Frequency;
//  264     }
//  265     else if (USARTx == USART2)
//  266     {
//  267       periphclk = rcc_clocks.PCLK1_Frequency;
//  268     }
//  269     else if (USARTx == USART3)
//  270     {
//  271       periphclk = rcc_clocks.PCLK1_Frequency;
//  272     }
//  273 #if defined(UART4)
//  274     else if (USARTx == UART4)
//  275     {
//  276       periphclk = rcc_clocks.PCLK1_Frequency;
//  277     }
//  278 #endif /* UART4 */
//  279 #if defined(UART5)
//  280     else if (USARTx == UART5)
//  281     {
//  282       periphclk = rcc_clocks.PCLK1_Frequency;
//  283     }
//  284 #endif /* UART5 */
//  285     else
//  286     {
//  287       /* Nothing to do, as error code is already assigned to ERROR value */
//  288     }
//  289 
//  290     /* Configure the USART Baud Rate :
//  291        - valid baud rate value (different from 0) is required
//  292        - Peripheral clock as returned by RCC service, should be valid (different from 0).
//  293     */
//  294     if ((periphclk != LL_RCC_PERIPH_FREQUENCY_NO)
//  295         && (USART_InitStruct->BaudRate != 0U))
//  296     {
//  297       status = SUCCESS;
//  298       LL_USART_SetBaudRate(USARTx,
//  299                            periphclk,
//  300                            USART_InitStruct->OverSampling,
//  301                            USART_InitStruct->BaudRate);
//  302     }
//  303   }
//  304   /* Endif (=> USART not in Disabled state => return ERROR) */
//  305 
//  306   return (status);
//  307 }
//  308 
//  309 /**
//  310   * @brief Set each @ref LL_USART_InitTypeDef field to default value.
//  311   * @param USART_InitStruct: pointer to a @ref LL_USART_InitTypeDef structure
//  312   *                          whose fields will be set to default values.
//  313   * @retval None
//  314   */
//  315 
//  316 void LL_USART_StructInit(LL_USART_InitTypeDef *USART_InitStruct)
//  317 {
//  318   /* Set USART_InitStruct fields to default values */
//  319   USART_InitStruct->BaudRate            = 9600U;
//  320   USART_InitStruct->DataWidth           = LL_USART_DATAWIDTH_8B;
//  321   USART_InitStruct->StopBits            = LL_USART_STOPBITS_1;
//  322   USART_InitStruct->Parity              = LL_USART_PARITY_NONE ;
//  323   USART_InitStruct->TransferDirection   = LL_USART_DIRECTION_TX_RX;
//  324   USART_InitStruct->HardwareFlowControl = LL_USART_HWCONTROL_NONE;
//  325   USART_InitStruct->OverSampling        = LL_USART_OVERSAMPLING_16;
//  326 }
//  327 
//  328 /**
//  329   * @brief  Initialize USART Clock related settings according to the
//  330   *         specified parameters in the USART_ClockInitStruct.
//  331   * @note   As some bits in USART configuration registers can only be written when the USART is disabled (USART_CR1_UE bit =0),
//  332   *         USART IP should be in disabled state prior calling this function. Otherwise, ERROR result will be returned.
//  333   * @param  USARTx USART Instance
//  334   * @param  USART_ClockInitStruct: pointer to a @ref LL_USART_ClockInitTypeDef structure
//  335   *         that contains the Clock configuration information for the specified USART peripheral.
//  336   * @retval An ErrorStatus enumeration value:
//  337   *          - SUCCESS: USART registers related to Clock settings are initialized according to USART_ClockInitStruct content
//  338   *          - ERROR: Problem occurred during USART Registers initialization
//  339   */
//  340 ErrorStatus LL_USART_ClockInit(USART_TypeDef *USARTx, LL_USART_ClockInitTypeDef *USART_ClockInitStruct)
//  341 {
//  342   ErrorStatus status = SUCCESS;
//  343 
//  344   /* Check USART Instance and Clock signal output parameters */
//  345   assert_param(IS_UART_INSTANCE(USARTx));
//  346   assert_param(IS_LL_USART_CLOCKOUTPUT(USART_ClockInitStruct->ClockOutput));
//  347 
//  348   /* USART needs to be in disabled state, in order to be able to configure some bits in
//  349      CRx registers */
//  350   if (LL_USART_IsEnabled(USARTx) == 0U)
//  351   {
//  352     /*---------------------------- USART CR2 Configuration -----------------------*/
//  353     /* If Clock signal has to be output */
//  354     if (USART_ClockInitStruct->ClockOutput == LL_USART_CLOCK_DISABLE)
//  355     {
//  356       /* Deactivate Clock signal delivery :
//  357        * - Disable Clock Output:        USART_CR2_CLKEN cleared
//  358        */
//  359       LL_USART_DisableSCLKOutput(USARTx);
//  360     }
//  361     else
//  362     {
//  363       /* Ensure USART instance is USART capable */
//  364       assert_param(IS_USART_INSTANCE(USARTx));
//  365 
//  366       /* Check clock related parameters */
//  367       assert_param(IS_LL_USART_CLOCKPOLARITY(USART_ClockInitStruct->ClockPolarity));
//  368       assert_param(IS_LL_USART_CLOCKPHASE(USART_ClockInitStruct->ClockPhase));
//  369       assert_param(IS_LL_USART_LASTBITCLKOUTPUT(USART_ClockInitStruct->LastBitClockPulse));
//  370 
//  371       /*---------------------------- USART CR2 Configuration -----------------------
//  372        * Configure USARTx CR2 (Clock signal related bits) with parameters:
//  373        * - Enable Clock Output:         USART_CR2_CLKEN set
//  374        * - Clock Polarity:              USART_CR2_CPOL bit according to USART_ClockInitStruct->ClockPolarity value
//  375        * - Clock Phase:                 USART_CR2_CPHA bit according to USART_ClockInitStruct->ClockPhase value
//  376        * - Last Bit Clock Pulse Output: USART_CR2_LBCL bit according to USART_ClockInitStruct->LastBitClockPulse value.
//  377        */
//  378       MODIFY_REG(USARTx->CR2,
//  379                  USART_CR2_CLKEN | USART_CR2_CPHA | USART_CR2_CPOL | USART_CR2_LBCL,
//  380                  USART_CR2_CLKEN | USART_ClockInitStruct->ClockPolarity |
//  381                  USART_ClockInitStruct->ClockPhase | USART_ClockInitStruct->LastBitClockPulse);
//  382     }
//  383   }
//  384   /* Else (USART not in Disabled state => return ERROR */
//  385   else
//  386   {
//  387     status = ERROR;
//  388   }
//  389 
//  390   return (status);
//  391 }
//  392 
//  393 /**
//  394   * @brief Set each field of a @ref LL_USART_ClockInitTypeDef type structure to default value.
//  395   * @param USART_ClockInitStruct: pointer to a @ref LL_USART_ClockInitTypeDef structure
//  396   *                               whose fields will be set to default values.
//  397   * @retval None
//  398   */
//  399 void LL_USART_ClockStructInit(LL_USART_ClockInitTypeDef *USART_ClockInitStruct)
//  400 {
//  401   /* Set LL_USART_ClockInitStruct fields with default values */
//  402   USART_ClockInitStruct->ClockOutput       = LL_USART_CLOCK_DISABLE;
//  403   USART_ClockInitStruct->ClockPolarity     = LL_USART_POLARITY_LOW;            /* Not relevant when ClockOutput = LL_USART_CLOCK_DISABLE */
//  404   USART_ClockInitStruct->ClockPhase        = LL_USART_PHASE_1EDGE;             /* Not relevant when ClockOutput = LL_USART_CLOCK_DISABLE */
//  405   USART_ClockInitStruct->LastBitClockPulse = LL_USART_LASTCLKPULSE_NO_OUTPUT;  /* Not relevant when ClockOutput = LL_USART_CLOCK_DISABLE */
//  406 }
//  407 
//  408 /**
//  409   * @}
//  410   */
//  411 
//  412 /**
//  413   * @}
//  414   */
//  415 
//  416 /**
//  417   * @}
//  418   */
//  419 
//  420 #endif /* USART1 || USART2|| USART3 || UART4 || UART5 */
//  421 
//  422 /**
//  423   * @}
//  424   */
//  425 
//  426 #endif /* USE_FULL_LL_DRIVER */
//  427 
//  428 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
//  429 
// 
//
// 
//
//
//Errors: none
//Warnings: none
