///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_comp.c
//    Command line =  
//        D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_comp.c
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
//        D:\01work\proj\�ش�\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_comp.s
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
// D:\01work\proj\�ش�\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_comp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_comp.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   COMP HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the COMP peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + I/O operation functions
//   12   *           + Peripheral Control functions 
//   13   *           + Peripheral State functions
//   14   *         
//   15   @verbatim
//   16 ================================================================================
//   17           ##### COMP Peripheral features #####
//   18 ================================================================================
//   19   [..]       
//   20       The STM32L1xx device family integrates 2 analog comparators COMP1 and 
//   21       COMP2:
//   22       (#) The non inverting input and inverting input can be set to GPIO pins.
//   23           HAL COMP driver configures the Routing Interface (RI) to connect the
//   24           selected I/O pins to comparator input.
//   25           Caution: Comparator COMP1 and ADC cannot be used at the same time as 
//   26           ADC since they share the ADC switch matrix: COMP1 non-inverting 
//   27           input is routed through ADC switch matrix. Except if ADC is intended 
//   28           to measure voltage on COMP1 non-inverting input: it can be performed 
//   29           on ADC channel VCOMP.
//   30 
//   31       (#) The COMP output is available using HAL_COMP_GetOutputLevel().
//   32 
//   33       (#) The COMP output can be redirected to embedded timers (TIM2, TIM3, 
//   34           TIM4, TIM10).
//   35           COMP output cannot be redirected to any I/O pin.
//   36 
//   37       (#) The comparators COMP1 and COMP2 can be combined in window mode. 
//   38           In this mode, COMP2 non inverting input is used as common 
//   39           non-inverting input.
//   40   
//   41       (#) The 2 comparators have interrupt capability with wake-up
//   42           from Sleep and Stop modes (through the EXTI controller):
//   43           (++) COMP1 is internally connected to EXTI Line 21
//   44           (++) COMP2 is internally connected to EXTI Line 22
//   45 
//   46           From the corresponding IRQ handler, the right interrupt source can be retrieved with the 
//   47           macros __HAL_COMP_COMP1_EXTI_GET_FLAG() and __HAL_COMP_COMP2_EXTI_GET_FLAG().
//   48   
//   49       (#) The comparators also offer the possibility to output the voltage 
//   50           reference (VrefInt), used on inverting inputs, on I/O pin through 
//   51           a buffer. To use it, refer to macro "__HAL_SYSCFG_VREFINT_OUT_ENABLE()".
//   52 
//   53             ##### How to use this driver #####
//   54 ================================================================================
//   55   [..]
//   56       This driver provides functions to configure and program the Comparators of all STM32L1xx devices.
//   57 
//   58       To use the comparator, perform the following steps:
//   59   
//   60       (#)  Initialize the COMP low level resources by implementing the HAL_COMP_MspInit().
//   61       (++) Configure the comparator input I/O pin using HAL_GPIO_Init():
//   62            - For all inputs: I/O pin in analog mode (Schmitt trigger disabled)
//   63            - Possible alternate configuration, for non-inverting inputs of comparator 2: I/O pin in floating mode (Schmitt trigger enabled).
//   64            It is recommended to use analog configuration to avoid any overconsumption around VDD/2.
//   65       (++) Enable COMP Peripheral clock using macro __HAL_RCC_COMP_CLK_ENABLE()
//   66       (++) If required enable the COMP interrupt (EXTI line Interrupt): enable
//   67            the comparator interrupt vector using HAL_NVIC_EnableIRQ(COMP_IRQn)
//   68            and HAL_NVIC_SetPriority(COMP_IRQn, xxx, xxx) functions.
//   69   
//   70       (#) Configure the comparator using HAL_COMP_Init() function:
//   71       (++) Select the inverting input (COMP2 only)
//   72       (++) Select the non-inverting input
//   73       (++) Select the output redirection to timers (COMP2 only)
//   74       (++) Select the speed mode (COMP2 only)
//   75       (++) Select the window mode (related to COMP1 and COMP2, but selected 
//   76            by COMP2 only)
//   77       (++) Select the pull-up/down resistors on non-inverting input (COMP1 only)
//   78 
//   79       (#) Enable the comparator using HAL_COMP_Start() or HAL_COMP_Start_IT() 
//   80           function
//   81     
//   82       (#) If needed, use HAL_COMP_GetOutputLevel() or HAL_COMP_TriggerCallback()
//   83           functions to manage comparator actions (output level or events)
//   84 
//   85       (#) Disable the comparator using HAL_COMP_Stop() or HAL_COMP_Stop_IT() 
//   86           function
//   87 
//   88       (#) De-initialize the comparator using HAL_COMP_DeInit() function
//   89 
//   90 
//   91   @endverbatim
//   92   ******************************************************************************
//   93   * @attention
//   94   *
//   95   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   96   *
//   97   * Redistribution and use in source and binary forms, with or without modification,
//   98   * are permitted provided that the following conditions are met:
//   99   *   1. Redistributions of source code must retain the above copyright notice,
//  100   *      this list of conditions and the following disclaimer.
//  101   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  102   *      this list of conditions and the following disclaimer in the documentation
//  103   *      and/or other materials provided with the distribution.
//  104   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  105   *      may be used to endorse or promote products derived from this software
//  106   *      without specific prior written permission.
//  107   *
//  108   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  109   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  110   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  111   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  112   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  113   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  114   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  115   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  116   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  117   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  118   *
//  119   ******************************************************************************  
//  120   */
//  121 
//  122 /*
//  123   Additionnal remark: 
//  124     Table 1. COMP Inputs for the STM32L1xx devices
//  125     +----------------------------------------------------------------------+
//  126     |                 |                                |  COMP1  |  COMP2  |
//  127     |-----------------|--------------------------------|---------|---------|
//  128     |                 | 1/4 VREFINT                    |   --    |   OK    |
//  129     |                 | 1/2 VREFINT                    |   --    |   OK    |
//  130     |                 | 3/4 VREFINT                    |   --    |   OK    |
//  131     | Inverting       | VREFINT                        |   OK    |   OK    |
//  132     | input           | DAC Ch1 OUT (PA4)              |   --    |   OK    |
//  133     |                 | DAC Ch2 OUT (PA5)              |   --    |   OK    |
//  134     |                 | IO: PB3                        |   --    |   OK    |
//  135     |-----------------|--------------------------------|---------|---------|
//  136     |                 | IO:                            |         |         |
//  137     |                 |   PB4, 5, 6*, 7*               |   ---   |   OK    |
//  138     | Non-inverting   |   PA0*, 1*, 2*, 3*, 4, 5, 6, 7 |   OK    |   ---   |
//  139     | input           |   PB0, 1, 12, 13, 14, 15       |   OK    |   ---   |
//  140     |                 |   PC0, 1, 2, 3, 4, 5           |   OK    |   ---   |
//  141     |                 |   PE7, 8, 9, 10                |   OK    |   ---   |
//  142     |                 |   PF6, 7, 8, 9, 10             |   OK    |   ---   |
//  143     |                 | OPAMP1 output                  |   OK    |   ---   |
//  144     |                 | OPAMP2 output                  |   OK    |   ---   |
//  145     |                 | OPAMP3 output**                |   OK    |   ---   |
//  146     +----------------------------------------------------------------------+
//  147     *: Available on devices category Cat.3, Cat.4, Cat.5 only. 
//  148     **: Available on devices category Cat.4 only. 
//  149     
//  150     [..] Table 2. COMP Outputs redirection to embedded timers
//  151     +-----------------------------------+     
//  152     |      COMP1      |      COMP2      |
//  153     |-----------------|-----------------|
//  154     |                 |  TIM2 IC4       |
//  155     |                 |  TIM2 OCREF CLR |
//  156     | (no redirection |  TIM3 IC4       |
//  157     |   to timers)    |  TIM3 OCREF CLR |
//  158     |                 |  TIM4 IC4       |
//  159     |                 |  TIM4 OCREF CLR |
//  160     |                 |  TIM10 IC1      |
//  161     +-----------------------------------+
//  162 */
//  163 
//  164 /* Includes ------------------------------------------------------------------*/
//  165 #include "stm32l1xx_hal.h"
//  166 
//  167 /** @addtogroup STM32L1xx_HAL_Driver
//  168   * @{
//  169   */
//  170 
//  171 /** @defgroup COMP COMP
//  172   * @brief COMP HAL module driver
//  173   * @{
//  174   */
//  175 
//  176 #ifdef HAL_COMP_MODULE_ENABLED
//  177 
//  178 /* Private typedef -----------------------------------------------------------*/
//  179 /* Private define ------------------------------------------------------------*/
//  180 
//  181 /** @defgroup COMP_Private_Constants COMP Private Constants
//  182   * @{
//  183   */
//  184   /* Delay for COMP start-up time.                                            */
//  185   /* Maximum delay is 10us for comparator 1 and 25us for comparator 2 in slow */
//  186   /* mode (refer to device datasheet, parameter tSTART).                      */
//  187   /* Delay in CPU cycles, fixed to worst case: maximum CPU frequency 32MHz to */
//  188   /* have the minimum number of CPU cycles to fulfill this delay.             */
//  189   /*  - Comparator 1: delay minimum of 320 CPU cycles. Wait loop takes 3 CPU  */
//  190   /*                 cycles per iteration, therefore total wait iterations    */
//  191   /*                 number must be initialized at 106 iterations.            */
//  192   /*  - Comparator 2: delay minimum of 800 CPU cycles. Wait loop takes 3 CPU  */
//  193   /*                 cycles per iteration, therefore total wait iterations    */
//  194   /*                 number must be initialized at 266 iterations.            */
//  195 #define COMP1_START_DELAY_CPU_CYCLES       ((uint32_t)106)
//  196 #define COMP2_START_DELAY_CPU_CYCLES       ((uint32_t)266)
//  197 
//  198   /* Comparator status "locked": to update COMP handle state (software lock   */
//  199   /* only on COMP of STM32L1xx devices) by bitfield:                          */
//  200   /* states HAL_COMP_STATE_READY_LOCKED, HAL_COMP_STATE_BUSY_LOCKED.          */
//  201 #define COMP_STATE_BIT_LOCK     ((uint32_t) 0x00000010)  
//  202 
//  203 /**
//  204   * @}
//  205   */
//  206 
//  207 
//  208 /* Private macro -------------------------------------------------------------*/
//  209 /* Private variables ---------------------------------------------------------*/
//  210 /* Private function prototypes -----------------------------------------------*/
//  211 /* Private functions ---------------------------------------------------------*/
//  212 
//  213 /** @defgroup COMP_Exported_Functions COMP Exported Functions
//  214   * @{
//  215   */
//  216 
//  217 /** @defgroup COMP_Exported_Functions_Group1 Initialization and de-initialization functions 
//  218  *  @brief    Initialization and Configuration functions 
//  219  *
//  220 @verbatim    
//  221  ===============================================================================
//  222               ##### Initialization and de-initialization functions #####
//  223  ===============================================================================
//  224     [..]  This section provides functions to initialize and de-initialize comparators 
//  225 
//  226 @endverbatim
//  227   * @{
//  228   */
//  229 
//  230 /**
//  231   * @brief  Initializes the COMP according to the specified
//  232   *         parameters in the COMP_InitTypeDef and create the associated handle.
//  233   * @note   If the selected comparator is locked, initialization can't be performed.
//  234   *         To unlock the configuration, perform a system reset.
//  235   * @param  hcomp: COMP handle
//  236   * @retval HAL status
//  237   */
//  238 HAL_StatusTypeDef HAL_COMP_Init(COMP_HandleTypeDef *hcomp)
//  239 { 
//  240   HAL_StatusTypeDef status = HAL_OK;
//  241   
//  242   /* Check the COMP handle allocation and lock status */
//  243   if((hcomp == NULL) || ((hcomp->State & COMP_STATE_BIT_LOCK) != RESET))
//  244   {
//  245     status = HAL_ERROR;
//  246   }
//  247   else
//  248   {
//  249     /* Check the parameter */
//  250     assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  251 
//  252     if (hcomp->Instance == COMP1)
//  253     {
//  254       assert_param(IS_COMP_NONINVERTINGINPUTPULL(hcomp->Init.NonInvertingInputPull));
//  255     }
//  256     else /* if (hcomp->Instance == COMP2) */
//  257     {
//  258       assert_param(IS_COMP_INVERTINGINPUT(hcomp->Init.InvertingInput));
//  259       assert_param(IS_COMP_OUTPUT(hcomp->Init.Output));
//  260       assert_param(IS_COMP_MODE(hcomp->Init.Mode));
//  261       assert_param(IS_COMP_WINDOWMODE(hcomp->Init.WindowMode));
//  262     }
//  263   
//  264     /* In window mode, non-inverting inputs of the 2 comparators are          */
//  265     /* connected together and are using inputs of COMP2 only. If COMP1 is     */
//  266     /* selected, this parameter is discarded.                                 */
//  267     if ((hcomp->Init.WindowMode == COMP_WINDOWMODE_DISABLE) ||
//  268         (hcomp->Instance == COMP2)                            )
//  269     {
//  270       assert_param(IS_COMP_NONINVERTINGINPUT(hcomp->Init.NonInvertingInput));
//  271     }
//  272     
//  273       
//  274     /* Enable SYSCFG clock and the low level hardware to access comparators */
//  275     if(hcomp->State == HAL_COMP_STATE_RESET)
//  276     {
//  277       /* Allocate lock resource and initialize it */
//  278       hcomp->Lock = HAL_UNLOCKED;
//  279 
//  280       /* Enable SYSCFG clock to control the routing Interface (RI) */
//  281       __HAL_RCC_SYSCFG_CLK_ENABLE();
//  282       
//  283       /* Init the low level hardware */
//  284       HAL_COMP_MspInit(hcomp);
//  285     }
//  286   
//  287     /* Configuration of comparator:                                           */
//  288     /*  - Output selection                                                    */
//  289     /*  - Inverting input selection                                           */
//  290     /*  - Window mode                                                         */
//  291     /*  - Mode fast/slow speed                                                */
//  292     /*  - Inverting input pull-up/down resistors                              */
//  293     
//  294     /* Configuration depending on comparator instance */
//  295     if (hcomp->Instance == COMP1)
//  296     {
//  297       MODIFY_REG(COMP->CSR, COMP_CSR_400KPD | COMP_CSR_10KPD | COMP_CSR_400KPU | COMP_CSR_10KPU,
//  298                             hcomp->Init.NonInvertingInputPull                                   );
//  299     }
//  300     else /* if (hcomp->Instance == COMP2) */
//  301     {
//  302       /* Note: If comparator 2 is not enabled, inverting input (parameter     */
//  303       /*       "hcomp->Init.InvertingInput") is configured into function      */
//  304       /*       "HAL_COMP_Start()" since inverting  input selection also       */
//  305       /*       enables the comparator 2.                                      */
//  306       /*       If comparator 2 is already enabled, inverting input is         */
//  307       /*       reconfigured on the fly.                                       */
//  308       if (__COMP_IS_ENABLED(hcomp) == RESET)
//  309       {
//  310         MODIFY_REG(COMP->CSR, COMP_CSR_OUTSEL  |
//  311                               COMP_CSR_WNDWE   |
//  312                               COMP_CSR_SPEED          ,
//  313                               hcomp->Init.Output     |
//  314                               hcomp->Init.WindowMode |
//  315                               hcomp->Init.Mode        );
//  316       }
//  317       else
//  318       {
//  319         MODIFY_REG(COMP->CSR, COMP_CSR_OUTSEL  |
//  320                               COMP_CSR_INSEL   |
//  321                               COMP_CSR_WNDWE   |
//  322                               COMP_CSR_SPEED              ,
//  323                               hcomp->Init.Output         |
//  324                               hcomp->Init.InvertingInput |
//  325                               hcomp->Init.WindowMode     |
//  326                               hcomp->Init.Mode            );
//  327       }
//  328     }
//  329     
//  330     /* Configure Routing Interface (RI) switches for comparator non-inverting */
//  331     /* input.                                                                 */
//  332     /* Except in 2 cases:                                                     */
//  333     /* - if non-inverting input has no selection: it can be the case for      */
//  334     /*   COMP1 in window mode.                                                */
//  335     /* - particular case for PC3: if switch COMP1_SW1 is closed               */
//  336     /*   (by macro "__HAL_OPAMP_OPAMP3OUT_CONNECT_ADC_COMP1()" or             */
//  337     /*   "__HAL_RI_SWITCH_COMP1_SW1_CLOSE()"), connection between pin PC3     */
//  338     /*    (or OPAMP3, if available) and COMP1 is done directly, without going */
//  339     /*    through ADC switch matrix.                                          */
//  340     if (__COMP_ROUTING_INTERFACE_TOBECONFIGURED(hcomp))
//  341     {
//  342       if (hcomp->Instance == COMP1)
//  343       {
//  344         /* Enable the switch control mode */
//  345         __HAL_RI_SWITCHCONTROLMODE_ENABLE();
//  346 
//  347         /* Close the analog switch of ADC switch matrix to COMP1 (ADC         */
//  348         /* channel 26: Vcomp)                                                 */
//  349         __HAL_RI_IOSWITCH_CLOSE(RI_IOSWITCH_VCOMP);
//  350       }
//  351 
//  352       /* Close the I/O analog switch corresponding to comparator              */
//  353       /* non-inverting input selected.                                        */
//  354       __HAL_RI_IOSWITCH_CLOSE(hcomp->Init.NonInvertingInput);
//  355     }
//  356 
//  357     
//  358     /* Initialize the COMP state*/
//  359     if(hcomp->State == HAL_COMP_STATE_RESET)
//  360     {
//  361       hcomp->State = HAL_COMP_STATE_READY;
//  362     }
//  363   }
//  364   
//  365   return status;
//  366 }
//  367 
//  368 
//  369 /**
//  370   * @brief  DeInitializes the COMP peripheral 
//  371   * @note   Deinitialization can't be performed if the COMP configuration is locked.
//  372   *         To unlock the configuration, perform a system reset.
//  373   * @param  hcomp: COMP handle
//  374   * @retval HAL status
//  375   */
//  376 HAL_StatusTypeDef HAL_COMP_DeInit(COMP_HandleTypeDef *hcomp)
//  377 {
//  378   HAL_StatusTypeDef status = HAL_OK;
//  379 
//  380   /* Check the COMP handle allocation and lock status */
//  381   if((hcomp == NULL) || ((hcomp->State & COMP_STATE_BIT_LOCK) != RESET))
//  382   {
//  383     status = HAL_ERROR;
//  384   }
//  385   else
//  386   {
//  387     /* Check the parameter */
//  388     assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  389     
//  390     /* Reset configuration depending on comparator instance */
//  391     if (hcomp->Instance == COMP1)
//  392     {
//  393       CLEAR_BIT(COMP->CSR , COMP_CSR_400KPD | COMP_CSR_10KPD | COMP_CSR_400KPU | COMP_CSR_10KPU);
//  394     }
//  395     else /* if (hcomp->Instance == COMP2) */
//  396     {
//  397       CLEAR_BIT(COMP->CSR , COMP_CSR_OUTSEL |
//  398                             COMP_CSR_WNDWE  |
//  399                             COMP_CSR_INSEL  |
//  400                             COMP_CSR_SPEED   );
//  401     }
//  402     
//  403     
//  404     /* Restore default state of Routing Interface (RI) switches for           */
//  405     /* comparator non-inverting input.                                        */
//  406     if (hcomp->Init.NonInvertingInput != COMP_NONINVERTINGINPUT_NONE)
//  407     {
//  408       /* Open the I/O analog switch corresponding to comparator               */
//  409       /* non-inverting input selected.                                        */
//  410       __HAL_RI_IOSWITCH_OPEN(hcomp->Init.NonInvertingInput);
//  411     }
//  412     if (hcomp->Instance == COMP1)
//  413     {
//  414       /* Open the analog switch of ADC switch matrix to COMP1 (ADC            */
//  415       /* channel 26: Vcomp)                                                   */
//  416       __HAL_RI_IOSWITCH_OPEN(RI_IOSWITCH_VCOMP);
//  417       
//  418       /* Disable the switch control mode */
//  419       __HAL_RI_SWITCHCONTROLMODE_DISABLE();
//  420     }
//  421   
//  422     
//  423     /* DeInit the low level hardware: SYSCFG, GPIO, CLOCK and NVIC */
//  424     HAL_COMP_MspDeInit(hcomp);
//  425 
//  426     hcomp->State = HAL_COMP_STATE_RESET;
//  427     
//  428     /* Process unlocked */
//  429     __HAL_UNLOCK(hcomp);
//  430   }
//  431   
//  432   return status;
//  433 }
//  434 
//  435 /**
//  436   * @brief  Initializes the COMP MSP.
//  437   * @param  hcomp: COMP handle
//  438   * @retval None
//  439   */
//  440 __weak void HAL_COMP_MspInit(COMP_HandleTypeDef *hcomp)
//  441 {
//  442   /* Prevent unused argument(s) compilation warning */
//  443   UNUSED(hcomp);
//  444 
//  445   /* NOTE : This function Should not be modified, when the callback is needed,
//  446             the HAL_COMP_MspInit could be implenetd in the user file
//  447    */
//  448 }
//  449 
//  450 /**
//  451   * @brief  DeInitializes COMP MSP.
//  452   * @param  hcomp: COMP handle
//  453   * @retval None
//  454   */
//  455 __weak void HAL_COMP_MspDeInit(COMP_HandleTypeDef *hcomp)
//  456 {
//  457   /* Prevent unused argument(s) compilation warning */
//  458   UNUSED(hcomp);
//  459 
//  460   /* NOTE : This function Should not be modified, when the callback is needed,
//  461             the HAL_COMP_MspDeInit could be implenetd in the user file
//  462    */
//  463 }
//  464 
//  465 /**
//  466   * @}
//  467   */
//  468 
//  469 /** @defgroup COMP_Exported_Functions_Group2 I/O operation functions 
//  470  *  @brief   I/O operation functions
//  471  *
//  472 @verbatim   
//  473  ===============================================================================
//  474                       ##### IO operation functions #####
//  475  ===============================================================================  
//  476     [..]
//  477     This subsection provides a set of functions allowing to manage the COMP 
//  478     start and stop actions with or without interruption on ExtI line.
//  479 
//  480 @endverbatim
//  481   * @{
//  482   */
//  483 
//  484 /**
//  485   * @brief  Start the comparator 
//  486   * @param  hcomp: COMP handle
//  487   * @retval HAL status
//  488   */
//  489 HAL_StatusTypeDef HAL_COMP_Start(COMP_HandleTypeDef *hcomp)
//  490 { 
//  491   HAL_StatusTypeDef status = HAL_OK;
//  492   uint32_t wait_loop_cycles = 0;
//  493   __IO uint32_t wait_loop_index = 0;
//  494   
//  495   /* Check the COMP handle allocation and lock status */
//  496   if((hcomp == NULL) || ((hcomp->State & COMP_STATE_BIT_LOCK) != RESET))
//  497   {
//  498     status = HAL_ERROR;
//  499   }
//  500   else
//  501   {
//  502     /* Check the parameter */
//  503     assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  504 
//  505     if(hcomp->State == HAL_COMP_STATE_READY)
//  506     {
//  507       
//  508       /* Note: For comparator 2, inverting input (parameter                   */
//  509       /*       "hcomp->Init.InvertingInput") is configured into this          */
//  510       /*       function instead of function "HAL_COMP_Init()" since           */
//  511       /*       inverting input selection also enables the comparator 2.       */
//  512       __HAL_COMP_ENABLE(hcomp);
//  513 
//  514       /* Set delay for COMP start-up time */
//  515       if (hcomp->Instance == COMP1)
//  516       {
//  517         wait_loop_cycles = COMP1_START_DELAY_CPU_CYCLES;
//  518       }
//  519       else /* if (hcomp->Instance == COMP2) */
//  520       {
//  521         wait_loop_cycles = COMP2_START_DELAY_CPU_CYCLES;
//  522       }
//  523 
//  524       /* Delay for COMP start-up time.                                         */
//  525       /* Delay fixed to worst case: maximum CPU frequency                     */
//  526       while(wait_loop_index < wait_loop_cycles)
//  527       {
//  528         wait_loop_index++;
//  529       }
//  530 
//  531       /* Update COMP state */
//  532       hcomp->State = HAL_COMP_STATE_BUSY;
//  533       
//  534     }
//  535     else
//  536     {
//  537       status = HAL_ERROR;
//  538     }
//  539   }
//  540 
//  541   return status;
//  542 }
//  543 
//  544 /**
//  545   * @brief  Stop the comparator 
//  546   * @param  hcomp: COMP handle
//  547   * @retval HAL status
//  548   */
//  549 HAL_StatusTypeDef HAL_COMP_Stop(COMP_HandleTypeDef *hcomp)
//  550 { 
//  551   HAL_StatusTypeDef status = HAL_OK;
//  552   
//  553   /* Check the COMP handle allocation and lock status */
//  554   if((hcomp == NULL) || ((hcomp->State & COMP_STATE_BIT_LOCK) != RESET))
//  555   {
//  556     status = HAL_ERROR;
//  557   }
//  558   else
//  559   {
//  560     /* Check the parameter */
//  561     assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  562 
//  563     if(hcomp->State == HAL_COMP_STATE_BUSY)
//  564     {
//  565       /* Disable the selected comparator */
//  566       __HAL_COMP_DISABLE(hcomp);
//  567       
//  568       /* Update COMP state */
//  569       hcomp->State = HAL_COMP_STATE_READY;
//  570     }
//  571     else
//  572     {
//  573       status = HAL_ERROR;
//  574     }
//  575   }
//  576   
//  577   return status;
//  578 }
//  579 
//  580 /**
//  581   * @brief  Enables the interrupt and starts the comparator
//  582   * @param  hcomp: COMP handle
//  583   * @retval HAL status.
//  584   */
//  585 HAL_StatusTypeDef HAL_COMP_Start_IT(COMP_HandleTypeDef *hcomp)
//  586 { 
//  587   HAL_StatusTypeDef status = HAL_OK; 
//  588   uint32_t extiline = 0;
//  589   
//  590   status = HAL_COMP_Start(hcomp);
//  591   if(status == HAL_OK)
//  592   {
//  593     /* Check the parameter */
//  594     assert_param(IS_COMP_TRIGGERMODE(hcomp->Init.TriggerMode));
//  595     
//  596     /* Get the Exti Line output configuration */
//  597     extiline = COMP_GET_EXTI_LINE(hcomp->Instance);
//  598     
//  599     /* Configure the trigger rising edge */
//  600     if((hcomp->Init.TriggerMode & COMP_TRIGGERMODE_IT_RISING) != RESET)
//  601     {
//  602       SET_BIT(EXTI->RTSR, extiline);
//  603     }
//  604     else
//  605     {
//  606       CLEAR_BIT(EXTI->RTSR, extiline);
//  607     }
//  608   
//  609     /* Configure the trigger falling edge */
//  610     if((hcomp->Init.TriggerMode & COMP_TRIGGERMODE_IT_FALLING) != RESET)
//  611     {
//  612       SET_BIT(EXTI->FTSR, extiline);
//  613     }
//  614     else
//  615     {
//  616       CLEAR_BIT(EXTI->FTSR, extiline);
//  617     }
//  618     
//  619     /* Clear COMP EXTI pending bit */
//  620     WRITE_REG(EXTI->PR, extiline);
//  621     
//  622     /* Enable EXTI interrupt mode */
//  623     SET_BIT(EXTI->IMR, extiline);
//  624     
//  625   }
//  626 
//  627   return status;
//  628 }
//  629 
//  630 /**
//  631   * @brief  Disable the interrupt and Stop the comparator 
//  632   * @param  hcomp: COMP handle
//  633   * @retval HAL status
//  634   */
//  635 HAL_StatusTypeDef HAL_COMP_Stop_IT(COMP_HandleTypeDef *hcomp)
//  636 { 
//  637   HAL_StatusTypeDef status = HAL_OK;
//  638   
//  639   /* Disable the EXTI Line interrupt mode */
//  640   CLEAR_BIT(EXTI->IMR, COMP_GET_EXTI_LINE(hcomp->Instance));
//  641   
//  642   status = HAL_COMP_Stop(hcomp);
//  643   
//  644   return status;
//  645 }
//  646 
//  647 /**
//  648   * @brief  Comparator IRQ Handler 
//  649   * @param  hcomp: COMP handle
//  650   * @retval HAL status
//  651   */
//  652 void HAL_COMP_IRQHandler(COMP_HandleTypeDef *hcomp)
//  653 {
//  654   uint32_t extiline = COMP_GET_EXTI_LINE(hcomp->Instance);
//  655   
//  656   /* Check COMP Exti flag */
//  657   if(READ_BIT(EXTI->PR, extiline) != RESET)
//  658   {
//  659     /* Clear COMP EXTI pending bit */
//  660     WRITE_REG(EXTI->PR, extiline);
//  661 
//  662     /* COMP trigger user callback */
//  663     HAL_COMP_TriggerCallback(hcomp);    
//  664   }
//  665 }
//  666 
//  667 /**
//  668   * @}
//  669   */
//  670 
//  671 /** @defgroup COMP_Exported_Functions_Group3 Peripheral Control functions
//  672  *  @brief   Peripheral Control functions
//  673  *
//  674 @verbatim   
//  675  ===============================================================================
//  676                       ##### Peripheral Control functions #####
//  677  ===============================================================================  
//  678     [..]
//  679     This subsection provides a set of functions allowing to control the COMP 
//  680     management functions: Lock status, comparator output level check, IRQ
//  681     callback (in case of usage of comparator with interruption on ExtI line).
//  682 
//  683 @endverbatim
//  684   * @{
//  685   */
//  686 
//  687 /**
//  688   * @brief  Lock the selected comparator configuration.
//  689   *         Caution: On STM32L1, HAL COMP lock is software lock only (not  
//  690   *         hardware lock as on some other STM32 devices)
//  691   * @param  hcomp: COMP handle
//  692   * @retval HAL status
//  693   */
//  694 HAL_StatusTypeDef HAL_COMP_Lock(COMP_HandleTypeDef *hcomp)
//  695 {
//  696   HAL_StatusTypeDef status = HAL_OK;
//  697 
//  698   /* Check the COMP handle allocation and lock status */
//  699   if((hcomp == NULL) || ((hcomp->State & COMP_STATE_BIT_LOCK) != RESET))
//  700   {
//  701     status = HAL_ERROR;
//  702   }
//  703   else
//  704   {
//  705     /* Check the parameter */
//  706     assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  707 
//  708     /* Set lock flag on state */
//  709     switch(hcomp->State)
//  710     {
//  711     case HAL_COMP_STATE_BUSY:
//  712       hcomp->State = HAL_COMP_STATE_BUSY_LOCKED;
//  713       break;
//  714     case HAL_COMP_STATE_READY:
//  715       hcomp->State = HAL_COMP_STATE_READY_LOCKED;
//  716       break;
//  717     default:
//  718       /* unexpected state */
//  719       status = HAL_ERROR;
//  720       break;
//  721     }
//  722   }
//  723   
//  724   return status; 
//  725 }
//  726 
//  727 /**
//  728   * @brief  Return the output level (high or low) of the selected comparator. 
//  729   *         The output level depends on the selected polarity.
//  730   *           - Comparator output is low when the non-inverting input is at a lower
//  731   *             voltage than the inverting input
//  732   *           - Comparator output is high when the non-inverting input is at a higher
//  733   *             voltage than the inverting input
//  734   * @param  hcomp: COMP handle
//  735   * @retval Returns the selected comparator output level: COMP_OUTPUTLEVEL_LOW or COMP_OUTPUTLEVEL_HIGH.
//  736   *       
//  737   */
//  738 uint32_t HAL_COMP_GetOutputLevel(COMP_HandleTypeDef *hcomp)
//  739 {
//  740   uint32_t level = 0;
//  741   
//  742   /* Check the parameter */
//  743   assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  744 
//  745   /* Read output level of the selected comparator */
//  746   if(READ_BIT(COMP->CSR, __COMP_CSR_CMPXOUT(hcomp)) == RESET)
//  747   {
//  748     level = COMP_OUTPUTLEVEL_LOW;
//  749   }
//  750   else
//  751   {
//  752     level = COMP_OUTPUTLEVEL_HIGH;
//  753   }
//  754   
//  755   return(level);
//  756 }
//  757 
//  758 /**
//  759   * @brief  Comparator callback.
//  760   * @param  hcomp: COMP handle
//  761   * @retval None
//  762   */
//  763 __weak void HAL_COMP_TriggerCallback(COMP_HandleTypeDef *hcomp)
//  764 {
//  765   /* Prevent unused argument(s) compilation warning */
//  766   UNUSED(hcomp);
//  767 
//  768   /* NOTE : This function should not be modified, when the callback is needed,
//  769             the HAL_COMP_TriggerCallback should be implemented in the user file
//  770    */
//  771 }
//  772 
//  773 
//  774 /**
//  775   * @}
//  776   */
//  777 
//  778 /** @defgroup COMP_Exported_Functions_Group4 Peripheral State functions 
//  779  *  @brief   Peripheral State functions
//  780  *
//  781 @verbatim   
//  782  ===============================================================================
//  783                       ##### Peripheral State functions #####
//  784  ===============================================================================  
//  785     [..]
//  786     This subsection permit to get in run-time the status of the peripheral.
//  787 
//  788 @endverbatim
//  789   * @{
//  790   */
//  791 
//  792 /**
//  793   * @brief  Return the COMP state
//  794   * @param  hcomp : COMP handle
//  795   * @retval HAL state
//  796   */
//  797 HAL_COMP_StateTypeDef HAL_COMP_GetState(COMP_HandleTypeDef *hcomp)
//  798 {
//  799   /* Check the COMP handle allocation */
//  800   if(hcomp == NULL)
//  801   {
//  802     return HAL_COMP_STATE_RESET;
//  803   }
//  804 
//  805   /* Check the parameter */
//  806   assert_param(IS_COMP_ALL_INSTANCE(hcomp->Instance));
//  807 
//  808   return hcomp->State;
//  809 }
//  810 /**
//  811   * @}
//  812   */
//  813 
//  814 /**
//  815   * @}
//  816   */
//  817 
//  818 #endif /* HAL_COMP_MODULE_ENABLED */
//  819 /**
//  820   * @}
//  821   */
//  822 
//  823 /**
//  824   * @}
//  825   */
//  826 
//  827 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none