///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_dac_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_dac_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_dac_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   DAC HAL module driver.
//    8   *         This file provides firmware functions to manage the following 
//    9   *         functionalities of DAC extension peripheral:
//   10   *           + Extended features functions
//   11   *     
//   12   *
//   13   @verbatim      
//   14   ==============================================================================
//   15                       ##### How to use this driver #####
//   16   ==============================================================================
//   17     [..]          
//   18       (+) When Dual mode is enabled (i.e DAC Channel1 and Channel2 are used simultaneously) :
//   19           Use HAL_DACEx_DualGetValue() to get digital data to be converted and use
//   20           HAL_DACEx_DualSetValue() to set digital value to converted simultaneously in Channel 1 and Channel 2.  
//   21       (+) Use HAL_DACEx_TriangleWaveGenerate() to generate Triangle signal.
//   22       (+) Use HAL_DACEx_NoiseWaveGenerate() to generate Noise signal.
//   23    
//   24  @endverbatim    
//   25   ******************************************************************************
//   26   * @attention
//   27   *
//   28   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   29   *
//   30   * Redistribution and use in source and binary forms, with or without modification,
//   31   * are permitted provided that the following conditions are met:
//   32   *   1. Redistributions of source code must retain the above copyright notice,
//   33   *      this list of conditions and the following disclaimer.
//   34   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   35   *      this list of conditions and the following disclaimer in the documentation
//   36   *      and/or other materials provided with the distribution.
//   37   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   38   *      may be used to endorse or promote products derived from this software
//   39   *      without specific prior written permission.
//   40   *
//   41   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   42   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   43   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   44   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   45   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   46   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   47   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   48   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   49   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   50   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   51   *
//   52   ******************************************************************************
//   53   */ 
//   54 
//   55 
//   56 /* Includes ------------------------------------------------------------------*/
//   57 #include "stm32l1xx_hal.h"
//   58 
//   59 /** @addtogroup STM32L1xx_HAL_Driver
//   60   * @{
//   61   */
//   62 
//   63 /** @defgroup DACEx DACEx
//   64   * @brief DAC driver modules
//   65   * @{
//   66   */ 
//   67 
//   68 #ifdef HAL_DAC_MODULE_ENABLED
//   69 
//   70 /* Private typedef -----------------------------------------------------------*/
//   71 /* Private define ------------------------------------------------------------*/
//   72 /* Private macro -------------------------------------------------------------*/
//   73 /* Private variables ---------------------------------------------------------*/
//   74 /* Private function prototypes -----------------------------------------------*/
//   75 /* Private functions ---------------------------------------------------------*/
//   76 
//   77 /** @defgroup DACEx_Exported_Functions DACEx Exported Functions
//   78   * @{
//   79   */
//   80 
//   81 /** @defgroup DACEx_Exported_Functions_Group1 Extended features functions
//   82  *  @brief    Extended features functions 
//   83  *
//   84 @verbatim   
//   85   ==============================================================================
//   86                  ##### Extended features functions #####
//   87   ==============================================================================  
//   88     [..]  This section provides functions allowing to:
//   89       (+) Start conversion.
//   90       (+) Stop conversion.
//   91       (+) Start conversion and enable DMA transfer.
//   92       (+) Stop conversion and disable DMA transfer.
//   93       (+) Get result of conversion.
//   94       (+) Get result of dual mode conversion.
//   95                      
//   96 @endverbatim
//   97   * @{
//   98   */
//   99 
//  100 /**
//  101   * @brief  Returns the last data output value of the selected DAC channel.
//  102   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  103   *         the configuration information for the specified DAC.
//  104   * @retval The selected DAC channel data output value.
//  105   */
//  106 uint32_t HAL_DACEx_DualGetValue(DAC_HandleTypeDef* hdac)
//  107 {
//  108   uint32_t tmp = 0;
//  109   
//  110   tmp |= hdac->Instance->DOR1;
//  111   
//  112   tmp |= hdac->Instance->DOR2 << 16;
//  113   
//  114   /* Returns the DAC channel data output register value */
//  115   return tmp;
//  116 }
//  117 
//  118 /**
//  119   * @brief  Enables or disables the selected DAC channel wave generation.
//  120   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  121   *         the configuration information for the specified DAC.
//  122   * @param  Channel: The selected DAC channel. 
//  123   *          This parameter can be one of the following values:
//  124   *            DAC_CHANNEL_1 / DAC_CHANNEL_2
//  125   * @param  Amplitude: Select max triangle amplitude. 
//  126   *          This parameter can be one of the following values:
//  127   *            @arg DAC_TRIANGLEAMPLITUDE_1: Select max triangle amplitude of 1
//  128   *            @arg DAC_TRIANGLEAMPLITUDE_3: Select max triangle amplitude of 3
//  129   *            @arg DAC_TRIANGLEAMPLITUDE_7: Select max triangle amplitude of 7
//  130   *            @arg DAC_TRIANGLEAMPLITUDE_15: Select max triangle amplitude of 15
//  131   *            @arg DAC_TRIANGLEAMPLITUDE_31: Select max triangle amplitude of 31
//  132   *            @arg DAC_TRIANGLEAMPLITUDE_63: Select max triangle amplitude of 63
//  133   *            @arg DAC_TRIANGLEAMPLITUDE_127: Select max triangle amplitude of 127
//  134   *            @arg DAC_TRIANGLEAMPLITUDE_255: Select max triangle amplitude of 255
//  135   *            @arg DAC_TRIANGLEAMPLITUDE_511: Select max triangle amplitude of 511
//  136   *            @arg DAC_TRIANGLEAMPLITUDE_1023: Select max triangle amplitude of 1023
//  137   *            @arg DAC_TRIANGLEAMPLITUDE_2047: Select max triangle amplitude of 2047
//  138   *            @arg DAC_TRIANGLEAMPLITUDE_4095: Select max triangle amplitude of 4095                               
//  139   * @retval HAL status
//  140   */
//  141 HAL_StatusTypeDef HAL_DACEx_TriangleWaveGenerate(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Amplitude)
//  142 {  
//  143   /* Check the parameters */
//  144   assert_param(IS_DAC_CHANNEL(Channel));
//  145   assert_param(IS_DAC_LFSR_UNMASK_TRIANGLE_AMPLITUDE(Amplitude));
//  146   
//  147   /* Process locked */
//  148   __HAL_LOCK(hdac);
//  149   
//  150   /* Change DAC state */
//  151   hdac->State = HAL_DAC_STATE_BUSY;
//  152   
//  153   /* Enable the selected wave generation for the selected DAC channel */
//  154   MODIFY_REG(hdac->Instance->CR, ((DAC_CR_WAVE1)|(DAC_CR_MAMP1))<<Channel, (DAC_CR_WAVE1_1 | Amplitude) << Channel);
//  155   
//  156   /* Change DAC state */
//  157   hdac->State = HAL_DAC_STATE_READY;
//  158   
//  159   /* Process unlocked */
//  160   __HAL_UNLOCK(hdac);
//  161   
//  162   /* Return function status */
//  163   return HAL_OK;
//  164 }
//  165 
//  166 /**
//  167   * @brief  Enables or disables the selected DAC channel wave generation.
//  168   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  169   *         the configuration information for the specified DAC. 
//  170   * @param  Channel: The selected DAC channel. 
//  171   *          This parameter can be one of the following values:
//  172   *            DAC_CHANNEL_1 / DAC_CHANNEL_2
//  173   * @param  Amplitude: Unmask DAC channel LFSR for noise wave generation. 
//  174   *          This parameter can be one of the following values: 
//  175   *            @arg DAC_LFSRUNMASK_BIT0: Unmask DAC channel LFSR bit0 for noise wave generation
//  176   *            @arg DAC_LFSRUNMASK_BITS1_0: Unmask DAC channel LFSR bit[1:0] for noise wave generation  
//  177   *            @arg DAC_LFSRUNMASK_BITS2_0: Unmask DAC channel LFSR bit[2:0] for noise wave generation
//  178   *            @arg DAC_LFSRUNMASK_BITS3_0: Unmask DAC channel LFSR bit[3:0] for noise wave generation 
//  179   *            @arg DAC_LFSRUNMASK_BITS4_0: Unmask DAC channel LFSR bit[4:0] for noise wave generation 
//  180   *            @arg DAC_LFSRUNMASK_BITS5_0: Unmask DAC channel LFSR bit[5:0] for noise wave generation 
//  181   *            @arg DAC_LFSRUNMASK_BITS6_0: Unmask DAC channel LFSR bit[6:0] for noise wave generation 
//  182   *            @arg DAC_LFSRUNMASK_BITS7_0: Unmask DAC channel LFSR bit[7:0] for noise wave generation 
//  183   *            @arg DAC_LFSRUNMASK_BITS8_0: Unmask DAC channel LFSR bit[8:0] for noise wave generation 
//  184   *            @arg DAC_LFSRUNMASK_BITS9_0: Unmask DAC channel LFSR bit[9:0] for noise wave generation 
//  185   *            @arg DAC_LFSRUNMASK_BITS10_0: Unmask DAC channel LFSR bit[10:0] for noise wave generation 
//  186   *            @arg DAC_LFSRUNMASK_BITS11_0: Unmask DAC channel LFSR bit[11:0] for noise wave generation 
//  187   * @retval HAL status
//  188   */
//  189 HAL_StatusTypeDef HAL_DACEx_NoiseWaveGenerate(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Amplitude)
//  190 {  
//  191   /* Check the parameters */
//  192   assert_param(IS_DAC_CHANNEL(Channel));
//  193   assert_param(IS_DAC_LFSR_UNMASK_TRIANGLE_AMPLITUDE(Amplitude));
//  194   
//  195   /* Process locked */
//  196   __HAL_LOCK(hdac);
//  197   
//  198   /* Change DAC state */
//  199   hdac->State = HAL_DAC_STATE_BUSY;
//  200   
//  201   /* Enable the selected wave generation for the selected DAC channel */
//  202   MODIFY_REG(hdac->Instance->CR, ((DAC_CR_WAVE1)|(DAC_CR_MAMP1))<<Channel, (DAC_CR_WAVE1_0 | Amplitude) << Channel);
//  203   
//  204   /* Change DAC state */
//  205   hdac->State = HAL_DAC_STATE_READY;
//  206   
//  207   /* Process unlocked */
//  208   __HAL_UNLOCK(hdac);
//  209   
//  210   /* Return function status */
//  211   return HAL_OK;
//  212 }
//  213 
//  214 /**
//  215   * @brief  Set the specified data holding register value for dual DAC channel.
//  216   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  217   *               the configuration information for the specified DAC.
//  218   * @param  Alignment: Specifies the data alignment for dual channel DAC.
//  219   *          This parameter can be one of the following values:
//  220   *            DAC_ALIGN_8B_R: 8bit right data alignment selected
//  221   *            DAC_ALIGN_12B_L: 12bit left data alignment selected
//  222   *            DAC_ALIGN_12B_R: 12bit right data alignment selected
//  223   * @param  Data1: Data for DAC Channel2 to be loaded in the selected data holding register.
//  224   * @param  Data2: Data for DAC Channel1 to be loaded in the selected data  holding register.
//  225   * @note   In dual mode, a unique register access is required to write in both
//  226   *          DAC channels at the same time.
//  227   * @retval HAL status
//  228   */
//  229 HAL_StatusTypeDef HAL_DACEx_DualSetValue(DAC_HandleTypeDef* hdac, uint32_t Alignment, uint32_t Data1, uint32_t Data2)
//  230 {  
//  231   uint32_t data = 0, tmp = 0;
//  232   
//  233   /* Check the parameters */
//  234   assert_param(IS_DAC_ALIGN(Alignment));
//  235   assert_param(IS_DAC_DATA(Data1));
//  236   assert_param(IS_DAC_DATA(Data2));
//  237   
//  238   /* Calculate and set dual DAC data holding register value */
//  239   if (Alignment == DAC_ALIGN_8B_R)
//  240   {
//  241     data = ((uint32_t)Data2 << 8) | Data1; 
//  242   }
//  243   else
//  244   {
//  245     data = ((uint32_t)Data2 << 16) | Data1;
//  246   }
//  247   
//  248   tmp = (uint32_t)hdac->Instance;
//  249   tmp += DAC_DHR12RD_ALIGNMENT(Alignment);
//  250 
//  251   /* Set the dual DAC selected data holding register */
//  252   *(__IO uint32_t *)tmp = data;
//  253   
//  254   /* Return function status */
//  255   return HAL_OK;
//  256 }
//  257 
//  258 
//  259 /**
//  260   * @brief  Conversion complete callback in non blocking mode for Channel2 
//  261   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  262   *         the configuration information for the specified DAC.
//  263   * @retval None
//  264   */
//  265 __weak void HAL_DACEx_ConvCpltCallbackCh2(DAC_HandleTypeDef* hdac)
//  266 {
//  267   /* Prevent unused argument(s) compilation warning */
//  268   UNUSED(hdac);
//  269 
//  270   /* NOTE : This function Should not be modified, when the callback is needed,
//  271             the HAL_DACEx_ConvCpltCallbackCh2 could be implemented in the user file
//  272    */
//  273 }
//  274 
//  275 /**
//  276   * @brief  Conversion half DMA transfer callback in non blocking mode for Channel2 
//  277   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  278   *         the configuration information for the specified DAC.
//  279   * @retval None
//  280   */
//  281 __weak void HAL_DACEx_ConvHalfCpltCallbackCh2(DAC_HandleTypeDef* hdac)
//  282 {
//  283   /* Prevent unused argument(s) compilation warning */
//  284   UNUSED(hdac);
//  285 
//  286   /* NOTE : This function Should not be modified, when the callback is needed,
//  287             the HAL_DACEx_ConvHalfCpltCallbackCh2 could be implemented in the user file
//  288    */
//  289 }
//  290 
//  291 /**
//  292   * @brief  Error DAC callback for Channel2.
//  293   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  294   *         the configuration information for the specified DAC.
//  295   * @retval None
//  296   */
//  297 __weak void HAL_DACEx_ErrorCallbackCh2(DAC_HandleTypeDef *hdac)
//  298 {
//  299   /* Prevent unused argument(s) compilation warning */
//  300   UNUSED(hdac);
//  301 
//  302   /* NOTE : This function Should not be modified, when the callback is needed,
//  303             the HAL_DACEx_ErrorCallbackCh2 could be implemented in the user file
//  304    */
//  305 }
//  306 
//  307 /**
//  308   * @brief  DMA underrun DAC callback for channel2.
//  309   * @param  hdac: pointer to a DAC_HandleTypeDef structure that contains
//  310   *         the configuration information for the specified DAC.
//  311   * @retval None
//  312   */
//  313 __weak void HAL_DACEx_DMAUnderrunCallbackCh2(DAC_HandleTypeDef *hdac)
//  314 {
//  315   /* Prevent unused argument(s) compilation warning */
//  316   UNUSED(hdac);
//  317 
//  318   /* NOTE : This function Should not be modified, when the callback is needed,
//  319             the HAL_DAC_DMAUnderrunCallbackCh2 could be implemented in the user file
//  320    */
//  321 }
//  322 
//  323 /**
//  324   * @}
//  325   */
//  326 
//  327 /**
//  328   * @}
//  329   */
//  330 
//  331 /** @defgroup DACEx_Private_Functions DACEx Private Functions
//  332   * @{
//  333   */
//  334 /**
//  335   * @brief  DMA conversion complete callback. 
//  336   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  337   *                the configuration information for the specified DMA module.
//  338   * @retval None
//  339   */
//  340 void DAC_DMAConvCpltCh2(DMA_HandleTypeDef *hdma)   
//  341 {
//  342   DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  343   
//  344   HAL_DACEx_ConvCpltCallbackCh2(hdac); 
//  345   
//  346   hdac->State= HAL_DAC_STATE_READY;
//  347 }
//  348 
//  349 /**
//  350   * @brief  DMA half transfer complete callback. 
//  351   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  352   *                the configuration information for the specified DMA module.
//  353   * @retval None
//  354   */
//  355 void DAC_DMAHalfConvCpltCh2(DMA_HandleTypeDef *hdma)   
//  356 {
//  357     DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  358     /* Conversion complete callback */
//  359     HAL_DACEx_ConvHalfCpltCallbackCh2(hdac); 
//  360 }
//  361 
//  362 /**
//  363   * @brief  DMA error callback 
//  364   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
//  365   *                the configuration information for the specified DMA module.
//  366   * @retval None
//  367   */
//  368 void DAC_DMAErrorCh2(DMA_HandleTypeDef *hdma)   
//  369 {
//  370   DAC_HandleTypeDef* hdac = ( DAC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
//  371     
//  372   /* Set DAC error code to DMA error */
//  373   hdac->ErrorCode |= HAL_DAC_ERROR_DMA;
//  374     
//  375   HAL_DACEx_ErrorCallbackCh2(hdac); 
//  376     
//  377   hdac->State= HAL_DAC_STATE_READY;
//  378 }
//  379 
//  380 /**
//  381   * @}
//  382   */
//  383 
//  384 #endif /* HAL_DAC_MODULE_ENABLED */
//  385 
//  386 /**
//  387   * @}
//  388   */
//  389 
//  390 /**
//  391   * @}
//  392   */
//  393 
//  394 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
