///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_pcd.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_pcd.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_pcd.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   PCD HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the USB Peripheral Controller:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *           + Peripheral Control functions 
//   13   *           + Peripheral State functions
//   14   *         
//   15   @verbatim
//   16   ==============================================================================
//   17                     ##### How to use this driver #####
//   18   ==============================================================================
//   19     [..]
//   20       The PCD HAL driver can be used as follows:
//   21 
//   22      (#) Declare a PCD_HandleTypeDef handle structure, for example:
//   23          PCD_HandleTypeDef  hpcd;
//   24         
//   25      (#) Fill parameters of Init structure in HCD handle
//   26   
//   27      (#) Call HAL_PCD_Init() API to initialize the HCD peripheral (Core, Device core, ...) 
//   28 
//   29      (#) Initialize the PCD low level resources through the HAL_PCD_MspInit() API:
//   30          (##) Enable the PCD/USB Low Level interface clock using 
//   31               (+++) __HAL_RCC_USB_CLK_ENABLE);
//   32            
//   33          (##) Initialize the related GPIO clocks
//   34          (##) Configure PCD pin-out
//   35          (##) Configure PCD NVIC interrupt
//   36     
//   37      (#)Associate the Upper USB device stack to the HAL PCD Driver:
//   38          (##) hpcd.pData = pdev;
//   39 
//   40      (#)Enable HCD transmission and reception:
//   41          (##) HAL_PCD_Start();
//   42 
//   43   @endverbatim
//   44   ******************************************************************************
//   45   * @attention
//   46   *
//   47   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   48   *
//   49   * Redistribution and use in source and binary forms, with or without modification,
//   50   * are permitted provided that the following conditions are met:
//   51   *   1. Redistributions of source code must retain the above copyright notice,
//   52   *      this list of conditions and the following disclaimer.
//   53   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   54   *      this list of conditions and the following disclaimer in the documentation
//   55   *      and/or other materials provided with the distribution.
//   56   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   57   *      may be used to endorse or promote products derived from this software
//   58   *      without specific prior written permission.
//   59   *
//   60   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   61   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   62   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   63   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   64   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   65   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   66   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   67   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   68   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   69   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   70   *
//   71   ******************************************************************************
//   72   */
//   73 
//   74 /* Includes ------------------------------------------------------------------*/
//   75 #include "stm32l1xx_hal.h"
//   76 
//   77 /** @addtogroup STM32L1xx_HAL_Driver
//   78   * @{
//   79   */
//   80 
//   81 /** @defgroup PCD PCD
//   82   * @brief PCD HAL module driver
//   83   * @{
//   84   */
//   85 
//   86 #ifdef HAL_PCD_MODULE_ENABLED
//   87 
//   88 /* Private typedef -----------------------------------------------------------*/
//   89 /* Private define ------------------------------------------------------------*/
//   90 
//   91 /** @defgroup PCD_Private_Define PCD Private Define
//   92   * @{
//   93   */ 
//   94 #define BTABLE_ADDRESS                  (0x000)  
//   95 /**
//   96   * @}
//   97   */
//   98 
//   99 /* Private macro -------------------------------------------------------------*/
//  100 /* Private variables ---------------------------------------------------------*/
//  101 /* Private function prototypes -----------------------------------------------*/
//  102 /** @defgroup PCD_Private_Functions PCD Private Functions
//  103   * @{
//  104   */
//  105 static HAL_StatusTypeDef PCD_EP_ISR_Handler(PCD_HandleTypeDef *hpcd);
//  106 static void PCD_WritePMA(USB_TypeDef  *USBx, uint8_t *pbUsrBuf, uint16_t wPMABufAddr, uint16_t wNBytes);
//  107 static void PCD_ReadPMA(USB_TypeDef  *USBx, uint8_t *pbUsrBuf, uint16_t wPMABufAddr, uint16_t wNBytes);
//  108 
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /* Exported functions ---------------------------------------------------------*/
//  114 
//  115 /** @defgroup PCD_Exported_Functions PCD Exported Functions
//  116   * @{
//  117   */
//  118 
//  119 /** @defgroup PCD_Exported_Functions_Group1 Initialization and de-initialization functions 
//  120  *  @brief    Initialization and Configuration functions 
//  121  *
//  122 @verbatim
//  123  ===============================================================================
//  124             ##### Initialization and de-initialization functions #####
//  125  ===============================================================================
//  126     [..]  This section provides functions allowing to:
//  127  
//  128 @endverbatim
//  129   * @{
//  130   */
//  131 
//  132 /**
//  133   * @brief  Initializes the PCD according to the specified
//  134   *         parameters in the PCD_InitTypeDef and create the associated handle.
//  135   * @param  hpcd: PCD handle
//  136   * @retval HAL status
//  137   */
//  138 HAL_StatusTypeDef HAL_PCD_Init(PCD_HandleTypeDef *hpcd)
//  139 { 
//  140   uint32_t i = 0;
//  141 
//  142   uint32_t wInterrupt_Mask = 0;
//  143   
//  144   /* Check the PCD handle allocation */
//  145   if(hpcd == NULL)
//  146   {
//  147     return HAL_ERROR;
//  148   }
//  149   
//  150   /* Check the parameters */
//  151   assert_param(IS_PCD_ALL_INSTANCE(hpcd->Instance));
//  152 
//  153   if(hpcd->State == HAL_PCD_STATE_RESET)
//  154   {
//  155     /* Allocate lock resource and initialize it */
//  156     hpcd->Lock = HAL_UNLOCKED;
//  157 
//  158     /* Init the low level hardware : GPIO, CLOCK, NVIC... */
//  159     HAL_PCD_MspInit(hpcd);
//  160   }
//  161 
//  162   hpcd->State = HAL_PCD_STATE_BUSY;
//  163 
//  164  /* Init endpoints structures */
//  165  for (i = 0; i < hpcd->Init.dev_endpoints ; i++)
//  166  {
//  167    /* Init ep structure */
//  168    hpcd->IN_ep[i].is_in = 1;
//  169    hpcd->IN_ep[i].num = i;
//  170    /* Control until ep is actvated */
//  171    hpcd->IN_ep[i].type = PCD_EP_TYPE_CTRL;
//  172    hpcd->IN_ep[i].maxpacket =  0;
//  173    hpcd->IN_ep[i].xfer_buff = 0;
//  174    hpcd->IN_ep[i].xfer_len = 0;
//  175  }
//  176  
//  177  for (i = 0; i < hpcd->Init.dev_endpoints ; i++)
//  178  {
//  179    hpcd->OUT_ep[i].is_in = 0;
//  180    hpcd->OUT_ep[i].num = i;
//  181    /* Control until ep is activated */
//  182    hpcd->OUT_ep[i].type = PCD_EP_TYPE_CTRL;
//  183    hpcd->OUT_ep[i].maxpacket = 0;
//  184    hpcd->OUT_ep[i].xfer_buff = 0;
//  185    hpcd->OUT_ep[i].xfer_len = 0;
//  186  }
//  187   
//  188  /* Init Device */
//  189  /*CNTR_FRES = 1*/
//  190  hpcd->Instance->CNTR = USB_CNTR_FRES;
//  191  
//  192  /*CNTR_FRES = 0*/
//  193  hpcd->Instance->CNTR = 0;
//  194  
//  195  /*Clear pending interrupts*/
//  196  hpcd->Instance->ISTR = 0;
//  197  
//  198   /*Set Btable Adress*/
//  199  hpcd->Instance->BTABLE = BTABLE_ADDRESS;
//  200   
//  201   /*set wInterrupt_Mask global variable*/
//  202   wInterrupt_Mask = USB_CNTR_CTRM  | USB_CNTR_WKUPM | USB_CNTR_SUSPM | USB_CNTR_ERRM \ 
//  203     | USB_CNTR_ESOFM | USB_CNTR_RESETM;
//  204   
//  205   /*Set interrupt mask*/
//  206   hpcd->Instance->CNTR = wInterrupt_Mask;
//  207   
//  208   hpcd->USB_Address = 0;
//  209   hpcd->State= HAL_PCD_STATE_READY;
//  210 
//  211  return HAL_OK;
//  212 }
//  213 
//  214 /**
//  215   * @brief  DeInitializes the PCD peripheral 
//  216   * @param  hpcd: PCD handle
//  217   * @retval HAL status
//  218   */
//  219 HAL_StatusTypeDef HAL_PCD_DeInit(PCD_HandleTypeDef *hpcd)
//  220 {
//  221   /* Check the PCD handle allocation */
//  222   if(hpcd == NULL)
//  223   {
//  224     return HAL_ERROR;
//  225   }
//  226 
//  227   hpcd->State = HAL_PCD_STATE_BUSY;
//  228   
//  229   /* Stop Device */
//  230   HAL_PCD_Stop(hpcd);
//  231     
//  232   /* DeInit the low level hardware */
//  233   HAL_PCD_MspDeInit(hpcd);
//  234   
//  235   hpcd->State = HAL_PCD_STATE_RESET; 
//  236   
//  237   return HAL_OK;
//  238 }
//  239 
//  240 /**
//  241   * @brief  Initializes the PCD MSP.
//  242   * @param  hpcd: PCD handle
//  243   * @retval None
//  244   */
//  245 __weak void HAL_PCD_MspInit(PCD_HandleTypeDef *hpcd)
//  246 {
//  247   /* Prevent unused argument(s) compilation warning */
//  248   UNUSED(hpcd);
//  249 
//  250   /* NOTE : This function should not be modified, when the callback is needed,
//  251             the HAL_PCD_MspInit could be implemented in the user file
//  252    */
//  253 }
//  254 
//  255 /**
//  256   * @brief  DeInitializes PCD MSP.
//  257   * @param  hpcd: PCD handle
//  258   * @retval None
//  259   */
//  260 __weak void HAL_PCD_MspDeInit(PCD_HandleTypeDef *hpcd)
//  261 {
//  262   /* Prevent unused argument(s) compilation warning */
//  263   UNUSED(hpcd);
//  264 
//  265   /* NOTE : This function should not be modified, when the callback is needed,
//  266             the HAL_PCD_MspDeInit could be implemented in the user file
//  267    */
//  268 }
//  269 
//  270 /**
//  271   * @}
//  272   */
//  273 
//  274 /** @defgroup PCD_Exported_Functions_Group2 IO operation functions 
//  275  *  @brief   Data transfers functions 
//  276  *
//  277 @verbatim   
//  278  ===============================================================================
//  279                       ##### IO operation functions #####
//  280  ===============================================================================  
//  281     [..]
//  282     This subsection provides a set of functions allowing to manage the PCD data 
//  283     transfers.
//  284 
//  285 @endverbatim
//  286   * @{
//  287   */
//  288   
//  289 /**
//  290   * @brief  Start the USB device.
//  291   * @param  hpcd: PCD handle
//  292   * @retval HAL status
//  293   */
//  294 HAL_StatusTypeDef HAL_PCD_Start(PCD_HandleTypeDef *hpcd)
//  295 { 
//  296   HAL_PCDEx_SetConnectionState (hpcd, 1);
//  297 
//  298   return HAL_OK;
//  299 }
//  300 
//  301 /**
//  302   * @brief  Stop the USB device.
//  303   * @param  hpcd: PCD handle
//  304   * @retval HAL status
//  305   */
//  306 HAL_StatusTypeDef HAL_PCD_Stop(PCD_HandleTypeDef *hpcd)
//  307 { 
//  308   __HAL_LOCK(hpcd); 
//  309   
//  310     /* disable all interrupts and force USB reset */
//  311   hpcd->Instance->CNTR = USB_CNTR_FRES;
//  312   
//  313   /* clear interrupt status register */
//  314   hpcd->Instance->ISTR = 0;
//  315   
//  316   /* switch-off device */
//  317   hpcd->Instance->CNTR = (USB_CNTR_FRES | USB_CNTR_PDWN);
//  318   
//  319   __HAL_UNLOCK(hpcd); 
//  320   return HAL_OK;
//  321 }
//  322 /**
//  323   * @}
//  324   */
//  325 
//  326 /**
//  327   * @}
//  328   */  
//  329 
//  330 /** @addtogroup PCD_Private_Functions PCD Private Functions
//  331   * @{
//  332   */
//  333 /**
//  334   * @brief  This function handles PCD Endpoint interrupt request.
//  335   * @param  hpcd: PCD handle
//  336   * @retval HAL status
//  337   */
//  338 static HAL_StatusTypeDef PCD_EP_ISR_Handler(PCD_HandleTypeDef *hpcd)
//  339 {
//  340   PCD_EPTypeDef *ep;
//  341   uint16_t count=0;
//  342   uint8_t EPindex;
//  343   __IO uint16_t wIstr;  
//  344   __IO uint16_t wEPVal = 0;
//  345   
//  346   /* stay in loop while pending interrupts */
//  347   while (((wIstr = hpcd->Instance->ISTR) & USB_ISTR_CTR) != 0)
//  348   {
//  349     /* extract highest priority endpoint number */
//  350     EPindex = (uint8_t)(wIstr & USB_ISTR_EP_ID);
//  351     
//  352     if (EPindex == 0)
//  353     {
//  354       /* Decode and service control endpoint interrupt */
//  355       
//  356       /* DIR bit = origin of the interrupt */   
//  357       if ((wIstr & USB_ISTR_DIR) == 0)
//  358       {
//  359         /* DIR = 0 */
//  360         
//  361         /* DIR = 0      => IN  int */
//  362         /* DIR = 0 implies that (EP_CTR_TX = 1) always  */
//  363         PCD_CLEAR_TX_EP_CTR(hpcd->Instance, PCD_ENDP0);
//  364         ep = &hpcd->IN_ep[0];
//  365         
//  366         ep->xfer_count = PCD_GET_EP_TX_CNT(hpcd->Instance, ep->num);
//  367         ep->xfer_buff += ep->xfer_count;
//  368  
//  369         /* TX COMPLETE */
//  370         HAL_PCD_DataInStageCallback(hpcd, 0);
//  371         
//  372         
//  373         if((hpcd->USB_Address > 0)&& ( ep->xfer_len == 0))
//  374         {
//  375           hpcd->Instance->DADDR = (hpcd->USB_Address | USB_DADDR_EF);
//  376           hpcd->USB_Address = 0;
//  377         }
//  378         
//  379       }
//  380       else
//  381       {
//  382         /* DIR = 1 */
//  383         
//  384         /* DIR = 1 & CTR_RX       => SETUP or OUT int */
//  385         /* DIR = 1 & (CTR_TX | CTR_RX) => 2 int pending */
//  386         ep = &hpcd->OUT_ep[0];
//  387         wEPVal = PCD_GET_ENDPOINT(hpcd->Instance, PCD_ENDP0);
//  388         
//  389         if ((wEPVal & USB_EP_SETUP) != 0)
//  390         {
//  391           /* Get SETUP Packet*/
//  392           ep->xfer_count = PCD_GET_EP_RX_CNT(hpcd->Instance, ep->num);
//  393           PCD_ReadPMA(hpcd->Instance, (uint8_t*)hpcd->Setup ,ep->pmaadress , ep->xfer_count);       
//  394           /* SETUP bit kept frozen while CTR_RX = 1*/ 
//  395           PCD_CLEAR_RX_EP_CTR(hpcd->Instance, PCD_ENDP0); 
//  396           
//  397           /* Process SETUP Packet*/
//  398           HAL_PCD_SetupStageCallback(hpcd);
//  399         }
//  400         
//  401         else if ((wEPVal & USB_EP_CTR_RX) != 0)
//  402         {
//  403           PCD_CLEAR_RX_EP_CTR(hpcd->Instance, PCD_ENDP0);
//  404           /* Get Control Data OUT Packet*/
//  405           ep->xfer_count = PCD_GET_EP_RX_CNT(hpcd->Instance, ep->num);
//  406           
//  407           if (ep->xfer_count != 0)
//  408           {
//  409             PCD_ReadPMA(hpcd->Instance, ep->xfer_buff, ep->pmaadress, ep->xfer_count);
//  410             ep->xfer_buff+=ep->xfer_count;
//  411           }
//  412           
//  413           /* Process Control Data OUT Packet*/
//  414            HAL_PCD_DataOutStageCallback(hpcd, 0);
//  415           
//  416           PCD_SET_EP_RX_CNT(hpcd->Instance, PCD_ENDP0, ep->maxpacket);
//  417           PCD_SET_EP_RX_STATUS(hpcd->Instance, PCD_ENDP0, USB_EP_RX_VALID);
//  418         }
//  419       }
//  420     }
//  421     else
//  422     {
//  423       
//  424       /* Decode and service non control endpoints interrupt  */
//  425       
//  426       /* process related endpoint register */
//  427       wEPVal = PCD_GET_ENDPOINT(hpcd->Instance, EPindex);
//  428       if ((wEPVal & USB_EP_CTR_RX) != 0)
//  429       {  
//  430         /* clear int flag */
//  431         PCD_CLEAR_RX_EP_CTR(hpcd->Instance, EPindex);
//  432         ep = &hpcd->OUT_ep[EPindex];
//  433         
//  434         /* OUT double Buffering*/
//  435         if (ep->doublebuffer == 0)
//  436         {
//  437           count = PCD_GET_EP_RX_CNT(hpcd->Instance, ep->num);
//  438           if (count != 0)
//  439           {
//  440             PCD_ReadPMA(hpcd->Instance, ep->xfer_buff, ep->pmaadress, count);
//  441           }
//  442         }
//  443         else
//  444         {
//  445           if (PCD_GET_ENDPOINT(hpcd->Instance, ep->num) & USB_EP_DTOG_RX)
//  446           {
//  447             /*read from endpoint BUF0Addr buffer*/
//  448             count = PCD_GET_EP_DBUF0_CNT(hpcd->Instance, ep->num);
//  449             if (count != 0)
//  450             {
//  451               PCD_ReadPMA(hpcd->Instance, ep->xfer_buff, ep->pmaaddr0, count);
//  452             }
//  453           }
//  454           else
//  455           {
//  456             /*read from endpoint BUF1Addr buffer*/
//  457             count = PCD_GET_EP_DBUF1_CNT(hpcd->Instance, ep->num);
//  458             if (count != 0)
//  459             {
//  460               PCD_ReadPMA(hpcd->Instance, ep->xfer_buff, ep->pmaaddr1, count);
//  461             }
//  462           }
//  463           PCD_FreeUserBuffer(hpcd->Instance, ep->num, PCD_EP_DBUF_OUT);  
//  464         }
//  465         /*multi-packet on the NON control OUT endpoint*/
//  466         ep->xfer_count+=count;
//  467         ep->xfer_buff+=count;
//  468        
//  469         if ((ep->xfer_len == 0) || (count < ep->maxpacket))
//  470         {
//  471           /* RX COMPLETE */
//  472           HAL_PCD_DataOutStageCallback(hpcd, ep->num);
//  473         }
//  474         else
//  475         {
//  476           HAL_PCD_EP_Receive(hpcd, ep->num, ep->xfer_buff, ep->xfer_len);
//  477         }
//  478         
//  479       } /* if((wEPVal & EP_CTR_RX) */
//  480       
//  481       if ((wEPVal & USB_EP_CTR_TX) != 0)
//  482       {
//  483         ep = &hpcd->IN_ep[EPindex];
//  484         
//  485         /* clear int flag */
//  486         PCD_CLEAR_TX_EP_CTR(hpcd->Instance, EPindex);
//  487         
//  488         /* IN double Buffering*/
//  489         if (ep->doublebuffer == 0)
//  490         {
//  491           ep->xfer_count = PCD_GET_EP_TX_CNT(hpcd->Instance, ep->num);
//  492           if (ep->xfer_count != 0)
//  493           {
//  494             PCD_WritePMA(hpcd->Instance, ep->xfer_buff, ep->pmaadress, ep->xfer_count);
//  495           }
//  496         }
//  497         else
//  498         {
//  499           if (PCD_GET_ENDPOINT(hpcd->Instance, ep->num) & USB_EP_DTOG_TX)
//  500           {
//  501             /*read from endpoint BUF0Addr buffer*/
//  502             ep->xfer_count = PCD_GET_EP_DBUF0_CNT(hpcd->Instance, ep->num);
//  503             if (ep->xfer_count != 0)
//  504             {
//  505               PCD_WritePMA(hpcd->Instance, ep->xfer_buff, ep->pmaaddr0, ep->xfer_count);
//  506             }
//  507           }
//  508           else
//  509           {
//  510             /*read from endpoint BUF1Addr buffer*/
//  511             ep->xfer_count = PCD_GET_EP_DBUF1_CNT(hpcd->Instance, ep->num);
//  512             if (ep->xfer_count != 0)
//  513             {
//  514               PCD_WritePMA(hpcd->Instance, ep->xfer_buff, ep->pmaaddr1, ep->xfer_count);
//  515             }
//  516           }
//  517           PCD_FreeUserBuffer(hpcd->Instance, ep->num, PCD_EP_DBUF_IN);  
//  518         }
//  519         /*multi-packet on the NON control IN endpoint*/
//  520         ep->xfer_count = PCD_GET_EP_TX_CNT(hpcd->Instance, ep->num);
//  521         ep->xfer_buff+=ep->xfer_count;
//  522        
//  523         /* Zero Length Packet? */
//  524         if (ep->xfer_len == 0)
//  525         {
//  526           /* TX COMPLETE */
//  527           HAL_PCD_DataInStageCallback(hpcd, ep->num);
//  528         }
//  529         else
//  530         {
//  531           HAL_PCD_EP_Transmit(hpcd, ep->num, ep->xfer_buff, ep->xfer_len);
//  532         }
//  533       } 
//  534     }
//  535   }
//  536   return HAL_OK;
//  537 }
//  538 
//  539 /**
//  540   * @brief Copy a buffer from user memory area to packet memory area (PMA)
//  541   * @param   USBx    = pointer to USB register.
//  542   * @param   pbUsrBuf: pointer to user memory area.
//  543   * @param   wPMABufAddr: address into PMA.
//  544   * @param   wNBytes: no. of bytes to be copied.
//  545   * @retval None
//  546   */
//  547 static void PCD_WritePMA(USB_TypeDef  *USBx, uint8_t *pbUsrBuf, uint16_t wPMABufAddr, uint16_t wNBytes)
//  548 {
//  549   uint32_t n = (wNBytes + 1) >> 1;   /* n = (wNBytes + 1) / 2 */
//  550   uint32_t i, temp1, temp2;
//  551   uint16_t *pdwVal;
//  552   pdwVal = (uint16_t *)(wPMABufAddr * 2 + (uint32_t)USBx + 0x400);
//  553   for (i = n; i != 0; i--)
//  554   {
//  555     temp1 = (uint16_t) * pbUsrBuf;
//  556     pbUsrBuf++;
//  557     temp2 = temp1 | (uint16_t) * pbUsrBuf << 8;
//  558     *pdwVal++ = temp2;
//  559     pdwVal++;
//  560     pbUsrBuf++;
//  561   }
//  562 }
//  563 
//  564 /**
//  565   * @brief Copy a buffer from user memory area to packet memory area (PMA)
//  566   * @param   USBx    = pointer to USB register.
//  567   * @param   pbUsrBuf    = pointer to user memory area.
//  568   * @param   wPMABufAddr: address into PMA.
//  569   * @param   wNBytes: no. of bytes to be copied.
//  570   * @retval None
//  571   */
//  572 static void PCD_ReadPMA(USB_TypeDef  *USBx, uint8_t *pbUsrBuf, uint16_t wPMABufAddr, uint16_t wNBytes)
//  573 {
//  574   uint32_t n = (wNBytes + 1) >> 1;/* /2*/
//  575   uint32_t i;
//  576   uint32_t *pdwVal;
//  577   pdwVal = (uint32_t *)(wPMABufAddr * 2 + (uint32_t)USBx + 0x400);
//  578   for (i = n; i != 0; i--)
//  579   {
//  580     *(uint16_t*)pbUsrBuf++ = *pdwVal++;
//  581     pbUsrBuf++;
//  582   }
//  583 }
//  584 
//  585 /**
//  586   * @}
//  587   */
//  588 
//  589 /** @addtogroup PCD_Exported_Functions
//  590   * @{
//  591   */
//  592 
//  593 /** @defgroup PCD_Exported_Functions_Group2 IO operation functions 
//  594  * @{
//  595  */
//  596 
//  597 /**
//  598   * @brief  This function handles PCD interrupt request.
//  599   * @param  hpcd: PCD handle
//  600   * @retval HAL status
//  601   */
//  602 void HAL_PCD_IRQHandler(PCD_HandleTypeDef *hpcd)
//  603 {
//  604   uint32_t wInterrupt_Mask = 0;
//  605   
//  606   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_CTR))
//  607   {
//  608     /* servicing of the endpoint correct transfer interrupt */
//  609     /* clear of the CTR flag into the sub */
//  610     PCD_EP_ISR_Handler(hpcd);
//  611   }
//  612 
//  613   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_RESET))
//  614   {
//  615     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_RESET);
//  616     HAL_PCD_ResetCallback(hpcd);
//  617     HAL_PCD_SetAddress(hpcd, 0);
//  618   }
//  619 
//  620   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_PMAOVR))
//  621   {
//  622     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_PMAOVR);    
//  623   }
//  624   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_ERR))
//  625   {
//  626     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_ERR); 
//  627   }
//  628 
//  629   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_WKUP))
//  630   {  
//  631     hpcd->Instance->CNTR &= ~(USB_CNTR_LPMODE);
//  632     
//  633     /*set wInterrupt_Mask global variable*/
//  634     wInterrupt_Mask = USB_CNTR_CTRM  | USB_CNTR_WKUPM | USB_CNTR_SUSPM | USB_CNTR_ERRM \ 
//  635       | USB_CNTR_ESOFM | USB_CNTR_RESETM;
//  636     
//  637     /*Set interrupt mask*/
//  638     hpcd->Instance->CNTR = wInterrupt_Mask;
//  639     
//  640     HAL_PCD_ResumeCallback(hpcd);
//  641     
//  642     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_WKUP);     
//  643   }
//  644 
//  645   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_SUSP))
//  646   {    
//  647     /* clear of the ISTR bit must be done after setting of CNTR_FSUSP */
//  648     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_SUSP);  
//  649     
//  650     /* Force low-power mode in the macrocell */
//  651     hpcd->Instance->CNTR |= USB_CNTR_FSUSP;
//  652     hpcd->Instance->CNTR |= USB_CNTR_LPMODE;
//  653     if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_WKUP) == 0)
//  654     {
//  655       HAL_PCD_SuspendCallback(hpcd);
//  656     }
//  657   }
//  658 
//  659   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_SOF))
//  660   {
//  661     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_SOF); 
//  662     HAL_PCD_SOFCallback(hpcd);
//  663   }
//  664 
//  665   if (__HAL_PCD_GET_FLAG (hpcd, USB_ISTR_ESOF))
//  666   {
//  667     /* clear ESOF flag in ISTR */
//  668     __HAL_PCD_CLEAR_FLAG(hpcd, USB_ISTR_ESOF); 
//  669   }
//  670 }
//  671 
//  672 /**
//  673   * @brief  Data out stage callbacks
//  674   * @param  hpcd: PCD handle
//  675   * @param  epnum: endpoint number
//  676   * @retval None
//  677   */
//  678  __weak void HAL_PCD_DataOutStageCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum)
//  679 {
//  680   /* Prevent unused argument(s) compilation warning */
//  681   UNUSED(hpcd);
//  682   UNUSED(epnum);
//  683 
//  684   /* NOTE : This function should not be modified, when the callback is needed,
//  685             the HAL_PCD_DataOutStageCallback could be implemented in the user file
//  686    */ 
//  687 }
//  688 
//  689 /**
//  690   * @brief  Data IN stage callbacks
//  691   * @param  hpcd: PCD handle
//  692   * @param  epnum: endpoint number
//  693   * @retval None
//  694   */
//  695  __weak void HAL_PCD_DataInStageCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum)
//  696 {
//  697   /* Prevent unused argument(s) compilation warning */
//  698   UNUSED(hpcd);
//  699   UNUSED(epnum);
//  700 
//  701   /* NOTE : This function should not be modified, when the callback is needed,
//  702             the HAL_PCD_DataInStageCallback could be implemented in the user file
//  703    */ 
//  704 }
//  705 /**
//  706   * @brief  Setup stage callback
//  707   * @param  hpcd: PCD handle
//  708   * @retval None
//  709   */
//  710  __weak void HAL_PCD_SetupStageCallback(PCD_HandleTypeDef *hpcd)
//  711 {
//  712   /* Prevent unused argument(s) compilation warning */
//  713   UNUSED(hpcd);
//  714 
//  715   /* NOTE : This function should not be modified, when the callback is needed,
//  716             the HAL_PCD_SetupStageCallback could be implemented in the user file
//  717    */ 
//  718 }
//  719 
//  720 /**
//  721   * @brief  USB Start Of Frame callbacks
//  722   * @param  hpcd: PCD handle
//  723   * @retval None
//  724   */
//  725  __weak void HAL_PCD_SOFCallback(PCD_HandleTypeDef *hpcd)
//  726 {
//  727   /* Prevent unused argument(s) compilation warning */
//  728   UNUSED(hpcd);
//  729 
//  730   /* NOTE : This function should not be modified, when the callback is needed,
//  731             the HAL_PCD_SOFCallback could be implemented in the user file
//  732    */ 
//  733 }
//  734 
//  735 /**
//  736   * @brief  USB Reset callbacks
//  737   * @param  hpcd: PCD handle
//  738   * @retval None
//  739   */
//  740  __weak void HAL_PCD_ResetCallback(PCD_HandleTypeDef *hpcd)
//  741 {
//  742   /* Prevent unused argument(s) compilation warning */
//  743   UNUSED(hpcd);
//  744 
//  745   /* NOTE : This function should not be modified, when the callback is needed,
//  746             the HAL_PCD_ResetCallback could be implemented in the user file
//  747    */ 
//  748 }
//  749 
//  750 
//  751 /**
//  752   * @brief  Suspend event callbacks
//  753   * @param  hpcd: PCD handle
//  754   * @retval None
//  755   */
//  756  __weak void HAL_PCD_SuspendCallback(PCD_HandleTypeDef *hpcd)
//  757 {
//  758   /* Prevent unused argument(s) compilation warning */
//  759   UNUSED(hpcd);
//  760 
//  761   /* NOTE : This function should not be modified, when the callback is needed,
//  762             the HAL_PCD_SuspendCallback could be implemented in the user file
//  763    */ 
//  764 }
//  765 
//  766 /**
//  767   * @brief  Resume event callbacks
//  768   * @param  hpcd: PCD handle
//  769   * @retval None
//  770   */
//  771  __weak void HAL_PCD_ResumeCallback(PCD_HandleTypeDef *hpcd)
//  772 {
//  773   /* Prevent unused argument(s) compilation warning */
//  774   UNUSED(hpcd);
//  775 
//  776   /* NOTE : This function should not be modified, when the callback is needed,
//  777             the HAL_PCD_ResumeCallback could be implemented in the user file
//  778    */ 
//  779 }
//  780 
//  781 /**
//  782   * @brief  Incomplete ISO OUT callbacks
//  783   * @param  hpcd: PCD handle
//  784   * @param  epnum: endpoint number
//  785   * @retval None
//  786   */
//  787  __weak void HAL_PCD_ISOOUTIncompleteCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum)
//  788 {
//  789   /* Prevent unused argument(s) compilation warning */
//  790   UNUSED(hpcd);
//  791   UNUSED(epnum);
//  792 
//  793   /* NOTE : This function should not be modified, when the callback is needed,
//  794             the HAL_PCD_ISOOUTIncompleteCallback could be implemented in the user file
//  795    */ 
//  796 }
//  797 
//  798 /**
//  799   * @brief  Incomplete ISO IN  callbacks
//  800   * @param  hpcd: PCD handle
//  801   * @param  epnum: endpoint number
//  802   * @retval None
//  803   */
//  804  __weak void HAL_PCD_ISOINIncompleteCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum)
//  805 {
//  806   /* Prevent unused argument(s) compilation warning */
//  807   UNUSED(hpcd);
//  808   UNUSED(epnum);
//  809 
//  810   /* NOTE : This function should not be modified, when the callback is needed,
//  811             the HAL_PCD_ISOINIncompleteCallback could be implemented in the user file
//  812    */ 
//  813 }
//  814 
//  815 /**
//  816   * @brief  Connection event callbacks
//  817   * @param  hpcd: PCD handle
//  818   * @retval None
//  819   */
//  820  __weak void HAL_PCD_ConnectCallback(PCD_HandleTypeDef *hpcd)
//  821 {
//  822   /* Prevent unused argument(s) compilation warning */
//  823   UNUSED(hpcd);
//  824 
//  825   /* NOTE : This function should not be modified, when the callback is needed,
//  826             the HAL_PCD_ConnectCallback could be implemented in the user file
//  827    */ 
//  828 }
//  829 
//  830 /**
//  831   * @brief  Disconnection event callbacks
//  832   * @param  hpcd: PCD handle
//  833   * @retval None
//  834   */
//  835  __weak void HAL_PCD_DisconnectCallback(PCD_HandleTypeDef *hpcd)
//  836 {
//  837   /* Prevent unused argument(s) compilation warning */
//  838   UNUSED(hpcd);
//  839 
//  840   /* NOTE : This function should not be modified, when the callback is needed,
//  841             the HAL_PCD_DisconnectCallback could be implemented in the user file
//  842    */ 
//  843 }
//  844 /**
//  845   * @}
//  846   */
//  847   
//  848 /** @defgroup PCD_Exported_Functions_Group3 Peripheral Control functions 
//  849  *  @brief   management functions 
//  850  *
//  851 @verbatim   
//  852  ===============================================================================
//  853                       ##### Peripheral Control functions #####
//  854  ===============================================================================  
//  855     [..]
//  856     This subsection provides a set of functions allowing to control the PCD data 
//  857     transfers.
//  858 
//  859 @endverbatim
//  860   * @{
//  861   */
//  862 
//  863 /**
//  864   * @brief  Connect the USB device 
//  865   * @param  hpcd: PCD handle
//  866   * @retval HAL status
//  867   */
//  868 HAL_StatusTypeDef HAL_PCD_DevConnect(PCD_HandleTypeDef *hpcd)
//  869 {
//  870   __HAL_LOCK(hpcd); 
//  871   
//  872   /* Enabling DP Pull-Down bit to Connect internal pull-up on USB DP line */
//  873    HAL_PCDEx_SetConnectionState (hpcd, 1);
//  874   
//  875   __HAL_UNLOCK(hpcd); 
//  876   return HAL_OK;
//  877 }
//  878 
//  879 /**
//  880   * @brief  Disconnect the USB device 
//  881   * @param  hpcd: PCD handle
//  882   * @retval HAL status
//  883   */
//  884 HAL_StatusTypeDef HAL_PCD_DevDisconnect(PCD_HandleTypeDef *hpcd)
//  885 {
//  886   __HAL_LOCK(hpcd); 
//  887   
//  888   /* Disable DP Pull-Down bit*/
//  889   HAL_PCDEx_SetConnectionState (hpcd, 0);
//  890   
//  891   __HAL_UNLOCK(hpcd); 
//  892   return HAL_OK;
//  893 }
//  894 
//  895 /**
//  896   * @brief  Set the USB Device address 
//  897   * @param  hpcd: PCD handle
//  898   * @param  address: new device address
//  899   * @retval HAL status
//  900   */
//  901 HAL_StatusTypeDef HAL_PCD_SetAddress(PCD_HandleTypeDef *hpcd, uint8_t address)
//  902 {
//  903    __HAL_LOCK(hpcd); 
//  904 
//  905    if(address == 0) 
//  906    {
//  907      /* set device address and enable function */
//  908      hpcd->Instance->DADDR = USB_DADDR_EF;
//  909    }
//  910    else /* USB Address will be applied later */
//  911    {
//  912      hpcd->USB_Address = address;
//  913    }
//  914 
//  915   __HAL_UNLOCK(hpcd);   
//  916   return HAL_OK;
//  917 }
//  918 /**
//  919   * @brief  Open and configure an endpoint
//  920   * @param  hpcd: PCD handle
//  921   * @param  ep_addr: endpoint address
//  922   * @param  ep_mps: endpoint max packet size
//  923   * @param  ep_type: endpoint type   
//  924   * @retval HAL status
//  925   */
//  926 HAL_StatusTypeDef HAL_PCD_EP_Open(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint16_t ep_mps, uint8_t ep_type)
//  927 {
//  928   HAL_StatusTypeDef  ret = HAL_OK;
//  929   PCD_EPTypeDef *ep;
//  930   
//  931   if ((ep_addr & 0x80) == 0x80)
//  932   {
//  933     ep = &hpcd->IN_ep[ep_addr & 0x7F];
//  934   }
//  935   else
//  936   {
//  937     ep = &hpcd->OUT_ep[ep_addr & 0x7F];
//  938   }
//  939   ep->num   = ep_addr & 0x7F;
//  940   
//  941   ep->is_in = (0x80 & ep_addr) != 0;
//  942   ep->maxpacket = ep_mps;
//  943   ep->type = ep_type;
//  944   
//  945   __HAL_LOCK(hpcd); 
//  946 
//  947 /* initialize Endpoint */
//  948   switch (ep->type)
//  949   {
//  950   case PCD_EP_TYPE_CTRL:
//  951     PCD_SET_EPTYPE(hpcd->Instance, ep->num, USB_EP_CONTROL);
//  952     break;
//  953   case PCD_EP_TYPE_BULK:
//  954     PCD_SET_EPTYPE(hpcd->Instance, ep->num, USB_EP_BULK);
//  955     break;
//  956   case PCD_EP_TYPE_INTR:
//  957     PCD_SET_EPTYPE(hpcd->Instance, ep->num, USB_EP_INTERRUPT);
//  958     break;
//  959   case PCD_EP_TYPE_ISOC:
//  960     PCD_SET_EPTYPE(hpcd->Instance, ep->num, USB_EP_ISOCHRONOUS);
//  961     break;
//  962   default:
//  963       break;
//  964   } 
//  965   
//  966   PCD_SET_EP_ADDRESS(hpcd->Instance, ep->num, ep->num);
//  967   
//  968   if (ep->doublebuffer == 0) 
//  969   {
//  970     if (ep->is_in)
//  971     {
//  972       /*Set the endpoint Transmit buffer address */
//  973       PCD_SET_EP_TX_ADDRESS(hpcd->Instance, ep->num, ep->pmaadress);
//  974       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
//  975       /* Configure NAK status for the Endpoint*/
//  976       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_NAK); 
//  977     }
//  978     else
//  979     {
//  980       /*Set the endpoint Receive buffer address */
//  981       PCD_SET_EP_RX_ADDRESS(hpcd->Instance, ep->num, ep->pmaadress);
//  982       /*Set the endpoint Receive buffer counter*/
//  983       PCD_SET_EP_RX_CNT(hpcd->Instance, ep->num, ep->maxpacket);
//  984       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
//  985       /* Configure VALID status for the Endpoint*/
//  986       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_VALID);
//  987     }
//  988   }
//  989   /*Double Buffer*/
//  990   else
//  991   {
//  992     /*Set the endpoint as double buffered*/
//  993     PCD_SET_EP_DBUF(hpcd->Instance, ep->num);
//  994     /*Set buffer address for double buffered mode*/
//  995     PCD_SET_EP_DBUF_ADDR(hpcd->Instance, ep->num,ep->pmaaddr0, ep->pmaaddr1);
//  996     
//  997     if (ep->is_in==0)
//  998     {
//  999       /* Clear the data toggle bits for the endpoint IN/OUT*/
// 1000       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1001       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1002       
// 1003       /* Reset value of the data toggle bits for the endpoint out*/
// 1004       PCD_TX_DTOG(hpcd->Instance, ep->num);
// 1005       
// 1006       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_VALID);
// 1007       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_DIS);
// 1008     }
// 1009     else
// 1010     {
// 1011       /* Clear the data toggle bits for the endpoint IN/OUT*/
// 1012       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1013       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1014       PCD_RX_DTOG(hpcd->Instance, ep->num);
// 1015       /* Configure DISABLE status for the Endpoint*/
// 1016       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_DIS);
// 1017       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_DIS);
// 1018     }
// 1019   } 
// 1020   
// 1021   __HAL_UNLOCK(hpcd);   
// 1022   return ret;
// 1023 }
// 1024 
// 1025 
// 1026 /**
// 1027   * @brief  Deactivate an endpoint
// 1028   * @param  hpcd: PCD handle
// 1029   * @param  ep_addr: endpoint address
// 1030   * @retval HAL status
// 1031   */
// 1032 HAL_StatusTypeDef HAL_PCD_EP_Close(PCD_HandleTypeDef *hpcd, uint8_t ep_addr)
// 1033 {  
// 1034   PCD_EPTypeDef *ep;
// 1035   
// 1036   if ((ep_addr & 0x80) == 0x80)
// 1037   {
// 1038     ep = &hpcd->IN_ep[ep_addr & 0x7F];
// 1039   }
// 1040   else
// 1041   {
// 1042     ep = &hpcd->OUT_ep[ep_addr & 0x7F];
// 1043   }
// 1044   ep->num   = ep_addr & 0x7F;
// 1045   
// 1046   ep->is_in = (0x80 & ep_addr) != 0;
// 1047   
// 1048   __HAL_LOCK(hpcd); 
// 1049 
// 1050   if (ep->doublebuffer == 0) 
// 1051   {
// 1052     if (ep->is_in)
// 1053     {
// 1054       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1055       /* Configure DISABLE status for the Endpoint*/
// 1056       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_DIS); 
// 1057     }
// 1058     else
// 1059     {
// 1060       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1061       /* Configure DISABLE status for the Endpoint*/
// 1062       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_DIS);
// 1063     }
// 1064   }
// 1065   /*Double Buffer*/
// 1066   else
// 1067   { 
// 1068     if (ep->is_in==0)
// 1069     {
// 1070       /* Clear the data toggle bits for the endpoint IN/OUT*/
// 1071       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1072       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1073       
// 1074       /* Reset value of the data toggle bits for the endpoint out*/
// 1075       PCD_TX_DTOG(hpcd->Instance, ep->num);
// 1076       
// 1077       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_DIS);
// 1078       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_DIS);
// 1079     }
// 1080     else
// 1081     {
// 1082       /* Clear the data toggle bits for the endpoint IN/OUT*/
// 1083       PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1084       PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1085       PCD_RX_DTOG(hpcd->Instance, ep->num);
// 1086       /* Configure DISABLE status for the Endpoint*/
// 1087       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_DIS);
// 1088       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_DIS);
// 1089     }
// 1090   } 
// 1091   
// 1092   __HAL_UNLOCK(hpcd);   
// 1093   return HAL_OK;
// 1094 }
// 1095 
// 1096 
// 1097 /**
// 1098   * @brief  Receive an amount of data  
// 1099   * @param  hpcd: PCD handle
// 1100   * @param  ep_addr: endpoint address
// 1101   * @param  pBuf: pointer to the reception buffer   
// 1102   * @param  len: amount of data to be received
// 1103   * @retval HAL status
// 1104   */
// 1105 HAL_StatusTypeDef HAL_PCD_EP_Receive(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint8_t *pBuf, uint32_t len)
// 1106 {
// 1107   
// 1108  PCD_EPTypeDef *ep;
// 1109   
// 1110   ep = &hpcd->OUT_ep[ep_addr & 0x7F];
// 1111   
// 1112   /*setup and start the Xfer */
// 1113   ep->xfer_buff = pBuf;  
// 1114   ep->xfer_len = len;
// 1115   ep->xfer_count = 0;
// 1116   ep->is_in = 0;
// 1117   ep->num = ep_addr & 0x7F;
// 1118    
// 1119   __HAL_LOCK(hpcd); 
// 1120    
// 1121   /* Multi packet transfer*/
// 1122   if (ep->xfer_len > ep->maxpacket)
// 1123   {
// 1124     len=ep->maxpacket;
// 1125     ep->xfer_len-=len; 
// 1126   }
// 1127   else
// 1128   {
// 1129     len=ep->xfer_len;
// 1130     ep->xfer_len =0;
// 1131   }
// 1132   
// 1133   /* configure and validate Rx endpoint */
// 1134   if (ep->doublebuffer == 0) 
// 1135   {
// 1136     /*Set RX buffer count*/
// 1137     PCD_SET_EP_RX_CNT(hpcd->Instance, ep->num, len);
// 1138   }
// 1139   else
// 1140   {
// 1141     /*Set the Double buffer counter*/
// 1142     PCD_SET_EP_DBUF_CNT(hpcd->Instance, ep->num, ep->is_in, len);
// 1143   } 
// 1144   
// 1145   PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_VALID);
// 1146   
// 1147   __HAL_UNLOCK(hpcd); 
// 1148   
// 1149   return HAL_OK;
// 1150 }
// 1151 
// 1152 /**
// 1153   * @brief  Get Received Data Size
// 1154   * @param  hpcd: PCD handle
// 1155   * @param  ep_addr: endpoint address
// 1156   * @retval Data Size
// 1157   */
// 1158 uint16_t HAL_PCD_EP_GetRxCount(PCD_HandleTypeDef *hpcd, uint8_t ep_addr)
// 1159 {
// 1160   return hpcd->OUT_ep[ep_addr & 0x7F].xfer_count;
// 1161 }
// 1162 /**
// 1163   * @brief  Send an amount of data  
// 1164   * @param  hpcd: PCD handle
// 1165   * @param  ep_addr: endpoint address
// 1166   * @param  pBuf: pointer to the transmission buffer   
// 1167   * @param  len: amount of data to be sent
// 1168   * @retval HAL status
// 1169   */
// 1170 HAL_StatusTypeDef HAL_PCD_EP_Transmit(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint8_t *pBuf, uint32_t len)
// 1171 {
// 1172   PCD_EPTypeDef *ep;
// 1173   uint16_t pmabuffer = 0;
// 1174     
// 1175   ep = &hpcd->IN_ep[ep_addr & 0x7F];
// 1176   
// 1177   /*setup and start the Xfer */
// 1178   ep->xfer_buff = pBuf;  
// 1179   ep->xfer_len = len;
// 1180   ep->xfer_count = 0;
// 1181   ep->is_in = 1;
// 1182   ep->num = ep_addr & 0x7F;
// 1183   
// 1184   __HAL_LOCK(hpcd); 
// 1185   
// 1186   /*Multi packet transfer*/
// 1187   if (ep->xfer_len > ep->maxpacket)
// 1188   {
// 1189     len=ep->maxpacket;
// 1190     ep->xfer_len-=len; 
// 1191   }
// 1192   else
// 1193   {  
// 1194     len=ep->xfer_len;
// 1195     ep->xfer_len =0;
// 1196   }
// 1197   
// 1198   /* configure and validate Tx endpoint */
// 1199   if (ep->doublebuffer == 0) 
// 1200   {
// 1201     PCD_WritePMA(hpcd->Instance, ep->xfer_buff, ep->pmaadress, len);
// 1202     PCD_SET_EP_TX_CNT(hpcd->Instance, ep->num, len);
// 1203   }
// 1204   else
// 1205   {
// 1206     /*Set the Double buffer counter */
// 1207     PCD_SET_EP_DBUF_CNT(hpcd->Instance, ep->num, ep->is_in, len);
// 1208     
// 1209     /*Write the data to the USB endpoint*/
// 1210     if (PCD_GET_ENDPOINT(hpcd->Instance, ep->num)& USB_EP_DTOG_TX)
// 1211     {
// 1212       pmabuffer = ep->pmaaddr1;
// 1213     }
// 1214     else
// 1215     {
// 1216       pmabuffer = ep->pmaaddr0;
// 1217     }
// 1218 
// 1219     PCD_WritePMA(hpcd->Instance, ep->xfer_buff, pmabuffer, len);
// 1220     PCD_FreeUserBuffer(hpcd->Instance, ep->num, ep->is_in);
// 1221   }
// 1222 
// 1223   PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_VALID);
// 1224   
// 1225   __HAL_UNLOCK(hpcd);
// 1226      
// 1227   return HAL_OK;
// 1228 }
// 1229 
// 1230 /**
// 1231   * @brief  Set a STALL condition over an endpoint
// 1232   * @param  hpcd: PCD handle
// 1233   * @param  ep_addr: endpoint address
// 1234   * @retval HAL status
// 1235   */
// 1236 HAL_StatusTypeDef HAL_PCD_EP_SetStall(PCD_HandleTypeDef *hpcd, uint8_t ep_addr)
// 1237 {
// 1238   PCD_EPTypeDef *ep;
// 1239    
// 1240   __HAL_LOCK(hpcd); 
// 1241    
// 1242   if ((0x80 & ep_addr) == 0x80)
// 1243   {
// 1244     ep = &hpcd->IN_ep[ep_addr & 0x7F];
// 1245   }
// 1246   else
// 1247   {
// 1248     ep = &hpcd->OUT_ep[ep_addr];
// 1249   }
// 1250   
// 1251   ep->is_stall = 1;
// 1252   ep->num   = ep_addr & 0x7F;
// 1253   ep->is_in = ((ep_addr & 0x80) == 0x80);
// 1254   
// 1255   if (ep->num == 0)
// 1256   {
// 1257     /* This macro sets STALL status for RX & TX*/ 
// 1258     PCD_SET_EP_TXRX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_STALL, USB_EP_TX_STALL); 
// 1259   }
// 1260   else
// 1261   {
// 1262     if (ep->is_in)
// 1263     {
// 1264       PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num , USB_EP_TX_STALL); 
// 1265     }
// 1266     else
// 1267     {
// 1268       PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num , USB_EP_RX_STALL);
// 1269     }
// 1270   }
// 1271   __HAL_UNLOCK(hpcd); 
// 1272   
// 1273   return HAL_OK;
// 1274 }
// 1275 
// 1276 /**
// 1277   * @brief  Clear a STALL condition over in an endpoint
// 1278   * @param  hpcd: PCD handle
// 1279   * @param  ep_addr: endpoint address
// 1280   * @retval HAL status
// 1281   */
// 1282 HAL_StatusTypeDef HAL_PCD_EP_ClrStall(PCD_HandleTypeDef *hpcd, uint8_t ep_addr)
// 1283 {
// 1284   PCD_EPTypeDef *ep;
// 1285   
// 1286   if ((0x80 & ep_addr) == 0x80)
// 1287   {
// 1288     ep = &hpcd->IN_ep[ep_addr & 0x7F];
// 1289   }
// 1290   else
// 1291   {
// 1292     ep = &hpcd->OUT_ep[ep_addr];
// 1293   }
// 1294   
// 1295   ep->is_stall = 0;
// 1296   ep->num   = ep_addr & 0x7F;
// 1297   ep->is_in = ((ep_addr & 0x80) == 0x80);
// 1298   
// 1299   __HAL_LOCK(hpcd); 
// 1300   
// 1301   if (ep->is_in)
// 1302   {
// 1303     PCD_CLEAR_TX_DTOG(hpcd->Instance, ep->num);
// 1304     PCD_SET_EP_TX_STATUS(hpcd->Instance, ep->num, USB_EP_TX_VALID);
// 1305   }
// 1306   else
// 1307   {
// 1308     PCD_CLEAR_RX_DTOG(hpcd->Instance, ep->num);
// 1309     PCD_SET_EP_RX_STATUS(hpcd->Instance, ep->num, USB_EP_RX_VALID);
// 1310   }
// 1311   __HAL_UNLOCK(hpcd); 
// 1312     
// 1313   return HAL_OK;
// 1314 }
// 1315 
// 1316 /**
// 1317   * @brief  Flush an endpoint
// 1318   * @param  hpcd: PCD handle
// 1319   * @param  ep_addr: endpoint address
// 1320   * @retval HAL status
// 1321   */
// 1322 HAL_StatusTypeDef HAL_PCD_EP_Flush(PCD_HandleTypeDef *hpcd, uint8_t ep_addr)
// 1323 { 
// 1324   return HAL_OK;
// 1325 }
// 1326 
// 1327 /**
// 1328   * @brief  HAL_PCD_ActivateRemoteWakeup : active remote wakeup signalling
// 1329   * @param  hpcd: PCD handle
// 1330   * @retval HAL status
// 1331   */
// 1332 HAL_StatusTypeDef HAL_PCD_ActivateRemoteWakeup(PCD_HandleTypeDef *hpcd)
// 1333 {
// 1334   hpcd->Instance->CNTR |= USB_CNTR_RESUME;
// 1335   return HAL_OK;  
// 1336 }
// 1337 
// 1338 /**
// 1339   * @brief  HAL_PCD_DeActivateRemoteWakeup : de-active remote wakeup signalling
// 1340   * @param  hpcd: PCD handle
// 1341   * @retval HAL status
// 1342   */
// 1343 HAL_StatusTypeDef HAL_PCD_DeActivateRemoteWakeup(PCD_HandleTypeDef *hpcd)
// 1344 {
// 1345   hpcd->Instance->CNTR &= ~(USB_CNTR_RESUME);
// 1346   return HAL_OK;  
// 1347 }
// 1348 
// 1349 /**
// 1350   * @}
// 1351   */
// 1352   
// 1353 /** @defgroup PCD_Exported_Functions_Group4 Peripheral State functions 
// 1354  *  @brief   Peripheral State functions 
// 1355  *
// 1356 @verbatim   
// 1357  ===============================================================================
// 1358                       ##### Peripheral State functions #####
// 1359  ===============================================================================  
// 1360     [..]
// 1361     This subsection permits to get in run-time the status of the peripheral 
// 1362     and the data flow.
// 1363 
// 1364 @endverbatim
// 1365   * @{
// 1366   */
// 1367 
// 1368 
// 1369 /**
// 1370   * @brief  Return the PCD state
// 1371   * @param  hpcd : PCD handle
// 1372   * @retval HAL state
// 1373   */
// 1374 PCD_StateTypeDef HAL_PCD_GetState(PCD_HandleTypeDef *hpcd)
// 1375 {
// 1376   return hpcd->State;
// 1377 }
// 1378 
// 1379 
// 1380 /**
// 1381   * @brief  Software Device Connection
// 1382   * @param  hpcd: PCD handle
// 1383   * @param  state: Device state
// 1384   * @retval None
// 1385   */
// 1386  __weak void HAL_PCDEx_SetConnectionState(PCD_HandleTypeDef *hpcd, uint8_t state)
// 1387 {
// 1388   /* Prevent unused argument(s) compilation warning */
// 1389   UNUSED(hpcd);
// 1390   UNUSED(state);
// 1391 
// 1392   /* NOTE : This function should not be modified, when the callback is needed,
// 1393             the HAL_PCDEx_SetConnectionState could be implenetd in the user file
// 1394    */ 
// 1395 }
// 1396 
// 1397 /**
// 1398   * @}
// 1399   */
// 1400 
// 1401 /**
// 1402   * @}
// 1403   */
// 1404 
// 1405 
// 1406 #endif /* HAL_PCD_MODULE_ENABLED */
// 1407 /**
// 1408   * @}
// 1409   */
// 1410 
// 1411 /**
// 1412   * @}
// 1413   */
// 1414 
// 1415 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
