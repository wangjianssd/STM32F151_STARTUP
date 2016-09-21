///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:25
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sram.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sram.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_sram.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_sram.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_sram.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   SRAM HAL module driver.
//    8   *          This file provides a generic firmware to drive SRAM memories  
//    9   *          mounted as external device.
//   10   *         
//   11   @verbatim
//   12   ==============================================================================
//   13                           ##### How to use this driver #####
//   14   ==============================================================================  
//   15   [..]
//   16     This driver is a generic layered driver which contains a set of APIs used to 
//   17     control SRAM memories. It uses the FSMC layer functions to interface 
//   18     with SRAM devices.  
//   19     The following sequence should be followed to configure the FSMC to interface
//   20     with SRAM/PSRAM memories: 
//   21       
//   22    (#) Declare a SRAM_HandleTypeDef handle structure, for example:
//   23           SRAM_HandleTypeDef  hsram; and: 
//   24           
//   25        (++) Fill the SRAM_HandleTypeDef handle "Init" field with the allowed 
//   26             values of the structure member.
//   27             
//   28        (++) Fill the SRAM_HandleTypeDef handle "Instance" field with a predefined 
//   29             base register instance for NOR or SRAM device 
//   30                          
//   31        (++) Fill the SRAM_HandleTypeDef handle "Extended" field with a predefined
//   32             base register instance for NOR or SRAM extended mode 
//   33              
//   34    (#) Declare two FSMC_NORSRAM_TimingTypeDef structures, for both normal and extended 
//   35        mode timings; for example:
//   36           FSMC_NORSRAM_TimingTypeDef  Timing and FSMC_NORSRAM_TimingTypeDef  ExTiming;
//   37       and fill its fields with the allowed values of the structure member.
//   38       
//   39    (#) Initialize the SRAM Controller by calling the function HAL_SRAM_Init(). This function
//   40        performs the following sequence:
//   41           
//   42        (##) MSP hardware layer configuration using the function HAL_SRAM_MspInit()
//   43        (##) Control register configuration using the FSMC NORSRAM interface function 
//   44             FSMC_NORSRAM_Init()
//   45        (##) Timing register configuration using the FSMC NORSRAM interface function 
//   46             FSMC_NORSRAM_Timing_Init()
//   47        (##) Extended mode Timing register configuration using the FSMC NORSRAM interface function 
//   48             FSMC_NORSRAM_Extended_Timing_Init()
//   49        (##) Enable the SRAM device using the macro __FSMC_NORSRAM_ENABLE()    
//   50 
//   51    (#) At this stage you can perform read/write accesses from/to the memory connected 
//   52        to the NOR/SRAM Bank. You can perform either polling or DMA transfer using the
//   53        following APIs:
//   54        (++) HAL_SRAM_Read()/HAL_SRAM_Write() for polling read/write access
//   55        (++) HAL_SRAM_Read_DMA()/HAL_SRAM_Write_DMA() for DMA read/write transfer
//   56        
//   57    (#) You can also control the SRAM device by calling the control APIs HAL_SRAM_WriteOperation_Enable()/
//   58        HAL_SRAM_WriteOperation_Disable() to respectively enable/disable the SRAM write operation  
//   59        
//   60    (#) You can continuously monitor the SRAM device HAL state by calling the function
//   61        HAL_SRAM_GetState()              
//   62                              
//   63   @endverbatim
//   64   ******************************************************************************
//   65   * @attention
//   66   *
//   67   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   68   *
//   69   * Redistribution and use in source and binary forms, with or without modification,
//   70   * are permitted provided that the following conditions are met:
//   71   *   1. Redistributions of source code must retain the above copyright notice,
//   72   *      this list of conditions and the following disclaimer.
//   73   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   74   *      this list of conditions and the following disclaimer in the documentation
//   75   *      and/or other materials provided with the distribution.
//   76   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   77   *      may be used to endorse or promote products derived from this software
//   78   *      without specific prior written permission.
//   79   *
//   80   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   81   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   82   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   83   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   84   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   85   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   86   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   87   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   88   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   89   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   90   *
//   91   ******************************************************************************
//   92   */ 
//   93 
//   94 /* Includes ------------------------------------------------------------------*/
//   95 #include "stm32l1xx_hal.h"
//   96 
//   97 /** @addtogroup STM32L1xx_HAL_Driver
//   98   * @{
//   99   */
//  100 
//  101 #ifdef HAL_SRAM_MODULE_ENABLED
//  102 
//  103 #if defined (STM32L151xD) || defined (STM32L152xD) || defined (STM32L162xD)
//  104 
//  105 /** @defgroup SRAM SRAM
//  106   * @brief SRAM driver modules
//  107   * @{
//  108   */
//  109 /* Private typedef -----------------------------------------------------------*/
//  110 /* Private define ------------------------------------------------------------*/
//  111 /* Private macro -------------------------------------------------------------*/    
//  112 /* Private variables ---------------------------------------------------------*/
//  113 /* Private function prototypes -----------------------------------------------*/
//  114 /* Exported functions --------------------------------------------------------*/
//  115 
//  116 /** @defgroup SRAM_Exported_Functions SRAM Exported Functions
//  117   * @{
//  118   */
//  119 
//  120 /** @defgroup SRAM_Exported_Functions_Group1 Initialization and de-initialization functions 
//  121   * @brief    Initialization and Configuration functions.
//  122   *
//  123   @verbatim    
//  124   ==============================================================================
//  125            ##### SRAM Initialization and de_initialization functions #####
//  126   ==============================================================================
//  127     [..]  This section provides functions allowing to initialize/de-initialize
//  128           the SRAM memory
//  129   
//  130 @endverbatim
//  131   * @{
//  132   */
//  133 
//  134 /**
//  135   * @brief  Performs the SRAM device initialization sequence
//  136   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  137   *                the configuration information for SRAM module.
//  138   * @param  Timing: Pointer to SRAM control timing structure 
//  139   * @param  ExtTiming: Pointer to SRAM extended mode timing structure  
//  140   * @retval HAL status
//  141   */
//  142 HAL_StatusTypeDef HAL_SRAM_Init(SRAM_HandleTypeDef *hsram, FSMC_NORSRAM_TimingTypeDef *Timing, FSMC_NORSRAM_TimingTypeDef *ExtTiming)
//  143 { 
//  144   /* Check the SRAM handle parameter */
//  145   if(hsram == NULL)
//  146   {
//  147      return HAL_ERROR;
//  148   }
//  149   
//  150   if(hsram->State == HAL_SRAM_STATE_RESET)
//  151   {  
//  152     /* Allocate lock resource and initialize it */
//  153     hsram->Lock = HAL_UNLOCKED;
//  154     
//  155     /* Initialize the low level hardware (MSP) */
//  156     HAL_SRAM_MspInit(hsram);
//  157   }
//  158   
//  159   /* Initialize SRAM control Interface */
//  160   FSMC_NORSRAM_Init(hsram->Instance, &(hsram->Init));
//  161 
//  162   /* Initialize SRAM timing Interface */
//  163   FSMC_NORSRAM_Timing_Init(hsram->Instance, Timing, hsram->Init.NSBank); 
//  164 
//  165   /* Initialize SRAM extended mode timing Interface */
//  166   FSMC_NORSRAM_Extended_Timing_Init(hsram->Extended, ExtTiming, hsram->Init.NSBank,  hsram->Init.ExtendedMode);  
//  167   
//  168   /* Enable the NORSRAM device */
//  169   __FSMC_NORSRAM_ENABLE(hsram->Instance, hsram->Init.NSBank); 
//  170   
//  171   return HAL_OK;
//  172 }
//  173 
//  174 /**
//  175   * @brief  Performs the SRAM device De-initialization sequence.
//  176   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  177   *                the configuration information for SRAM module.
//  178   * @retval HAL status
//  179   */
//  180 HAL_StatusTypeDef  HAL_SRAM_DeInit(SRAM_HandleTypeDef *hsram)
//  181 { 
//  182   /* De-Initialize the low level hardware (MSP) */
//  183   HAL_SRAM_MspDeInit(hsram);
//  184    
//  185   /* Configure the SRAM registers with their reset values */
//  186   FSMC_NORSRAM_DeInit(hsram->Instance, hsram->Extended, hsram->Init.NSBank);
//  187 
//  188   hsram->State = HAL_SRAM_STATE_RESET;
//  189   
//  190   /* Release Lock */
//  191   __HAL_UNLOCK(hsram);
//  192 
//  193   return HAL_OK;
//  194 }
//  195 
//  196 /**
//  197   * @brief  SRAM MSP Init.
//  198   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  199   *                the configuration information for SRAM module.
//  200   * @retval None
//  201   */
//  202 __weak void HAL_SRAM_MspInit(SRAM_HandleTypeDef *hsram)
//  203 {
//  204   /* Prevent unused argument(s) compilation warning */
//  205   UNUSED(hsram);
//  206 
//  207   /* NOTE : This function Should not be modified, when the callback is needed,
//  208             the HAL_SRAM_MspInit could be implemented in the user file
//  209    */ 
//  210 }
//  211 
//  212 /**
//  213   * @brief  SRAM MSP DeInit.
//  214   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  215   *                the configuration information for SRAM module.
//  216   * @retval None
//  217   */
//  218 __weak void HAL_SRAM_MspDeInit(SRAM_HandleTypeDef *hsram)
//  219 {
//  220   /* Prevent unused argument(s) compilation warning */
//  221   UNUSED(hsram);
//  222 
//  223   /* NOTE : This function Should not be modified, when the callback is needed,
//  224             the HAL_SRAM_MspDeInit could be implemented in the user file
//  225    */ 
//  226 }
//  227 
//  228 /**
//  229   * @brief  DMA transfer complete callback.
//  230   * @param  hdma: pointer to a SRAM_HandleTypeDef structure that contains
//  231   *                the configuration information for SRAM module.
//  232   * @retval None
//  233   */
//  234 __weak void HAL_SRAM_DMA_XferCpltCallback(DMA_HandleTypeDef *hdma)
//  235 {
//  236   /* Prevent unused argument(s) compilation warning */
//  237   UNUSED(hdma);
//  238 
//  239   /* NOTE : This function Should not be modified, when the callback is needed,
//  240             the HAL_SRAM_DMA_XferCpltCallback could be implemented in the user file
//  241    */ 
//  242 }
//  243 
//  244 /**
//  245   * @brief  DMA transfer complete error callback.
//  246   * @param  hdma: pointer to a SRAM_HandleTypeDef structure that contains
//  247   *                the configuration information for SRAM module.
//  248   * @retval None
//  249   */
//  250 __weak void HAL_SRAM_DMA_XferErrorCallback(DMA_HandleTypeDef *hdma)
//  251 {
//  252   /* Prevent unused argument(s) compilation warning */
//  253   UNUSED(hdma);
//  254 
//  255   /* NOTE : This function Should not be modified, when the callback is needed,
//  256             the HAL_SRAM_DMA_XferErrorCallback could be implemented in the user file
//  257    */ 
//  258 }
//  259 
//  260 /**
//  261   * @}
//  262   */
//  263 
//  264 /** @defgroup SRAM_Exported_Functions_Group2 Input Output and memory control functions 
//  265   * @brief    Input Output and memory control functions 
//  266   *
//  267   @verbatim    
//  268   ==============================================================================
//  269                   ##### SRAM Input and Output functions #####
//  270   ==============================================================================
//  271   [..]  
//  272     This section provides functions allowing to use and control the SRAM memory
//  273   
//  274 @endverbatim
//  275   * @{
//  276   */
//  277 
//  278 /**
//  279   * @brief  Reads 8-bit buffer from SRAM memory. 
//  280   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  281   *                the configuration information for SRAM module.
//  282   * @param  pAddress: Pointer to read start address
//  283   * @param  pDstBuffer: Pointer to destination buffer  
//  284   * @param  BufferSize: Size of the buffer to read from memory
//  285   * @retval HAL status
//  286   */
//  287 HAL_StatusTypeDef HAL_SRAM_Read_8b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint8_t *pDstBuffer, uint32_t BufferSize)
//  288 {
//  289   __IO uint8_t * psramaddress = (uint8_t *)pAddress;
//  290   
//  291   /* Process Locked */
//  292   __HAL_LOCK(hsram);
//  293   
//  294   /* Update the SRAM controller state */
//  295   hsram->State = HAL_SRAM_STATE_BUSY;  
//  296   
//  297   /* Read data from memory */
//  298   for(; BufferSize != 0; BufferSize--)
//  299   {
//  300     *pDstBuffer = *(__IO uint8_t *)psramaddress;
//  301     pDstBuffer++;
//  302     psramaddress++;
//  303   }
//  304   
//  305   /* Update the SRAM controller state */
//  306   hsram->State = HAL_SRAM_STATE_READY;    
//  307 
//  308   /* Process unlocked */
//  309   __HAL_UNLOCK(hsram); 
//  310     
//  311   return HAL_OK;   
//  312 }
//  313 
//  314 /**
//  315   * @brief  Writes 8-bit buffer to SRAM memory. 
//  316   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  317   *                the configuration information for SRAM module.
//  318   * @param  pAddress: Pointer to write start address
//  319   * @param  pSrcBuffer: Pointer to source buffer to write  
//  320   * @param  BufferSize: Size of the buffer to write to memory
//  321   * @retval HAL status
//  322   */
//  323 HAL_StatusTypeDef HAL_SRAM_Write_8b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint8_t *pSrcBuffer, uint32_t BufferSize)
//  324 {
//  325   __IO uint8_t * psramaddress = (uint8_t *)pAddress;
//  326   
//  327   /* Check the SRAM controller state */
//  328   if(hsram->State == HAL_SRAM_STATE_PROTECTED)
//  329   {
//  330     return  HAL_ERROR; 
//  331   }
//  332   
//  333   /* Process Locked */
//  334   __HAL_LOCK(hsram);
//  335   
//  336   /* Update the SRAM controller state */
//  337   hsram->State = HAL_SRAM_STATE_BUSY; 
//  338 
//  339   /* Write data to memory */
//  340   for(; BufferSize != 0; BufferSize--)
//  341   {
//  342     *(__IO uint8_t *)psramaddress = *pSrcBuffer; 
//  343     pSrcBuffer++;
//  344     psramaddress++;    
//  345   }    
//  346 
//  347   /* Update the SRAM controller state */
//  348   hsram->State = HAL_SRAM_STATE_READY; 
//  349   
//  350   /* Process unlocked */
//  351   __HAL_UNLOCK(hsram);
//  352     
//  353   return HAL_OK;   
//  354 }
//  355 
//  356 /**
//  357   * @brief  Reads 16-bit buffer from SRAM memory. 
//  358   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  359   *                the configuration information for SRAM module.
//  360   * @param  pAddress: Pointer to read start address
//  361   * @param  pDstBuffer: Pointer to destination buffer  
//  362   * @param  BufferSize: Size of the buffer to read from memory
//  363   * @retval HAL status
//  364   */
//  365 HAL_StatusTypeDef HAL_SRAM_Read_16b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint16_t *pDstBuffer, uint32_t BufferSize)
//  366 {
//  367   __IO uint16_t * psramaddress = (uint16_t *)pAddress;
//  368   
//  369   /* Process Locked */
//  370   __HAL_LOCK(hsram);
//  371   
//  372   /* Update the SRAM controller state */
//  373   hsram->State = HAL_SRAM_STATE_BUSY;  
//  374   
//  375   /* Read data from memory */
//  376   for(; BufferSize != 0; BufferSize--)
//  377   {
//  378     *pDstBuffer = *(__IO uint16_t *)psramaddress;
//  379     pDstBuffer++;
//  380     psramaddress++;
//  381   }
//  382   
//  383   /* Update the SRAM controller state */
//  384   hsram->State = HAL_SRAM_STATE_READY;    
//  385 
//  386   /* Process unlocked */
//  387   __HAL_UNLOCK(hsram); 
//  388     
//  389   return HAL_OK;  
//  390 }
//  391 
//  392 /**
//  393   * @brief  Writes 16-bit buffer to SRAM memory. 
//  394   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  395   *                the configuration information for SRAM module.
//  396   * @param  pAddress: Pointer to write start address
//  397   * @param  pSrcBuffer: Pointer to source buffer to write  
//  398   * @param  BufferSize: Size of the buffer to write to memory
//  399   * @retval HAL status
//  400   */
//  401 HAL_StatusTypeDef HAL_SRAM_Write_16b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint16_t *pSrcBuffer, uint32_t BufferSize)
//  402 {
//  403   __IO uint16_t * psramaddress = (uint16_t *)pAddress; 
//  404   
//  405   /* Check the SRAM controller state */
//  406   if(hsram->State == HAL_SRAM_STATE_PROTECTED)
//  407   {
//  408     return  HAL_ERROR; 
//  409   }
//  410   
//  411   /* Process Locked */
//  412   __HAL_LOCK(hsram);
//  413   
//  414   /* Update the SRAM controller state */
//  415   hsram->State = HAL_SRAM_STATE_BUSY; 
//  416 
//  417   /* Write data to memory */
//  418   for(; BufferSize != 0; BufferSize--)
//  419   {
//  420     *(__IO uint16_t *)psramaddress = *pSrcBuffer; 
//  421     pSrcBuffer++;
//  422     psramaddress++;    
//  423   }    
//  424 
//  425   /* Update the SRAM controller state */
//  426   hsram->State = HAL_SRAM_STATE_READY; 
//  427   
//  428   /* Process unlocked */
//  429   __HAL_UNLOCK(hsram);
//  430     
//  431   return HAL_OK;  
//  432 }
//  433 
//  434 /**
//  435   * @brief  Reads 32-bit buffer from SRAM memory. 
//  436   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  437   *                the configuration information for SRAM module.
//  438   * @param  pAddress: Pointer to read start address
//  439   * @param  pDstBuffer: Pointer to destination buffer  
//  440   * @param  BufferSize: Size of the buffer to read from memory
//  441   * @retval HAL status
//  442   */
//  443 HAL_StatusTypeDef HAL_SRAM_Read_32b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pDstBuffer, uint32_t BufferSize)
//  444 {
//  445   /* Process Locked */
//  446   __HAL_LOCK(hsram);
//  447   
//  448   /* Update the SRAM controller state */
//  449   hsram->State = HAL_SRAM_STATE_BUSY;  
//  450   
//  451   /* Read data from memory */
//  452   for(; BufferSize != 0; BufferSize--)
//  453   {
//  454     *pDstBuffer = *(__IO uint32_t *)pAddress;
//  455     pDstBuffer++;
//  456     pAddress++;
//  457   }
//  458   
//  459   /* Update the SRAM controller state */
//  460   hsram->State = HAL_SRAM_STATE_READY;    
//  461 
//  462   /* Process unlocked */
//  463   __HAL_UNLOCK(hsram); 
//  464     
//  465   return HAL_OK;  
//  466 }
//  467 
//  468 /**
//  469   * @brief  Writes 32-bit buffer to SRAM memory. 
//  470   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  471   *                the configuration information for SRAM module.
//  472   * @param  pAddress: Pointer to write start address
//  473   * @param  pSrcBuffer: Pointer to source buffer to write  
//  474   * @param  BufferSize: Size of the buffer to write to memory
//  475   * @retval HAL status
//  476   */
//  477 HAL_StatusTypeDef HAL_SRAM_Write_32b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pSrcBuffer, uint32_t BufferSize)
//  478 {
//  479   /* Check the SRAM controller state */
//  480   if(hsram->State == HAL_SRAM_STATE_PROTECTED)
//  481   {
//  482     return  HAL_ERROR; 
//  483   }
//  484   
//  485   /* Process Locked */
//  486   __HAL_LOCK(hsram);
//  487   
//  488   /* Update the SRAM controller state */
//  489   hsram->State = HAL_SRAM_STATE_BUSY; 
//  490 
//  491   /* Write data to memory */
//  492   for(; BufferSize != 0; BufferSize--)
//  493   {
//  494     *(__IO uint32_t *)pAddress = *pSrcBuffer; 
//  495     pSrcBuffer++;
//  496     pAddress++;    
//  497   }    
//  498 
//  499   /* Update the SRAM controller state */
//  500   hsram->State = HAL_SRAM_STATE_READY; 
//  501   
//  502   /* Process unlocked */
//  503   __HAL_UNLOCK(hsram);
//  504     
//  505   return HAL_OK;   
//  506 }
//  507 
//  508 /**
//  509   * @brief  Reads a Words data from the SRAM memory using DMA transfer.
//  510   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  511   *                the configuration information for SRAM module.
//  512   * @param  pAddress: Pointer to read start address
//  513   * @param  pDstBuffer: Pointer to destination buffer  
//  514   * @param  BufferSize: Size of the buffer to read from memory
//  515   * @retval HAL status
//  516   */
//  517 HAL_StatusTypeDef HAL_SRAM_Read_DMA(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pDstBuffer, uint32_t BufferSize)
//  518 {
//  519   /* Process Locked */
//  520   __HAL_LOCK(hsram);  
//  521   
//  522   /* Update the SRAM controller state */
//  523   hsram->State = HAL_SRAM_STATE_BUSY;   
//  524   
//  525   /* Configure DMA user callbacks */
//  526   hsram->hdma->XferCpltCallback  = HAL_SRAM_DMA_XferCpltCallback;
//  527   hsram->hdma->XferErrorCallback = HAL_SRAM_DMA_XferErrorCallback;
//  528 
//  529   /* Enable the DMA Channel */
//  530   HAL_DMA_Start_IT(hsram->hdma, (uint32_t)pAddress, (uint32_t)pDstBuffer, (uint32_t)BufferSize);
//  531   
//  532   /* Update the SRAM controller state */
//  533   hsram->State = HAL_SRAM_STATE_READY; 
//  534   
//  535   /* Process unlocked */
//  536   __HAL_UNLOCK(hsram);  
//  537   
//  538   return HAL_OK; 
//  539 }
//  540 
//  541 /**
//  542   * @brief  Writes a Words data buffer to SRAM memory using DMA transfer.
//  543   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  544   *                the configuration information for SRAM module.
//  545   * @param  pAddress: Pointer to write start address
//  546   * @param  pSrcBuffer: Pointer to source buffer to write  
//  547   * @param  BufferSize: Size of the buffer to write to memory
//  548   * @retval HAL status
//  549   */
//  550 HAL_StatusTypeDef HAL_SRAM_Write_DMA(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pSrcBuffer, uint32_t BufferSize)
//  551 {
//  552   /* Check the SRAM controller state */
//  553   if(hsram->State == HAL_SRAM_STATE_PROTECTED)
//  554   {
//  555     return  HAL_ERROR; 
//  556   }
//  557   
//  558   /* Process Locked */
//  559   __HAL_LOCK(hsram);
//  560   
//  561   /* Update the SRAM controller state */
//  562   hsram->State = HAL_SRAM_STATE_BUSY; 
//  563   
//  564   /* Configure DMA user callbacks */
//  565   hsram->hdma->XferCpltCallback  = HAL_SRAM_DMA_XferCpltCallback;
//  566   hsram->hdma->XferErrorCallback = HAL_SRAM_DMA_XferErrorCallback;
//  567 
//  568   /* Enable the DMA Channel */
//  569   HAL_DMA_Start_IT(hsram->hdma, (uint32_t)pSrcBuffer, (uint32_t)pAddress, (uint32_t)BufferSize);
//  570   
//  571   /* Update the SRAM controller state */
//  572   hsram->State = HAL_SRAM_STATE_READY;  
//  573   
//  574   /* Process unlocked */
//  575   __HAL_UNLOCK(hsram);  
//  576   
//  577   return HAL_OK;
//  578 }
//  579 
//  580 /**
//  581   * @}
//  582   */
//  583   
//  584 /** @defgroup SRAM_Exported_Functions_Group3 Control functions 
//  585  *  @brief   Control functions 
//  586  *
//  587 @verbatim   
//  588   ==============================================================================
//  589                         ##### SRAM Control functions #####
//  590   ==============================================================================  
//  591   [..]
//  592     This subsection provides a set of functions allowing to control dynamically
//  593     the SRAM interface.
//  594 
//  595 @endverbatim
//  596   * @{
//  597   */
//  598     
//  599 /**
//  600   * @brief  Enables dynamically SRAM write operation.
//  601   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  602   *                the configuration information for SRAM module.
//  603   * @retval HAL status
//  604   */
//  605 HAL_StatusTypeDef HAL_SRAM_WriteOperation_Enable(SRAM_HandleTypeDef *hsram)
//  606 {
//  607   /* Process Locked */
//  608   __HAL_LOCK(hsram);
//  609 
//  610   /* Enable write operation */
//  611   FSMC_NORSRAM_WriteOperation_Enable(hsram->Instance, hsram->Init.NSBank); 
//  612   
//  613   /* Update the SRAM controller state */
//  614   hsram->State = HAL_SRAM_STATE_READY;
//  615   
//  616   /* Process unlocked */
//  617   __HAL_UNLOCK(hsram); 
//  618   
//  619   return HAL_OK;  
//  620 }
//  621 
//  622 /**
//  623   * @brief  Disables dynamically SRAM write operation.
//  624   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  625   *                the configuration information for SRAM module.
//  626   * @retval HAL status
//  627   */
//  628 HAL_StatusTypeDef HAL_SRAM_WriteOperation_Disable(SRAM_HandleTypeDef *hsram)
//  629 {
//  630   /* Process Locked */
//  631   __HAL_LOCK(hsram);
//  632 
//  633   /* Update the SRAM controller state */
//  634   hsram->State = HAL_SRAM_STATE_BUSY;
//  635     
//  636   /* Disable write operation */
//  637   FSMC_NORSRAM_WriteOperation_Disable(hsram->Instance, hsram->Init.NSBank); 
//  638   
//  639   /* Update the SRAM controller state */
//  640   hsram->State = HAL_SRAM_STATE_PROTECTED;
//  641   
//  642   /* Process unlocked */
//  643   __HAL_UNLOCK(hsram); 
//  644   
//  645   return HAL_OK;  
//  646 }
//  647 
//  648 /**
//  649   * @}
//  650   */
//  651 
//  652 /** @defgroup SRAM_Exported_Functions_Group4 Peripheral State functions 
//  653  *  @brief   Peripheral State functions 
//  654  *
//  655 @verbatim   
//  656   ==============================================================================
//  657                       ##### SRAM State functions #####
//  658   ==============================================================================  
//  659   [..]
//  660     This subsection permits to get in run-time the status of the SRAM controller 
//  661     and the data flow.
//  662 
//  663 @endverbatim
//  664   * @{
//  665   */
//  666   
//  667 /**
//  668   * @brief  Returns the SRAM controller state
//  669   * @param  hsram: pointer to a SRAM_HandleTypeDef structure that contains
//  670   *                the configuration information for SRAM module.
//  671   * @retval HAL state
//  672   */
//  673 HAL_SRAM_StateTypeDef HAL_SRAM_GetState(SRAM_HandleTypeDef *hsram)
//  674 {
//  675   return hsram->State;
//  676 }
//  677 
//  678 /**
//  679   * @}
//  680   */
//  681 
//  682 /**
//  683   * @}
//  684   */
//  685 
//  686 /**
//  687   * @}
//  688   */
//  689 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
//  690 #endif /* HAL_SRAM_MODULE_ENABLED */
//  691 
//  692 /**
//  693   * @}
//  694   */
//  695 
//  696 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
