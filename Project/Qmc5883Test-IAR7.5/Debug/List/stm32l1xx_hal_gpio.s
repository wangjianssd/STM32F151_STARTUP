///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_gpio.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_gpio.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_gpio.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_GPIO_DeInit
        PUBWEAK HAL_GPIO_EXTI_Callback
        PUBLIC HAL_GPIO_EXTI_IRQHandler
        PUBLIC HAL_GPIO_Init
        PUBLIC HAL_GPIO_LockPin
        PUBLIC HAL_GPIO_ReadPin
        PUBLIC HAL_GPIO_TogglePin
        PUBLIC HAL_GPIO_WritePin
        
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
        
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_gpio.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_gpio.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   GPIO HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the General Purpose Input/Output (GPIO) peripheral:
//   10   *           + Initialization and de-initialization functions
//   11   *           + IO operation functions
//   12   *         
//   13   @verbatim
//   14   ==============================================================================
//   15                     ##### GPIO Peripheral features #####
//   16   ==============================================================================         
//   17   [..] 
//   18   Each port bit of the general-purpose I/O (GPIO) ports can be individually 
//   19   configured by software in several modes:
//   20   (+) Input mode 
//   21   (+) Analog mode
//   22   (+) Output mode
//   23   (+) Alternate function mode
//   24   (+) External interrupt/event lines
//   25  
//   26   [..]  
//   27   During and just after reset, the alternate functions and external interrupt  
//   28   lines are not active and the I/O ports are configured in input floating mode.
//   29   
//   30   [..]   
//   31   All GPIO pins have weak internal pull-up and pull-down resistors, which can be 
//   32   activated or not.
//   33 
//   34   [..]
//   35   In Output or Alternate mode, each IO can be configured on open-drain or push-pull
//   36   type and the IO speed can be selected depending on the VDD value.
//   37   
//   38   [..]
//   39   The microcontroller IO pins are connected to onboard peripherals/modules through a 
//   40   multiplexer that allows only one peripheral s alternate function (AF) connected 
//   41   to an IO pin at a time. In this way, there can be no conflict between peripherals 
//   42   sharing the same IO pin. 
//   43   
//   44   [..]  
//   45   All ports have external interrupt/event capability. To use external interrupt 
//   46   lines, the port must be configured in input mode. All available GPIO pins are 
//   47   connected to the 16 external interrupt/event lines from EXTI0 to EXTI15.
//   48   
//   49   [..]  
//   50   The external interrupt/event controller consists of up to 28 edge detectors 
//   51   (depending on products 16 lines are connected to GPIO) for generating event/interrupt
//   52   requests (each input line can be independently configured to select the type 
//   53   (interrupt or event) and the corresponding trigger event (rising or falling or both). 
//   54   Each line can also be masked independently. 
//   55    
//   56             ##### How to use this driver #####
//   57   ==============================================================================  
//   58   [..]
//   59    (#) Enable the GPIO AHB clock using the following function : __GPIOx_CLK_ENABLE(). 
//   60                                     
//   61    (#) Configure the GPIO pin(s) using HAL_GPIO_Init().
//   62        (++) Configure the IO mode using "Mode" member from GPIO_InitTypeDef structure
//   63        (++) Activate Pull-up, Pull-down resistor using "Pull" member from GPIO_InitTypeDef 
//   64             structure.
//   65        (++) In case of Output or alternate function mode selection: the speed is 
//   66             configured through "Speed" member from GPIO_InitTypeDef structure, 
//   67             the speed is configurable: Low, Medium and High.
//   68        (++) If alternate mode is selected, the alternate function connected to the IO
//   69             is configured through "Alternate" member from GPIO_InitTypeDef structure
//   70        (++) Analog mode is required when a pin is to be used as ADC channel 
//   71             or DAC output.
//   72        (++) In case of external interrupt/event selection the "Mode" member from 
//   73             GPIO_InitTypeDef structure select the type (interrupt or event) and 
//   74             the corresponding trigger event (rising or falling or both).
//   75   
//   76    (#) In case of external interrupt/event mode selection, configure NVIC IRQ priority 
//   77        mapped to the EXTI line using HAL_NVIC_SetPriority() and enable it using
//   78        HAL_NVIC_EnableIRQ().
//   79   
//   80    (#) HAL_GPIO_DeInit allows to set register values to their reset value. It's also 
//   81        recommended to use it to unconfigure pin which was used as an external interrupt 
//   82        or in event mode. That's the only way to reset corresponding bit in EXTI & SYSCFG 
//   83        registers.
//   84   
//   85    (#) To get the level of a pin configured in input mode use HAL_GPIO_ReadPin().
//   86   
//   87    (#) To set/reset the level of a pin configured in output mode use 
//   88        HAL_GPIO_WritePin()/HAL_GPIO_TogglePin().
//   89   
//   90    (#) To lock pin configuration until next reset use HAL_GPIO_LockPin().
//   91   
//   92    (#) During and just after reset, the alternate functions are not 
//   93        active and the GPIO pins are configured in input floating mode (except JTAG
//   94        pins).
//   95   
//   96    (#) The LSE oscillator pins OSC32_IN and OSC32_OUT can be used as general purpose 
//   97        (PC14 and PC15, respectively) when the LSE oscillator is off. The LSE has 
//   98        priority over the GPIO function.
//   99   
//  100    (#) The HSE oscillator pins OSC_IN/OSC_OUT can be used as 
//  101        general purpose PH0 and PH1, respectively, when the HSE oscillator is off. 
//  102        The HSE has priority over the GPIO function.
//  103   
//  104   @endverbatim
//  105   ******************************************************************************
//  106   * @attention
//  107   *
//  108   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  109   *
//  110   * Redistribution and use in source and binary forms, with or without modification,
//  111   * are permitted provided that the following conditions are met:
//  112   *   1. Redistributions of source code must retain the above copyright notice,
//  113   *      this list of conditions and the following disclaimer.
//  114   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  115   *      this list of conditions and the following disclaimer in the documentation
//  116   *      and/or other materials provided with the distribution.
//  117   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  118   *      may be used to endorse or promote products derived from this software
//  119   *      without specific prior written permission.
//  120   *
//  121   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  122   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  123   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  124   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  125   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  126   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  127   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  128   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  129   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  130   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  131   *
//  132   ******************************************************************************  
//  133   */
//  134 
//  135 /* Includes ------------------------------------------------------------------*/
//  136 #include "stm32l1xx_hal.h"
//  137 
//  138 /** @addtogroup STM32L1xx_HAL_Driver
//  139   * @{
//  140   */
//  141 
//  142 /** @addtogroup GPIO
//  143   * @brief GPIO HAL module driver
//  144   * @{
//  145   */
//  146 
//  147 #ifdef HAL_GPIO_MODULE_ENABLED
//  148 
//  149 /* Private typedef -----------------------------------------------------------*/
//  150 /* Private define ------------------------------------------------------------*/
//  151 /** @addtogroup GPIO_Private_Constants
//  152   * @{
//  153   */
//  154 #define GPIO_MODE             ((uint32_t)0x00000003)
//  155 #define EXTI_MODE             ((uint32_t)0x10000000)
//  156 #define GPIO_MODE_IT          ((uint32_t)0x00010000)
//  157 #define GPIO_MODE_EVT         ((uint32_t)0x00020000)
//  158 #define RISING_EDGE           ((uint32_t)0x00100000)
//  159 #define FALLING_EDGE          ((uint32_t)0x00200000)
//  160 #define GPIO_OUTPUT_TYPE      ((uint32_t)0x00000010)
//  161 
//  162 #define GPIO_NUMBER           ((uint32_t)16)
//  163  
//  164 /**
//  165   * @}
//  166   */
//  167   
//  168 /* Private macro -------------------------------------------------------------*/
//  169 /* Private variables ---------------------------------------------------------*/
//  170 /* Private function prototypes -----------------------------------------------*/
//  171 /* Exported functions ---------------------------------------------------------*/
//  172 
//  173 /** @addtogroup GPIO_Exported_Functions
//  174   * @{
//  175   */
//  176 
//  177 /** @addtogroup GPIO_Exported_Functions_Group1
//  178  *  @brief    Initialization and Configuration functions 
//  179  *
//  180 @verbatim    
//  181  ===============================================================================
//  182               ##### Initialization and Configuration functions #####
//  183  ===============================================================================
//  184  
//  185 @endverbatim
//  186   * @{
//  187   */
//  188 
//  189 /**
//  190   * @brief  Initializes the GPIOx peripheral according to the specified parameters in the GPIO_Init.
//  191   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices
//  192   * @param  GPIO_Init: pointer to a GPIO_InitTypeDef structure that contains
//  193   *         the configuration information for the specified GPIO peripheral.
//  194   * @retval None
//  195   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_GPIO_Init
          CFI NoCalls
        THUMB
