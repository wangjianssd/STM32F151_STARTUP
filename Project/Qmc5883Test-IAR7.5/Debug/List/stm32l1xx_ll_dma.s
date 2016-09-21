///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dma.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dma.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_dma.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_dma.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_dma.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   DMA LL module driver.
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
//   40 #include "stm32l1xx_ll_dma.h"
//   41 #include "stm32l1xx_ll_bus.h"
//   42 #ifdef  USE_FULL_ASSERT
//   43 #include "stm32_assert.h"
//   44 #else
//   45 #define assert_param(expr) ((void)0U)
//   46 #endif
//   47 
//   48 /** @addtogroup STM32L1xx_LL_Driver
//   49   * @{
//   50   */
//   51 
//   52 #if defined (DMA1) || defined (DMA2)
//   53 
//   54 /** @defgroup DMA_LL DMA
//   55   * @{
//   56   */
//   57 
//   58 /* Private types -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private constants ---------------------------------------------------------*/
//   61 /* Private macros ------------------------------------------------------------*/
//   62 /** @addtogroup DMA_LL_Private_Macros
//   63   * @{
//   64   */
//   65 #define IS_LL_DMA_DIRECTION(__VALUE__)          (((__VALUE__) == LL_DMA_DIRECTION_PERIPH_TO_MEMORY) || \ 
//   66                                                  ((__VALUE__) == LL_DMA_DIRECTION_MEMORY_TO_PERIPH) || \ 
//   67                                                  ((__VALUE__) == LL_DMA_DIRECTION_MEMORY_TO_MEMORY))
//   68 
//   69 #define IS_LL_DMA_MODE(__VALUE__)               (((__VALUE__) == LL_DMA_MODE_NORMAL) || \ 
//   70                                                  ((__VALUE__) == LL_DMA_MODE_CIRCULAR))
//   71 
//   72 #define IS_LL_DMA_PERIPHINCMODE(__VALUE__)      (((__VALUE__) == LL_DMA_PERIPH_INCREMENT) || \ 
//   73                                                  ((__VALUE__) == LL_DMA_PERIPH_NOINCREMENT))
//   74 
//   75 #define IS_LL_DMA_MEMORYINCMODE(__VALUE__)      (((__VALUE__) == LL_DMA_MEMORY_INCREMENT) || \ 
//   76                                                  ((__VALUE__) == LL_DMA_MEMORY_NOINCREMENT))
//   77 
//   78 #define IS_LL_DMA_PERIPHDATASIZE(__VALUE__)     (((__VALUE__) == LL_DMA_PDATAALIGN_BYTE)      || \ 
//   79                                                  ((__VALUE__) == LL_DMA_PDATAALIGN_HALFWORD)  || \ 
//   80                                                  ((__VALUE__) == LL_DMA_PDATAALIGN_WORD))
//   81 
//   82 #define IS_LL_DMA_MEMORYDATASIZE(__VALUE__)     (((__VALUE__) == LL_DMA_MDATAALIGN_BYTE)      || \ 
//   83                                                  ((__VALUE__) == LL_DMA_MDATAALIGN_HALFWORD)  || \ 
//   84                                                  ((__VALUE__) == LL_DMA_MDATAALIGN_WORD))
//   85 
//   86 #define IS_LL_DMA_NBDATA(__VALUE__)             ((__VALUE__)  <= (uint32_t)0x0000FFFFU)
//   87 
//   88 
//   89 #define IS_LL_DMA_PRIORITY(__VALUE__)           (((__VALUE__) == LL_DMA_PRIORITY_LOW)    || \ 
//   90                                                  ((__VALUE__) == LL_DMA_PRIORITY_MEDIUM) || \ 
//   91                                                  ((__VALUE__) == LL_DMA_PRIORITY_HIGH)   || \ 
//   92                                                  ((__VALUE__) == LL_DMA_PRIORITY_VERYHIGH))
//   93 
//   94 #if defined (DMA2)
//   95 #if defined (DMA2_Channel6) && defined (DMA2_Channel7)
//   96 #define IS_LL_DMA_ALL_CHANNEL_INSTANCE(INSTANCE, CHANNEL)  ((((INSTANCE) == DMA1) && \ 
//   97                                                          (((CHANNEL) == LL_DMA_CHANNEL_1) || \ 
//   98                                                           ((CHANNEL) == LL_DMA_CHANNEL_2) || \ 
//   99                                                           ((CHANNEL) == LL_DMA_CHANNEL_3) || \ 
//  100                                                           ((CHANNEL) == LL_DMA_CHANNEL_4) || \ 
//  101                                                           ((CHANNEL) == LL_DMA_CHANNEL_5) || \ 
//  102                                                           ((CHANNEL) == LL_DMA_CHANNEL_6) || \ 
//  103                                                           ((CHANNEL) == LL_DMA_CHANNEL_7))) || \ 
//  104                                                          (((INSTANCE) == DMA2) && \ 
//  105                                                          (((CHANNEL) == LL_DMA_CHANNEL_1) || \ 
//  106                                                           ((CHANNEL) == LL_DMA_CHANNEL_2) || \ 
//  107                                                           ((CHANNEL) == LL_DMA_CHANNEL_3) || \ 
//  108                                                           ((CHANNEL) == LL_DMA_CHANNEL_4) || \ 
//  109                                                           ((CHANNEL) == LL_DMA_CHANNEL_5) || \ 
//  110                                                           ((CHANNEL) == LL_DMA_CHANNEL_6) || \ 
//  111                                                           ((CHANNEL) == LL_DMA_CHANNEL_7))))
//  112 #else
//  113 #define IS_LL_DMA_ALL_CHANNEL_INSTANCE(INSTANCE, CHANNEL)  ((((INSTANCE) == DMA1) && \ 
//  114                                                          (((CHANNEL) == LL_DMA_CHANNEL_1) || \ 
//  115                                                           ((CHANNEL) == LL_DMA_CHANNEL_2) || \ 
//  116                                                           ((CHANNEL) == LL_DMA_CHANNEL_3) || \ 
//  117                                                           ((CHANNEL) == LL_DMA_CHANNEL_4) || \ 
//  118                                                           ((CHANNEL) == LL_DMA_CHANNEL_5) || \ 
//  119                                                           ((CHANNEL) == LL_DMA_CHANNEL_6) || \ 
//  120                                                           ((CHANNEL) == LL_DMA_CHANNEL_7))) || \ 
//  121                                                          (((INSTANCE) == DMA2) && \ 
//  122                                                          (((CHANNEL) == LL_DMA_CHANNEL_1) || \ 
//  123                                                           ((CHANNEL) == LL_DMA_CHANNEL_2) || \ 
//  124                                                           ((CHANNEL) == LL_DMA_CHANNEL_3) || \ 
//  125                                                           ((CHANNEL) == LL_DMA_CHANNEL_4) || \ 
//  126                                                           ((CHANNEL) == LL_DMA_CHANNEL_5))))
//  127 #endif
//  128 #else
//  129 #define IS_LL_DMA_ALL_CHANNEL_INSTANCE(INSTANCE, CHANNEL)  ((((INSTANCE) == DMA1) && \ 
//  130                                                             (((CHANNEL) == LL_DMA_CHANNEL_1)|| \ 
//  131                                                             ((CHANNEL) == LL_DMA_CHANNEL_2) || \ 
//  132                                                             ((CHANNEL) == LL_DMA_CHANNEL_3) || \ 
//  133                                                             ((CHANNEL) == LL_DMA_CHANNEL_4) || \ 
//  134                                                             ((CHANNEL) == LL_DMA_CHANNEL_5) || \ 
//  135                                                             ((CHANNEL) == LL_DMA_CHANNEL_6) || \ 
//  136                                                             ((CHANNEL) == LL_DMA_CHANNEL_7))))
//  137 #endif
//  138 /**
//  139   * @}
//  140   */
//  141 
//  142 /* Private function prototypes -----------------------------------------------*/
//  143 
//  144 /* Exported functions --------------------------------------------------------*/
//  145 /** @addtogroup DMA_LL_Exported_Functions
//  146   * @{
//  147   */
//  148 
//  149 /** @addtogroup DMA_LL_EF_Init
//  150   * @{
//  151   */
//  152 
//  153 /**
//  154   * @brief  De-initialize the DMA registers to their default reset values.
//  155   * @param  DMAx DMAx Instance
//  156   * @param  Channel This parameter can be one of the following values:
//  157   *         @arg @ref LL_DMA_CHANNEL_1
//  158   *         @arg @ref LL_DMA_CHANNEL_2
//  159   *         @arg @ref LL_DMA_CHANNEL_3
//  160   *         @arg @ref LL_DMA_CHANNEL_4
//  161   *         @arg @ref LL_DMA_CHANNEL_5
//  162   *         @arg @ref LL_DMA_CHANNEL_6
//  163   *         @arg @ref LL_DMA_CHANNEL_7
//  164   *         @arg @ref LL_DMA_CHANNEL_ALL
//  165   * @retval An ErrorStatus enumeration value:
//  166   *          - SUCCESS: DMA registers are de-initialized
//  167   *          - ERROR: DMA registers are not de-initialized
//  168   */
//  169 uint32_t LL_DMA_DeInit(DMA_TypeDef *DMAx, uint32_t Channel)
//  170 {
//  171   DMA_Channel_TypeDef *tmp = (DMA_Channel_TypeDef *)DMA1_Channel1;
//  172   ErrorStatus status = SUCCESS;
//  173 
//  174   /* Check the DMA Instance DMAx and Channel parameters*/
//  175   assert_param(IS_LL_DMA_ALL_CHANNEL_INSTANCE(DMAx, Channel) || (Channel == LL_DMA_CHANNEL_ALL));
//  176 
//  177   if (Channel == LL_DMA_CHANNEL_ALL)
//  178   {
//  179     if (DMAx == DMA1)
//  180     {
//  181       /* Force reset of DMA clock */
//  182       LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_DMA1);
//  183 
//  184       /* Release reset of DMA clock */
//  185       LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_DMA1);
//  186     }
//  187 #if defined(DMA2)
//  188     else if (DMAx == DMA2)
//  189     {
//  190       /* Force reset of DMA clock */
//  191       LL_AHB1_GRP1_ForceReset(LL_AHB1_GRP1_PERIPH_DMA2);
//  192 
//  193       /* Release reset of DMA clock */
//  194       LL_AHB1_GRP1_ReleaseReset(LL_AHB1_GRP1_PERIPH_DMA2);
//  195     }
//  196 #endif
//  197     else
//  198     {
//  199       status = ERROR;
//  200     }
//  201   }
//  202   else
//  203   {
//  204     tmp = (DMA_Channel_TypeDef *)(__LL_DMA_GET_CHANNEL_INSTANCE(DMAx, Channel));
//  205 
//  206     /* Disable the selected DMAx_Channely */
//  207     CLEAR_BIT(tmp->CCR, DMA_CCR_EN);
//  208 
//  209     /* Reset DMAx_Channely control register */
//  210     LL_DMA_WriteReg(tmp, CCR, 0U);
//  211 
//  212     /* Reset DMAx_Channely remaining bytes register */
//  213     LL_DMA_WriteReg(tmp, CNDTR, 0U);
//  214 
//  215     /* Reset DMAx_Channely peripheral address register */
//  216     LL_DMA_WriteReg(tmp, CPAR, 0U);
//  217 
//  218     /* Reset DMAx_Channely memory address register */
//  219     LL_DMA_WriteReg(tmp, CMAR, 0U);
//  220 
//  221 
//  222     if (Channel == LL_DMA_CHANNEL_1)
//  223     {
//  224       /* Reset interrupt pending bits for DMAx Channel1 */
//  225       LL_DMA_ClearFlag_GI1(DMAx);
//  226     }
//  227     else if (Channel == LL_DMA_CHANNEL_2)
//  228     {
//  229       /* Reset interrupt pending bits for DMAx Channel2 */
//  230       LL_DMA_ClearFlag_GI2(DMAx);
//  231     }
//  232     else if (Channel == LL_DMA_CHANNEL_3)
//  233     {
//  234       /* Reset interrupt pending bits for DMAx Channel3 */
//  235       LL_DMA_ClearFlag_GI3(DMAx);
//  236     }
//  237     else if (Channel == LL_DMA_CHANNEL_4)
//  238     {
//  239       /* Reset interrupt pending bits for DMAx Channel4 */
//  240       LL_DMA_ClearFlag_GI4(DMAx);
//  241     }
//  242     else if (Channel == LL_DMA_CHANNEL_5)
//  243     {
//  244       /* Reset interrupt pending bits for DMAx Channel5 */
//  245       LL_DMA_ClearFlag_GI5(DMAx);
//  246     }
//  247 
//  248     else if (Channel == LL_DMA_CHANNEL_6)
//  249     {
//  250       /* Reset interrupt pending bits for DMAx Channel6 */
//  251       LL_DMA_ClearFlag_GI6(DMAx);
//  252     }
//  253     else if (Channel == LL_DMA_CHANNEL_7)
//  254     {
//  255       /* Reset interrupt pending bits for DMAx Channel7 */
//  256       LL_DMA_ClearFlag_GI7(DMAx);
//  257     }
//  258     else
//  259     {
//  260       status = ERROR;
//  261     }
//  262   }
//  263 
//  264   return status;
//  265 }
//  266 
//  267 /**
//  268   * @brief  Initialize the DMA registers according to the specified parameters in DMA_InitStruct.
//  269   * @note   To convert DMAx_Channely Instance to DMAx Instance and Channely, use helper macros :
//  270   *         @arg @ref __LL_DMA_GET_INSTANCE
//  271   *         @arg @ref __LL_DMA_GET_CHANNEL
//  272   * @param  DMAx DMAx Instance
//  273   * @param  Channel This parameter can be one of the following values:
//  274   *         @arg @ref LL_DMA_CHANNEL_1
//  275   *         @arg @ref LL_DMA_CHANNEL_2
//  276   *         @arg @ref LL_DMA_CHANNEL_3
//  277   *         @arg @ref LL_DMA_CHANNEL_4
//  278   *         @arg @ref LL_DMA_CHANNEL_5
//  279   *         @arg @ref LL_DMA_CHANNEL_6
//  280   *         @arg @ref LL_DMA_CHANNEL_7
//  281   * @param  DMA_InitStruct pointer to a @ref LL_DMA_InitTypeDef structure.
//  282   * @retval An ErrorStatus enumeration value:
//  283   *          - SUCCESS: DMA registers are initialized
//  284   *          - ERROR: Not applicable
//  285   */
//  286 uint32_t LL_DMA_Init(DMA_TypeDef *DMAx, uint32_t Channel, LL_DMA_InitTypeDef *DMA_InitStruct)
//  287 {
//  288   /* Check the DMA Instance DMAx and Channel parameters*/
//  289   assert_param(IS_LL_DMA_ALL_CHANNEL_INSTANCE(DMAx, Channel));
//  290 
//  291   /* Check the DMA parameters from DMA_InitStruct */
//  292   assert_param(IS_LL_DMA_DIRECTION(DMA_InitStruct->Direction));
//  293   assert_param(IS_LL_DMA_MODE(DMA_InitStruct->Mode));
//  294   assert_param(IS_LL_DMA_PERIPHINCMODE(DMA_InitStruct->PeriphOrM2MSrcIncMode));
//  295   assert_param(IS_LL_DMA_MEMORYINCMODE(DMA_InitStruct->MemoryOrM2MDstIncMode));
//  296   assert_param(IS_LL_DMA_PERIPHDATASIZE(DMA_InitStruct->PeriphOrM2MSrcDataSize));
//  297   assert_param(IS_LL_DMA_MEMORYDATASIZE(DMA_InitStruct->MemoryOrM2MDstDataSize));
//  298   assert_param(IS_LL_DMA_NBDATA(DMA_InitStruct->NbData));
//  299   assert_param(IS_LL_DMA_PRIORITY(DMA_InitStruct->Priority));
//  300 
//  301   /*---------------------------- DMAx CCR Configuration ------------------------
//  302    * Configure DMAx_Channely: data transfer direction, data transfer mode,
//  303    *                          peripheral and memory increment mode,
//  304    *                          data size alignment and  priority level with parameters :
//  305    * - Direction:      DMA_CCR_DIR and DMA_CCR_MEM2MEM bits
//  306    * - Mode:           DMA_CCR_CIRC bit
//  307    * - PeriphOrM2MSrcIncMode:  DMA_CCR_PINC bit
//  308    * - MemoryOrM2MDstIncMode:  DMA_CCR_MINC bit
//  309    * - PeriphOrM2MSrcDataSize: DMA_CCR_PSIZE[1:0] bits
//  310    * - MemoryOrM2MDstDataSize: DMA_CCR_MSIZE[1:0] bits
//  311    * - Priority:               DMA_CCR_PL[1:0] bits
//  312    */
//  313   LL_DMA_ConfigTransfer(DMAx, Channel, DMA_InitStruct->Direction              | \ 
//  314                         DMA_InitStruct->Mode                   | \ 
//  315                         DMA_InitStruct->PeriphOrM2MSrcIncMode  | \ 
//  316                         DMA_InitStruct->MemoryOrM2MDstIncMode  | \ 
//  317                         DMA_InitStruct->PeriphOrM2MSrcDataSize | \ 
//  318                         DMA_InitStruct->MemoryOrM2MDstDataSize | \ 
//  319                         DMA_InitStruct->Priority);
//  320 
//  321   /*-------------------------- DMAx CMAR Configuration -------------------------
//  322    * Configure the memory or destination base address with parameter :
//  323    * - MemoryOrM2MDstAddress: DMA_CMAR_MA[31:0] bits
//  324    */
//  325   LL_DMA_SetMemoryAddress(DMAx, Channel, DMA_InitStruct->MemoryOrM2MDstAddress);
//  326 
//  327   /*-------------------------- DMAx CPAR Configuration -------------------------
//  328    * Configure the peripheral or source base address with parameter :
//  329    * - PeriphOrM2MSrcAddress: DMA_CPAR_PA[31:0] bits
//  330    */
//  331   LL_DMA_SetPeriphAddress(DMAx, Channel, DMA_InitStruct->PeriphOrM2MSrcAddress);
//  332 
//  333   /*--------------------------- DMAx CNDTR Configuration -----------------------
//  334    * Configure the peripheral base address with parameter :
//  335    * - NbData: DMA_CNDTR_NDT[15:0] bits
//  336    */
//  337   LL_DMA_SetDataLength(DMAx, Channel, DMA_InitStruct->NbData);
//  338 
//  339 
//  340   return SUCCESS;
//  341 }
//  342 
//  343 /**
//  344   * @brief  Set each @ref LL_DMA_InitTypeDef field to default value.
//  345   * @param  DMA_InitStruct Pointer to a @ref LL_DMA_InitTypeDef structure.
//  346   * @retval None
//  347   */
//  348 void LL_DMA_StructInit(LL_DMA_InitTypeDef *DMA_InitStruct)
//  349 {
//  350   /* Set DMA_InitStruct fields to default values */
//  351   DMA_InitStruct->PeriphOrM2MSrcAddress  = (uint32_t)0x00000000U;
//  352   DMA_InitStruct->MemoryOrM2MDstAddress  = (uint32_t)0x00000000U;
//  353   DMA_InitStruct->Direction              = LL_DMA_DIRECTION_PERIPH_TO_MEMORY;
//  354   DMA_InitStruct->Mode                   = LL_DMA_MODE_NORMAL;
//  355   DMA_InitStruct->PeriphOrM2MSrcIncMode  = LL_DMA_PERIPH_NOINCREMENT;
//  356   DMA_InitStruct->MemoryOrM2MDstIncMode  = LL_DMA_MEMORY_NOINCREMENT;
//  357   DMA_InitStruct->PeriphOrM2MSrcDataSize = LL_DMA_PDATAALIGN_BYTE;
//  358   DMA_InitStruct->MemoryOrM2MDstDataSize = LL_DMA_MDATAALIGN_BYTE;
//  359   DMA_InitStruct->NbData                 = (uint32_t)0x00000000U;
//  360   DMA_InitStruct->Priority               = LL_DMA_PRIORITY_LOW;
//  361 }
//  362 
//  363 /**
//  364   * @}
//  365   */
//  366 
//  367 /**
//  368   * @}
//  369   */
//  370 
//  371 /**
//  372   * @}
//  373   */
//  374 
//  375 #endif /* DMA1 || DMA2 */
//  376 
//  377 /**
//  378   * @}
//  379   */
//  380 
//  381 #endif /* USE_FULL_LL_DRIVER */
//  382 
//  383 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
