///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_nor.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_nor.c
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
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_nor.s
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
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_nor.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_nor.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   NOR HAL module driver.
//    8   *          This file provides a generic firmware to drive NOR memories mounted 
//    9   *          as external device.
//   10   *         
//   11   @verbatim
//   12   ==============================================================================
//   13                      ##### How to use this driver #####
//   14   ==============================================================================       
//   15     [..]
//   16       This driver is a generic layered driver which contains a set of APIs used to 
//   17       control NOR flash memories. It uses the FSMC layer functions to interface 
//   18       with NOR devices. This driver is used as follows:
//   19     
//   20       (+) NOR flash memory configuration sequence using the function HAL_NOR_Init() 
//   21           with control and timing parameters for both normal and extended mode.
//   22             
//   23       (+) Read NOR flash memory manufacturer code and device IDs using the function
//   24           HAL_NOR_Read_ID(). The read information is stored in the NOR_ID_TypeDef 
//   25           structure declared by the function caller. 
//   26         
//   27       (+) Access NOR flash memory by read/write data unit operations using the functions
//   28           HAL_NOR_Read(), HAL_NOR_Program().
//   29         
//   30       (+) Perform NOR flash erase block/chip operations using the functions 
//   31           HAL_NOR_Erase_Block() and HAL_NOR_Erase_Chip().
//   32         
//   33       (+) Read the NOR flash CFI (common flash interface) IDs using the function
//   34           HAL_NOR_Read_CFI(). The read information is stored in the NOR_CFI_TypeDef
//   35           structure declared by the function caller.
//   36         
//   37       (+) You can also control the NOR device by calling the control APIs HAL_NOR_WriteOperation_Enable()/
//   38           HAL_NOR_WriteOperation_Disable() to respectively enable/disable the NOR write operation  
//   39        
//   40       (+) You can monitor the NOR device HAL state by calling the function
//   41           HAL_NOR_GetState() 
//   42     [..]
//   43      (@) This driver is a set of generic APIs which handle standard NOR flash operations.
//   44          If a NOR flash device contains different operations and/or implementations, 
//   45          it should be implemented separately.
//   46 
//   47      *** NOR HAL driver macros list ***
//   48      ============================================= 
//   49      [..]
//   50        Below the list of most used macros in NOR HAL driver.
//   51        
//   52       (+) NOR_WRITE : NOR memory write data to specified address
//   53 
//   54   @endverbatim
//   55   ******************************************************************************
//   56   * @attention
//   57   *
//   58   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   59   *
//   60   * Redistribution and use in source and binary forms, with or without modification,
//   61   * are permitted provided that the following conditions are met:
//   62   *   1. Redistributions of source code must retain the above copyright notice,
//   63   *      this list of conditions and the following disclaimer.
//   64   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   65   *      this list of conditions and the following disclaimer in the documentation
//   66   *      and/or other materials provided with the distribution.
//   67   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   68   *      may be used to endorse or promote products derived from this software
//   69   *      without specific prior written permission.
//   70   *
//   71   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   72   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   73   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   74   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   75   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   76   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   77   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   78   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   79   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   80   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   81   *
//   82   ******************************************************************************
//   83   */ 
//   84 
//   85 /* Includes ------------------------------------------------------------------*/
//   86 #include "stm32l1xx_hal.h"
//   87 
//   88 /** @addtogroup STM32L1xx_HAL_Driver
//   89   * @{
//   90   */
//   91 
//   92 #ifdef HAL_NOR_MODULE_ENABLED
//   93 #if defined (STM32L151xD) || defined (STM32L152xD) || defined (STM32L162xD)
//   94 
//   95 /** @defgroup NOR NOR
//   96   * @brief NOR driver modules
//   97   * @{
//   98   */
//   99 /* Private typedef -----------------------------------------------------------*/
//  100 /* Private define ------------------------------------------------------------*/
//  101 /** @defgroup NOR_Private_Constants NOR Private Constants
//  102   * @{
//  103   */
//  104 
//  105 /* Constants to define address to set to write a command */
//  106 #define NOR_CMD_ADDRESS_FIRST                 (uint16_t)0x0555
//  107 #define NOR_CMD_ADDRESS_FIRST_CFI             (uint16_t)0x0055
//  108 #define NOR_CMD_ADDRESS_SECOND                (uint16_t)0x02AA
//  109 #define NOR_CMD_ADDRESS_THIRD                 (uint16_t)0x0555
//  110 #define NOR_CMD_ADDRESS_FOURTH                (uint16_t)0x0555
//  111 #define NOR_CMD_ADDRESS_FIFTH                 (uint16_t)0x02AA
//  112 #define NOR_CMD_ADDRESS_SIXTH                 (uint16_t)0x0555
//  113 
//  114 /* Constants to define data to program a command */
//  115 #define NOR_CMD_DATA_READ_RESET               (uint16_t)0x00F0
//  116 #define NOR_CMD_DATA_FIRST                    (uint16_t)0x00AA
//  117 #define NOR_CMD_DATA_SECOND                   (uint16_t)0x0055
//  118 #define NOR_CMD_DATA_AUTO_SELECT              (uint16_t)0x0090
//  119 #define NOR_CMD_DATA_PROGRAM                  (uint16_t)0x00A0
//  120 #define NOR_CMD_DATA_CHIP_BLOCK_ERASE_THIRD   (uint16_t)0x0080
//  121 #define NOR_CMD_DATA_CHIP_BLOCK_ERASE_FOURTH  (uint16_t)0x00AA
//  122 #define NOR_CMD_DATA_CHIP_BLOCK_ERASE_FIFTH   (uint16_t)0x0055
//  123 #define NOR_CMD_DATA_CHIP_ERASE               (uint16_t)0x0010
//  124 #define NOR_CMD_DATA_CFI                      (uint16_t)0x0098
//  125 
//  126 #define NOR_CMD_DATA_BUFFER_AND_PROG          (uint8_t)0x25
//  127 #define NOR_CMD_DATA_BUFFER_AND_PROG_CONFIRM  (uint8_t)0x29
//  128 #define NOR_CMD_DATA_BLOCK_ERASE              (uint8_t)0x30
//  129 
//  130 /* Mask on NOR STATUS REGISTER */
//  131 #define NOR_MASK_STATUS_DQ5                   (uint16_t)0x0020
//  132 #define NOR_MASK_STATUS_DQ6                   (uint16_t)0x0040
//  133 
//  134 /**
//  135   * @}
//  136   */
//  137 
//  138 /* Private macro -------------------------------------------------------------*/
//  139 /** @defgroup NOR_Private_Macros NOR Private Macros
//  140   * @{
//  141   */
//  142 
//  143 /**
//  144   * @}
//  145   */
//  146 
//  147 /* Private variables ---------------------------------------------------------*/
//  148 
//  149 /** @defgroup NOR_Private_Variables NOR Private Variables
//  150   * @{
//  151   */
//  152 
//  153 static uint32_t uwNORMemoryDataWidth  = NOR_MEMORY_8B;
//  154 
//  155 /**
//  156   * @}
//  157   */
//  158 
//  159 /* Private function prototypes -----------------------------------------------*/
//  160 /* Private functions ---------------------------------------------------------*/
//  161 
//  162 /** @defgroup NOR_Exported_Functions NOR Exported Functions
//  163   * @{
//  164   */
//  165 
//  166 /** @defgroup NOR_Exported_Functions_Group1 Initialization and de-initialization functions 
//  167   * @brief    Initialization and Configuration functions 
//  168   *
//  169   @verbatim    
//  170   ==============================================================================
//  171            ##### NOR Initialization and de_initialization functions #####
//  172   ==============================================================================
//  173   [..]  
//  174     This section provides functions allowing to initialize/de-initialize
//  175     the NOR memory
//  176   
//  177 @endverbatim
//  178   * @{
//  179   */
//  180     
//  181 /**
//  182   * @brief  Perform the NOR memory Initialization sequence
//  183   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  184   *                the configuration information for NOR module.
//  185   * @param  Timing: pointer to NOR control timing structure 
//  186   * @param  ExtTiming: pointer to NOR extended mode timing structure    
//  187   * @retval HAL status
//  188   */
//  189 HAL_StatusTypeDef HAL_NOR_Init(NOR_HandleTypeDef *hnor, FSMC_NORSRAM_TimingTypeDef *Timing, FSMC_NORSRAM_TimingTypeDef *ExtTiming)
//  190 {
//  191   /* Check the NOR handle parameter */
//  192   if(hnor == NULL)
//  193   {
//  194      return HAL_ERROR;
//  195   }
//  196   
//  197   if(hnor->State == HAL_NOR_STATE_RESET)
//  198   {
//  199     /* Allocate lock resource and initialize it */
//  200     hnor->Lock = HAL_UNLOCKED;
//  201     
//  202     /* Initialize the low level hardware (MSP) */
//  203     HAL_NOR_MspInit(hnor);
//  204   }
//  205 
//  206   /* Initialize NOR control Interface */
//  207   FSMC_NORSRAM_Init(hnor->Instance, &(hnor->Init));
//  208 
//  209   /* Initialize NOR timing Interface */
//  210   FSMC_NORSRAM_Timing_Init(hnor->Instance, Timing, hnor->Init.NSBank); 
//  211 
//  212   /* Initialize NOR extended mode timing Interface */
//  213   FSMC_NORSRAM_Extended_Timing_Init(hnor->Extended, ExtTiming, hnor->Init.NSBank, hnor->Init.ExtendedMode);
//  214 
//  215   /* Enable the NORSRAM device */
//  216   __FSMC_NORSRAM_ENABLE(hnor->Instance, hnor->Init.NSBank);  
//  217 
//  218   /* Initialize NOR Memory Data Width*/
//  219   if (hnor->Init.MemoryDataWidth == FSMC_NORSRAM_MEM_BUS_WIDTH_8)
//  220   {
//  221     uwNORMemoryDataWidth = NOR_MEMORY_8B;
//  222   }
//  223   else
//  224   {
//  225     uwNORMemoryDataWidth = NOR_MEMORY_16B;
//  226   }
//  227 
//  228   /* Check the NOR controller state */
//  229   hnor->State = HAL_NOR_STATE_READY; 
//  230   
//  231   return HAL_OK;
//  232 }
//  233 
//  234 /**
//  235   * @brief  Perform NOR memory De-Initialization sequence
//  236   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  237   *                the configuration information for NOR module.
//  238   * @retval HAL status
//  239   */
//  240 HAL_StatusTypeDef HAL_NOR_DeInit(NOR_HandleTypeDef *hnor)  
//  241 {
//  242   /* De-Initialize the low level hardware (MSP) */
//  243   HAL_NOR_MspDeInit(hnor);
//  244  
//  245   /* Configure the NOR registers with their reset values */
//  246   FSMC_NORSRAM_DeInit(hnor->Instance, hnor->Extended, hnor->Init.NSBank);
//  247   
//  248   /* Update the NOR controller state */
//  249   hnor->State = HAL_NOR_STATE_RESET;
//  250 
//  251   /* Release Lock */
//  252   __HAL_UNLOCK(hnor);
//  253 
//  254   return HAL_OK;
//  255 }
//  256 
//  257 /**
//  258   * @brief  NOR MSP Init
//  259   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  260   *                the configuration information for NOR module.
//  261   * @retval None
//  262   */
//  263 __weak void HAL_NOR_MspInit(NOR_HandleTypeDef *hnor)
//  264 {
//  265   /* Prevent unused argument(s) compilation warning */
//  266   UNUSED(hnor);
//  267 
//  268   /* NOTE : This function Should not be modified, when the callback is needed,
//  269             the HAL_NOR_MspInit could be implemented in the user file
//  270    */ 
//  271 }
//  272 
//  273 /**
//  274   * @brief  NOR MSP DeInit
//  275   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  276   *                the configuration information for NOR module.
//  277   * @retval None
//  278   */
//  279 __weak void HAL_NOR_MspDeInit(NOR_HandleTypeDef *hnor)
//  280 {
//  281   /* Prevent unused argument(s) compilation warning */
//  282   UNUSED(hnor);
//  283 
//  284   /* NOTE : This function Should not be modified, when the callback is needed,
//  285             the HAL_NOR_MspDeInit could be implemented in the user file
//  286    */ 
//  287 }
//  288 
//  289 /**
//  290   * @brief  NOR MSP Wait fro Ready/Busy signal
//  291   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  292   *                the configuration information for NOR module.
//  293   * @param  Timeout: Maximum timeout value
//  294   * @retval None
//  295   */
//  296 __weak void HAL_NOR_MspWait(NOR_HandleTypeDef *hnor, uint32_t Timeout)
//  297 {
//  298   /* Prevent unused argument(s) compilation warning */
//  299   UNUSED(hnor);
//  300   UNUSED(Timeout);
//  301 
//  302   /* NOTE : This function Should not be modified, when the callback is needed,
//  303             the HAL_NOR_MspWait could be implemented in the user file
//  304    */ 
//  305 }
//  306   
//  307 /**
//  308   * @}
//  309   */
//  310 
//  311 /** @defgroup NOR_Exported_Functions_Group2 Input and Output functions 
//  312   * @brief    Input Output and memory control functions 
//  313   *
//  314   @verbatim    
//  315   ==============================================================================
//  316                 ##### NOR Input and Output functions #####
//  317   ==============================================================================
//  318   [..]  
//  319     This section provides functions allowing to use and control the NOR memory
//  320   
//  321 @endverbatim
//  322   * @{
//  323   */
//  324   
//  325 /**
//  326   * @brief  Read NOR flash IDs
//  327   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  328   *                the configuration information for NOR module.
//  329   * @param  pNOR_ID : pointer to NOR ID structure
//  330   * @retval HAL status
//  331   */
//  332 HAL_StatusTypeDef HAL_NOR_Read_ID(NOR_HandleTypeDef *hnor, NOR_IDTypeDef *pNOR_ID)
//  333 {
//  334   uint32_t deviceaddress = 0;
//  335   
//  336   /* Process Locked */
//  337   __HAL_LOCK(hnor);
//  338   
//  339   /* Check the NOR controller state */
//  340   if(hnor->State == HAL_NOR_STATE_BUSY)
//  341   {
//  342      return HAL_BUSY;
//  343   }
//  344   
//  345   /* Select the NOR device address */
//  346   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  347   {
//  348     deviceaddress = NOR_MEMORY_ADRESS1;
//  349   }
//  350   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  351   {
//  352     deviceaddress = NOR_MEMORY_ADRESS2;
//  353   }
//  354   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  355   {
//  356     deviceaddress = NOR_MEMORY_ADRESS3;
//  357   }
//  358   else /* FSMC_NORSRAM_BANK4 */
//  359   {
//  360     deviceaddress = NOR_MEMORY_ADRESS4;
//  361   }  
//  362     
//  363   /* Update the NOR controller state */
//  364   hnor->State = HAL_NOR_STATE_BUSY;
//  365   
//  366   /* Send read ID command */
//  367   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST);
//  368   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);
//  369   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_THIRD), NOR_CMD_DATA_AUTO_SELECT);
//  370 
//  371   /* Read the NOR IDs */
//  372   pNOR_ID->Manufacturer_Code = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, MC_ADDRESS);
//  373   pNOR_ID->Device_Code1      = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, DEVICE_CODE1_ADDR);
//  374   pNOR_ID->Device_Code2      = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, DEVICE_CODE2_ADDR);
//  375   pNOR_ID->Device_Code3      = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, DEVICE_CODE3_ADDR);
//  376   
//  377   /* Check the NOR controller state */
//  378   hnor->State = HAL_NOR_STATE_READY;
//  379   
//  380   /* Process unlocked */
//  381   __HAL_UNLOCK(hnor);   
//  382   
//  383   return HAL_OK;
//  384 }
//  385 
//  386 /**
//  387   * @brief  Returns the NOR memory to Read mode.
//  388   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  389   *                the configuration information for NOR module.
//  390   * @retval HAL status
//  391   */
//  392 HAL_StatusTypeDef HAL_NOR_ReturnToReadMode(NOR_HandleTypeDef *hnor)
//  393 {
//  394   uint32_t deviceaddress = 0;  
//  395   
//  396   /* Process Locked */
//  397   __HAL_LOCK(hnor);
//  398   
//  399   /* Check the NOR controller state */
//  400   if(hnor->State == HAL_NOR_STATE_BUSY)
//  401   {
//  402      return HAL_BUSY;
//  403   }
//  404   
//  405   /* Select the NOR device address */
//  406   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  407   {
//  408     deviceaddress = NOR_MEMORY_ADRESS1;
//  409   }
//  410   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  411   {
//  412     deviceaddress = NOR_MEMORY_ADRESS2;
//  413   }
//  414   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  415   {
//  416     deviceaddress = NOR_MEMORY_ADRESS3;
//  417   }
//  418   else /* FSMC_NORSRAM_BANK4 */
//  419   {
//  420     deviceaddress = NOR_MEMORY_ADRESS4;
//  421   }  
//  422   
//  423   NOR_WRITE(deviceaddress, NOR_CMD_DATA_READ_RESET);
//  424 
//  425   /* Check the NOR controller state */
//  426   hnor->State = HAL_NOR_STATE_READY;
//  427   
//  428   /* Process unlocked */
//  429   __HAL_UNLOCK(hnor);   
//  430   
//  431   return HAL_OK;
//  432 }
//  433 
//  434 /**
//  435   * @brief  Read data from NOR memory 
//  436   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  437   *                the configuration information for NOR module.
//  438   * @param  pAddress: pointer to Device address
//  439   * @param  pData : pointer to read data  
//  440   * @retval HAL status
//  441   */
//  442 HAL_StatusTypeDef HAL_NOR_Read(NOR_HandleTypeDef *hnor, uint32_t *pAddress, uint16_t *pData)
//  443 {
//  444   uint32_t deviceaddress = 0;
//  445   
//  446   /* Process Locked */
//  447   __HAL_LOCK(hnor);
//  448   
//  449   /* Check the NOR controller state */
//  450   if(hnor->State == HAL_NOR_STATE_BUSY)
//  451   {
//  452      return HAL_BUSY;
//  453   }
//  454   
//  455   /* Select the NOR device address */
//  456   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  457   {
//  458     deviceaddress = NOR_MEMORY_ADRESS1;
//  459   }
//  460   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  461   {
//  462     deviceaddress = NOR_MEMORY_ADRESS2;
//  463   }
//  464   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  465   {
//  466     deviceaddress = NOR_MEMORY_ADRESS3;
//  467   }
//  468   else /* FSMC_NORSRAM_BANK4 */
//  469   {
//  470     deviceaddress = NOR_MEMORY_ADRESS4;
//  471   } 
//  472     
//  473   /* Update the NOR controller state */
//  474   hnor->State = HAL_NOR_STATE_BUSY;
//  475   
//  476   /* Send read data command */
//  477   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST); 
//  478   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);  
//  479   NOR_WRITE((uint32_t)pAddress, NOR_CMD_DATA_READ_RESET);
//  480 
//  481   /* Read the data */
//  482   *pData = *(__IO uint32_t *)(uint32_t)pAddress;
//  483   
//  484   /* Check the NOR controller state */
//  485   hnor->State = HAL_NOR_STATE_READY;
//  486   
//  487   /* Process unlocked */
//  488   __HAL_UNLOCK(hnor);
//  489   
//  490   return HAL_OK;  
//  491 }
//  492 
//  493 /**
//  494   * @brief  Program data to NOR memory 
//  495   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  496   *                the configuration information for NOR module.
//  497   * @param  pAddress: Device address
//  498   * @param  pData : pointer to the data to write   
//  499   * @retval HAL status
//  500   */
//  501 HAL_StatusTypeDef HAL_NOR_Program(NOR_HandleTypeDef *hnor, uint32_t *pAddress, uint16_t *pData)
//  502 {
//  503   uint32_t deviceaddress = 0;
//  504   
//  505   /* Process Locked */
//  506   __HAL_LOCK(hnor);
//  507   
//  508   /* Check the NOR controller state */
//  509   if(hnor->State == HAL_NOR_STATE_BUSY)
//  510   {
//  511      return HAL_BUSY;
//  512   }
//  513   
//  514   /* Select the NOR device address */
//  515   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  516   {
//  517     deviceaddress = NOR_MEMORY_ADRESS1;
//  518   }
//  519   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  520   {
//  521     deviceaddress = NOR_MEMORY_ADRESS2;
//  522   }
//  523   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  524   {
//  525     deviceaddress = NOR_MEMORY_ADRESS3;
//  526   }
//  527   else /* FSMC_NORSRAM_BANK4 */
//  528   {
//  529     deviceaddress = NOR_MEMORY_ADRESS4;
//  530   } 
//  531     
//  532   /* Update the NOR controller state */
//  533   hnor->State = HAL_NOR_STATE_BUSY;
//  534   
//  535   /* Send program data command */
//  536   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST);
//  537   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);
//  538   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_THIRD), NOR_CMD_DATA_PROGRAM);
//  539 
//  540   /* Write the data */
//  541   NOR_WRITE(pAddress, *pData);
//  542   
//  543   /* Check the NOR controller state */
//  544   hnor->State = HAL_NOR_STATE_READY;
//  545   
//  546   /* Process unlocked */
//  547   __HAL_UNLOCK(hnor);
//  548   
//  549   return HAL_OK;  
//  550 }
//  551 
//  552 /**
//  553   * @brief  Reads a block of data from the FSMC NOR memory.
//  554   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  555   *                the configuration information for NOR module.
//  556   * @param  uwAddress: NOR memory internal address to read from.
//  557   * @param  pData: pointer to the buffer that receives the data read from the 
//  558   *         NOR memory.
//  559   * @param  uwBufferSize : number of Half word to read.
//  560   * @retval HAL status
//  561   */
//  562 HAL_StatusTypeDef HAL_NOR_ReadBuffer(NOR_HandleTypeDef *hnor, uint32_t uwAddress, uint16_t *pData, uint32_t uwBufferSize)
//  563 {
//  564   uint32_t deviceaddress = 0;
//  565   
//  566   /* Process Locked */
//  567   __HAL_LOCK(hnor);
//  568   
//  569   /* Check the NOR controller state */
//  570   if(hnor->State == HAL_NOR_STATE_BUSY)
//  571   {
//  572      return HAL_BUSY;
//  573   }
//  574   
//  575   /* Select the NOR device address */
//  576   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  577   {
//  578     deviceaddress = NOR_MEMORY_ADRESS1;
//  579   }
//  580   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  581   {
//  582     deviceaddress = NOR_MEMORY_ADRESS2;
//  583   }
//  584   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  585   {
//  586     deviceaddress = NOR_MEMORY_ADRESS3;
//  587   }
//  588   else /* FSMC_NORSRAM_BANK4 */
//  589   {
//  590     deviceaddress = NOR_MEMORY_ADRESS4;
//  591   }  
//  592     
//  593   /* Update the NOR controller state */
//  594   hnor->State = HAL_NOR_STATE_BUSY;
//  595   
//  596   /* Send read data command */
//  597   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST); 
//  598   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);  
//  599   NOR_WRITE(uwAddress, NOR_CMD_DATA_READ_RESET);
//  600   
//  601   /* Read buffer */
//  602   while( uwBufferSize > 0) 
//  603   {
//  604     *pData++ = *(__IO uint16_t *)uwAddress;
//  605     uwAddress += 2;
//  606     uwBufferSize--;
//  607   } 
//  608   
//  609   /* Check the NOR controller state */
//  610   hnor->State = HAL_NOR_STATE_READY;
//  611   
//  612   /* Process unlocked */
//  613   __HAL_UNLOCK(hnor);
//  614   
//  615   return HAL_OK;  
//  616 }
//  617 
//  618 /**
//  619   * @brief  Writes a half-word buffer to the FSMC NOR memory. This function 
//  620   *         must be used only with S29GL128P NOR memory. 
//  621   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  622   *                the configuration information for NOR module.
//  623   * @param  uwAddress: NOR memory internal address from which the data 
//  624   * @note   Some NOR memory need Address aligned to xx bytes (can be aligned to 
//  625   *          64 bytes boundary for example).
//  626   * @param  pData: pointer to source data buffer. 
//  627   * @param  uwBufferSize: number of Half words to write. 
//  628   * @note   The maximum buffer size allowed is NOR memory dependent
//  629   *         (can be 64 Bytes max for example).
//  630   * @retval HAL status
//  631   */ 
//  632 HAL_StatusTypeDef HAL_NOR_ProgramBuffer(NOR_HandleTypeDef *hnor, uint32_t uwAddress, uint16_t *pData, uint32_t uwBufferSize)
//  633 {
//  634   uint16_t * p_currentaddress = (uint16_t *)NULL;
//  635   uint16_t * p_endaddress = (uint16_t *)NULL;
//  636   uint32_t lastloadedaddress = 0, deviceaddress = 0;
//  637   
//  638   /* Process Locked */
//  639   __HAL_LOCK(hnor);
//  640   
//  641   /* Check the NOR controller state */
//  642   if(hnor->State == HAL_NOR_STATE_BUSY)
//  643   {
//  644      return HAL_BUSY;
//  645   }
//  646   
//  647   /* Select the NOR device address */
//  648   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  649   {
//  650     deviceaddress = NOR_MEMORY_ADRESS1;
//  651   }
//  652   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  653   {
//  654     deviceaddress = NOR_MEMORY_ADRESS2;
//  655   }
//  656   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  657   {
//  658     deviceaddress = NOR_MEMORY_ADRESS3;
//  659   }
//  660   else /* FSMC_NORSRAM_BANK4 */
//  661   {
//  662     deviceaddress = NOR_MEMORY_ADRESS4;
//  663   }  
//  664     
//  665   /* Update the NOR controller state */
//  666   hnor->State = HAL_NOR_STATE_BUSY;
//  667   
//  668   /* Initialize variables */
//  669   p_currentaddress  = (uint16_t*)((uint32_t)(uwAddress));
//  670   p_endaddress      = p_currentaddress + (uwBufferSize-1);
//  671   lastloadedaddress = (uint32_t)(uwAddress);
//  672 
//  673   /* Issue unlock command sequence */
//  674   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST);
//  675   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND); 
//  676 
//  677   /* Write Buffer Load Command */
//  678   NOR_WRITE((uint32_t)(p_currentaddress), NOR_CMD_DATA_BUFFER_AND_PROG); 
//  679   NOR_WRITE((uint32_t)(p_currentaddress), (uwBufferSize-1)); 
//  680 
//  681   /* Load Data into NOR Buffer */
//  682   while(p_currentaddress <= p_endaddress)
//  683   {
//  684     /* Store last loaded address & data value (for polling) */
//  685     lastloadedaddress = (uint32_t)p_currentaddress;
//  686  
//  687     NOR_WRITE(p_currentaddress, *pData++);
//  688     
//  689     p_currentaddress++;
//  690   }
//  691 
//  692   NOR_WRITE((uint32_t)(lastloadedaddress), NOR_CMD_DATA_BUFFER_AND_PROG_CONFIRM); 
//  693   
//  694   /* Check the NOR controller state */
//  695   hnor->State = HAL_NOR_STATE_READY;
//  696   
//  697   /* Process unlocked */
//  698   __HAL_UNLOCK(hnor);
//  699   
//  700   return HAL_OK; 
//  701   
//  702 }
//  703 
//  704 /**
//  705   * @brief  Erase the specified block of the NOR memory 
//  706   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  707   *                the configuration information for NOR module.
//  708   * @param  BlockAddress : Block to erase address 
//  709   * @param  Address: Device address
//  710   * @retval HAL status
//  711   */
//  712 HAL_StatusTypeDef HAL_NOR_Erase_Block(NOR_HandleTypeDef *hnor, uint32_t BlockAddress, uint32_t Address)
//  713 {
//  714   uint32_t deviceaddress = 0;
//  715 
//  716   /* Process Locked */
//  717   __HAL_LOCK(hnor);
//  718   
//  719   /* Check the NOR controller state */
//  720   if(hnor->State == HAL_NOR_STATE_BUSY)
//  721   {
//  722      return HAL_BUSY;
//  723   }
//  724   
//  725   /* Select the NOR device address */
//  726   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  727   {
//  728     deviceaddress = NOR_MEMORY_ADRESS1;
//  729   }
//  730   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  731   {
//  732     deviceaddress = NOR_MEMORY_ADRESS2;
//  733   }
//  734   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  735   {
//  736     deviceaddress = NOR_MEMORY_ADRESS3;
//  737   }
//  738   else /* FSMC_NORSRAM_BANK4 */
//  739   {
//  740     deviceaddress = NOR_MEMORY_ADRESS4;
//  741   }
//  742     
//  743   /* Update the NOR controller state */
//  744   hnor->State = HAL_NOR_STATE_BUSY;
//  745   
//  746   /* Send block erase command sequence */
//  747   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST);
//  748   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);
//  749   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_THIRD), NOR_CMD_DATA_CHIP_BLOCK_ERASE_THIRD);
//  750   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FOURTH), NOR_CMD_DATA_CHIP_BLOCK_ERASE_FOURTH);
//  751   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIFTH), NOR_CMD_DATA_CHIP_BLOCK_ERASE_FIFTH);
//  752   NOR_WRITE((uint32_t)(BlockAddress + Address), NOR_CMD_DATA_BLOCK_ERASE);
//  753 
//  754   /* Check the NOR memory status and update the controller state */
//  755   hnor->State = HAL_NOR_STATE_READY;
//  756     
//  757   /* Process unlocked */
//  758   __HAL_UNLOCK(hnor);
//  759   
//  760   return HAL_OK;
//  761  
//  762 }
//  763 
//  764 /**
//  765   * @brief  Erase the entire NOR chip.
//  766   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  767   *                the configuration information for NOR module.
//  768   * @param  Address : Device address  
//  769   * @retval HAL status
//  770   */
//  771 HAL_StatusTypeDef HAL_NOR_Erase_Chip(NOR_HandleTypeDef *hnor, uint32_t Address)
//  772 {
//  773   uint32_t deviceaddress = 0;
//  774   
//  775   /* Process Locked */
//  776   __HAL_LOCK(hnor);
//  777   
//  778   /* Check the NOR controller state */
//  779   if(hnor->State == HAL_NOR_STATE_BUSY)
//  780   {
//  781      return HAL_BUSY;
//  782   }
//  783   
//  784   /* Select the NOR device address */
//  785   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  786   {
//  787     deviceaddress = NOR_MEMORY_ADRESS1;
//  788   }
//  789   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  790   {
//  791     deviceaddress = NOR_MEMORY_ADRESS2;
//  792   }
//  793   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  794   {
//  795     deviceaddress = NOR_MEMORY_ADRESS3;
//  796   }
//  797   else /* FSMC_NORSRAM_BANK4 */
//  798   {
//  799     deviceaddress = NOR_MEMORY_ADRESS4;
//  800   }
//  801     
//  802   /* Update the NOR controller state */
//  803   hnor->State = HAL_NOR_STATE_BUSY;  
//  804     
//  805   /* Send NOR chip erase command sequence */
//  806   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST), NOR_CMD_DATA_FIRST);
//  807   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SECOND), NOR_CMD_DATA_SECOND);
//  808   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_THIRD), NOR_CMD_DATA_CHIP_BLOCK_ERASE_THIRD);
//  809   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FOURTH), NOR_CMD_DATA_CHIP_BLOCK_ERASE_FOURTH);
//  810   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIFTH), NOR_CMD_DATA_CHIP_BLOCK_ERASE_FIFTH);  
//  811   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_SIXTH), NOR_CMD_DATA_CHIP_ERASE);
//  812   
//  813   /* Check the NOR memory status and update the controller state */
//  814   hnor->State = HAL_NOR_STATE_READY;
//  815     
//  816   /* Process unlocked */
//  817   __HAL_UNLOCK(hnor);
//  818   
//  819   return HAL_OK;  
//  820 }
//  821 
//  822 /**
//  823   * @brief  Read NOR flash CFI IDs
//  824   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  825   *                the configuration information for NOR module.
//  826   * @param  pNOR_CFI : pointer to NOR CFI IDs structure  
//  827   * @retval HAL status
//  828   */
//  829 HAL_StatusTypeDef HAL_NOR_Read_CFI(NOR_HandleTypeDef *hnor, NOR_CFITypeDef *pNOR_CFI)
//  830 {
//  831   uint32_t deviceaddress = 0;
//  832   
//  833   /* Process Locked */
//  834   __HAL_LOCK(hnor);
//  835   
//  836   /* Check the NOR controller state */
//  837   if(hnor->State == HAL_NOR_STATE_BUSY)
//  838   {
//  839      return HAL_BUSY;
//  840   }
//  841   
//  842   /* Select the NOR device address */
//  843   if (hnor->Init.NSBank == FSMC_NORSRAM_BANK1)
//  844   {
//  845     deviceaddress = NOR_MEMORY_ADRESS1;
//  846   }
//  847   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK2)
//  848   {
//  849     deviceaddress = NOR_MEMORY_ADRESS2;
//  850   }
//  851   else if (hnor->Init.NSBank == FSMC_NORSRAM_BANK3)
//  852   {
//  853     deviceaddress = NOR_MEMORY_ADRESS3;
//  854   }
//  855   else /* FSMC_NORSRAM_BANK4 */
//  856   {
//  857     deviceaddress = NOR_MEMORY_ADRESS4;
//  858   }  
//  859     
//  860   /* Update the NOR controller state */
//  861   hnor->State = HAL_NOR_STATE_BUSY;
//  862   
//  863   /* Send read CFI query command */
//  864   NOR_WRITE(NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, NOR_CMD_ADDRESS_FIRST_CFI), NOR_CMD_DATA_CFI);
//  865 
//  866   /* read the NOR CFI information */
//  867   pNOR_CFI->CFI_1 = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, CFI1_ADDRESS);
//  868   pNOR_CFI->CFI_2 = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, CFI2_ADDRESS);
//  869   pNOR_CFI->CFI_3 = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, CFI3_ADDRESS);
//  870   pNOR_CFI->CFI_4 = *(__IO uint16_t *) NOR_ADDR_SHIFT(deviceaddress, uwNORMemoryDataWidth, CFI4_ADDRESS);
//  871 
//  872   /* Check the NOR controller state */
//  873   hnor->State = HAL_NOR_STATE_READY;
//  874   
//  875   /* Process unlocked */
//  876   __HAL_UNLOCK(hnor);
//  877   
//  878   return HAL_OK;
//  879 }
//  880 
//  881 /**
//  882   * @}
//  883   */
//  884   
//  885 /** @defgroup NOR_Exported_Functions_Group3 Control functions 
//  886  *  @brief   management functions 
//  887  *
//  888 @verbatim   
//  889   ==============================================================================
//  890                         ##### NOR Control functions #####
//  891   ==============================================================================
//  892   [..]
//  893     This subsection provides a set of functions allowing to control dynamically
//  894     the NOR interface.
//  895 
//  896 @endverbatim
//  897   * @{
//  898   */
//  899     
//  900 /**
//  901   * @brief  Enables dynamically NOR write operation.
//  902   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  903   *                the configuration information for NOR module.
//  904   * @retval HAL status
//  905   */
//  906 HAL_StatusTypeDef HAL_NOR_WriteOperation_Enable(NOR_HandleTypeDef *hnor)
//  907 {
//  908   /* Process Locked */
//  909   __HAL_LOCK(hnor);
//  910 
//  911   /* Enable write operation */
//  912   FSMC_NORSRAM_WriteOperation_Enable(hnor->Instance, hnor->Init.NSBank); 
//  913   
//  914   /* Update the NOR controller state */
//  915   hnor->State = HAL_NOR_STATE_READY;
//  916   
//  917   /* Process unlocked */
//  918   __HAL_UNLOCK(hnor); 
//  919   
//  920   return HAL_OK;  
//  921 }
//  922 
//  923 /**
//  924   * @brief  Disables dynamically NOR write operation.
//  925   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  926   *                the configuration information for NOR module.
//  927   * @retval HAL status
//  928   */
//  929 HAL_StatusTypeDef HAL_NOR_WriteOperation_Disable(NOR_HandleTypeDef *hnor)
//  930 {
//  931   /* Process Locked */
//  932   __HAL_LOCK(hnor);
//  933 
//  934   /* Update the SRAM controller state */
//  935   hnor->State = HAL_NOR_STATE_BUSY;
//  936     
//  937   /* Disable write operation */
//  938   FSMC_NORSRAM_WriteOperation_Disable(hnor->Instance, hnor->Init.NSBank); 
//  939   
//  940   /* Update the NOR controller state */
//  941   hnor->State = HAL_NOR_STATE_PROTECTED;
//  942   
//  943   /* Process unlocked */
//  944   __HAL_UNLOCK(hnor); 
//  945   
//  946   return HAL_OK;  
//  947 }
//  948 
//  949 /**
//  950   * @}
//  951   */  
//  952   
//  953 /** @defgroup NOR_Exported_Functions_Group4 State functions 
//  954  *  @brief   Peripheral State functions 
//  955  *
//  956 @verbatim   
//  957   ==============================================================================
//  958                       ##### NOR State functions #####
//  959   ==============================================================================  
//  960   [..]
//  961     This subsection permits to get in run-time the status of the NOR controller 
//  962     and the data flow.
//  963 
//  964 @endverbatim
//  965   * @{
//  966   */
//  967   
//  968 /**
//  969   * @brief  return the NOR controller state
//  970   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  971   *                the configuration information for NOR module.
//  972   * @retval NOR controller state
//  973   */
//  974 HAL_NOR_StateTypeDef HAL_NOR_GetState(NOR_HandleTypeDef *hnor)
//  975 {
//  976   return hnor->State;
//  977 }
//  978 
//  979 /**
//  980   * @brief  Returns the NOR operation status.
//  981   * @param  hnor: pointer to a NOR_HandleTypeDef structure that contains
//  982   *                the configuration information for NOR module.   
//  983   * @param  Address: Device address
//  984   * @param  Timeout: NOR progamming Timeout
//  985   * @retval NOR_Status: The returned value can be: HAL_NOR_STATUS_SUCCESS, HAL_NOR_STATUS_ERROR
//  986   *         or HAL_NOR_STATUS_TIMEOUT
//  987   */
//  988 HAL_NOR_StatusTypeDef HAL_NOR_GetStatus(NOR_HandleTypeDef *hnor, uint32_t Address, uint32_t Timeout)
//  989 { 
//  990   HAL_NOR_StatusTypeDef status = HAL_NOR_STATUS_ONGOING;
//  991   uint16_t tmp_sr1 = 0, tmp_sr2 = 0;
//  992   uint32_t tickstart = 0;
//  993 
//  994   /* Poll on NOR memory Ready/Busy signal ------------------------------------*/
//  995   HAL_NOR_MspWait(hnor, Timeout);
//  996   
//  997   /* Get tick */
//  998   tickstart = HAL_GetTick();
//  999   while((status != HAL_NOR_STATUS_SUCCESS) && (status != HAL_NOR_STATUS_TIMEOUT))
// 1000   {
// 1001     /* Check for the Timeout */
// 1002     if(Timeout != HAL_MAX_DELAY)
// 1003     {
// 1004       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
// 1005       {
// 1006         status = HAL_NOR_STATUS_TIMEOUT; 
// 1007       }  
// 1008     } 
// 1009 
// 1010     /* Read NOR status register (DQ6 and DQ5) */
// 1011     tmp_sr1 = *(__IO uint16_t *)Address;
// 1012     tmp_sr2 = *(__IO uint16_t *)Address;
// 1013 
// 1014     /* If DQ6 did not toggle between the two reads then return NOR_Success */
// 1015     if((tmp_sr1 & NOR_MASK_STATUS_DQ6) == (tmp_sr2 & NOR_MASK_STATUS_DQ6)) 
// 1016     {
// 1017       return HAL_NOR_STATUS_SUCCESS;
// 1018     }
// 1019     
// 1020     if((tmp_sr1 & NOR_MASK_STATUS_DQ5) != NOR_MASK_STATUS_DQ5)
// 1021     {
// 1022       status = HAL_NOR_STATUS_ONGOING;
// 1023     }
// 1024     
// 1025     tmp_sr1 = *(__IO uint16_t *)Address;
// 1026     tmp_sr2 = *(__IO uint16_t *)Address;
// 1027 
// 1028     /* If DQ6 did not toggle between the two reads then return NOR_Success */
// 1029     if((tmp_sr1 & NOR_MASK_STATUS_DQ6) == (tmp_sr2 & NOR_MASK_STATUS_DQ6)) 
// 1030     {
// 1031       return HAL_NOR_STATUS_SUCCESS;
// 1032     }
// 1033     else if((tmp_sr1 & NOR_MASK_STATUS_DQ5) == NOR_MASK_STATUS_DQ5)
// 1034     {
// 1035       return HAL_NOR_STATUS_ERROR;
// 1036     } 
// 1037   }
// 1038 
// 1039   /* Return the operation status */
// 1040   return status;
// 1041 }
// 1042 
// 1043 /**
// 1044   * @}
// 1045   */
// 1046 
// 1047 /**
// 1048   * @}
// 1049   */
// 1050 /**
// 1051   * @}
// 1052   */
// 1053 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
// 1054 #endif /* HAL_NOR_MODULE_ENABLED */
// 1055 
// 1056 /**
// 1057   * @}
// 1058   */
// 1059 
// 1060 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none