//  196 void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
//  197 { 
HAL_GPIO_Init:
        PUSH     {R3-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  198   uint32_t position = 0x00;
        MOVS     R2,#+0
//  199   uint32_t iocurrent = 0x00;
        MOVS     R3,#+0
//  200   uint32_t temp = 0x00;
        MOVS     R4,#+0
//  201 
//  202   /* Check the parameters */
//  203   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  204   assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
//  205   assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
//  206   assert_param(IS_GPIO_PULL(GPIO_Init->Pull)); 
        B.N      ??HAL_GPIO_Init_0
//  207 
//  208   /* Configure the port pins */
//  209   while (((GPIO_Init->Pin) >> position) != 0)
//  210   {
//  211     /* Get current io position */
//  212     iocurrent = (GPIO_Init->Pin) & ((uint32_t)1 << position);
//  213     
//  214     if(iocurrent)
//  215     {
//  216       /*--------------------- GPIO Mode Configuration ------------------------*/
//  217       /* In case of Alternate function mode selection */
//  218       if((GPIO_Init->Mode == GPIO_MODE_AF_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_OD)) 
//  219       {
//  220         /* Check the Alternate function parameters */
//  221         assert_param(IS_GPIO_AF_INSTANCE(GPIOx));
//  222         assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
//  223         
//  224         /* Configure Alternate function mapped with the current IO */ 
//  225         /* Identify AFRL or AFRH register based on IO position*/
//  226         temp = GPIOx->AFR[position >> 3];
//  227         CLEAR_BIT(temp, (uint32_t)0xF << ((uint32_t)(position & (uint32_t)0x07) * 4)) ;      
//  228         SET_BIT(temp, (uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & (uint32_t)0x07) * 4));       
//  229         GPIOx->AFR[position >> 3] = temp;
//  230       }
//  231 
//  232       /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
//  233       temp = GPIOx->MODER;
//  234       CLEAR_BIT(temp, GPIO_MODER_MODER0 << (position * 2));   
//  235       SET_BIT(temp, (GPIO_Init->Mode & GPIO_MODE) << (position * 2));
//  236       GPIOx->MODER = temp;
//  237 
//  238       /* In case of Output or Alternate function mode selection */
//  239       if ((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
//  240           (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
//  241       {
//  242         /* Check the Speed parameter */
//  243         assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
//  244         /* Configure the IO Speed */
//  245         temp = GPIOx->OSPEEDR; 
//  246         CLEAR_BIT(temp, GPIO_OSPEEDER_OSPEEDR0 << (position * 2));
//  247         SET_BIT(temp, GPIO_Init->Speed << (position * 2));
//  248         GPIOx->OSPEEDR = temp;
//  249 
//  250         /* Configure the IO Output Type */
//  251         temp = GPIOx->OTYPER;
//  252         CLEAR_BIT(temp, GPIO_OTYPER_OT_0 << position) ;
//  253         SET_BIT(temp, ((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
//  254         GPIOx->OTYPER = temp;
//  255       }
//  256 
//  257       /* Activate the Pull-up or Pull down resistor for the current IO */
//  258       temp = GPIOx->PUPDR;
//  259       CLEAR_BIT(temp, GPIO_PUPDR_PUPDR0 << (position * 2));
//  260       SET_BIT(temp, (GPIO_Init->Pull) << (position * 2));
//  261       GPIOx->PUPDR = temp;
//  262 
//  263       /*--------------------- EXTI Mode Configuration ------------------------*/
//  264       /* Configure the External Interrupt or event for the current IO */
//  265       if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE) 
//  266       {
//  267         /* Enable SYSCFG Clock */
//  268         __HAL_RCC_SYSCFG_CLK_ENABLE();
//  269         
//  270         temp = SYSCFG->EXTICR[position >> 2];
//  271         CLEAR_BIT(temp, ((uint32_t)0x0F) << (4 * (position & 0x03)));
//  272         SET_BIT(temp, (GPIO_GET_INDEX(GPIOx)) << (4 * (position & 0x03)));
??HAL_GPIO_Init_1:
        MOVS     R5,#+7
??HAL_GPIO_Init_2:
        ANDS     R6,R2,#0x3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        ORRS     R4,R5,R4
//  273         SYSCFG->EXTICR[position >> 2] = temp;
        LDR.W    R5,??DataTable2  ;; 0x40010008
        LSRS     R6,R2,#+2
        STR      R4,[R5, R6, LSL #+2]
//  274                   
//  275         /* Clear EXTI line configuration */
//  276         temp = EXTI->IMR;
        LDR.W    R4,??DataTable2_1  ;; 0x40010400
        LDR      R4,[R4, #+0]
//  277         CLEAR_BIT(temp, (uint32_t)iocurrent);
        BICS     R4,R4,R3
//  278         if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+15
        BPL.N    ??HAL_GPIO_Init_3
//  279         {
//  280           SET_BIT(temp, iocurrent); 
        ORRS     R4,R3,R4
//  281         }
//  282         EXTI->IMR = temp;
??HAL_GPIO_Init_3:
        LDR.W    R5,??DataTable2_1  ;; 0x40010400
        STR      R4,[R5, #+0]
//  283 
//  284         temp = EXTI->EMR;
        LDR.N    R4,??DataTable2_2  ;; 0x40010404
        LDR      R4,[R4, #+0]
//  285         CLEAR_BIT(temp, (uint32_t)iocurrent);      
        BICS     R4,R4,R3
//  286         if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+14
        BPL.N    ??HAL_GPIO_Init_4
//  287         {
//  288           SET_BIT(temp, iocurrent); 
        ORRS     R4,R3,R4
//  289         }
//  290         EXTI->EMR = temp;
??HAL_GPIO_Init_4:
        LDR.N    R5,??DataTable2_2  ;; 0x40010404
        STR      R4,[R5, #+0]
//  291   
//  292         /* Clear Rising Falling edge configuration */
//  293         temp = EXTI->RTSR;
        LDR.N    R4,??DataTable2_3  ;; 0x40010408
        LDR      R4,[R4, #+0]
//  294         CLEAR_BIT(temp, (uint32_t)iocurrent); 
        BICS     R4,R4,R3
//  295         if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+11
        BPL.N    ??HAL_GPIO_Init_5
//  296         {
//  297           SET_BIT(temp, iocurrent); 
        ORRS     R4,R3,R4
//  298         }
//  299         EXTI->RTSR = temp;
??HAL_GPIO_Init_5:
        LDR.N    R5,??DataTable2_3  ;; 0x40010408
        STR      R4,[R5, #+0]
//  300 
//  301         temp = EXTI->FTSR;
        LDR.N    R4,??DataTable2_4  ;; 0x4001040c
        LDR      R4,[R4, #+0]
//  302         CLEAR_BIT(temp, (uint32_t)iocurrent); 
        BICS     R4,R4,R3
//  303         if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+10
        BPL.N    ??HAL_GPIO_Init_6
//  304         {
//  305           SET_BIT(temp, iocurrent); 
        ORRS     R4,R3,R4
//  306         }
//  307         EXTI->FTSR = temp;
??HAL_GPIO_Init_6:
        LDR.N    R3,??DataTable2_4  ;; 0x4001040c
        STR      R4,[R3, #+0]
//  308       }
//  309     }
//  310     
//  311     position++;
??HAL_GPIO_Init_7:
        ADDS     R2,R2,#+1
??HAL_GPIO_Init_0:
        LDR      R3,[R1, #+0]
        LSRS     R3,R3,R2
        CMP      R3,#+0
        BEQ.W    ??HAL_GPIO_Init_8
        LDR      R3,[R1, #+0]
        MOVS     R4,#+1
        LSLS     R4,R4,R2
        ANDS     R3,R4,R3
        CMP      R3,#+0
        BEQ.N    ??HAL_GPIO_Init_7
        LDR      R4,[R1, #+4]
        CMP      R4,#+2
        BEQ.N    ??HAL_GPIO_Init_9
        LDR      R4,[R1, #+4]
        CMP      R4,#+18
        BNE.N    ??HAL_GPIO_Init_10
??HAL_GPIO_Init_9:
        LSRS     R4,R2,#+3
        ADDS     R4,R0,R4, LSL #+2
        LDR      R4,[R4, #+32]
        MOVS     R5,#+15
        ANDS     R6,R2,#0x7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        LDR      R5,[R1, #+16]
        ANDS     R6,R2,#0x7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        ORRS     R4,R5,R4
        LSRS     R5,R2,#+3
        ADDS     R5,R0,R5, LSL #+2
        STR      R4,[R5, #+32]
??HAL_GPIO_Init_10:
        LDR      R4,[R0, #+0]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        LDRB     R5,[R1, #+4]
        ANDS     R5,R5,#0x3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        ORRS     R4,R5,R4
        STR      R4,[R0, #+0]
        LDR      R4,[R1, #+4]
        CMP      R4,#+1
        BEQ.N    ??HAL_GPIO_Init_11
        LDR      R4,[R1, #+4]
        CMP      R4,#+2
        BEQ.N    ??HAL_GPIO_Init_11
        LDR      R4,[R1, #+4]
        CMP      R4,#+17
        BEQ.N    ??HAL_GPIO_Init_11
        LDR      R4,[R1, #+4]
        CMP      R4,#+18
        BNE.N    ??HAL_GPIO_Init_12
??HAL_GPIO_Init_11:
        LDR      R4,[R0, #+8]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        LDR      R5,[R1, #+12]
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        ORRS     R4,R5,R4
        STR      R4,[R0, #+8]
        LDR      R4,[R0, #+4]
        MOVS     R5,#+1
        LSLS     R5,R5,R2
        BICS     R4,R4,R5
        LDR      R5,[R1, #+4]
        UBFX     R5,R5,#+4,#+1
        LSLS     R5,R5,R2
        ORRS     R4,R5,R4
        STR      R4,[R0, #+4]
??HAL_GPIO_Init_12:
        LDR      R4,[R0, #+12]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        LDR      R5,[R1, #+8]
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        ORRS     R4,R5,R4
        STR      R4,[R0, #+12]
        LDR      R4,[R1, #+4]
        LSLS     R4,R4,#+3
        BPL.N    ??HAL_GPIO_Init_7
        LDR.N    R4,??DataTable2_5  ;; 0x40023820
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x1
        LDR.N    R5,??DataTable2_5  ;; 0x40023820
        STR      R4,[R5, #+0]
        LDR.N    R4,??DataTable2_5  ;; 0x40023820
        LDR      R4,[R4, #+0]
        ANDS     R4,R4,#0x1
        STR      R4,[SP, #+0]
        LDR      R4,[SP, #+0]
        LDR.N    R4,??DataTable2  ;; 0x40010008
        LSRS     R5,R2,#+2
        LDR      R4,[R4, R5, LSL #+2]
        MOVS     R5,#+15
        ANDS     R6,R2,#0x3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        LDR.N    R5,??DataTable2_6  ;; 0x40020000
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_13
        MOVS     R5,#+0
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_13:
        LDR.N    R5,??DataTable2_7  ;; 0x40020400
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_14
        MOVS     R5,#+1
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_14:
        LDR.N    R5,??DataTable2_8  ;; 0x40020800
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_15
        MOVS     R5,#+2
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_15:
        LDR.N    R5,??DataTable2_9  ;; 0x40020c00
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_16
        MOVS     R5,#+3
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_16:
        LDR.N    R5,??DataTable2_10  ;; 0x40021000
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_17
        MOVS     R5,#+4
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_17:
        LDR.N    R5,??DataTable2_11  ;; 0x40021400
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_Init_18
        MOVS     R5,#+5
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_18:
        LDR.N    R5,??DataTable2_12  ;; 0x40021800
        CMP      R0,R5
        BNE.W    ??HAL_GPIO_Init_1
        MOVS     R5,#+6
        B.N      ??HAL_GPIO_Init_2
//  312   } 
//  313 }
??HAL_GPIO_Init_8:
        POP      {R0,R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  314 
//  315 /**
//  316   * @brief  De-initializes the GPIOx peripheral registers to their default reset values.
//  317   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices
//  318   * @param  GPIO_Pin: specifies the port bit to be written.
//  319   *         This parameter can be one of GPIO_PIN_x where x can be (0..15).
//  320   * @retval None
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_GPIO_DeInit
          CFI NoCalls
        THUMB
//  322 void HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
//  323 {
HAL_GPIO_DeInit:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  324   uint32_t position = 0x00;
        MOVS     R2,#+0
//  325   uint32_t iocurrent = 0x00;
        MOVS     R3,#+0
//  326   uint32_t tmp = 0x00;
        MOVS     R4,#+0
//  327 
//  328   /* Check the parameters */
//  329   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  330   assert_param(IS_GPIO_PIN(GPIO_Pin));
        B.N      ??HAL_GPIO_DeInit_0
//  331 
//  332   /* Configure the port pins */
//  333   while ((GPIO_Pin >> position) != 0)
//  334   {
//  335     /* Get current io position */
//  336     iocurrent = (GPIO_Pin) & ((uint32_t)1 << position);
//  337 
//  338     if (iocurrent)
//  339     {
//  340       /*------------------------- GPIO Mode Configuration --------------------*/
//  341       /* Configure IO Direction in Input Floting Mode */
//  342       CLEAR_BIT(GPIOx->MODER, GPIO_MODER_MODER0 << (position * 2)); 
//  343   
//  344       /* Configure the default Alternate Function in current IO */ 
//  345       CLEAR_BIT(GPIOx->AFR[position >> 3], (uint32_t)0xF << ((uint32_t)(position & (uint32_t)0x07) * 4)) ;
//  346   
//  347       /* Configure the default value for IO Speed */
//  348       CLEAR_BIT(GPIOx->OSPEEDR, GPIO_OSPEEDER_OSPEEDR0 << (position * 2));
//  349                   
//  350       /* Configure the default value IO Output Type */
//  351       CLEAR_BIT(GPIOx->OTYPER, GPIO_OTYPER_OT_0 << position) ;
//  352   
//  353       /* Deactivate the Pull-up oand Pull-down resistor for the current IO */
//  354       CLEAR_BIT(GPIOx->PUPDR, GPIO_PUPDR_PUPDR0 << (position * 2));
//  355 
//  356       /*------------------------- EXTI Mode Configuration --------------------*/
//  357       /* Clear the External Interrupt or Event for the current IO */
//  358       
//  359       tmp = SYSCFG->EXTICR[position >> 2];
//  360       tmp &= (((uint32_t)0x0F) << (4 * (position & 0x03)));
//  361       if(tmp == (GPIO_GET_INDEX(GPIOx) << (4 * (position & 0x03))))
??HAL_GPIO_DeInit_1:
        MOVS     R5,#+7
??HAL_GPIO_DeInit_2:
        ANDS     R6,R2,#0x3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        CMP      R4,R5
        BNE.N    ??HAL_GPIO_DeInit_3
//  362       {
//  363         tmp = ((uint32_t)0x0F) << (4 * (position & 0x03));
        MOVS     R4,#+15
        ANDS     R5,R2,#0x3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R5,R5,#+2
        LSLS     R4,R4,R5
//  364         CLEAR_BIT(SYSCFG->EXTICR[position >> 2], tmp);
        LDR.N    R5,??DataTable2  ;; 0x40010008
        LSRS     R6,R2,#+2
        LDR      R5,[R5, R6, LSL #+2]
        BICS     R4,R5,R4
        LDR.N    R5,??DataTable2  ;; 0x40010008
        LSRS     R6,R2,#+2
        STR      R4,[R5, R6, LSL #+2]
//  365         
//  366         /* Clear EXTI line configuration */
//  367         CLEAR_BIT(EXTI->IMR, (uint32_t)iocurrent);
        LDR.N    R4,??DataTable2_1  ;; 0x40010400
        LDR      R4,[R4, #+0]
        BICS     R4,R4,R3
        LDR.N    R5,??DataTable2_1  ;; 0x40010400
        STR      R4,[R5, #+0]
//  368         CLEAR_BIT(EXTI->EMR, (uint32_t)iocurrent);
        LDR.N    R4,??DataTable2_2  ;; 0x40010404
        LDR      R4,[R4, #+0]
        BICS     R4,R4,R3
        LDR.N    R5,??DataTable2_2  ;; 0x40010404
        STR      R4,[R5, #+0]
//  369         
//  370         /* Clear Rising Falling edge configuration */
//  371         CLEAR_BIT(EXTI->RTSR, (uint32_t)iocurrent);
        LDR.N    R4,??DataTable2_3  ;; 0x40010408
        LDR      R4,[R4, #+0]
        BICS     R4,R4,R3
        LDR.N    R5,??DataTable2_3  ;; 0x40010408
        STR      R4,[R5, #+0]
//  372         CLEAR_BIT(EXTI->FTSR, (uint32_t)iocurrent);
        LDR.N    R4,??DataTable2_4  ;; 0x4001040c
        LDR      R4,[R4, #+0]
        BICS     R3,R4,R3
        LDR.N    R4,??DataTable2_4  ;; 0x4001040c
        STR      R3,[R4, #+0]
//  373       }
//  374     }
//  375     
//  376     position++;
??HAL_GPIO_DeInit_3:
        ADDS     R2,R2,#+1
??HAL_GPIO_DeInit_0:
        MOVS     R3,R1
        LSRS     R3,R3,R2
        CMP      R3,#+0
        BEQ.N    ??HAL_GPIO_DeInit_4
        MOVS     R3,#+1
        LSLS     R3,R3,R2
        ANDS     R3,R3,R1
        CMP      R3,#+0
        BEQ.N    ??HAL_GPIO_DeInit_3
        LDR      R4,[R0, #+0]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        STR      R4,[R0, #+0]
        LSRS     R4,R2,#+3
        ADDS     R4,R0,R4, LSL #+2
        LSRS     R5,R2,#+3
        ADDS     R5,R0,R5, LSL #+2
        LDR      R5,[R5, #+32]
        MOVS     R6,#+15
        ANDS     R7,R2,#0x7
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R7,R7,#+2
        LSLS     R6,R6,R7
        BICS     R5,R5,R6
        STR      R5,[R4, #+32]
        LDR      R4,[R0, #+8]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        STR      R4,[R0, #+8]
        LDR      R4,[R0, #+4]
        MOVS     R5,#+1
        LSLS     R5,R5,R2
        BICS     R4,R4,R5
        STR      R4,[R0, #+4]
        LDR      R4,[R0, #+12]
        MOVS     R5,#+3
        MOVS     R6,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+1
        LSLS     R5,R5,R6
        BICS     R4,R4,R5
        STR      R4,[R0, #+12]
        LDR.N    R4,??DataTable2  ;; 0x40010008
        LSRS     R5,R2,#+2
        LDR      R4,[R4, R5, LSL #+2]
        MOVS     R5,#+15
        ANDS     R6,R2,#0x3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+2
        LSLS     R5,R5,R6
        ANDS     R4,R5,R4
        LDR.N    R5,??DataTable2_6  ;; 0x40020000
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_5
        MOVS     R5,#+0
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_5:
        LDR.N    R5,??DataTable2_7  ;; 0x40020400
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_6
        MOVS     R5,#+1
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_6:
        LDR.N    R5,??DataTable2_8  ;; 0x40020800
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_7
        MOVS     R5,#+2
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_7:
        LDR.N    R5,??DataTable2_9  ;; 0x40020c00
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_8
        MOVS     R5,#+3
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_8:
        LDR.N    R5,??DataTable2_10  ;; 0x40021000
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_9
        MOVS     R5,#+4
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_9:
        LDR.N    R5,??DataTable2_11  ;; 0x40021400
        CMP      R0,R5
        BNE.N    ??HAL_GPIO_DeInit_10
        MOVS     R5,#+5
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_10:
        LDR.N    R5,??DataTable2_12  ;; 0x40021800
        CMP      R0,R5
        BNE.W    ??HAL_GPIO_DeInit_1
        MOVS     R5,#+6
        B.N      ??HAL_GPIO_DeInit_2
//  377   }
//  378 }
??HAL_GPIO_DeInit_4:
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  379 
//  380 /**
//  381   * @}
//  382   */
//  383 
//  384 /** @addtogroup GPIO_Exported_Functions_Group2
//  385  *  @brief GPIO Read, Write, Toggle, Lock and EXTI management functions.
//  386  *
//  387 @verbatim   
//  388  ===============================================================================
//  389                        ##### IO operation functions #####
//  390  ===============================================================================  
//  391 
//  392 @endverbatim
//  393   * @{
//  394   */
//  395 
//  396 /**
//  397   * @brief  Reads the specified input port pin.
//  398   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices 
//  399   * @param  GPIO_Pin: specifies the port bit to read.
//  400   *         This parameter can be GPIO_PIN_x where x can be (0..15).
//  401   * @retval The input port pin value.
//  402   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_GPIO_ReadPin
          CFI NoCalls
        THUMB
//  403 GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  404 {
//  405   GPIO_PinState bitstatus;
//  406 
//  407   /* Check the parameters */
//  408   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  409 
//  410   if ((GPIOx->IDR & GPIO_Pin) != (uint32_t)GPIO_PIN_RESET)
HAL_GPIO_ReadPin:
        LDR      R0,[R0, #+16]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        TST      R0,R1
        BEQ.N    ??HAL_GPIO_ReadPin_0
//  411   {
//  412     bitstatus = GPIO_PIN_SET;
        MOVS     R0,#+1
        B.N      ??HAL_GPIO_ReadPin_1
//  413   }
//  414   else
//  415   {
//  416     bitstatus = GPIO_PIN_RESET;
??HAL_GPIO_ReadPin_0:
        MOVS     R0,#+0
//  417   }
//  418   return bitstatus;
??HAL_GPIO_ReadPin_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  419 }
          CFI EndBlock cfiBlock2
//  420 
//  421 /**
//  422   * @brief  Sets or clears the selected data port bit.
//  423   * @note   This function uses GPIOx_BSRR register to allow atomic read/modify 
//  424   *         accesses. In this way, there is no risk of an IRQ occurring between
//  425   *         the read and the modify access.
//  426   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices
//  427   * @param  GPIO_Pin: specifies the port bit to be written.
//  428   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
//  429   * @param  PinState: specifies the value to be written to the selected bit.
//  430   *          This parameter can be one of the GPIO_PinState enum values:
//  431   *            @arg GPIO_PIN_RESET: to clear the port pin
//  432   *            @arg GPIO_PIN_SET: to set the port pin
//  433   * @retval None
//  434   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_GPIO_WritePin
          CFI NoCalls
        THUMB
//  435 void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
//  436 {
//  437   /* Check the parameters */
//  438   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  439   assert_param(IS_GPIO_PIN_ACTION(PinState));
//  440 
//  441   if (PinState != GPIO_PIN_RESET)
HAL_GPIO_WritePin:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??HAL_GPIO_WritePin_0
//  442   {
//  443     GPIOx->BSRR = (uint32_t)GPIO_Pin;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+24]
        B.N      ??HAL_GPIO_WritePin_1
//  444   }
//  445   else
//  446   {
//  447     GPIOx->BSRR = (uint32_t)GPIO_Pin << 16 ;
??HAL_GPIO_WritePin_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R1,R1,#+16
        STR      R1,[R0, #+24]
//  448   }
//  449 }
??HAL_GPIO_WritePin_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  450   
//  451 /**
//  452   * @brief  Toggles the specified GPIO pin
//  453   * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices 
//  454   * @param  GPIO_Pin: specifies the pins to be toggled.
//  455   * @retval None
//  456   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_GPIO_TogglePin
          CFI NoCalls
        THUMB
//  457 void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  458 {
//  459   /* Check the parameters */
//  460   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  461 
//  462   GPIOx->ODR ^= GPIO_Pin;
HAL_GPIO_TogglePin:
        LDR      R2,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        EORS     R1,R1,R2
        STR      R1,[R0, #+20]
//  463 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  464 
//  465 /**
//  466 * @brief  Locks GPIO Pins configuration registers.
//  467 * @note   The locked registers are GPIOx_MODER, GPIOx_OTYPER, GPIOx_OSPEEDR,
//  468 *         GPIOx_PUPDR, GPIOx_AFRL and GPIOx_AFRH.
//  469 * @note   The configuration of the locked GPIO pins can no longer be modified
//  470 *         until the next reset.
//  471 * @note   Limitation concerning GPIOx_OTYPER: Locking of GPIOx_OTYPER[i] with i = 15..8
//  472 *         depends from setting of GPIOx_LCKR[i-8] and not from GPIOx_LCKR[i].
//  473 *         GPIOx_LCKR[i-8] is locking GPIOx_OTYPER[i] together with GPIOx_OTYPER[i-8].
//  474 *         It is not possible to lock GPIOx_OTYPER[i] with i = 15..8, without locking also
//  475 *         GPIOx_OTYPER[i-8].
//  476 *         Workaround: When calling HAL_GPIO_LockPin with GPIO_Pin from GPIO_PIN_8 to GPIO_PIN_15,
//  477 *         you must call also HAL_GPIO_LockPin with GPIO_Pin - 8. 
//  478 *         (When locking a pin from GPIO_PIN_8 to GPIO_PIN_15, you must lock also the corresponding 
//  479 *         GPIO_PIN_0 to GPIO_PIN_7).
//  480 * @param  GPIOx: where x can be (A..G depending on device used) to select the GPIO peripheral for STM32L1XX family devices 
//  481 * @param  GPIO_Pin: Specifies the port bit to be locked.
//  482 *         This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
//  483 * @retval None
//  484 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_GPIO_LockPin
          CFI NoCalls
        THUMB
//  485 HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  486 {
HAL_GPIO_LockPin:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  487   __IO uint32_t tmp = GPIO_LCKR_LCKK;
        MOVS     R2,#+65536
        STR      R2,[SP, #+0]
//  488 
//  489   /* Check the parameters */
//  490   assert_param(IS_GPIO_LOCK_INSTANCE(GPIOx));
//  491   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  492 
//  493   /* Apply lock key write sequence */
//  494   SET_BIT(tmp, GPIO_Pin);
        LDR      R2,[SP, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R2,R1,R2
        STR      R2,[SP, #+0]
//  495   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
//  496   GPIOx->LCKR = tmp;
        LDR      R2,[SP, #+0]
        STR      R2,[R0, #+28]
//  497   /* Reset LCKx bit(s): LCKK='0' + LCK[15-0] */
//  498   GPIOx->LCKR = GPIO_Pin;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+28]
//  499   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
//  500   GPIOx->LCKR = tmp;
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+28]
//  501   /* Read LCKK bit*/
//  502   tmp = GPIOx->LCKR;
        LDR      R1,[R0, #+28]
        STR      R1,[SP, #+0]
//  503 
//  504   if((GPIOx->LCKR & GPIO_LCKR_LCKK) != RESET)
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+15
        BPL.N    ??HAL_GPIO_LockPin_0
//  505   {
//  506     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_GPIO_LockPin_1
//  507   }
//  508   else
//  509   {
//  510     return HAL_ERROR;
??HAL_GPIO_LockPin_0:
        MOVS     R0,#+1
??HAL_GPIO_LockPin_1:
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
//  511   }
//  512 }
          CFI EndBlock cfiBlock5
//  513 
//  514 /**
//  515   * @brief  This function handles EXTI interrupt request.
//  516   * @param  GPIO_Pin: Specifies the port pin connected to corresponding EXTI line.
//  517   * @retval None
//  518   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_GPIO_EXTI_IRQHandler
        THUMB
//  519 void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin)
//  520 {
HAL_GPIO_EXTI_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  521   /* EXTI line interrupt detected */
//  522   if(__HAL_GPIO_EXTI_GET_IT(GPIO_Pin) != RESET) 
        LDR.N    R1,??DataTable2_13  ;; 0x40010414
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R1,R0
        BEQ.N    ??HAL_GPIO_EXTI_IRQHandler_0
//  523   { 
//  524     __HAL_GPIO_EXTI_CLEAR_IT(GPIO_Pin);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable2_13  ;; 0x40010414
        STR      R0,[R1, #+0]
//  525     HAL_GPIO_EXTI_Callback(GPIO_Pin);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall HAL_GPIO_EXTI_Callback
        BL       HAL_GPIO_EXTI_Callback
//  526   }
//  527 }
??HAL_GPIO_EXTI_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40010008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x40010404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40010408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x4001040c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40023820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x40020800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x40020c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40021400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x40010414
//  528 
//  529 /**
//  530   * @brief  EXTI line detection callbacks.
//  531   * @param  GPIO_Pin: Specifies the port pin connected to corresponding EXTI line.
//  532   * @retval None
//  533   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_GPIO_EXTI_Callback
          CFI NoCalls
        THUMB
//  534 __weak void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//  535 {
//  536   /* Prevent unused argument(s) compilation warning */
//  537   UNUSED(GPIO_Pin);
//  538 
//  539   /* NOTE : This function Should not be modified, when the callback is needed,
//  540             the HAL_GPIO_EXTI_Callback could be implemented in the user file
//  541    */ 
//  542 }
HAL_GPIO_EXTI_Callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  543 
//  544 /**
//  545   * @}
//  546   */
//  547 
//  548 
//  549 /**
//  550   * @}
//  551   */
//  552 
//  553 #endif /* HAL_GPIO_MODULE_ENABLED */
//  554 /**
//  555   * @}
//  556   */
//  557 
//  558 /**
//  559   * @}
//  560   */
//  561 
//  562 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
// 936 bytes in section .text
// 
// 936 bytes of CODE memory
//
//Errors: none
//Warnings: none
