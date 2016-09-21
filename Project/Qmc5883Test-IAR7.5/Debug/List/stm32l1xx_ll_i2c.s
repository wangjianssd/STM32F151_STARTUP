///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:55:15
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_i2c.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_i2c.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_ll_i2c.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_ll_i2c.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_ll_i2c.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   I2C LL module driver.
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
//   40 #include "stm32l1xx_ll_i2c.h"
//   41 #include "stm32l1xx_ll_bus.h"
//   42 #include "stm32l1xx_ll_rcc.h"
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
//   53 #if defined (I2C1) || defined (I2C2)
//   54 
//   55 /** @defgroup I2C_LL I2C
//   56   * @{
//   57   */
//   58 
//   59 /* Private types -------------------------------------------------------------*/
//   60 /* Private variables ---------------------------------------------------------*/
//   61 /* Private constants ---------------------------------------------------------*/
//   62 /* Private macros ------------------------------------------------------------*/
//   63 /** @addtogroup I2C_LL_Private_Macros
//   64   * @{
//   65   */
//   66 
//   67 #define IS_LL_I2C_PERIPHERAL_MODE(__VALUE__)    (((__VALUE__) == LL_I2C_MODE_I2C)          || \ 
//   68                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_HOST)   || \ 
//   69                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_DEVICE) || \ 
//   70                                                  ((__VALUE__) == LL_I2C_MODE_SMBUS_DEVICE_ARP))
//   71 
//   72 #define IS_I2C_CLOCK_SPEED(__VALUE__)           (((__VALUE__) > 0) && ((__VALUE__) <= LL_I2C_MAX_SPEED_FAST))
//   73 
//   74 #define IS_I2C_DUTY_CYCLE(__VALUE__)            (((__VALUE__) == LL_I2C_DUTYCYCLE_2) || \ 
//   75                                                  ((__VALUE__) == LL_I2C_DUTYCYCLE_16_9))
//   76 
//   77 #define IS_LL_I2C_OWN_ADDRESS1(__VALUE__)       ((__VALUE__) <= (uint32_t)0x000003FFU)
//   78 
//   79 #define IS_LL_I2C_TYPE_ACKNOWLEDGE(__VALUE__)   (((__VALUE__) == LL_I2C_ACK) || \ 
//   80                                                  ((__VALUE__) == LL_I2C_NACK))
//   81 
//   82 #define IS_LL_I2C_OWN_ADDRSIZE(__VALUE__)       (((__VALUE__) == LL_I2C_OWNADDRESS1_7BIT) || \ 
//   83                                                  ((__VALUE__) == LL_I2C_OWNADDRESS1_10BIT))
//   84 /**
//   85   * @}
//   86   */
//   87 
//   88 /* Private function prototypes -----------------------------------------------*/
//   89 
//   90 /* Exported functions --------------------------------------------------------*/
//   91 /** @addtogroup I2C_LL_Exported_Functions
//   92   * @{
//   93   */
//   94 
//   95 /** @addtogroup I2C_LL_EF_Init
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @brief  De-initialize the I2C registers to their default reset values.
//  101   * @param  I2Cx I2C Instance.
//  102   * @retval An ErrorStatus enumeration value:
//  103   *          - SUCCESS: I2C registers are de-initialized
//  104   *          - ERROR: I2C registers are not de-initialized
//  105   */
//  106 uint32_t LL_I2C_DeInit(I2C_TypeDef *I2Cx)
//  107 {
//  108   ErrorStatus status = SUCCESS;
//  109 
//  110   /* Check the I2C Instance I2Cx */
//  111   assert_param(IS_I2C_ALL_INSTANCE(I2Cx));
//  112 
//  113   if (I2Cx == I2C1)
//  114   {
//  115     /* Force reset of I2C clock */
//  116     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_I2C1);
//  117 
//  118     /* Release reset of I2C clock */
//  119     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_I2C1);
//  120   }
//  121   else if (I2Cx == I2C2)
//  122   {
//  123     /* Force reset of I2C clock */
//  124     LL_APB1_GRP1_ForceReset(LL_APB1_GRP1_PERIPH_I2C2);
//  125 
//  126     /* Release reset of I2C clock */
//  127     LL_APB1_GRP1_ReleaseReset(LL_APB1_GRP1_PERIPH_I2C2);
//  128 
//  129   }
//  130   else
//  131   {
//  132     status = ERROR;
//  133   }
//  134 
//  135   return status;
//  136 }
//  137 
//  138 /**
//  139   * @brief  Initialize the I2C registers according to the specified parameters in I2C_InitStruct.
//  140   * @param  I2Cx I2C Instance.
//  141   * @param  I2C_InitStruct pointer to a @ref LL_I2C_InitTypeDef structure.
//  142   * @retval An ErrorStatus enumeration value:
//  143   *          - SUCCESS: I2C registers are initialized
//  144   *          - ERROR: Not applicable
//  145   */
//  146 uint32_t LL_I2C_Init(I2C_TypeDef *I2Cx, LL_I2C_InitTypeDef *I2C_InitStruct)
//  147 {
//  148   LL_RCC_ClocksTypeDef rcc_clocks;
//  149 
//  150   /* Check the I2C Instance I2Cx */
//  151   assert_param(IS_I2C_ALL_INSTANCE(I2Cx));
//  152 
//  153   /* Check the I2C parameters from I2C_InitStruct */
//  154   assert_param(IS_LL_I2C_PERIPHERAL_MODE(I2C_InitStruct->PeripheralMode));
//  155   assert_param(IS_I2C_CLOCK_SPEED(I2C_InitStruct->ClockSpeed));
//  156   assert_param(IS_I2C_DUTY_CYCLE(I2C_InitStruct->DutyCycle));
//  157   assert_param(IS_LL_I2C_OWN_ADDRESS1(I2C_InitStruct->OwnAddress1));
//  158   assert_param(IS_LL_I2C_TYPE_ACKNOWLEDGE(I2C_InitStruct->TypeAcknowledge));
//  159   assert_param(IS_LL_I2C_OWN_ADDRSIZE(I2C_InitStruct->OwnAddrSize));
//  160 
//  161   /* Disable the selected I2Cx Peripheral */
//  162   LL_I2C_Disable(I2Cx);
//  163 
//  164   /* Retrieve Clock frequencies */
//  165   LL_RCC_GetSystemClocksFreq(&rcc_clocks);
//  166 
//  167   /*---------------------------- I2Cx SCL Clock Speed Configuration ------------
//  168    * Configure the SCL speed :
//  169    * - ClockSpeed: I2C_CR2_FREQ[5:0], I2C_TRISE_TRISE[5:0], I2C_CCR_FS,
//  170    *           and I2C_CCR_CCR[11:0] bits
//  171    * - DutyCycle: I2C_CCR_DUTY[7:0] bits
//  172    */
//  173   LL_I2C_ConfigSpeed(I2Cx, rcc_clocks.PCLK1_Frequency, I2C_InitStruct->ClockSpeed, I2C_InitStruct->DutyCycle);
//  174 
//  175   /*---------------------------- I2Cx OAR1 Configuration -----------------------
//  176    * Disable, Configure and Enable I2Cx device own address 1 with parameters :
//  177    * - OwnAddress1:  I2C_OAR1_ADD[9:8], I2C_OAR1_ADD[7:1] and I2C_OAR1_ADD0 bits
//  178    * - OwnAddrSize:  I2C_OAR1_ADDMODE bit
//  179    */
//  180   LL_I2C_SetOwnAddress1(I2Cx, I2C_InitStruct->OwnAddress1, I2C_InitStruct->OwnAddrSize);
//  181 
//  182   /*---------------------------- I2Cx MODE Configuration -----------------------
//  183   * Configure I2Cx peripheral mode with parameter :
//  184    * - PeripheralMode: I2C_CR1_SMBUS, I2C_CR1_SMBTYPE and I2C_CR1_ENARP bits
//  185    */
//  186   LL_I2C_SetMode(I2Cx, I2C_InitStruct->PeripheralMode);
//  187 
//  188   /* Enable the selected I2Cx Peripheral */
//  189   LL_I2C_Enable(I2Cx);
//  190 
//  191   /*---------------------------- I2Cx CR2 Configuration ------------------------
//  192    * Configure the ACKnowledge or Non ACKnowledge condition
//  193    * after the address receive match code or next received byte with parameter :
//  194    * - TypeAcknowledge: I2C_CR2_NACK bit
//  195    */
//  196   LL_I2C_AcknowledgeNextData(I2Cx, I2C_InitStruct->TypeAcknowledge);
//  197 
//  198   return SUCCESS;
//  199 }
//  200 
//  201 /**
//  202   * @brief  Set each @ref LL_I2C_InitTypeDef field to default value.
//  203   * @param  I2C_InitStruct Pointer to a @ref LL_I2C_InitTypeDef structure.
//  204   * @retval None
//  205   */
//  206 void LL_I2C_StructInit(LL_I2C_InitTypeDef *I2C_InitStruct)
//  207 {
//  208   /* Set I2C_InitStruct fields to default values */
//  209   I2C_InitStruct->PeripheralMode  = LL_I2C_MODE_I2C;
//  210   I2C_InitStruct->ClockSpeed      = 5000U;
//  211   I2C_InitStruct->DutyCycle       = LL_I2C_DUTYCYCLE_2;
//  212   I2C_InitStruct->OwnAddress1     = 0U;
//  213   I2C_InitStruct->TypeAcknowledge = LL_I2C_NACK;
//  214   I2C_InitStruct->OwnAddrSize     = LL_I2C_OWNADDRESS1_7BIT;
//  215 }
//  216 
//  217 /**
//  218   * @}
//  219   */
//  220 
//  221 /**
//  222   * @}
//  223   */
//  224 
//  225 /**
//  226   * @}
//  227   */
//  228 
//  229 #endif /* I2C1 || I2C2 */
//  230 
//  231 /**
//  232   * @}
//  233   */
//  234 
//  235 #endif /* USE_FULL_LL_DRIVER */
//  236 
//  237 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
