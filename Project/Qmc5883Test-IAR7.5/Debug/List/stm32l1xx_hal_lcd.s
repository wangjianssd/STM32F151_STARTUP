///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_lcd.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_lcd.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_lcd.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_lcd.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_lcd.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   LCD Controller HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the LCD Controller (LCD) peripheral:
//   10   *           + Initialization/de-initialization methods
//   11   *           + I/O operation methods
//   12   *           + Peripheral State methods
//   13   *           
//   14   @verbatim
//   15   ==============================================================================
//   16                         ##### How to use this driver #####
//   17   ==============================================================================   
//   18       [..] The LCD HAL driver can be used as follows:
//   19     
//   20       (#) Declare a LCD_HandleTypeDef handle structure.
//   21 
//   22       (#) Initialize the LCD low level resources by implement the HAL_LCD_MspInit() API:
//   23           (##) Enable the LCDCLK (same as RTCCLK): to configure the RTCCLK/LCDCLK, proceed as follows:
//   24                (+++) Use RCC function HAL_RCCEx_PeriphCLKConfig in indicating RCC_PERIPHCLK_LCD and 
//   25                      selected clock source (HSE, LSI or LSE)
//   26                (+++) The frequency generator allows you to achieve various LCD frame rates 
//   27                      starting from an LCD input clock frequency (LCDCLK) which can vary 
//   28                      from 32 kHz up to 1 MHz.
//   29           (##) LCD pins configuration:
//   30                (+++) Enable the clock for the LCD GPIOs.
//   31                (+++) Configure these LCD pins as alternate function no-pull.
//   32           (##) Enable the LCD interface clock.
//   33 
//   34       (#) Program the Prescaler, Divider, Blink mode, Blink Frequency Duty, Bias,
//   35            Voltage Source, Dead Time, Pulse On Duration and Contrast in the hlcd Init structure.
//   36 
//   37       (#) Initialize the LCD registers by calling the HAL_LCD_Init() API.
//   38 
//   39       -@- The HAL_LCD_Init() API configures also the low level Hardware GPIO, CLOCK, ...etc)
//   40           by calling the custumed HAL_LCD_MspInit() API.
//   41       -@- After calling the HAL_LCD_Init() the LCD RAM memory is cleared
//   42 
//   43       (#) Optionally you can update the LCD configuration using these macros:
//   44           (++) LCD High Drive using the __HAL_LCD_HIGHDRIVER_ENABLE() and __HAL_LCD_HIGHDRIVER_DISABLE() macros
//   45           (++) LCD Pulse ON Duration using the __HAL_LCD_PULSEONDURATION_CONFIG() macro
//   46           (++) LCD Dead Time using the __HAL_LCD_DEADTIME_CONFIG() macro  
//   47           (++) The LCD Blink mode and frequency using the __HAL_LCD_BLINK_CONFIG() macro
//   48           (++) The LCD Contrast using the __HAL_LCD_CONTRAST_CONFIG() macro  
//   49 
//   50       (#) Write to the LCD RAM memory using the HAL_LCD_Write() API, this API can be called
//   51           more time to update the different LCD RAM registers before calling 
//   52           HAL_LCD_UpdateDisplayRequest() API.
//   53 
//   54       (#) The HAL_LCD_Clear() API can be used to clear the LCD RAM memory.
//   55 
//   56       (#) When LCD RAM memory is updated enable the update display request using
//   57           the HAL_LCD_UpdateDisplayRequest() API.
//   58 
//   59       [..] LCD and low power modes:
//   60            (#) The LCD remain active during STOP mode.
//   61 
//   62   @endverbatim
//   63   ******************************************************************************
//   64   * @attention
//   65   *
//   66   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   67   *
//   68   * Redistribution and use in source and binary forms, with or without modification,
//   69   * are permitted provided that the following conditions are met:
//   70   *   1. Redistributions of source code must retain the above copyright notice,
//   71   *      this list of conditions and the following disclaimer.
//   72   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   73   *      this list of conditions and the following disclaimer in the documentation
//   74   *      and/or other materials provided with the distribution.
//   75   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   76   *      may be used to endorse or promote products derived from this software
//   77   *      without specific prior written permission.
//   78   *
//   79   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   80   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   81   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   82   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   83   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   84   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   85   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   86   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   87   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   88   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   89   *
//   90   ******************************************************************************
//   91   */
//   92 
//   93 /* Includes ------------------------------------------------------------------*/
//   94 #include "stm32l1xx_hal.h"
//   95 
//   96 /** @addtogroup STM32L1xx_HAL_Driver
//   97   * @{
//   98   */
//   99 
//  100 #ifdef HAL_LCD_MODULE_ENABLED
//  101 
//  102 #if defined (STM32L100xB) || defined (STM32L100xBA) || defined (STM32L100xC) ||\ 
//  103     defined (STM32L152xB) || defined (STM32L152xBA) || defined (STM32L152xC) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L152xE) || defined (STM32L152xDX) ||\ 
//  104     defined (STM32L162xC) || defined (STM32L162xCA) || defined (STM32L162xD) || defined (STM32L162xE) || defined (STM32L162xDX)
//  105 
//  106 /** @defgroup LCD LCD
//  107   * @brief LCD HAL module driver
//  108   * @{
//  109   */
//  110 
//  111 /* Private typedef -----------------------------------------------------------*/
//  112 /* Private define ------------------------------------------------------------*/
//  113 /** @defgroup LCD_Private_Defines LCD Private Defines
//  114   * @{
//  115   */
//  116 
//  117 #define LCD_TIMEOUT_VALUE             1000
//  118 
//  119 /**
//  120   * @}
//  121   */
//  122 
//  123 /* Private macro -------------------------------------------------------------*/
//  124 /* Private variables ---------------------------------------------------------*/
//  125 /* Private function prototypes -----------------------------------------------*/
//  126 /* Private functions ---------------------------------------------------------*/
//  127 
//  128 /** @defgroup LCD_Exported_Functions LCD Exported Functions
//  129   * @{
//  130   */
//  131 
//  132 /** @defgroup LCD_Exported_Functions_Group1 Initialization/de-initialization methods 
//  133   *  @brief    Initialization and Configuration functions 
//  134   *
//  135 @verbatim    
//  136 ===============================================================================
//  137             ##### Initialization and Configuration functions #####
//  138  ===============================================================================  
//  139     [..]
//  140 
//  141 @endverbatim
//  142   * @{
//  143   */
//  144  
//  145 /**
//  146   * @brief  DeInitializes the LCD peripheral. 
//  147   * @param  hlcd: LCD handle
//  148   * @retval HAL status
//  149   */
//  150 HAL_StatusTypeDef HAL_LCD_DeInit(LCD_HandleTypeDef *hlcd)
//  151 {
//  152   /* Check the LCD handle allocation */
//  153   if(hlcd == NULL)
//  154   {
//  155     return HAL_ERROR;
//  156   }
//  157   
//  158   /* Check the parameters */
//  159   assert_param(IS_LCD_ALL_INSTANCE(hlcd->Instance));
//  160 
//  161   /* Check the LCD peripheral state */
//  162   if(hlcd->State == HAL_LCD_STATE_BUSY)
//  163   {
//  164     return HAL_BUSY;
//  165   }
//  166 
//  167   hlcd->State = HAL_LCD_STATE_BUSY;
//  168 
//  169   /* Disable the peripheral */
//  170   __HAL_LCD_DISABLE(hlcd);
//  171 
//  172   /*Disable Highdrive by default*/
//  173   __HAL_LCD_HIGHDRIVER_DISABLE(hlcd);
//  174   
//  175   /* DeInit the low level hardware */
//  176   HAL_LCD_MspDeInit(hlcd);
//  177   
//  178   hlcd->ErrorCode = HAL_LCD_ERROR_NONE;
//  179   hlcd->State = HAL_LCD_STATE_RESET;
//  180     
//  181   /* Release Lock */
//  182   __HAL_UNLOCK(hlcd);
//  183   
//  184   return HAL_OK;  
//  185 }
//  186 
//  187 /**
//  188   * @brief  Initializes the LCD peripheral according to the specified parameters 
//  189   *         in the LCD_InitStruct.
//  190   * @note   This function can be used only when the LCD is disabled.  
//  191   *         The LCD HighDrive can be enabled/disabled using related macros up to user.
//  192   * @param  hlcd: LCD handle
//  193   * @retval None
//  194   */
//  195 HAL_StatusTypeDef HAL_LCD_Init(LCD_HandleTypeDef *hlcd)
//  196 {
//  197   uint32_t tickstart = 0x00;
//  198   uint8_t counter = 0;
//  199     
//  200   /* Check the LCD handle allocation */
//  201   if(hlcd == NULL)
//  202   {
//  203     return HAL_ERROR;
//  204   }
//  205   
//  206   /* Check function parameters */
//  207   assert_param(IS_LCD_ALL_INSTANCE(hlcd->Instance));
//  208   assert_param(IS_LCD_PRESCALER(hlcd->Init.Prescaler));
//  209   assert_param(IS_LCD_DIVIDER(hlcd->Init.Divider));
//  210   assert_param(IS_LCD_DUTY(hlcd->Init.Duty));
//  211   assert_param(IS_LCD_BIAS(hlcd->Init.Bias));  
//  212   assert_param(IS_LCD_VOLTAGE_SOURCE(hlcd->Init.VoltageSource));
//  213   assert_param(IS_LCD_PULSE_ON_DURATION(hlcd->Init.PulseOnDuration));
//  214   assert_param(IS_LCD_HIGHDRIVE(hlcd->Init.HighDrive));
//  215   assert_param(IS_LCD_DEAD_TIME(hlcd->Init.DeadTime));
//  216   assert_param(IS_LCD_CONTRAST(hlcd->Init.Contrast)); 
//  217   assert_param(IS_LCD_BLINK_FREQUENCY(hlcd->Init.BlinkFrequency)); 
//  218   assert_param(IS_LCD_BLINK_MODE(hlcd->Init.BlinkMode)); 
//  219   assert_param(IS_LCD_MUXSEGMENT(hlcd->Init.MuxSegment));
//  220   
//  221   if(hlcd->State == HAL_LCD_STATE_RESET)
//  222   {
//  223     /* Allocate lock resource and initialize it */
//  224     hlcd->Lock = HAL_UNLOCKED;
//  225 
//  226     /* Initialize the low level hardware (MSP) */
//  227     HAL_LCD_MspInit(hlcd);
//  228   }
//  229   
//  230   hlcd->State = HAL_LCD_STATE_BUSY;
//  231   
//  232   /* Disable the peripheral */
//  233   __HAL_LCD_DISABLE(hlcd);
//  234   
//  235   /* Clear the LCD_RAM registers and enable the display request by setting the UDR bit
//  236      in the LCD_SR register */
//  237   for(counter = LCD_RAM_REGISTER0; counter <= LCD_RAM_REGISTER15; counter++)
//  238   {
//  239     hlcd->Instance->RAM[counter] = 0;
//  240   }
//  241   /* Enable the display request */
//  242   SET_BIT(hlcd->Instance->SR, LCD_SR_UDR);
//  243   
//  244   /* Configure the LCD Prescaler, Divider, Blink mode and Blink Frequency: 
//  245      Set PS[3:0] bits according to hlcd->Init.Prescaler value 
//  246      Set DIV[3:0] bits according to hlcd->Init.Divider value
//  247      Set BLINK[1:0] bits according to hlcd->Init.BlinkMode value
//  248      Set BLINKF[2:0] bits according to hlcd->Init.BlinkFrequency value
//  249      Set DEAD[2:0] bits according to hlcd->Init.DeadTime value
//  250      Set PON[2:0] bits according to hlcd->Init.PulseOnDuration value 
//  251      Set CC[2:0] bits according to hlcd->Init.Contrast value
//  252      Set HD[0] bit according to hlcd->Init.HighDrive value */
//  253    MODIFY_REG(hlcd->Instance->FCR, \ 
//  254       (LCD_FCR_PS | LCD_FCR_DIV | LCD_FCR_BLINK| LCD_FCR_BLINKF | \ 
//  255        LCD_FCR_DEAD | LCD_FCR_PON | LCD_FCR_CC), \ 
//  256       (hlcd->Init.Prescaler | hlcd->Init.Divider | hlcd->Init.BlinkMode | hlcd->Init.BlinkFrequency | \ 
//  257              hlcd->Init.DeadTime | hlcd->Init.PulseOnDuration | hlcd->Init.Contrast | hlcd->Init.HighDrive));
//  258 
//  259   /* Wait until LCD Frame Control Register Synchronization flag (FCRSF) is set in the LCD_SR register 
//  260      This bit is set by hardware each time the LCD_FCR register is updated in the LCDCLK
//  261      domain. It is cleared by hardware when writing to the LCD_FCR register.*/
//  262   LCD_WaitForSynchro(hlcd);
//  263   
//  264   /* Configure the LCD Duty, Bias, Voltage Source, Dead Time:
//  265      Set DUTY[2:0] bits according to hlcd->Init.Duty value 
//  266      Set BIAS[1:0] bits according to hlcd->Init.Bias value
//  267      Set VSEL bit according to hlcd->Init.VoltageSource value
//  268      Set MUX_SEG bit according to hlcd->Init.MuxSegment value */
//  269   MODIFY_REG(hlcd->Instance->CR, \ 
//  270     (LCD_CR_DUTY | LCD_CR_BIAS | LCD_CR_VSEL | LCD_CR_MUX_SEG), \ 
//  271     (hlcd->Init.Duty | hlcd->Init.Bias | hlcd->Init.VoltageSource | hlcd->Init.MuxSegment));
//  272   
//  273   /* Enable the peripheral */
//  274   __HAL_LCD_ENABLE(hlcd);
//  275   
//  276   /* Get timeout */
//  277   tickstart = HAL_GetTick();
//  278       
//  279   /* Wait Until the LCD is enabled */
//  280   while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_ENS) == RESET)
//  281   {
//  282     if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  283     { 
//  284       hlcd->ErrorCode = HAL_LCD_ERROR_ENS;     
//  285       return HAL_TIMEOUT;
//  286     } 
//  287   }
//  288   
//  289   /* Get timeout */
//  290   tickstart = HAL_GetTick();
//  291   
//  292   /*!< Wait Until the LCD Booster is ready */
//  293   while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_RDY) == RESET)
//  294   {
//  295     if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  296     {   
//  297       hlcd->ErrorCode = HAL_LCD_ERROR_RDY;  
//  298       return HAL_TIMEOUT;
//  299     } 
//  300   }
//  301  
//  302   /* Initialize the LCD state */
//  303   hlcd->ErrorCode = HAL_LCD_ERROR_NONE;
//  304   hlcd->State= HAL_LCD_STATE_READY;
//  305   
//  306   return HAL_OK;
//  307 }
//  308 
//  309 /**
//  310   * @brief  LCD MSP DeInit.
//  311   * @param  hlcd: LCD handle
//  312   * @retval None
//  313   */
//  314  __weak void HAL_LCD_MspDeInit(LCD_HandleTypeDef *hlcd)
//  315 {
//  316   /* Prevent unused argument(s) compilation warning */
//  317   UNUSED(hlcd);
//  318 
//  319   /* NOTE: This function Should not be modified, when the callback is needed,
//  320            the HAL_LCD_MspDeInit could be implemented in the user file
//  321    */ 
//  322 }
//  323 
//  324 /**
//  325   * @brief  LCD MSP Init.
//  326   * @param  hlcd: LCD handle
//  327   * @retval None
//  328   */
//  329  __weak void HAL_LCD_MspInit(LCD_HandleTypeDef *hlcd)
//  330 {
//  331   /* Prevent unused argument(s) compilation warning */
//  332   UNUSED(hlcd);
//  333 
//  334   /* NOTE: This function Should not be modified, when the callback is needed,
//  335            the HAL_LCD_MspInit could be implemented in the user file
//  336    */ 
//  337 }
//  338 
//  339 /**
//  340   * @}
//  341   */
//  342 
//  343 /** @defgroup LCD_Exported_Functions_Group2 IO operation methods 
//  344   *  @brief LCD RAM functions 
//  345   *
//  346 @verbatim   
//  347  ===============================================================================
//  348                       ##### IO operation functions #####
//  349  ===============================================================================  
//  350  [..] Using its double buffer memory the LCD controller ensures the coherency of the 
//  351  displayed information without having to use interrupts to control LCD_RAM 
//  352  modification.
//  353  (+)The application software can access the first buffer level (LCD_RAM) through 
//  354  the APB interface. Once it has modified the LCD_RAM using the HAL_LCD_Write() API,
//  355  it sets the UDR flag in the LCD_SR register using the HAL_LCD_UpdateDisplayRequest() API.
//  356  This UDR flag (update display request) requests the updated information to be 
//  357  moved into the second buffer level (LCD_DISPLAY).
//  358  (+)This operation is done synchronously with the frame (at the beginning of the 
//  359  next frame), until the update is completed, the LCD_RAM is write protected and 
//  360  the UDR flag stays high.
//  361  (+)Once the update is completed another flag (UDD - Update Display Done) is set and
//  362  generates an interrupt if the UDDIE bit in the LCD_FCR register is set.
//  363  The time it takes to update LCD_DISPLAY is, in the worst case, one odd and one 
//  364  even frame.
//  365  (+)The update will not occur (UDR = 1 and UDD = 0) until the display is 
//  366  enabled (LCDEN = 1).
//  367       
//  368 @endverbatim
//  369   * @{
//  370   */
//  371 
//  372 /**
//  373   * @brief  Writes a word in the specific LCD RAM.
//  374   * @param  hlcd: LCD handle
//  375   * @param  RAMRegisterIndex: specifies the LCD RAM Register.
//  376   *   This parameter can be one of the following values:
//  377   *     @arg LCD_RAM_REGISTER0: LCD RAM Register 0
//  378   *     @arg LCD_RAM_REGISTER1: LCD RAM Register 1
//  379   *     @arg LCD_RAM_REGISTER2: LCD RAM Register 2
//  380   *     @arg LCD_RAM_REGISTER3: LCD RAM Register 3
//  381   *     @arg LCD_RAM_REGISTER4: LCD RAM Register 4
//  382   *     @arg LCD_RAM_REGISTER5: LCD RAM Register 5
//  383   *     @arg LCD_RAM_REGISTER6: LCD RAM Register 6 
//  384   *     @arg LCD_RAM_REGISTER7: LCD RAM Register 7  
//  385   *     @arg LCD_RAM_REGISTER8: LCD RAM Register 8
//  386   *     @arg LCD_RAM_REGISTER9: LCD RAM Register 9
//  387   *     @arg LCD_RAM_REGISTER10: LCD RAM Register 10
//  388   *     @arg LCD_RAM_REGISTER11: LCD RAM Register 11
//  389   *     @arg LCD_RAM_REGISTER12: LCD RAM Register 12 
//  390   *     @arg LCD_RAM_REGISTER13: LCD RAM Register 13 
//  391   *     @arg LCD_RAM_REGISTER14: LCD RAM Register 14 
//  392   *     @arg LCD_RAM_REGISTER15: LCD RAM Register 15
//  393   * @param  RAMRegisterMask: specifies the LCD RAM Register Data Mask.
//  394   * @param  Data: specifies LCD Data Value to be written.
//  395   * @retval None
//  396   */
//  397 HAL_StatusTypeDef HAL_LCD_Write(LCD_HandleTypeDef *hlcd, uint32_t RAMRegisterIndex, uint32_t RAMRegisterMask, uint32_t Data)
//  398 {
//  399   uint32_t tickstart = 0x00; 
//  400   
//  401   if((hlcd->State == HAL_LCD_STATE_READY) || (hlcd->State == HAL_LCD_STATE_BUSY))
//  402   {
//  403     /* Check the parameters */
//  404     assert_param(IS_LCD_RAM_REGISTER(RAMRegisterIndex));
//  405     
//  406     if(hlcd->State == HAL_LCD_STATE_READY)
//  407     {
//  408       /* Process Locked */
//  409       __HAL_LOCK(hlcd);
//  410       hlcd->State = HAL_LCD_STATE_BUSY;
//  411       
//  412       /* Get timeout */
//  413       tickstart = HAL_GetTick();
//  414       
//  415       /*!< Wait Until the LCD is ready */
//  416       while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_UDR) != RESET)
//  417       {
//  418         if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  419         { 
//  420           hlcd->ErrorCode = HAL_LCD_ERROR_UDR;
//  421           
//  422           /* Process Unlocked */
//  423           __HAL_UNLOCK(hlcd);
//  424           
//  425           return HAL_TIMEOUT;
//  426         } 
//  427       }
//  428     }
//  429     
//  430     /* Copy the new Data bytes to LCD RAM register */
//  431     MODIFY_REG(hlcd->Instance->RAM[RAMRegisterIndex], ~(RAMRegisterMask), Data);
//  432 
//  433     return HAL_OK;
//  434   }
//  435   else
//  436   {
//  437     return HAL_ERROR;
//  438   }
//  439 }
//  440 
//  441 /**
//  442   * @brief Clears the LCD RAM registers.
//  443   * @param hlcd: LCD handle
//  444   * @retval None
//  445   */
//  446 HAL_StatusTypeDef HAL_LCD_Clear(LCD_HandleTypeDef *hlcd)
//  447 {
//  448   uint32_t tickstart = 0x00; 
//  449   uint32_t counter = 0;
//  450   
//  451   if((hlcd->State == HAL_LCD_STATE_READY) || (hlcd->State == HAL_LCD_STATE_BUSY))
//  452   {
//  453     /* Process Locked */
//  454     __HAL_LOCK(hlcd);
//  455     
//  456     hlcd->State = HAL_LCD_STATE_BUSY;
//  457     
//  458     /* Get timeout */
//  459     tickstart = HAL_GetTick();
//  460     
//  461     /*!< Wait Until the LCD is ready */
//  462     while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_UDR) != RESET)
//  463     {
//  464       if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  465       { 
//  466         hlcd->ErrorCode = HAL_LCD_ERROR_UDR;
//  467         
//  468         /* Process Unlocked */
//  469         __HAL_UNLOCK(hlcd);
//  470         
//  471         return HAL_TIMEOUT;
//  472       } 
//  473     }
//  474     /* Clear the LCD_RAM registers */
//  475     for(counter = LCD_RAM_REGISTER0; counter <= LCD_RAM_REGISTER15; counter++)
//  476     {
//  477       hlcd->Instance->RAM[counter] = 0;
//  478     }
//  479     
//  480     /* Update the LCD display */
//  481     HAL_LCD_UpdateDisplayRequest(hlcd);     
//  482     
//  483     return HAL_OK;
//  484   }
//  485   else
//  486   {
//  487     return HAL_ERROR;
//  488   }
//  489 }
//  490 
//  491 /**
//  492   * @brief  Enables the Update Display Request.
//  493   * @param  hlcd: LCD handle
//  494   * @note   Each time software modifies the LCD_RAM it must set the UDR bit to 
//  495   *         transfer the updated data to the second level buffer. 
//  496   *         The UDR bit stays set until the end of the update and during this 
//  497   *         time the LCD_RAM is write protected. 
//  498   * @note   When the display is disabled, the update is performed for all 
//  499   *         LCD_DISPLAY locations.
//  500   *         When the display is enabled, the update is performed only for locations 
//  501   *         for which commons are active (depending on DUTY). For example if 
//  502   *         DUTY = 1/2, only the LCD_DISPLAY of COM0 and COM1 will be updated.    
//  503   * @retval None
//  504   */
//  505 HAL_StatusTypeDef HAL_LCD_UpdateDisplayRequest(LCD_HandleTypeDef *hlcd)
//  506 {
//  507   uint32_t tickstart = 0x00;
//  508   
//  509   /* Clear the Update Display Done flag before starting the update display request */
//  510   __HAL_LCD_CLEAR_FLAG(hlcd, LCD_FLAG_UDD);
//  511   
//  512   /* Enable the display request */
//  513   hlcd->Instance->SR |= LCD_SR_UDR;
//  514   
//  515   /* Get timeout */
//  516   tickstart = HAL_GetTick();
//  517   
//  518   /*!< Wait Until the LCD display is done */
//  519   while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_UDD) == RESET)
//  520   {
//  521     if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  522     { 
//  523       hlcd->ErrorCode = HAL_LCD_ERROR_UDD;
//  524       
//  525       /* Process Unlocked */
//  526       __HAL_UNLOCK(hlcd);
//  527   
//  528       return HAL_TIMEOUT;
//  529     }
//  530   }
//  531 
//  532   hlcd->State = HAL_LCD_STATE_READY;
//  533   
//  534   /* Process Unlocked */
//  535   __HAL_UNLOCK(hlcd);
//  536   
//  537   return HAL_OK;
//  538 }
//  539 
//  540 /**
//  541   * @}
//  542   */
//  543 
//  544 /** @defgroup LCD_Exported_Functions_Group3 Peripheral State methods 
//  545   *  @brief   LCD State functions 
//  546   *
//  547 @verbatim   
//  548  ===============================================================================
//  549                       ##### Peripheral State functions #####
//  550  ===============================================================================  
//  551     [..]
//  552      This subsection provides a set of functions allowing to control the LCD:
//  553       (+) HAL_LCD_GetState() API can be helpful to check in run-time the state of the LCD peripheral State. 
//  554       (+) HAL_LCD_GetError() API to return the LCD error code. 
//  555 @endverbatim
//  556   * @{
//  557   */
//  558 
//  559 /**
//  560   * @brief Returns the LCD state.
//  561   * @param hlcd: LCD handle
//  562   * @retval HAL state
//  563   */
//  564 HAL_LCD_StateTypeDef HAL_LCD_GetState(LCD_HandleTypeDef *hlcd)
//  565 {
//  566   return hlcd->State;
//  567 }
//  568 
//  569 /**
//  570   * @brief Return the LCD error code
//  571   * @param hlcd: LCD handle
//  572   * @retval LCD Error Code
//  573   */
//  574 uint32_t HAL_LCD_GetError(LCD_HandleTypeDef *hlcd)
//  575 {
//  576   return hlcd->ErrorCode;
//  577 }
//  578 
//  579 /**
//  580   * @}
//  581   */
//  582 
//  583 /**
//  584   * @}
//  585   */
//  586   
//  587 /** @defgroup LCD_Private_Functions LCD Private Functions
//  588   * @{
//  589   */
//  590 
//  591 /**
//  592   * @brief  Waits until the LCD FCR register is synchronized in the LCDCLK domain.
//  593   *   This function must be called after any write operation to LCD_FCR register.
//  594   * @retval None
//  595   */
//  596 HAL_StatusTypeDef LCD_WaitForSynchro(LCD_HandleTypeDef *hlcd)
//  597 {
//  598   uint32_t tickstart = 0x00; 
//  599   
//  600   /* Get timeout */
//  601   tickstart = HAL_GetTick();
//  602 
//  603   /* Loop until FCRSF flag is set */
//  604   while(__HAL_LCD_GET_FLAG(hlcd, LCD_FLAG_FCRSF) == RESET)
//  605   {
//  606     if((HAL_GetTick() - tickstart ) > LCD_TIMEOUT_VALUE)
//  607     {
//  608       hlcd->ErrorCode = HAL_LCD_ERROR_FCRSF;
//  609       return HAL_TIMEOUT;
//  610     }
//  611   }
//  612 
//  613   return HAL_OK;
//  614 }
//  615 
//  616 /**
//  617   * @}
//  618   */
//  619 
//  620 /**
//  621   * @}
//  622   */
//  623 
//  624 #endif /* STM32L100xB || STM32L100xBA || STM32L100xC ||... || STM32L162xD || STM32L162xE || STM32L162xDX */
//  625 
//  626 #endif /* HAL_LCD_MODULE_ENABLED */
//  627 
//  628 /**
//  629   * @}
//  630   */
//  631 
//  632 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
//  633 
// 
//
// 
//
//
//Errors: none
//Warnings: none
