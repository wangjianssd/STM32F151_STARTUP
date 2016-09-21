///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd_ex.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd_ex.c
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
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_pcd_ex.s
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
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_pcd_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended PCD HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the USB Peripheral Controller:
//   10   *           + Configururation of the PMA for EP
//   11   *         
//   12   ******************************************************************************
//   13   * @attention
//   14   *
//   15   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   16   *
//   17   * Redistribution and use in source and binary forms, with or without modification,
//   18   * are permitted provided that the following conditions are met:
//   19   *   1. Redistributions of source code must retain the above copyright notice,
//   20   *      this list of conditions and the following disclaimer.
//   21   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   22   *      this list of conditions and the following disclaimer in the documentation
//   23   *      and/or other materials provided with the distribution.
//   24   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   25   *      may be used to endorse or promote products derived from this software
//   26   *      without specific prior written permission.
//   27   *
//   28   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   29   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   30   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   31   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   32   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   33   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   34   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   35   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   36   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   37   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   38   *
//   39   ******************************************************************************
//   40   */ 
//   41 
//   42 /* Includes ------------------------------------------------------------------*/
//   43 #include "stm32l1xx_hal.h"
//   44 
//   45 /** @addtogroup STM32L1xx_HAL_Driver
//   46   * @{
//   47   */
//   48 
//   49 /** @defgroup PCDEx PCDEx
//   50   * @brief PCDEx HAL module driver
//   51   * @{
//   52   */
//   53 
//   54 #ifdef HAL_PCD_MODULE_ENABLED
//   55 
//   56 /* Private typedef -----------------------------------------------------------*/
//   57 /* Private define ------------------------------------------------------------*/
//   58 /* Private macro -------------------------------------------------------------*/
//   59 /* Private variables ---------------------------------------------------------*/
//   60 /* Private function prototypes -----------------------------------------------*/
//   61 /* Private functions ---------------------------------------------------------*/
//   62 
//   63 
//   64 /** @defgroup PCDEx_Exported_Functions PCDEx Exported Functions
//   65   * @{
//   66   */
//   67 
//   68 /** @defgroup PCDEx_Exported_Functions_Group2 Extended Peripheral Control functions
//   69   * @brief    Extended Peripheral Control functions
//   70   *
//   71 @verbatim   
//   72  ===============================================================================
//   73              ##### Peripheral Control functions #####
//   74  ===============================================================================  
//   75     [..]  This section provides functions allowing to:
//   76       (+) Configure PMA for the EndPoint
//   77       
//   78 @endverbatim
//   79   * @{
//   80   */
//   81   
//   82 /**
//   83   * @brief Configure PMA for EP
//   84   * @param  hpcd : Device instance
//   85   * @param  ep_addr: endpoint address
//   86   * @param  ep_kind: endpoint Kind
//   87   *                  USB_SNG_BUF: Single Buffer used
//   88   *                  USB_DBL_BUF: Double Buffer used
//   89   * @param  pmaadress: EP address in The PMA: In case of single buffer endpoint
//   90   *                   this parameter is 16-bit value providing the address
//   91   *                   in PMA allocated to endpoint.
//   92   *                   In case of double buffer endpoint this parameter
//   93   *                   is a 32-bit value providing the endpoint buffer 0 address
//   94   *                   in the LSB part of 32-bit value and endpoint buffer 1 address
//   95   *                   in the MSB part of 32-bit value.
//   96   * @retval : status
//   97   */
//   98 
//   99 HAL_StatusTypeDef  HAL_PCDEx_PMAConfig(PCD_HandleTypeDef *hpcd, 
//  100                         uint16_t ep_addr,
//  101                         uint16_t ep_kind,
//  102                         uint32_t pmaadress)
//  103 
//  104 {
//  105   PCD_EPTypeDef *ep;
//  106   
//  107   /* initialize ep structure*/
//  108   if ((0x80 & ep_addr) == 0x80)
//  109   {
//  110     ep = &hpcd->IN_ep[ep_addr & 0x7F];
//  111   }
//  112   else
//  113   {
//  114     ep = &hpcd->OUT_ep[ep_addr];
//  115   }
//  116   
//  117   /* Here we check if the endpoint is single or double Buffer*/
//  118   if (ep_kind == PCD_SNG_BUF)
//  119   {
//  120     /*Single Buffer*/
//  121     ep->doublebuffer = 0;
//  122     /*Configure te PMA*/
//  123     ep->pmaadress = (uint16_t)pmaadress;
//  124   }
//  125   else /*USB_DBL_BUF*/
//  126   {
//  127     /*Double Buffer Endpoint*/
//  128     ep->doublebuffer = 1;
//  129     /*Configure the PMA*/
//  130     ep->pmaaddr0 =  pmaadress & 0xFFFF;
//  131     ep->pmaaddr1 =  (pmaadress & 0xFFFF0000U) >> 16;
//  132   }
//  133   
//  134   return HAL_OK; 
//  135 }
//  136 
//  137 /**
//  138   * @}
//  139   */
//  140 
//  141 /**
//  142   * @}
//  143   */
//  144 
//  145 #endif /* HAL_PCD_MODULE_ENABLED */
//  146 /**
//  147   * @}
//  148   */
//  149 
//  150 /**
//  151   * @}
//  152   */
//  153 
//  154 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none