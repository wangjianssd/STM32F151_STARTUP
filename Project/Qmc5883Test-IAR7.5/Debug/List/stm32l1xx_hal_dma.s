///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dma.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dma.c
//        -D USE_HAL_DRIVER -D STM32L151xD -lC
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List -lA
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List -o
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M3 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.3\arm\INC\c\DLib_Config_Full.h" -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Apps/Config\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Inc\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\Core\CMSIS\RTOS\Template\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Config\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/STM32L1xx_HAL_Driver/Inc/Legacy\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/portable/IAR/ARM_CM3\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/FreeRTOS/Source/include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Include\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/RTT\
//        -I D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../BSP/Inc/\
//        -I
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5/../../Drivers/Core/CMSIS/Device/ST/STM32L1xx/Include\
//        -Ol
//    List file    =  
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_dma.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GetTick

        PUBLIC HAL_DMA_Abort
        PUBLIC HAL_DMA_Abort_IT
        PUBLIC HAL_DMA_DeInit
        PUBLIC HAL_DMA_GetError
        PUBLIC HAL_DMA_GetState
        PUBLIC HAL_DMA_IRQHandler
        PUBLIC HAL_DMA_Init
        PUBLIC HAL_DMA_PollForTransfer
        PUBLIC HAL_DMA_RegisterCallback
        PUBLIC HAL_DMA_Start
        PUBLIC HAL_DMA_Start_IT
        PUBLIC HAL_DMA_UnRegisterCallback
        
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
        
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dma.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_dma.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   DMA HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the Direct Memory Access (DMA) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral State and errors functions
//   13   @verbatim     
//   14   ==============================================================================      
//   15                         ##### How to use this driver #####
//   16   ============================================================================== 
//   17   [..]
//   18    (#) Enable and configure the peripheral to be connected to the DMA Channel
//   19        (except for internal SRAM / FLASH memories: no initialization is 
//   20        necessary). Please refer to the Reference manual for connection between peripherals
//   21        and DMA requests.
//   22 
//   23    (#) For a given Channel, program the required configuration through the following parameters:   
//   24        Channel request, Transfer Direction, Source and Destination data formats,
//   25        Circular or Normal mode, Channel Priority level, Source and Destination Increment mode
//   26        using HAL_DMA_Init() function.
//   27 
//   28    (#) Use HAL_DMA_GetState() function to return the DMA state and HAL_DMA_GetError() in case of error 
//   29        detection.
//   30                     
//   31    (#) Use HAL_DMA_Abort() function to abort the current transfer
//   32                    
//   33      -@-   In Memory-to-Memory transfer mode, Circular mode is not allowed.
//   34      *** Polling mode IO operation ***
//   35      =================================   
//   36     [..] 
//   37       (+) Use HAL_DMA_Start() to start DMA transfer after the configuration of Source 
//   38           address and destination address and the Length of data to be transferred
//   39       (+) Use HAL_DMA_PollForTransfer() to poll for the end of current transfer, in this  
//   40           case a fixed Timeout can be configured by User depending from his application.
//   41 
//   42      *** Interrupt mode IO operation ***    
//   43      =================================== 
//   44     [..]
//   45       (+) Configure the DMA interrupt priority using HAL_NVIC_SetPriority()
//   46       (+) Enable the DMA IRQ handler using HAL_NVIC_EnableIRQ() 
//   47       (+) Use HAL_DMA_Start_IT() to start DMA transfer after the configuration of  
//   48           Source address and destination address and the Length of data to be transferred. 
//   49           In this case the DMA interrupt is configured 
//   50           (+) Use HAL_DMA_IRQHandler() called under DMA_IRQHandler() Interrupt subroutine
//   51       (+) At the end of data transfer HAL_DMA_IRQHandler() function is executed and user can 
//   52           add his own function by customization of function pointer XferCpltCallback and 
//   53               XferErrorCallback (i.e. a member of DMA handle structure).
//   54 
//   55      *** DMA HAL driver macros list ***
//   56      ============================================= 
//   57      [..]
//   58        Below the list of most used macros in DMA HAL driver.
//   59 
//   60        (+) __HAL_DMA_ENABLE: Enable the specified DMA Channel.
//   61        (+) __HAL_DMA_DISABLE: Disable the specified DMA Channel.
//   62        (+) __HAL_DMA_GET_FLAG: Get the DMA Channel pending flags.
//   63        (+) __HAL_DMA_CLEAR_FLAG: Clear the DMA Channel pending flags.
//   64        (+) __HAL_DMA_ENABLE_IT: Enable the specified DMA Channel interrupts.
//   65        (+) __HAL_DMA_DISABLE_IT: Disable the specified DMA Channel interrupts.
//   66        (+) __HAL_DMA_GET_IT_SOURCE: Check whether the specified DMA Channel interrupt has occurred or not. 
//   67 
//   68      [..] 
//   69       (@) You can refer to the DMA HAL driver header file for more useful macros  
//   70 
//   71   @endverbatim
//   72   ******************************************************************************
//   73   * @attention
//   74   *
//   75   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   76   *
//   77   * Redistribution and use in source and binary forms, with or without modification,
//   78   * are permitted provided that the following conditions are met:
//   79   *   1. Redistributions of source code must retain the above copyright notice,
//   80   *      this list of conditions and the following disclaimer.
//   81   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   82   *      this list of conditions and the following disclaimer in the documentation
//   83   *      and/or other materials provided with the distribution.
//   84   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   85   *      may be used to endorse or promote products derived from this software
//   86   *      without specific prior written permission.
//   87   *
//   88   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   89   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   90   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   91   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   92   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   93   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   94   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   95   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   96   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   97   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   98   *
//   99   ******************************************************************************
//  100   */ 
//  101 
//  102 /* Includes ------------------------------------------------------------------*/
//  103 #include "stm32l1xx_hal.h"
//  104 
//  105 /** @addtogroup STM32L1xx_HAL_Driver
//  106   * @{
//  107   */
//  108 
//  109 /** @defgroup DMA DMA
//  110   * @brief DMA HAL module driver
//  111   * @{
//  112   */
//  113 
//  114 #ifdef HAL_DMA_MODULE_ENABLED
//  115 
//  116 /* Private typedef -----------------------------------------------------------*/
//  117 /* Private define ------------------------------------------------------------*/
//  118 /* Private macro -------------------------------------------------------------*/
//  119 /* Private variables ---------------------------------------------------------*/
//  120 /* Private function prototypes -----------------------------------------------*/
//  121 /** @defgroup DMA_Private_Functions DMA Private Functions
//  122   * @{
//  123   */
//  124 static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
//  125 
//  126 /**
//  127   * @}
//  128   */
//  129 
//  130 /* Exported functions ---------------------------------------------------------*/
//  131 
//  132 /** @defgroup DMA_Exported_Functions DMA Exported Functions
//  133   * @{
//  134   */
//  135 
//  136 /** @defgroup DMA_Exported_Functions_Group1 Initialization and de-initialization functions
//  137  *  @brief   Initialization and de-initialization functions 
//  138  *
//  139 @verbatim   
//  140  ===============================================================================
//  141              ##### Initialization and de-initialization functions  #####
//  142  ===============================================================================  
//  143     [..]
//  144     This section provides functions allowing to initialize the DMA Channel source
//  145     and destination addresses, incrementation and data sizes, transfer direction, 
//  146     circular/normal mode selection, memory-to-memory mode selection and Channel priority value.
//  147     [..]
//  148     The HAL_DMA_Init() function follows the DMA configuration procedures as described in
//  149     reference manual.  
//  150 
//  151 @endverbatim
//  152   * @{
//  153   */
//  154   
//  155 /**
//  156   * @brief  Initialize the DMA according to the specified
//  157   *         parameters in the DMA_InitTypeDef and initialize the associated handle.
//  158   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
//  159   *               the configuration information for the specified DMA Channel.  
//  160   * @retval HAL status
//  161   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_DMA_Init
          CFI NoCalls
        THUMB
//  162 HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
//  163 { 
//  164   uint32_t tmp = 0;
HAL_DMA_Init:
        MOVS     R1,#+0
//  165   
//  166   /* Check the DMA handle allocation */
//  167   if(hdma == NULL)
        CMP      R0,#+0
        BNE.N    ??HAL_DMA_Init_0
//  168   {
//  169     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_Init_1
//  170   }
//  171   
//  172   /* Check the parameters */
//  173   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
//  174   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
//  175   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
//  176   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
//  177   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
//  178   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
//  179   assert_param(IS_DMA_MODE(hdma->Init.Mode));
//  180   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
//  181   
//  182 #if defined (DMA2)
//  183   /* calculation of the channel index */
//  184   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
??HAL_DMA_Init_0:
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1  ;; 0x40026408
        CMP      R1,R2
        BCS.N    ??HAL_DMA_Init_2
//  185   {
//  186     /* DMA1 */
//  187     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Channel2 - (uint32_t)DMA1_Channel1)) << 2;
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1_1  ;; 0xbffd9ff8
        ADDS     R1,R2,R1
        MOVS     R2,#+20
        UDIV     R1,R1,R2
        LSLS     R1,R1,#+2
        STR      R1,[R0, #+64]
//  188     hdma->DmaBaseAddress = DMA1;
        LDR.N    R1,??DataTable1_2  ;; 0x40026000
        STR      R1,[R0, #+60]
        B.N      ??HAL_DMA_Init_3
//  189   }
//  190   else 
//  191   {
//  192     /* DMA2 */
//  193     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Channel2 - (uint32_t)DMA2_Channel1)) << 2;
??HAL_DMA_Init_2:
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1_3  ;; 0xbffd9bf8
        ADDS     R1,R2,R1
        MOVS     R2,#+20
        UDIV     R1,R1,R2
        LSLS     R1,R1,#+2
        STR      R1,[R0, #+64]
//  194     hdma->DmaBaseAddress = DMA2;
        LDR.N    R1,??DataTable1_4  ;; 0x40026400
        STR      R1,[R0, #+60]
//  195   }
//  196 #else
//  197   /* calculation of the channel index */
//  198   /* DMA1 */
//  199   hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Channel2 - (uint32_t)DMA1_Channel1)) << 2;
//  200   hdma->DmaBaseAddress = DMA1;
//  201 #endif
//  202   
//  203   /* Change DMA peripheral state */
//  204   hdma->State = HAL_DMA_STATE_BUSY;
??HAL_DMA_Init_3:
        MOVS     R1,#+2
        STRB     R1,[R0, #+33]
//  205 
//  206   /* Get the CR register value */
//  207   tmp = hdma->Instance->CCR;
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
//  208   
//  209   /* Clear PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR bits */
//  210   tmp &= ((uint32_t)~(DMA_CCR_PL    | DMA_CCR_MSIZE  | DMA_CCR_PSIZE  | \ 
//  211                       DMA_CCR_MINC  | DMA_CCR_PINC   | DMA_CCR_CIRC   | \ 
//  212                       DMA_CCR_DIR));
        BFC      R1,#+4,#+10
//  213   
//  214   /* Prepare the DMA Channel configuration */
//  215   tmp |=  hdma->Init.Direction        |
//  216           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
//  217           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
//  218           hdma->Init.Mode                | hdma->Init.Priority;
        LDR      R2,[R0, #+4]
        LDR      R3,[R0, #+8]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+16]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+20]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+24]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+28]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
//  219 
//  220   /* Write to DMA Channel CR register */
//  221   hdma->Instance->CCR = tmp;  
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  222   
//  223   /* Clean callbacks */
//  224   hdma->XferCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
//  225   hdma->XferHalfCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
//  226   hdma->XferErrorCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
//  227   hdma->XferAbortCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+52]
//  228 
//  229   /* Initialise the error code */
//  230   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
//  231 
//  232   /* Initialize the DMA state*/
//  233   hdma->State = HAL_DMA_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+33]
//  234   
//  235   /* Allocate lock resource and initialize it */
//  236   hdma->Lock = HAL_UNLOCKED;
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  237   
//  238   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_Init_1:
        BX       LR               ;; return
//  239 }
          CFI EndBlock cfiBlock0
//  240 
//  241 /**
//  242   * @brief  DeInitialize the DMA peripheral.
//  243   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  244   *               the configuration information for the specified DMA Channel.  
//  245   * @retval HAL status
//  246   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_DMA_DeInit
          CFI NoCalls
        THUMB
//  247 HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma)
//  248 {
//  249   /* Check the DMA handle allocation */
//  250   if (NULL == hdma )
HAL_DMA_DeInit:
        CMP      R0,#+0
        BNE.N    ??HAL_DMA_DeInit_0
//  251   {
//  252     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_DeInit_1
//  253   }
//  254 
//  255   /* Check the parameters */
//  256   assert_param(IS_DMA_ALL_INSTANCE(hdma->Instance));
//  257 
//  258   /* Disable the selected DMA Channelx */
//  259   __HAL_DMA_DISABLE(hdma);
??HAL_DMA_DeInit_0:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  260 
//  261 #if defined (DMA2)
//  262   /* calculation of the channel index */
//  263   if ((uint32_t)(hdma->Instance) < (uint32_t)(DMA2_Channel1))
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1  ;; 0x40026408
        CMP      R1,R2
        BCS.N    ??HAL_DMA_DeInit_2
//  264   {
//  265     /* DMA1 */
//  266     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Channel2 - (uint32_t)DMA1_Channel1)) << 2;
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1_1  ;; 0xbffd9ff8
        ADDS     R1,R2,R1
        MOVS     R2,#+20
        UDIV     R1,R1,R2
        LSLS     R1,R1,#+2
        STR      R1,[R0, #+64]
//  267     hdma->DmaBaseAddress = DMA1;
        LDR.N    R1,??DataTable1_2  ;; 0x40026000
        STR      R1,[R0, #+60]
        B.N      ??HAL_DMA_DeInit_3
//  268   }
//  269   else 
//  270   {
//  271     /* DMA2 */
//  272     hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA2_Channel1) / ((uint32_t)DMA2_Channel2 - (uint32_t)DMA2_Channel1)) << 2;
??HAL_DMA_DeInit_2:
        LDR      R1,[R0, #+0]
        LDR.N    R2,??DataTable1_3  ;; 0xbffd9bf8
        ADDS     R1,R2,R1
        MOVS     R2,#+20
        UDIV     R1,R1,R2
        LSLS     R1,R1,#+2
        STR      R1,[R0, #+64]
//  273     hdma->DmaBaseAddress = DMA2;
        LDR.N    R1,??DataTable1_4  ;; 0x40026400
        STR      R1,[R0, #+60]
//  274   }
//  275 #else
//  276   /* calculation of the channel index */
//  277   /* DMA1 */
//  278   hdma->ChannelIndex = (((uint32_t)hdma->Instance - (uint32_t)DMA1_Channel1) / ((uint32_t)DMA1_Channel2 - (uint32_t)DMA1_Channel1)) << 2;
//  279   hdma->DmaBaseAddress = DMA1;
//  280 #endif
//  281   
//  282   /* Reset DMA Channel control register */
//  283   hdma->Instance->CCR  = 0;
??HAL_DMA_DeInit_3:
        MOVS     R1,#+0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  284 
//  285   /* Reset DMA Channel Number of Data to Transfer register */
//  286   hdma->Instance->CNDTR = 0;
        MOVS     R1,#+0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+4]
//  287 
//  288   /* Reset DMA Channel peripheral address register */
//  289   hdma->Instance->CPAR  = 0;
        MOVS     R1,#+0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+8]
//  290 
//  291   /* Reset DMA Channel memory address register */
//  292   hdma->Instance->CMAR = 0;
        MOVS     R1,#+0
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+12]
//  293 
//  294   /* Clear all flags */
//  295   hdma->DmaBaseAddress->IFCR = ((DMA_ISR_GIF1) << (hdma->ChannelIndex));
        MOVS     R1,#+1
        LDR      R2,[R0, #+64]
        LSLS     R1,R1,R2
        LDR      R2,[R0, #+60]
        STR      R1,[R2, #+4]
//  296 
//  297 /* Initialise the error code */
//  298   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
//  299 
//  300   /* Initialize the DMA state */
//  301   hdma->State = HAL_DMA_STATE_RESET;
        MOVS     R1,#+0
        STRB     R1,[R0, #+33]
//  302 
//  303   /* Release Lock */
//  304   __HAL_UNLOCK(hdma);
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  305 
//  306   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_DeInit_1:
        BX       LR               ;; return
//  307 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40026408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xbffd9ff8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40026000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xbffd9bf8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40026400
//  308 
//  309 /**
//  310   * @}
//  311   */
//  312 
//  313 /** @defgroup DMA_Exported_Functions_Group2 Input and Output operation functions 
//  314  *  @brief   Input and Output operation functions
//  315  *
//  316 @verbatim   
//  317  ===============================================================================
//  318                       #####  IO operation functions  #####
//  319  ===============================================================================  
//  320     [..]  This section provides functions allowing to:
//  321       (+) Configure the source, destination address and data length and Start DMA transfer
//  322       (+) Configure the source, destination address and data length and 
//  323           Start DMA transfer with interrupt
//  324       (+) Abort DMA transfer
//  325       (+) Poll for transfer complete
//  326       (+) Handle DMA interrupt request  
//  327 
//  328 @endverbatim
//  329   * @{
//  330   */
//  331 
//  332 /**
//  333   * @brief  Start the DMA Transfer.
//  334   * @param  hdma      : pointer to a DMA_HandleTypeDef structure that contains
//  335   *                     the configuration information for the specified DMA Channel.  
//  336   * @param  SrcAddress: The source memory Buffer address
//  337   * @param  DstAddress: The destination memory Buffer address
//  338   * @param  DataLength: The length of data to be transferred from source to destination
//  339   * @retval HAL status
//  340   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_DMA_Start
        THUMB
//  341 HAL_StatusTypeDef HAL_DMA_Start(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  342 {
HAL_DMA_Start:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  343   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  344 
//  345   /* Check the parameters */
//  346   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  347 
//  348   /* Process locked */
//  349   __HAL_LOCK(hdma);
        LDRB     R0,[R4, #+32]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_Start_1
??HAL_DMA_Start_0:
        MOVS     R0,#+1
        STRB     R0,[R4, #+32]
//  350 
//  351   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+33]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_2
//  352   {
//  353   /* Change DMA peripheral state */
//  354   hdma->State = HAL_DMA_STATE_BUSY;
        MOVS     R0,#+2
        STRB     R0,[R4, #+33]
//  355     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
//  356   
//  357   /* Disable the peripheral */
//  358   __HAL_DMA_DISABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R6,[R4, #+0]
        STR      R0,[R6, #+0]
//  359   
//  360     /* Configure the source, destination address and the data length & clear flags*/
//  361   DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
        MOVS     R0,R4
          CFI FunCall DMA_SetConfig
        BL       DMA_SetConfig
//  362 
//  363   /* Enable the Peripheral */
//  364   __HAL_DMA_ENABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMA_Start_3
//  365   }
//  366   else
//  367   {
//  368    /* Process Unlocked */
//  369    __HAL_UNLOCK(hdma);  
??HAL_DMA_Start_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  370    status = HAL_BUSY;
        MOVS     R5,#+2
//  371   }  
//  372   return status;
??HAL_DMA_Start_3:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_Start_1:
        POP      {R4-R6,PC}       ;; return
//  373 }
          CFI EndBlock cfiBlock2
//  374 
//  375 /**
//  376   * @brief  Start the DMA Transfer with interrupt enabled.
//  377   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
//  378   *                     the configuration information for the specified DMA Channel.  
//  379   * @param  SrcAddress: The source memory Buffer address
//  380   * @param  DstAddress: The destination memory Buffer address
//  381   * @param  DataLength: The length of data to be transferred from source to destination
//  382   * @retval HAL status
//  383   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_DMA_Start_IT
        THUMB
//  384 HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  385 {
HAL_DMA_Start_IT:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  386   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  387 
//  388   /* Check the parameters */
//  389   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  390 
//  391   /* Process locked */
//  392   __HAL_LOCK(hdma);
        LDRB     R0,[R4, #+32]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_IT_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_Start_IT_1
??HAL_DMA_Start_IT_0:
        MOVS     R0,#+1
        STRB     R0,[R4, #+32]
//  393 
//  394   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+33]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_IT_2
//  395   {
//  396   /* Change DMA peripheral state */
//  397   hdma->State = HAL_DMA_STATE_BUSY;
        MOVS     R0,#+2
        STRB     R0,[R4, #+33]
//  398     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
//  399   
//  400   /* Disable the peripheral */
//  401   __HAL_DMA_DISABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R6,[R4, #+0]
        STR      R0,[R6, #+0]
//  402   
//  403     /* Configure the source, destination address and the data length & clear flags*/
//  404   DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
        MOVS     R0,R4
          CFI FunCall DMA_SetConfig
        BL       DMA_SetConfig
//  405   
//  406   /* Enable the transfer complete interrupt */
//  407   /* Enable the transfer Error interrupt */
//  408     if(NULL != hdma->XferHalfCpltCallback )
        LDR      R0,[R4, #+44]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_Start_IT_3
//  409     {
//  410       /* Enable the Half transfer complete interrupt as well */
//  411       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xE
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMA_Start_IT_4
//  412     }
//  413     else
//  414     {
//  415       __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
??HAL_DMA_Start_IT_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  416       __HAL_DMA_ENABLE_IT(hdma, (DMA_IT_TC | DMA_IT_TE));
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xA
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  417     }
//  418    /* Enable the Peripheral */
//  419   __HAL_DMA_ENABLE(hdma);
??HAL_DMA_Start_IT_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMA_Start_IT_5
//  420   }
//  421   else
//  422   {      
//  423     /* Process Unlocked */
//  424     __HAL_UNLOCK(hdma); 
??HAL_DMA_Start_IT_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  425   
//  426     /* Remain BUSY */
//  427     status = HAL_BUSY;
        MOVS     R5,#+2
//  428   }    
//  429   return status;
??HAL_DMA_Start_IT_5:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_Start_IT_1:
        POP      {R4-R6,PC}       ;; return
//  430 } 
          CFI EndBlock cfiBlock3
//  431 
//  432 /**
//  433   * @brief  Abort the DMA Transfer.
//  434   * @param  hdma  : pointer to a DMA_HandleTypeDef structure that contains
//  435   *                 the configuration information for the specified DMA Channel.
//  436   * @retval HAL status
//  437   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_DMA_Abort
          CFI NoCalls
        THUMB
//  438 HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma)
//  439 {
//  440   HAL_StatusTypeDef status = HAL_OK;
HAL_DMA_Abort:
        MOVS     R1,#+0
//  441 
//  442     /* Disable DMA IT */
//  443     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0xE
        LDR      R3,[R0, #+0]
        STR      R2,[R3, #+0]
//  444   
//  445   /* Disable the channel */
//  446   __HAL_DMA_DISABLE(hdma);
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR      R3,[R0, #+0]
        STR      R2,[R3, #+0]
//  447 
//  448     /* Clear all flags */
//  449     hdma->DmaBaseAddress->IFCR = ((DMA_ISR_GIF1) << (hdma->ChannelIndex));
        MOVS     R2,#+1
        LDR      R3,[R0, #+64]
        LSLS     R2,R2,R3
        LDR      R3,[R0, #+60]
        STR      R2,[R3, #+4]
//  450   
//  451   /* Change the DMA state */
//  452   hdma->State = HAL_DMA_STATE_READY;
        MOVS     R2,#+1
        STRB     R2,[R0, #+33]
//  453   
//  454   /* Process Unlocked */
//  455   __HAL_UNLOCK(hdma);
        MOVS     R2,#+0
        STRB     R2,[R0, #+32]
//  456   
//  457   return status; 
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  458 }
          CFI EndBlock cfiBlock4
//  459 
//  460 /**
//  461   * @brief  Aborts the DMA Transfer in Interrupt mode.
//  462   * @param  hdma  : pointer to a DMA_HandleTypeDef structure that contains
//  463   *                 the configuration information for the specified DMA Stream.
//  464   * @retval HAL status
//  465   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_DMA_Abort_IT
        THUMB
//  466 HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma)
//  467 {  
HAL_DMA_Abort_IT:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  468   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R4,#+0
//  469   
//  470   if(HAL_DMA_STATE_BUSY != hdma->State)
        LDRB     R1,[R0, #+33]
        CMP      R1,#+2
        BEQ.N    ??HAL_DMA_Abort_IT_0
//  471   {
//  472     /* no transfer ongoing */
//  473     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
        MOVS     R1,#+4
        STR      R1,[R0, #+56]
//  474 
//  475     status = HAL_ERROR;
        MOVS     R4,#+1
        B.N      ??HAL_DMA_Abort_IT_1
//  476   }
//  477   else
//  478   {
//  479     /* Disable DMA IT */
//  480     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
??HAL_DMA_Abort_IT_0:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0xE
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  481 
//  482     /* Disable the channel */
//  483     __HAL_DMA_DISABLE(hdma);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  484 
//  485     /* Clear all flags */
//  486     hdma->DmaBaseAddress->IFCR = ((DMA_ISR_GIF1) << (hdma->ChannelIndex));
        MOVS     R1,#+1
        LDR      R2,[R0, #+64]
        LSLS     R1,R1,R2
        LDR      R2,[R0, #+60]
        STR      R1,[R2, #+4]
//  487 
//  488     /* Change the DMA state */
//  489     hdma->State = HAL_DMA_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+33]
//  490 
//  491     /* Process Unlocked */
//  492     __HAL_UNLOCK(hdma);
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  493 
//  494     /* Call User Abort callback */
//  495     if(hdma->XferAbortCallback != NULL)
        LDR      R1,[R0, #+52]
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_Abort_IT_1
//  496     {
//  497       hdma->XferAbortCallback(hdma);
        LDR      R1,[R0, #+52]
          CFI FunCall
        BLX      R1
//  498     } 
//  499   }
//  500   return status;
??HAL_DMA_Abort_IT_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  501 }
          CFI EndBlock cfiBlock5
//  502 
//  503 /**
//  504   * @brief  Polling for transfer complete.
//  505   * @param  hdma:    pointer to a DMA_HandleTypeDef structure that contains
//  506   *                  the configuration information for the specified DMA Channel.
//  507   * @param  CompleteLevel: Specifies the DMA level complete.  
//  508   * @param  Timeout:       Timeout duration.
//  509   * @retval HAL status
//  510   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_DMA_PollForTransfer
        THUMB
//  511 HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, uint32_t CompleteLevel, uint32_t Timeout)
//  512 {
HAL_DMA_PollForTransfer:
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
//  513   uint32_t temp;
//  514   uint32_t tickstart = 0;
        MOVS     R8,#+0
//  515   
//  516   if(HAL_DMA_STATE_BUSY != hdma->State)
        LDRB     R0,[R4, #+33]
        CMP      R0,#+2
        BEQ.N    ??HAL_DMA_PollForTransfer_0
//  517   {
//  518     /* no transfer ongoing */
//  519     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
        MOVS     R0,#+4
        STR      R0,[R4, #+56]
//  520     __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  521     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  522   }
//  523 
//  524   /* Polling mode not supported in circular mode */
//  525   if (RESET != (hdma->Instance->CCR & DMA_CCR_CIRC))
??HAL_DMA_PollForTransfer_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??HAL_DMA_PollForTransfer_2
//  526   {
//  527     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
        MOV      R0,#+256
        STR      R0,[R4, #+56]
//  528     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  529   }
//  530   
//  531   /* Get the level transfer complete flag */
//  532   if (HAL_DMA_FULL_TRANSFER == CompleteLevel)
??HAL_DMA_PollForTransfer_2:
        CMP      R5,#+0
        BNE.N    ??HAL_DMA_PollForTransfer_3
//  533   {
//  534     /* Transfer Complete flag */
//  535     temp = DMA_FLAG_TC1 << hdma->ChannelIndex;
        MOVS     R0,#+2
        LDR      R1,[R4, #+64]
        LSLS     R7,R0,R1
        B.N      ??HAL_DMA_PollForTransfer_4
//  536   }
//  537   else
//  538   {
//  539     /* Half Transfer Complete flag */
//  540     temp = DMA_FLAG_HT1 << hdma->ChannelIndex;
??HAL_DMA_PollForTransfer_3:
        MOVS     R0,#+4
        LDR      R1,[R4, #+64]
        LSLS     R7,R0,R1
//  541   }
//  542 
//  543   /* Get tick */
//  544   tickstart = HAL_GetTick();
??HAL_DMA_PollForTransfer_4:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R8,R0
//  545 
//  546   while(RESET == (hdma->DmaBaseAddress->ISR & temp))
??HAL_DMA_PollForTransfer_5:
        LDR      R0,[R4, #+60]
        LDR      R0,[R0, #+0]
        TST      R0,R7
        BNE.N    ??HAL_DMA_PollForTransfer_6
//  547   {
//  548     if((RESET != (hdma->DmaBaseAddress->ISR & (DMA_FLAG_TE1 << hdma->ChannelIndex))))    
        LDR      R0,[R4, #+60]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        LDR      R2,[R4, #+64]
        LSLS     R1,R1,R2
        TST      R0,R1
        BEQ.N    ??HAL_DMA_PollForTransfer_7
//  549     {      
//  550       /* When a DMA transfer error occurs */
//  551       /* A hardware clear of its EN bits is performed */
//  552       /* Clear all flags */
//  553       hdma->DmaBaseAddress->IFCR = ((DMA_ISR_GIF1) << (hdma->ChannelIndex));
        MOVS     R0,#+1
        LDR      R1,[R4, #+64]
        LSLS     R0,R0,R1
        LDR      R1,[R4, #+60]
        STR      R0,[R1, #+4]
//  554       
//  555       /* Update error code */
//  556       hdma->ErrorCode = HAL_DMA_ERROR_TE;
        MOVS     R0,#+1
        STR      R0,[R4, #+56]
//  557 
//  558       /* Change the DMA state */
//  559       hdma->State= HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+33]
//  560       
//  561       /* Process Unlocked */
//  562       __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  563       
//  564       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  565     }
//  566     /* Check for the Timeout */
//  567     if(Timeout != HAL_MAX_DELAY)
??HAL_DMA_PollForTransfer_7:
        CMN      R6,#+1
        BEQ.N    ??HAL_DMA_PollForTransfer_5
//  568     {
//  569       if((Timeout == 0) || ((HAL_GetTick() - tickstart) > Timeout))
        CMP      R6,#+0
        BEQ.N    ??HAL_DMA_PollForTransfer_8
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R6,R0
        BCS.N    ??HAL_DMA_PollForTransfer_5
//  570       {
//  571         /* Update error code */
//  572         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
??HAL_DMA_PollForTransfer_8:
        MOVS     R0,#+32
        STR      R0,[R4, #+56]
//  573         
//  574         /* Change the DMA state */
//  575         hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+33]
//  576 
//  577         /* Process Unlocked */
//  578         __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  579         
//  580         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  581       }
//  582     }
//  583   }
//  584 
//  585   if(HAL_DMA_FULL_TRANSFER == CompleteLevel)
??HAL_DMA_PollForTransfer_6:
        CMP      R5,#+0
        BNE.N    ??HAL_DMA_PollForTransfer_9
//  586   {
//  587     /* Clear the transfer complete flag */
//  588     hdma->DmaBaseAddress->IFCR  = (DMA_FLAG_TC1 << hdma->ChannelIndex);
        MOVS     R0,#+2
        LDR      R1,[R4, #+64]
        LSLS     R0,R0,R1
        LDR      R1,[R4, #+60]
        STR      R0,[R1, #+4]
//  589 
//  590     /* The selected Channelx EN bit is cleared (DMA is disabled and 
//  591     all transfers are complete) */
//  592     hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+33]
        B.N      ??HAL_DMA_PollForTransfer_10
//  593   }
//  594   else
//  595   { 
//  596     /* Clear the half transfer complete flag */
//  597     hdma->DmaBaseAddress->IFCR = (DMA_FLAG_HT1 << hdma->ChannelIndex);
??HAL_DMA_PollForTransfer_9:
        MOVS     R0,#+4
        LDR      R1,[R4, #+64]
        LSLS     R0,R0,R1
        LDR      R1,[R4, #+60]
        STR      R0,[R1, #+4]
//  598   }
//  599   
//  600   /* Process unlocked */
//  601   __HAL_UNLOCK(hdma);
??HAL_DMA_PollForTransfer_10:
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
//  602 
//  603   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_PollForTransfer_1:
        POP      {R4-R8,PC}       ;; return
//  604 }
          CFI EndBlock cfiBlock6
//  605 
//  606 /**
//  607   * @brief  Handle DMA interrupt request.
//  608   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  609   *               the configuration information for the specified DMA Channel.  
//  610   * @retval None
//  611   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_DMA_IRQHandler
        THUMB
//  612 void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma)
//  613 {
HAL_DMA_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  614   uint32_t flag_it = hdma->DmaBaseAddress->ISR;
        LDR      R1,[R0, #+60]
        LDR      R1,[R1, #+0]
//  615   uint32_t source_it = hdma->Instance->CCR;
        LDR      R2,[R0, #+0]
        LDR      R2,[R2, #+0]
//  616       
//  617   /* Half Transfer Complete Interrupt management ******************************/
//  618   if ((RESET != (flag_it & (DMA_FLAG_HT1 << hdma->ChannelIndex))) && (RESET != (source_it & DMA_IT_HT)))
        MOVS     R3,#+4
        LDR      R4,[R0, #+64]
        LSLS     R3,R3,R4
        TST      R1,R3
        BEQ.N    ??HAL_DMA_IRQHandler_0
        LSLS     R3,R2,#+29
        BPL.N    ??HAL_DMA_IRQHandler_0
//  619     { 
//  620       /* Disable the half transfer interrupt if the DMA mode is not CIRCULAR */
//  621       if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BMI.N    ??HAL_DMA_IRQHandler_1
//  622       {
//  623         /* Disable the half transfer interrupt */
//  624         __HAL_DMA_DISABLE_IT(hdma, DMA_IT_HT);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x4
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  625       }
//  626       /* Clear the half transfer complete flag */
//  627       hdma->DmaBaseAddress->IFCR  = (DMA_ISR_HTIF1 << hdma->ChannelIndex);
??HAL_DMA_IRQHandler_1:
        MOVS     R1,#+4
        LDR      R2,[R0, #+64]
        LSLS     R1,R1,R2
        LDR      R2,[R0, #+60]
        STR      R1,[R2, #+4]
//  628 
//  629       /* DMA peripheral state is not updated in Half Transfer */
//  630       /* but in Transfer Complete case */
//  631 
//  632       if(hdma->XferHalfCpltCallback != NULL)
        LDR      R1,[R0, #+44]
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_2
//  633       {
//  634         /* Half transfer callback */
//  635         hdma->XferHalfCpltCallback(hdma);
        LDR      R1,[R0, #+44]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_2
//  636       }
//  637     }
//  638   
//  639   /* Transfer Complete Interrupt management ***********************************/
//  640   else if ((RESET != (flag_it & (DMA_FLAG_TC1 << hdma->ChannelIndex))) && (RESET != (source_it & DMA_IT_TC)))
??HAL_DMA_IRQHandler_0:
        MOVS     R3,#+2
        LDR      R4,[R0, #+64]
        LSLS     R3,R3,R4
        TST      R1,R3
        BEQ.N    ??HAL_DMA_IRQHandler_3
        LSLS     R3,R2,#+30
        BPL.N    ??HAL_DMA_IRQHandler_3
//  641   {
//  642     if((hdma->Instance->CCR & DMA_CCR_CIRC) == 0)
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BMI.N    ??HAL_DMA_IRQHandler_4
//  643     {
//  644     /* Disable TE & TC */
//  645     __HAL_DMA_DISABLE_IT(hdma, DMA_IT_TE | DMA_IT_TC);  
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0xA
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  646 
//  647     /* Change the DMA state */
//  648     hdma->State = HAL_DMA_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+33]
//  649     }
//  650     
//  651     /* Clear the transfer complete flag */
//  652     hdma->DmaBaseAddress->IFCR = (DMA_ISR_TCIF1 << hdma->ChannelIndex);
??HAL_DMA_IRQHandler_4:
        MOVS     R1,#+2
        LDR      R2,[R0, #+64]
        LSLS     R1,R1,R2
        LDR      R2,[R0, #+60]
        STR      R1,[R2, #+4]
//  653   
//  654     /* Process Unlocked */
//  655     __HAL_UNLOCK(hdma);
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  656 
//  657     if(hdma->XferCpltCallback != NULL)
        LDR      R1,[R0, #+40]
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_2
//  658     {
//  659       /* Transfer complete callback */
//  660       hdma->XferCpltCallback(hdma);
        LDR      R1,[R0, #+40]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_2
//  661     }
//  662   }
//  663 
//  664   /* Transfer Error Interrupt management **************************************/
//  665   else if (( RESET != (flag_it & (DMA_FLAG_TE1 << hdma->ChannelIndex))) && (RESET != (source_it & DMA_IT_TE)))
??HAL_DMA_IRQHandler_3:
        MOVS     R3,#+8
        LDR      R4,[R0, #+64]
        LSLS     R3,R3,R4
        TST      R1,R3
        BEQ.N    ??HAL_DMA_IRQHandler_2
        LSLS     R1,R2,#+28
        BPL.N    ??HAL_DMA_IRQHandler_2
//  666   {
//  667     /* When a DMA transfer error occurs */
//  668     /* A hardware clear of its EN bits is performed */
//  669     /* Disable ALL DMA IT */
//  670     __HAL_DMA_DISABLE_IT(hdma, (DMA_IT_TC | DMA_IT_HT | DMA_IT_TE));
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0xE
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//  671 
//  672     /* Clear all flags */
//  673     hdma->DmaBaseAddress->IFCR  = (DMA_ISR_GIF1 << hdma->ChannelIndex);
        MOVS     R1,#+1
        LDR      R2,[R0, #+64]
        LSLS     R1,R1,R2
        LDR      R2,[R0, #+60]
        STR      R1,[R2, #+4]
//  674 
//  675       /* Update error code */
//  676     hdma->ErrorCode = HAL_DMA_ERROR_TE;
        MOVS     R1,#+1
        STR      R1,[R0, #+56]
//  677 
//  678       /* Change the DMA state */
//  679       hdma->State = HAL_DMA_STATE_READY;
        MOVS     R1,#+1
        STRB     R1,[R0, #+33]
//  680     
//  681       /* Process Unlocked */
//  682       __HAL_UNLOCK(hdma);
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  683     
//  684     if (hdma->XferErrorCallback != NULL)
        LDR      R1,[R0, #+48]
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_2
//  685       {       
//  686       /* Transfer error callback */
//  687       hdma->XferErrorCallback(hdma);
        LDR      R1,[R0, #+48]
          CFI FunCall
        BLX      R1
//  688       }
//  689     }
//  690   return;
??HAL_DMA_IRQHandler_2:
        POP      {R4,PC}          ;; return
//  691 }
          CFI EndBlock cfiBlock7
//  692 
//  693 /**
//  694   * @brief  Register callbacks
//  695   * @param  hdma:                 pointer to a DMA_HandleTypeDef structure that contains
//  696   *                               the configuration information for the specified DMA Stream.
//  697   * @param  CallbackID:           User Callback identifer
//  698   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
//  699   * @param  pCallback:            pointer to private callbacsk function which has pointer to 
//  700   *                               a DMA_HandleTypeDef structure as parameter.
//  701   * @retval HAL status
//  702   */                          

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_DMA_RegisterCallback
          CFI NoCalls
        THUMB
//  703 HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)( DMA_HandleTypeDef * _hdma))
//  704 {
HAL_DMA_RegisterCallback:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  705   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R3,#+0
//  706   
//  707   /* Process locked */
//  708   __HAL_LOCK(hdma);
        LDRB     R4,[R0, #+32]
        CMP      R4,#+1
        BNE.N    ??HAL_DMA_RegisterCallback_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_RegisterCallback_1
??HAL_DMA_RegisterCallback_0:
        MOVS     R4,#+1
        STRB     R4,[R0, #+32]
//  709   
//  710   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R4,[R0, #+33]
        CMP      R4,#+1
        BNE.N    ??HAL_DMA_RegisterCallback_2
//  711   {
//  712     switch (CallbackID)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_RegisterCallback_3
        CMP      R1,#+2
        BEQ.N    ??HAL_DMA_RegisterCallback_4
        BCC.N    ??HAL_DMA_RegisterCallback_5
        CMP      R1,#+3
        BEQ.N    ??HAL_DMA_RegisterCallback_6
        B.N      ??HAL_DMA_RegisterCallback_7
//  713     {
//  714      case  HAL_DMA_XFER_CPLT_CB_ID:
//  715            hdma->XferCpltCallback = pCallback;
??HAL_DMA_RegisterCallback_3:
        STR      R2,[R0, #+40]
//  716            break;
        B.N      ??HAL_DMA_RegisterCallback_8
//  717        
//  718      case  HAL_DMA_XFER_HALFCPLT_CB_ID:
//  719            hdma->XferHalfCpltCallback = pCallback;
??HAL_DMA_RegisterCallback_5:
        STR      R2,[R0, #+44]
//  720            break;         
        B.N      ??HAL_DMA_RegisterCallback_8
//  721 
//  722      case  HAL_DMA_XFER_ERROR_CB_ID:
//  723            hdma->XferErrorCallback = pCallback;
??HAL_DMA_RegisterCallback_4:
        STR      R2,[R0, #+48]
//  724            break;         
        B.N      ??HAL_DMA_RegisterCallback_8
//  725            
//  726      case  HAL_DMA_XFER_ABORT_CB_ID:
//  727            hdma->XferAbortCallback = pCallback;
??HAL_DMA_RegisterCallback_6:
        STR      R2,[R0, #+52]
//  728            break; 
        B.N      ??HAL_DMA_RegisterCallback_8
//  729            
//  730      default:
//  731            status = HAL_ERROR;
??HAL_DMA_RegisterCallback_7:
        MOVS     R3,#+1
//  732            break;                                                            
        B.N      ??HAL_DMA_RegisterCallback_8
//  733     }
//  734   }
//  735   else
//  736   {
//  737     status = HAL_ERROR;
??HAL_DMA_RegisterCallback_2:
        MOVS     R3,#+1
//  738   } 
//  739   
//  740   /* Release Lock */
//  741   __HAL_UNLOCK(hdma);
??HAL_DMA_RegisterCallback_8:
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  742   
//  743   return status;
        MOVS     R0,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_RegisterCallback_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  744 }
          CFI EndBlock cfiBlock8
//  745 
//  746 /**
//  747   * @brief  UnRegister callbacks
//  748   * @param  hdma:                 pointer to a DMA_HandleTypeDef structure that contains
//  749   *                               the configuration information for the specified DMA Stream.
//  750   * @param  CallbackID:           User Callback identifer
//  751   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
//  752   * @retval HAL status
//  753   */              

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_DMA_UnRegisterCallback
          CFI NoCalls
        THUMB
//  754 HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID)
//  755 {
HAL_DMA_UnRegisterCallback:
        MOVS     R2,R1
//  756   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R1,#+0
//  757 
//  758     /* Process locked */
//  759   __HAL_LOCK(hdma);
        LDRB     R3,[R0, #+32]
        CMP      R3,#+1
        BNE.N    ??HAL_DMA_UnRegisterCallback_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_UnRegisterCallback_1
??HAL_DMA_UnRegisterCallback_0:
        MOVS     R3,#+1
        STRB     R3,[R0, #+32]
//  760   
//  761   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R3,[R0, #+33]
        CMP      R3,#+1
        BNE.N    ??HAL_DMA_UnRegisterCallback_2
//  762   {
//  763     switch (CallbackID)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??HAL_DMA_UnRegisterCallback_3
        CMP      R2,#+2
        BEQ.N    ??HAL_DMA_UnRegisterCallback_4
        BCC.N    ??HAL_DMA_UnRegisterCallback_5
        CMP      R2,#+4
        BEQ.N    ??HAL_DMA_UnRegisterCallback_6
        BCC.N    ??HAL_DMA_UnRegisterCallback_7
        B.N      ??HAL_DMA_UnRegisterCallback_8
//  764     {
//  765      case  HAL_DMA_XFER_CPLT_CB_ID:
//  766            hdma->XferCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_3:
        MOVS     R2,#+0
        STR      R2,[R0, #+40]
//  767            break;
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  768        
//  769      case  HAL_DMA_XFER_HALFCPLT_CB_ID:
//  770            hdma->XferHalfCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_5:
        MOVS     R2,#+0
        STR      R2,[R0, #+44]
//  771            break;         
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  772 
//  773      case  HAL_DMA_XFER_ERROR_CB_ID:
//  774            hdma->XferErrorCallback = NULL;
??HAL_DMA_UnRegisterCallback_4:
        MOVS     R2,#+0
        STR      R2,[R0, #+48]
//  775            break;         
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  776            
//  777      case  HAL_DMA_XFER_ABORT_CB_ID:
//  778            hdma->XferAbortCallback = NULL;
??HAL_DMA_UnRegisterCallback_7:
        MOVS     R2,#+0
        STR      R2,[R0, #+52]
//  779            break; 
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  780      
//  781     case   HAL_DMA_XFER_ALL_CB_ID:
//  782            hdma->XferCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_6:
        MOVS     R2,#+0
        STR      R2,[R0, #+40]
//  783            hdma->XferHalfCpltCallback = NULL;
        MOVS     R2,#+0
        STR      R2,[R0, #+44]
//  784            hdma->XferErrorCallback = NULL;
        MOVS     R2,#+0
        STR      R2,[R0, #+48]
//  785            hdma->XferAbortCallback = NULL;
        MOVS     R2,#+0
        STR      R2,[R0, #+52]
//  786            break; 
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  787      
//  788     default:
//  789            status = HAL_ERROR;
??HAL_DMA_UnRegisterCallback_8:
        MOVS     R1,#+1
//  790            break;                                                            
        B.N      ??HAL_DMA_UnRegisterCallback_9
//  791     }
//  792   }
//  793   else
//  794   {
//  795     status = HAL_ERROR;
??HAL_DMA_UnRegisterCallback_2:
        MOVS     R1,#+1
//  796   }
//  797   
//  798   /* Release Lock */
//  799   __HAL_UNLOCK(hdma);
??HAL_DMA_UnRegisterCallback_9:
        MOVS     R2,#+0
        STRB     R2,[R0, #+32]
//  800   
//  801   return status;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_UnRegisterCallback_1:
        BX       LR               ;; return
//  802 }
          CFI EndBlock cfiBlock9
//  803 
//  804 /**
//  805   * @}
//  806   */
//  807 
//  808 
//  809 
//  810 /** @defgroup DMA_Exported_Functions_Group3 Peripheral State and Errors functions
//  811  *  @brief    Peripheral State and Errors functions
//  812  *
//  813 @verbatim   
//  814  ===============================================================================
//  815             ##### Peripheral State and Errors functions #####
//  816  ===============================================================================
//  817     [..]
//  818     This subsection provides functions allowing to
//  819       (+) Check the DMA state
//  820       (+) Get error code
//  821 
//  822 @endverbatim
//  823   * @{
//  824   */
//  825 
//  826 /**
//  827   * @brief  Return the DMA hande state.
//  828   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  829   *               the configuration information for the specified DMA Channel.  
//  830   * @retval HAL state
//  831   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_DMA_GetState
          CFI NoCalls
        THUMB
//  832 HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma)
//  833 {
//  834   /* Return DMA handle state */
//  835   return hdma->State;
HAL_DMA_GetState:
        LDRB     R0,[R0, #+33]
        BX       LR               ;; return
//  836 }
          CFI EndBlock cfiBlock10
//  837 
//  838 /**
//  839   * @brief  Return the DMA error code.
//  840   * @param  hdma : pointer to a DMA_HandleTypeDef structure that contains
//  841   *              the configuration information for the specified DMA Channel.
//  842   * @retval DMA Error Code
//  843   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_DMA_GetError
          CFI NoCalls
        THUMB
//  844 uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma)
//  845 {
//  846   return hdma->ErrorCode;
HAL_DMA_GetError:
        LDR      R0,[R0, #+56]
        BX       LR               ;; return
//  847 }
          CFI EndBlock cfiBlock11
//  848 
//  849 /**
//  850   * @}
//  851   */
//  852 
//  853 /**
//  854   * @}
//  855   */
//  856 
//  857 /** @addtogroup DMA_Private_Functions
//  858   * @{
//  859   */
//  860 
//  861 /**
//  862   * @brief  Sets the DMA Transfer parameter.
//  863   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
//  864   *                     the configuration information for the specified DMA Channel.  
//  865   * @param  SrcAddress: The source memory Buffer address
//  866   * @param  DstAddress: The destination memory Buffer address
//  867   * @param  DataLength: The length of data to be transferred from source to destination
//  868   * @retval HAL status
//  869   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function DMA_SetConfig
          CFI NoCalls
        THUMB
//  870 static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  871 {
DMA_SetConfig:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  872   /* Clear all flags */
//  873   hdma->DmaBaseAddress->IFCR  = (DMA_ISR_GIF1 << hdma->ChannelIndex);
        MOVS     R4,#+1
        LDR      R5,[R0, #+64]
        LSLS     R4,R4,R5
        LDR      R5,[R0, #+60]
        STR      R4,[R5, #+4]
//  874   
//  875   /* Configure DMA Channel data length */
//  876   hdma->Instance->CNDTR = DataLength;
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+4]
//  877   
//  878   /* Peripheral to Memory */
//  879   if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
        LDR      R3,[R0, #+4]
        CMP      R3,#+16
        BNE.N    ??DMA_SetConfig_0
//  880   {
//  881     /* Configure DMA Channel destination address */
//  882     hdma->Instance->CPAR = DstAddress;
        LDR      R3,[R0, #+0]
        STR      R2,[R3, #+8]
//  883     
//  884     /* Configure DMA Channel source address */
//  885     hdma->Instance->CMAR = SrcAddress;
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
        B.N      ??DMA_SetConfig_1
//  886   }
//  887   /* Memory to Peripheral */
//  888   else
//  889   {
//  890     /* Configure DMA Channel source address */
//  891     hdma->Instance->CPAR = SrcAddress;
??DMA_SetConfig_0:
        LDR      R3,[R0, #+0]
        STR      R1,[R3, #+8]
//  892     
//  893     /* Configure DMA Channel destination address */
//  894     hdma->Instance->CMAR = DstAddress;
        LDR      R0,[R0, #+0]
        STR      R2,[R0, #+12]
//  895   }
//  896 }
??DMA_SetConfig_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  897 
//  898 /**
//  899   * @}
//  900   */
//  901 
//  902 /**
//  903   * @}
//  904   */
//  905 
//  906 #endif /* HAL_DMA_MODULE_ENABLED */
//  907 /**
//  908   * @}
//  909   */
//  910 
//  911 /**
//  912   * @}
//  913   */
//  914 
//  915 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 1 308 bytes in section .text
// 
// 1 308 bytes of CODE memory
//
//Errors: none
//Warnings: none