///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_opamp.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_opamp.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   OPAMP HAL module driver.
//    8   *          This file provides firmware functions to manage the following 
//    9   *          functionalities of the operational amplifier(s)(OPAMP1, OPAMP2 etc) 
//   10   *          peripheral: 
//   11   *           + OPAMP configuration
//   12   *           + OPAMP calibration
//   13   *          Thanks to
//   14   *           + Initialization and de-initialization functions
//   15   *           + IO operation functions
//   16   *           + Peripheral Control functions
//   17   *           + Peripheral State functions
//   18   *         
//   19   @verbatim
//   20 ================================================================================
//   21           ##### OPAMP Peripheral Features #####
//   22 ================================================================================
//   23   [..] The device integrates up to 3 operational amplifiers OPAMP1, OPAMP2,
//   24        OPAMP3 (OPAMP3 availability depends on device category)
//   25        
//   26        (#) The OPAMP(s) provides several exclusive running modes.
//   27        (++) Standalone mode
//   28        (++) Follower mode
//   29 
//   30        (#) All OPAMP (same for all OPAMPs) can operate in
//   31        (++) Either Low range (VDDA < 2.4V) power supply
//   32        (++) Or High range (VDDA > 2.4V) power supply
//   33 
//   34        (#) Each OPAMP(s) can be configured in normal and low power mode.
//   35 
//   36        (#) The OPAMP(s) provide(s) calibration capabilities.  
//   37        (++) Calibration aims at correcting some offset for running mode.
//   38        (++) The OPAMP uses either factory calibration settings OR user defined 
//   39            calibration (trimming) settings (i.e. trimming mode).
//   40        (++) The user defined settings can be figured out using self calibration 
//   41            handled by HAL_OPAMP_SelfCalibrate, HAL_OPAMPEx_SelfCalibrateAll
//   42        (++) HAL_OPAMP_SelfCalibrate:
//   43        (+++) Runs automatically the calibration in 2 steps: for transistors 
//   44             differential pair high (PMOS) or low (NMOS)
//   45        (+++) Enables the user trimming mode
//   46        (+++) Updates the init structure with trimming values with fresh calibration 
//   47             results.
//   48             The user may store the calibration results for larger 
//   49             (ex monitoring the trimming as a function of temperature 
//   50             for instance)
//   51        (+++) For devices having several OPAMPs, HAL_OPAMPEx_SelfCalibrateAll
//   52             runs calibration of all OPAMPs in parallel to save search time.
//   53             
//   54        (#) Running mode: Standalone mode 
//   55        (++) Gain is set externally (gain depends on external loads).
//   56        (++) Follower mode also possible externally by connecting the inverting input to
//   57            the output.
//   58        
//   59        (#) Running mode: Follower mode
//   60        (++) No Inverting Input is connected.
//   61        (++) The OPAMP(s) output(s) are internally connected to inverting input.
//   62         
//   63             ##### How to use this driver #####
//   64 ================================================================================
//   65   [..] 
//   66 
//   67     *** power supply range ***
//   68     ============================================
//   69    [..] 
//   70       To run in low power mode:
//   71 
//   72       (#) Configure the opamp using HAL_OPAMP_Init() function:
//   73       (++) Select OPAMP_POWERSUPPLY_LOW (VDDA lower than 2.4V)
//   74       (++) Otherwise select OPAMP_POWERSUPPLY_HIGH (VDDA higher than 2.4V)
//   75 
//   76     *** low / normal power mode ***
//   77     ============================================
//   78    [..] 
//   79       To run in low power mode:
//   80 
//   81       (#) Configure the opamp using HAL_OPAMP_Init() function:
//   82       (++) Select OPAMP_POWERMODE_LOWPOWER
//   83       (++) Otherwise select OPAMP_POWERMODE_NORMAL
//   84 
//   85     *** Calibration ***
//   86     ============================================
//   87    [..] 
//   88       To run the opamp calibration self calibration:
//   89 
//   90       (#) Start calibration using HAL_OPAMP_SelfCalibrate. 
//   91            Store the calibration results.
//   92 
//   93     *** Running mode ***
//   94     ============================================
//   95    [..] 
//   96       
//   97       To use the opamp, perform the following steps:
//   98             
//   99       (#) Fill in the HAL_OPAMP_MspInit() to
//  100       (++) Enable the OPAMP Peripheral clock using macro "__HAL_RCC_OPAMP_CLK_ENABLE()"
//  101       (++) Configure the opamp input AND output in analog mode using 
//  102            HAL_GPIO_Init() to map the opamp output to the GPIO pin.
//  103   
//  104       (#) Configure the opamp using HAL_OPAMP_Init() function:
//  105       (++) Select the mode
//  106       (++) Select the inverting input
//  107       (++) Select the non-inverting input 
//  108       (++) Select either factory or user defined trimming mode.
//  109       (++) If the user defined trimming mode is enabled, select PMOS & NMOS trimming values
//  110           (typ. settings returned by HAL_OPAMP_SelfCalibrate function).
//  111       
//  112       (#) Enable the opamp using HAL_OPAMP_Start() function.
//  113            
//  114       (#) Disable the opamp using HAL_OPAMP_Stop() function.
//  115       
//  116       (#) Lock the opamp in running mode using HAL_OPAMP_Lock() function.
//  117           Caution: On STM32L1, HAL OPAMP lock is software lock only (not 
//  118           hardware lock as on some other STM32 devices)
//  119 
//  120       (#) If needed, unlock the opamp using HAL_OPAMPEx_Unlock() function.
//  121 
//  122     *** Running mode: change of configuration while OPAMP ON  ***
//  123     ============================================
//  124    [..] 
//  125     To Re-configure OPAMP when OPAMP is ON (change on the fly)
//  126       (#) If needed, Fill in the HAL_OPAMP_MspInit()
//  127       (++) This is the case for instance if you wish to use new OPAMP I/O
//  128 
//  129       (#) Configure the opamp using HAL_OPAMP_Init() function:
//  130       (++) As in configure case, selects first the parameters you wish to modify.
//  131       
//  132       (#) Change from low power mode to normal power mode (& vice versa) requires  
//  133           first HAL_OPAMP_DeInit() (force OPAMP OFF) and then HAL_OPAMP_Init(). 
//  134           In other words, of OPAMP is ON, HAL_OPAMP_Init can NOT change power mode
//  135           alone.
//  136 
//  137   @endverbatim
//  138   ******************************************************************************
//  139   * @attention
//  140   *
//  141   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//  142   *
//  143   * Redistribution and use in source and binary forms, with or without modification,
//  144   * are permitted provided that the following conditions are met:
//  145   *   1. Redistributions of source code must retain the above copyright notice,
//  146   *      this list of conditions and the following disclaimer.
//  147   *   2. Redistributions in binary form must reproduce the above copyright notice,
//  148   *      this list of conditions and the following disclaimer in the documentation
//  149   *      and/or other materials provided with the distribution.
//  150   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//  151   *      may be used to endorse or promote products derived from this software
//  152   *      without specific prior written permission.
//  153   *
//  154   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  155   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  156   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  157   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  158   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  159   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  160   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  161   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  162   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  163   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//  164   *
//  165   ******************************************************************************  
//  166   */
//  167 
//  168 /*
//  169   Additionnal remark:
//  170     The OPAMPs inverting input can be selected among the list shown by table below.
//  171     The OPAMPs non inverting input can be selected among the list shown by table below.
//  172        
//  173     Table 1.  OPAMPs inverting/non-inverting inputs for STM32L1 devices:
//  174     +--------------------------------------------------------------------------+
//  175     |                | HAL param  |    OPAMP1    |    OPAMP2    |   OPAMP3(4)  |
//  176     |                |   name     |              |              |              |
//  177     |----------------|------------|--------------|--------------|--------------|
//  178     |   Inverting    |    VM0     |     PA2      |     PA7      |     PC2      |
//  179     |    input (1)   |    VM1     | VINM pin (2) | VINM pin (2) | VINM pin (2) |
//  180     |----------------|------------|--------------|--------------|--------------|
//  181     |  Non Inverting |    VP0     |     PA1      |     PA6      |     PC1      |
//  182     |    input       | DAC_CH1 (3)|   DAC_CH1    |   DAC_CH1    |     ---      |
//  183     |                | DAC_CH2 (3)|     ---      |   DAC_CH2    |   DAC_CH2    |
//  184     +--------------------------------------------------------------------------+
//  185     (1): NA in follower mode.
//  186     (2): OPAMP input OPAMPx_VINM are dedicated OPAMP pins, their availability
//  187          depends on device package.
//  188     (3): DAC channels 1 and 2 are connected internally to OPAMP. Nevertheless,
//  189          I/O pins connected to DAC can still be used as DAC output (pins PA4 
//  190          and PA5).
//  191     (4): OPAMP3 availability depends on device category.
//  192 
//  193     Table 2.  OPAMPs outputs for STM32L1 devices:
//  194     +--------------------------------------------------------+
//  195     |                 |   OPAMP1   |   OPAMP2   |  OPAMP3(4) |
//  196     |-----------------|------------|------------|------------|
//  197     | Output          |    PA3     |    PB0     |    PC3     |
//  198     +--------------------------------------------------------+
//  199     (4) : OPAMP3 availability depends on device category
//  200 */
//  201 
//  202 /* Includes ------------------------------------------------------------------*/
//  203 #include "stm32l1xx_hal.h"
//  204     
//  205 /** @addtogroup STM32L1xx_HAL_Driver
//  206   * @{
//  207   */
//  208 
//  209 /** @defgroup OPAMP OPAMP
//  210   * @brief OPAMP module driver
//  211   * @{
//  212   */
//  213 
//  214 #ifdef HAL_OPAMP_MODULE_ENABLED
//  215 
//  216 #if defined (STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined (STM32L151xE) || defined (STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) || defined (STM32L162xC) || defined (STM32L152xC) || defined (STM32L151xC)
//  217 
//  218 /* Private typedef -----------------------------------------------------------*/
//  219 /* Private define ------------------------------------------------------------*/
//  220 /* Private macro -------------------------------------------------------------*/
//  221 /* Private variables ---------------------------------------------------------*/
//  222 /* Private constants ---------------------------------------------------------*/
//  223 /* Private function prototypes -----------------------------------------------*/
//  224 /* Private functions ---------------------------------------------------------*/
//  225 /* Exported functions --------------------------------------------------------*/
//  226 
//  227 /** @defgroup OPAMP_Exported_Functions OPAMP Exported Functions
//  228   * @{
//  229   */
//  230 
//  231 /** @defgroup OPAMP_Exported_Functions_Group1 Initialization and de-initialization functions 
//  232  *  @brief    Initialization and Configuration functions 
//  233  *
//  234 @verbatim    
//  235   ==============================================================================
//  236               ##### Initialization and de-initialization functions #####
//  237   ==============================================================================
//  238    [..]  This section provides functions allowing to:
//  239  
//  240 @endverbatim
//  241   * @{
//  242   */
//  243 
//  244 /**
//  245   * @brief  Initializes the OPAMP according to the specified
//  246   *         parameters in the OPAMP_InitTypeDef and create the associated handle.
//  247   * @note   If the selected opamp is locked, initialization can't be performed.
//  248   *         To unlock the configuration, perform a system reset.
//  249   * @param  hopamp: OPAMP handle
//  250   * @retval HAL status
//  251   */
//  252 HAL_StatusTypeDef HAL_OPAMP_Init(OPAMP_HandleTypeDef* hopamp)
//  253 { 
//  254   HAL_StatusTypeDef status = HAL_OK;
//  255   uint32_t tmp_csr = 0;       /* Temporary variable to update register CSR, except bits ANAWSSELx, S7SEL2, OPA_RANGE, OPAxCALOUT */
//  256   
//  257   /* Check the OPAMP handle allocation and lock status */
//  258   /* Init not allowed if calibration is ongoing */
//  259   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED)
//  260                       || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY) )
//  261   {
//  262     status = HAL_ERROR;
//  263   }
//  264   else
//  265   {
//  266     /* Check the parameter */
//  267     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  268        
//  269     /* Set OPAMP parameters */
//  270     assert_param(IS_OPAMP_POWER_SUPPLY_RANGE(hopamp->Init.PowerSupplyRange));
//  271     assert_param(IS_OPAMP_POWERMODE(hopamp->Init.PowerMode));
//  272     assert_param(IS_OPAMP_FUNCTIONAL_NORMALMODE(hopamp->Init.Mode));
//  273     assert_param(IS_OPAMP_NONINVERTING_INPUT_CHECK_INSTANCE(hopamp, hopamp->Init.NonInvertingInput));
//  274     assert_param(IS_OPAMP_TRIMMING(hopamp->Init.UserTrimming));
//  275     
//  276     if (hopamp->Init.Mode != OPAMP_FOLLOWER_MODE)
//  277     {
//  278       assert_param(IS_OPAMP_INVERTING_INPUT(hopamp->Init.InvertingInput));
//  279     }
//  280     
//  281     if (hopamp->Init.UserTrimming == OPAMP_TRIMMING_USER)
//  282     {
//  283       if (hopamp->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  284       {
//  285         assert_param(IS_OPAMP_TRIMMINGVALUE(hopamp->Init.TrimmingValueP));
//  286         assert_param(IS_OPAMP_TRIMMINGVALUE(hopamp->Init.TrimmingValueN));
//  287       }
//  288       else
//  289       {
//  290         assert_param(IS_OPAMP_TRIMMINGVALUE(hopamp->Init.TrimmingValuePLowPower));
//  291         assert_param(IS_OPAMP_TRIMMINGVALUE(hopamp->Init.TrimmingValueNLowPower));
//  292       }
//  293     }
//  294     
//  295     if(hopamp->State == HAL_OPAMP_STATE_RESET)
//  296     {
//  297       /* Allocate lock resource and initialize it */
//  298       hopamp->Lock = HAL_UNLOCKED;
//  299     }
//  300 
//  301     /* Call MSP init function */
//  302     HAL_OPAMP_MspInit(hopamp);
//  303     
//  304     /* Set OPAMP parameters                                                   */
//  305     /* - Set internal switches in function of:                                */
//  306     /*   - OPAMP selected mode: standalone or follower.                       */
//  307     /*   - Non-inverting input connection                                     */
//  308     /*   - Inverting input connection                                         */
//  309     /* - Set power supply range                                               */
//  310     /* - Set power mode and associated calibration parameters                 */
//  311     
//  312     /* Get OPAMP CSR register into temporary variable */
//  313     /* Note: OPAMP register CSR is written directly, independently of OPAMP   */
//  314     /*       instance, because all OPAMP settings are dispatched in the same  */
//  315     /*       register.                                                        */
//  316     /*       Settings of bits for each OPAMP instances are managed case by    */
//  317     /*       case using macro (OPAMP_CSR_S3SELX(), OPAMP_CSR_ANAWSELX(), ...) */
//  318     tmp_csr = OPAMP->CSR;
//  319     
//  320     /* Open all switches on non-inverting input, inverting input and output   */
//  321     /* feedback.                                                              */
//  322     CLEAR_BIT(tmp_csr, OPAMP_CSR_ALL_SWITCHES(hopamp));
//  323     
//  324     /* Set internal switches in function of OPAMP mode selected: standalone   */
//  325     /* or follower.                                                           */
//  326     /* If follower mode is selected, feedback switch S3 is closed and         */
//  327     /* inverting inputs switches are let opened.                              */
//  328     /* If standalone mode is selected, feedback switch S3 is let opened and   */
//  329     /* the selected inverting inputs switch is closed.                        */
//  330     if (hopamp->Init.Mode == OPAMP_FOLLOWER_MODE)
//  331     {
//  332       /* Follower mode: Close switches S3 and SanB */
//  333       SET_BIT(tmp_csr, OPAMP_CSR_S3SELX(hopamp));
//  334     }
//  335     else
//  336     {
//  337       /* Set internal switches in function of inverting input selected:       */
//  338       /* Close switch to connect OPAMP inverting input to the selected        */
//  339       /* input: dedicated IO pin or alternative IO pin available on some      */
//  340       /* device packages.                                                     */
//  341       if (hopamp->Init.InvertingInput == OPAMP_INVERTINGINPUT_IO0)
//  342       {
//  343         /* Close switch to connect OPAMP non-inverting input to               */
//  344         /* dedicated IO pin low-leakage.                                      */
//  345         SET_BIT(tmp_csr, OPAMP_CSR_S4SELX(hopamp));
//  346       }
//  347       else
//  348       {
//  349         /* Close switch to connect OPAMP inverting input to alternative       */
//  350         /* IO pin available on some device packages.                          */
//  351         SET_BIT(tmp_csr, OPAMP_CSR_ANAWSELX(hopamp));
//  352       }
//  353     }
//  354     
//  355     /* Set internal switches in function of non-inverting input selected:     */
//  356     /* Close switch to connect OPAMP non-inverting input to the selected      */
//  357     /* input: dedicated IO pin or DAC channel.                                */
//  358     if (hopamp->Init.NonInvertingInput == OPAMP_NONINVERTINGINPUT_IO0)
//  359     {
//  360       /* Close switch to connect OPAMP non-inverting input to                 */
//  361       /* dedicated IO pin low-leakage.                                        */
//  362       SET_BIT(tmp_csr, OPAMP_CSR_S5SELX(hopamp));
//  363     }
//  364     else if (hopamp->Init.NonInvertingInput == OPAMP_NONINVERTINGINPUT_DAC_CH1)
//  365     {
//  366       
//  367       /* Particular case for connection to DAC channel 1:                     */
//  368       /* OPAMP_NONINVERTINGINPUT_DAC_CH1 available on OPAMP1 and OPAMP2 only  */
//  369       /* (OPAMP3 availability depends on device category).                    */
//  370       if ((hopamp->Instance == OPAMP1) || (hopamp->Instance == OPAMP2))
//  371       {
//  372         /* Close switch to connect OPAMP non-inverting input to               */
//  373         /* DAC channel 1.                                                     */
//  374         SET_BIT(tmp_csr, OPAMP_CSR_S6SELX(hopamp));
//  375       }
//  376       else
//  377       {
//  378         /* Set HAL status to error if another OPAMP instance as OPAMP1 or     */
//  379         /* OPAMP2 is intended to be connected to DAC channel 2.               */
//  380         status = HAL_ERROR;
//  381       }
//  382     }
//  383     else /* if (hopamp->Init.NonInvertingInput ==                             */
//  384          /*     OPAMP_NONINVERTINGINPUT_DAC_CH2  )                            */
//  385     {
//  386       /* Particular case for connection to DAC channel 2:                     */
//  387       /* OPAMP_NONINVERTINGINPUT_DAC_CH2 available on OPAMP2 and OPAMP3 only  */
//  388       /* (OPAMP3 availability depends on device category).                    */
//  389       if (hopamp->Instance == OPAMP2)
//  390       {
//  391         /* Close switch to connect OPAMP non-inverting input to               */
//  392         /* DAC channel 2.                                                     */
//  393         SET_BIT(tmp_csr, OPAMP_CSR_S7SEL2);
//  394       }
//  395       /* If OPAMP3 is selected (if available) */
//  396       else if (hopamp->Instance != OPAMP1)
//  397       {
//  398         /* Close switch to connect OPAMP non-inverting input to               */
//  399         /* DAC channel 2.                                                     */
//  400         SET_BIT(tmp_csr, OPAMP_CSR_S6SELX(hopamp));
//  401       }
//  402       else
//  403       {
//  404         /* Set HAL status to error if another OPAMP instance as OPAMP2 or     */
//  405         /* OPAMP3 (if available) is intended to be connected to DAC channel 2.*/
//  406         status = HAL_ERROR;
//  407       }
//  408     }
//  409     
//  410     /* Continue OPAMP configuration if settings of switches are correct */
//  411     if (status != HAL_ERROR)
//  412     {
//  413       /* Set power mode and associated calibration parameters */
//  414       if (hopamp->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  415       {
//  416         /* Set normal mode */
//  417         CLEAR_BIT(tmp_csr, OPAMP_CSR_OPAXLPM(hopamp));
//  418         
//  419         if (hopamp->Init.UserTrimming == OPAMP_TRIMMING_USER)
//  420         {
//  421           /* Set calibration mode (factory or user) and values for            */
//  422           /* transistors differential pair high (PMOS) and low (NMOS) for     */
//  423           /* normal mode.                                                     */
//  424           MODIFY_REG(OPAMP->OTR, OPAMP_OTR_OT_USER                                                                     |
//  425                                  OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_N, OPAMP_TRIM_VALUE_MASK)       |
//  426                                  OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_P, OPAMP_TRIM_VALUE_MASK)        ,
//  427                                  hopamp->Init.UserTrimming                                                             |
//  428                                  OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_N, hopamp->Init.TrimmingValueN) |
//  429                                  OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_P, hopamp->Init.TrimmingValueP)  );
//  430         }
//  431         else
//  432         {
//  433           /* Set calibration mode to factory */
//  434           CLEAR_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  435         }
//  436         
//  437       }
//  438       else
//  439       {
//  440         /* Set low power mode */
//  441         SET_BIT(tmp_csr, OPAMP_CSR_OPAXLPM(hopamp));
//  442         
//  443         if (hopamp->Init.UserTrimming == OPAMP_TRIMMING_USER)
//  444         {
//  445           /* Set calibration mode to user trimming */
//  446           SET_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  447           
//  448           /* Set values for transistors differential pair high (PMOS) and low */
//  449           /* (NMOS) for low power mode.                                       */
//  450           MODIFY_REG(OPAMP->LPOTR, OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_N, OPAMP_TRIM_VALUE_MASK)               |
//  451                                    OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_P, OPAMP_TRIM_VALUE_MASK)                ,
//  452                                    OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_N, hopamp->Init.TrimmingValueNLowPower) |
//  453                                    OPAMP_OFFSET_TRIM_SET(hopamp, OPAMP_FACTORYTRIMMING_P, hopamp->Init.TrimmingValuePLowPower)  );
//  454         }
//  455         else
//  456         {
//  457           /* Set calibration mode to factory trimming */
//  458           CLEAR_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  459         }
//  460         
//  461       }
//  462       
//  463       
//  464       /* Configure the power supply range */
//  465       MODIFY_REG(tmp_csr, OPAMP_CSR_AOP_RANGE,
//  466                           hopamp->Init.PowerSupplyRange);
//  467       
//  468       /* Set OPAMP CSR register from temporary variable */
//  469       /* This allows to apply all changes on one time, in case of update on   */
//  470       /* the fly with OPAMP previously set and running:                       */
//  471       /*  - to avoid hazardous transient switches settings (risk of short     */
//  472       /*    circuit)                                                          */
//  473       /*  - to avoid interruption of input signal                             */
//  474       OPAMP->CSR = tmp_csr;
//  475 
//  476                 
//  477       /* Update the OPAMP state */
//  478       /* If coming from state reset: Update from state RESET to state READY */
//  479       if (hopamp->State == HAL_OPAMP_STATE_RESET)
//  480       {
//  481         hopamp->State = HAL_OPAMP_STATE_READY;
//  482       }
//  483       /* else: OPAMP state remains READY or BUSY state (no update) */
//  484     }
//  485   }
//  486   
//  487   return status;
//  488 }
//  489 
//  490 /**
//  491   * @brief  DeInitializes the OPAMP peripheral 
//  492   * @note   Deinitialization can be performed if the OPAMP configuration is locked.
//  493   *         (the OPAMP lock is SW in STM32L1)
//  494   * @param  hopamp: OPAMP handle
//  495   * @retval HAL status
//  496   */
//  497 HAL_StatusTypeDef HAL_OPAMP_DeInit(OPAMP_HandleTypeDef* hopamp)
//  498 {
//  499   HAL_StatusTypeDef status = HAL_OK;
//  500   
//  501   /* Check the OPAMP handle allocation */
//  502   /* DeInit not allowed if calibration is ongoing */
//  503   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY))
//  504   {
//  505     status = HAL_ERROR;
//  506   }
//  507   else
//  508   {
//  509     /* Check the parameter */
//  510     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  511     
//  512     /* Disable the selected opamp */
//  513     SET_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD(hopamp));
//  514     
//  515     /* Open all switches on non-inverting input, inverting input and output   */
//  516     /* feedback.                                                              */
//  517     /* Note: OPAMP register CSR is written directly, independently of OPAMP   */
//  518     /*       instance, because all OPAMP settings are dispatched in the same  */
//  519     /*       register.                                                        */
//  520     /*       Settings of bits for each OPAMP instances are managed case by    */
//  521     /*       case using macro (OPAMP_CSR_S3SELX(), OPAMP_CSR_ANAWSELX(), ...) */
//  522     CLEAR_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES(hopamp));
//  523 
//  524     /* Note: Registers and bits shared with other OPAMP instances are kept    */
//  525     /*       unchanged, to not impact other OPAMP while operating on the      */
//  526     /*       selected OPAMP.                                                  */
//  527     /*       Unchanged: bit OPAMP_OTR_OT_USER (parameter "UserTrimming")      */
//  528     /*                  bit OPAMP_CSR_AOP_RANGE (parameter "PowerSupplyRange")*/
//  529 
//  530     /* DeInit the low level hardware: GPIO, CLOCK and NVIC */
//  531     HAL_OPAMP_MspDeInit(hopamp);
//  532 
//  533     /* Update the OPAMP state*/
//  534     hopamp->State = HAL_OPAMP_STATE_RESET;
//  535   }
//  536   
//  537   /* Process unlocked */
//  538   __HAL_UNLOCK(hopamp);
//  539   
//  540   return status;
//  541 }
//  542 
//  543 
//  544 /**
//  545   * @brief  Initializes the OPAMP MSP.
//  546   * @param  hopamp: OPAMP handle
//  547   * @retval None
//  548   */
//  549 __weak void HAL_OPAMP_MspInit(OPAMP_HandleTypeDef* hopamp)
//  550 {
//  551   /* Prevent unused argument(s) compilation warning */
//  552   UNUSED(hopamp);
//  553 
//  554   /* NOTE : This function Should not be modified, when the callback is needed,
//  555             the function "HAL_OPAMP_MspInit()" must be implemented in the user file.
//  556   */
//  557 }
//  558 
//  559 /**
//  560   * @brief  DeInitializes OPAMP MSP.
//  561   * @param  hopamp: OPAMP handle
//  562   * @retval None
//  563   */
//  564 __weak void HAL_OPAMP_MspDeInit(OPAMP_HandleTypeDef* hopamp)
//  565 {
//  566   /* Prevent unused argument(s) compilation warning */
//  567   UNUSED(hopamp);
//  568 
//  569   /* NOTE : This function Should not be modified, when the callback is needed,
//  570             the function "HAL_OPAMP_MspDeInit()" must be implemented in the user file.
//  571   */
//  572 }
//  573 
//  574 /**
//  575   * @}
//  576   */
//  577 
//  578 
//  579 /** @defgroup OPAMP_Exported_Functions_Group2 IO operation functions 
//  580   * @brief   IO operation functions 
//  581   *
//  582 @verbatim   
//  583  ===============================================================================
//  584                         ##### IO operation functions #####
//  585  ===============================================================================
//  586     [..]
//  587     This subsection provides a set of functions allowing to manage the OPAMP
//  588     start, stop and calibration actions.
//  589 
//  590 @endverbatim
//  591   * @{
//  592   */
//  593 
//  594 /**
//  595   * @brief  Start the opamp
//  596   * @param  hopamp: OPAMP handle
//  597   * @retval HAL status
//  598   */
//  599 
//  600 HAL_StatusTypeDef HAL_OPAMP_Start(OPAMP_HandleTypeDef* hopamp)
//  601 { 
//  602   HAL_StatusTypeDef status = HAL_OK;
//  603   
//  604   /* Check the OPAMP handle allocation */
//  605   /* Check if OPAMP locked */
//  606   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED))
//  607   {
//  608     status = HAL_ERROR;
//  609   }
//  610   else
//  611   {
//  612     /* Check the parameter */
//  613     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  614     
//  615     if(hopamp->State == HAL_OPAMP_STATE_READY)
//  616     {
//  617       /* Enable the selected opamp */
//  618       CLEAR_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD(hopamp));
//  619       
//  620       /* Update the OPAMP state */
//  621       /* From HAL_OPAMP_STATE_READY to HAL_OPAMP_STATE_BUSY */
//  622       hopamp->State = HAL_OPAMP_STATE_BUSY;   
//  623     }
//  624     else
//  625     {
//  626       status = HAL_ERROR;
//  627     }
//  628     
//  629    }
//  630   return status;
//  631 }
//  632 
//  633 /**
//  634   * @brief  Stop the opamp 
//  635   * @param  hopamp: OPAMP handle
//  636   * @retval HAL status
//  637   */
//  638 HAL_StatusTypeDef HAL_OPAMP_Stop(OPAMP_HandleTypeDef* hopamp)
//  639 { 
//  640   HAL_StatusTypeDef status = HAL_OK;
//  641     
//  642   /* Check the OPAMP handle allocation */
//  643   /* Check if OPAMP locked */
//  644   /* Check if OPAMP calibration ongoing */
//  645   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED) \ 
//  646                       || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY))  
//  647   {
//  648     status = HAL_ERROR;
//  649   }
//  650   else
//  651   {
//  652     /* Check the parameter */
//  653     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  654 
//  655     if(hopamp->State == HAL_OPAMP_STATE_BUSY)
//  656     {
//  657       /* Disable the selected opamp */
//  658       SET_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD(hopamp));
//  659       
//  660       /* Update the OPAMP state*/     
//  661       /* From  HAL_OPAMP_STATE_BUSY to HAL_OPAMP_STATE_READY*/
//  662       hopamp->State = HAL_OPAMP_STATE_READY;
//  663     }
//  664     else
//  665     {
//  666       status = HAL_ERROR;
//  667     }
//  668   }
//  669   return status;
//  670 }
//  671 
//  672 /**
//  673   * @brief  Run the self calibration of one OPAMP
//  674   * @note   Trimming values (PMOS & NMOS) are updated and user trimming is 
//  675   *         enabled if calibration is succesful.
//  676   * @note   Calibration is performed in the mode specified in OPAMP init
//  677   *         structure (mode normal or low-power). To perform calibration for
//  678   *         both modes, repeat this function twice after OPAMP init structure
//  679   *         accordingly updated.
//  680   * @note   Calibration runs about 10 ms.
//  681   * @param  hopamp handle
//  682   * @retval Updated offset trimming values (PMOS & NMOS), user trimming is enabled
//  683   * @retval HAL status
//  684   */
//  685 HAL_StatusTypeDef HAL_OPAMP_SelfCalibrate(OPAMP_HandleTypeDef* hopamp)
//  686 { 
//  687   HAL_StatusTypeDef status = HAL_OK;
//  688   
//  689   uint32_t* opamp_trimmingvalue = 0;
//  690   uint32_t opamp_trimmingvaluen = 0;
//  691   uint32_t opamp_trimmingvaluep = 0;
//  692   
//  693   uint32_t trimming_diff_pair = 0;           /* Selection of differential transistors pair high or low */
//  694 
//  695   __IO uint32_t* tmp_opamp_reg_trimming;     /* Selection of register of trimming depending on power mode: OTR or LPOTR */
//  696   uint32_t tmp_opamp_otr_otuser = 0;         /* Selection of bit OPAMP_OTR_OT_USER depending on trimming register pointed: OTR or LPOTR */
//  697 
//  698   uint32_t tmp_Opaxcalout_DefaultSate = 0;   /* Bit OPAMP_CSR_OPAXCALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  699 
//  700   uint32_t tmp_OpaxSwitchesContextBackup = 0;
//  701   
//  702   uint8_t trimming_diff_pair_iteration_count = 0;       /* For calibration loop algorithm: to repeat the calibration loop for both differential transistors pair high and low */
//  703   uint8_t delta = 0;                                    /* For calibration loop algorithm: Variable for dichotomy steps value */
//  704   uint8_t final_step_check = 0;                         /* For calibration loop algorithm: Flag for additional check of last trimming step */
//  705   
//  706   /* Check the OPAMP handle allocation */
//  707   /* Check if OPAMP locked */
//  708   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED))
//  709   {
//  710     status = HAL_ERROR;
//  711   }
//  712   else
//  713   {
//  714   
//  715     /* Check if OPAMP in calibration mode and calibration not yet enable */
//  716     if(hopamp->State == HAL_OPAMP_STATE_READY)
//  717     {
//  718       /* Check the parameter */
//  719       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  720       assert_param(IS_OPAMP_POWERMODE(hopamp->Init.PowerMode));
//  721       
//  722       /* Update OPAMP state */
//  723       hopamp->State = HAL_OPAMP_STATE_CALIBBUSY;
//  724       
//  725       /* Backup of switches configuration to restore it at the end of the     */
//  726       /* calibration.                                                         */
//  727       tmp_OpaxSwitchesContextBackup = READ_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES(hopamp));
//  728   
//  729       /* Open all switches on non-inverting input, inverting input and output */
//  730       /* feedback.                                                            */
//  731       CLEAR_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES(hopamp));
//  732 
//  733       /* Set calibration mode to user programmed trimming values */
//  734       SET_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  735 
//  736       
//  737       /* Select trimming settings depending on power mode */
//  738       if (hopamp->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  739       {
//  740         tmp_opamp_otr_otuser = OPAMP_OTR_OT_USER;
//  741         tmp_opamp_reg_trimming = &OPAMP->OTR;
//  742       }
//  743       else
//  744       {
//  745         tmp_opamp_otr_otuser = 0x00000000;
//  746         tmp_opamp_reg_trimming = &OPAMP->LPOTR;
//  747       }
//  748 
//  749       
//  750       /* Enable the selected opamp */
//  751       CLEAR_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD(hopamp));
//  752 
//  753       /* Perform trimming for both differential transistors pair high and low */
//  754       for (trimming_diff_pair_iteration_count = 0; trimming_diff_pair_iteration_count <=1; trimming_diff_pair_iteration_count++)
//  755       {
//  756         if (trimming_diff_pair_iteration_count == 0)
//  757         {
//  758           /* Calibration of transistors differential pair high (NMOS) */
//  759           trimming_diff_pair = OPAMP_FACTORYTRIMMING_N;
//  760           opamp_trimmingvalue = &opamp_trimmingvaluen;
//  761           
//  762           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  763           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  764           tmp_Opaxcalout_DefaultSate = RESET;
//  765 
//  766           /* Enable calibration for N differential pair */
//  767           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_L(hopamp),
//  768                                  OPAMP_CSR_OPAXCAL_H(hopamp) );
//  769         }
//  770         else /* (trimming_diff_pair_iteration_count == 1) */
//  771         {
//  772           /* Calibration of transistors differential pair low (PMOS) */
//  773           trimming_diff_pair = OPAMP_FACTORYTRIMMING_P;
//  774           opamp_trimmingvalue = &opamp_trimmingvaluep;
//  775           
//  776           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  777           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  778           tmp_Opaxcalout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp);
//  779           
//  780           /* Enable calibration for P differential pair */
//  781           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_H(hopamp),
//  782                                  OPAMP_CSR_OPAXCAL_L(hopamp) );
//  783         }
//  784         
//  785       
//  786         /* Perform calibration parameter search by dichotomy sweep */
//  787         /*  - Delta initial value 16: for 5 dichotomy steps: 16 for the       */
//  788         /*    initial range, then successive delta sweeps (8, 4, 2, 1).       */
//  789         /*    can extend the search range to +/- 15 units.                    */
//  790         /*  - Trimming initial value 15: search range will go from 0 to 30    */
//  791         /*    (Trimming value 31 is forbidden).                               */
//  792         /* Note: After dichotomy sweep, the trimming result is determined.    */
//  793         /*       However, the final trimming step is deduced from previous    */
//  794         /*       trimming steps tested but is not effectively tested.         */
//  795         /*       An additional test step (using variable "final_step_check")  */
//  796         /*       allow to Test the final trimming step.                       */
//  797         *opamp_trimmingvalue = 15;
//  798         delta = 16;
//  799 
//  800         while ((delta != 0) || (final_step_check == 1))
//  801         {
//  802           /* Set candidate trimming */
//  803           MODIFY_REG(*tmp_opamp_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  804                                               OPAMP_OFFSET_TRIM_SET(hopamp, trimming_diff_pair, *opamp_trimmingvalue) | tmp_opamp_otr_otuser);
//  805           
//  806           /* Offset trimming time: during calibration, minimum time needed    */
//  807           /* between two steps to have 1 mV accuracy.                         */
//  808           HAL_Delay(OPAMP_TRIMMING_DELAY);
//  809 
//  810           /* Set flag for additional check of last trimming step equal to     */
//  811           /* dichotomy step before its division by 2 (equivalent to previous  */
//  812           /* value of dichotomy step).                                        */
//  813           final_step_check = delta;
//  814           
//  815           /* Divide range by 2 to continue dichotomy sweep */
//  816           delta >>= 1;
//  817             
//  818           /* Set trimming values for next iteration in function of trimming   */
//  819           /* result toggle (versus initial state).                            */
//  820           /* Note: on the last trimming loop, delta is equal to 0 and         */
//  821           /*       therefore has no effect.                                   */
//  822           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp)) != tmp_Opaxcalout_DefaultSate)
//  823           {
//  824             /* If calibration output is has toggled, try lower trimming */
//  825             *opamp_trimmingvalue -= delta;
//  826           }
//  827           else
//  828           {
//  829             /* If calibration output is has not toggled, try higher trimming */
//  830             *opamp_trimmingvalue += delta;
//  831           }
//  832 
//  833         }
//  834         
//  835         /* Check trimming result of the selected step and perform final fine  */
//  836         /* trimming.                                                          */
//  837         /*  - If calibration output is has toggled: the current step is       */
//  838         /*    already optimized.                                              */
//  839         /*  - If calibration output is has not toggled: the current step can  */
//  840         /*    be optimized by incrementing it of one step.                    */
//  841         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp)) == tmp_Opaxcalout_DefaultSate)
//  842         {
//  843           *opamp_trimmingvalue += 1;
//  844           
//  845           /* Set final fine trimming */
//  846           MODIFY_REG(*tmp_opamp_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  847                                               OPAMP_OFFSET_TRIM_SET(hopamp, trimming_diff_pair, *opamp_trimmingvalue) | tmp_opamp_otr_otuser);
//  848         }
//  849         
//  850       }
//  851 
//  852       
//  853       /* Disable calibration for P and N differential pairs */
//  854       /* Disable the selected opamp */
//  855       CLEAR_BIT (OPAMP->CSR, (OPAMP_CSR_OPAXCAL_H(hopamp) | 
//  856                               OPAMP_CSR_OPAXCAL_L(hopamp) |
//  857                               OPAMP_CSR_OPAXPD(hopamp))    );
//  858 
//  859       /* Backup of switches configuration to restore it at the end of the     */
//  860       /* calibration.                                                         */
//  861       SET_BIT(OPAMP->CSR, tmp_OpaxSwitchesContextBackup);
//  862       
//  863       /* Self calibration is successful */
//  864       /* Store calibration (user trimming) results in init structure. */
//  865       
//  866       /* Set user trimming mode */  
//  867       hopamp->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  868       
//  869       /* Affect calibration parameters depending on mode normal/low power */
//  870       if (hopamp->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  871       {
//  872         /* Write calibration result N */
//  873         hopamp->Init.TrimmingValueN = opamp_trimmingvaluen;
//  874         /* Write calibration result P */
//  875         hopamp->Init.TrimmingValueP = opamp_trimmingvaluep;
//  876       }
//  877       else
//  878       {
//  879         /* Write calibration result N */
//  880         hopamp->Init.TrimmingValueNLowPower = opamp_trimmingvaluen;
//  881         /* Write calibration result P */
//  882         hopamp->Init.TrimmingValuePLowPower = opamp_trimmingvaluep;
//  883       }
//  884       
//  885       /* Update OPAMP state */
//  886       hopamp->State = HAL_OPAMP_STATE_READY;
//  887 
//  888     }
//  889     
//  890     else
//  891     {
//  892       /* OPAMP can not be calibrated from this mode */ 
//  893       status = HAL_ERROR;
//  894     }
//  895   }
//  896   
//  897   return status;
//  898 }
//  899 
//  900 /**
//  901   * @}
//  902   */
//  903 
//  904 /**
//  905   * @}
//  906   */
//  907       
//  908 /** @defgroup OPAMP_Exported_Functions_Group3 Peripheral Control functions 
//  909  *  @brief   Peripheral Control functions 
//  910  *
//  911 @verbatim   
//  912  ===============================================================================
//  913                       ##### Peripheral Control functions #####
//  914  ===============================================================================  
//  915     [..]
//  916     This subsection provides a set of functions allowing to control the OPAMP data 
//  917     transfers.
//  918 
//  919 
//  920 
//  921 @endverbatim
//  922   * @{
//  923   */
//  924 
//  925 /**
//  926   * @brief  Lock the selected opamp configuration.
//  927   *         Caution: On STM32L1, HAL OPAMP lock is software lock only
//  928   *         (not hardware lock as available on some other STM32 devices)
//  929   * @param  hopamp: OPAMP handle
//  930   * @retval HAL status
//  931   */
//  932 HAL_StatusTypeDef HAL_OPAMP_Lock(OPAMP_HandleTypeDef* hopamp)
//  933 {
//  934   HAL_StatusTypeDef status = HAL_OK;
//  935 
//  936   /* Check the OPAMP handle allocation */
//  937   /* Check if OPAMP locked */
//  938   /* OPAMP can be locked when enabled and running in normal mode */ 
//  939   /*   It is meaningless otherwise */
//  940   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_RESET) \ 
//  941                       || (hopamp->State == HAL_OPAMP_STATE_READY) \ 
//  942                       || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY)\ 
//  943                       || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED))
//  944   
//  945   {
//  946     status = HAL_ERROR;
//  947   }
//  948   
//  949   else
//  950   {
//  951     /* Check the parameter */
//  952     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  953   
//  954    /* OPAMP state changed to locked */
//  955     hopamp->State = HAL_OPAMP_STATE_BUSYLOCKED;
//  956   }
//  957   return status; 
//  958 }
//  959 
//  960 /**
//  961   * @brief  Return the OPAMP factory trimming value
//  962   *         Caution: On STM32L1 OPAMP, user can retrieve factory trimming if 
//  963   *                  OPAMP has never been set to user trimming before.
//  964   *                  Therefore, this fonction must be called when OPAMP init  
//  965   *                  parameter "UserTrimming" is set to trimming factory, 
//  966   *                  and before OPAMP  calibration (function 
//  967   *                  "HAL_OPAMP_SelfCalibrate()").
//  968   *                  Otherwise, factory triming value cannot be retrieved and 
//  969   *                  error status is returned.
//  970   * @param  hopamp : OPAMP handle
//  971   * @param  trimmingoffset : Trimming offset (P or N)
//  972   *         This parameter must be a value of @ref OPAMP_FactoryTrimming
//  973   * @note   Calibration parameter retrieved is corresponding to the mode 
//  974   *         specified in OPAMP init structure (mode normal or low-power). 
//  975   *         To retrieve calibration parameters for both modes, repeat this 
//  976   *         function after OPAMP init structure accordingly updated.
//  977   * @retval Trimming value (P or N): range: 0->31
//  978   *         or OPAMP_FACTORYTRIMMING_DUMMY if trimming value is not available
//  979   *
//  980   */
//  981 HAL_OPAMP_TrimmingValueTypeDef HAL_OPAMP_GetTrimOffset (OPAMP_HandleTypeDef *hopamp, uint32_t trimmingoffset)
//  982 { 
//  983   HAL_OPAMP_TrimmingValueTypeDef trimmingvalue;
//  984   __IO uint32_t* tmp_opamp_reg_trimming;  /* Selection of register of trimming depending on power mode: OTR or LPOTR */
//  985   
//  986   /* Check the OPAMP handle allocation */
//  987   /* Value can be retrieved in HAL_OPAMP_STATE_READY state */
//  988   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_RESET)
//  989                       || (hopamp->State == HAL_OPAMP_STATE_BUSY)
//  990                       || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY)
//  991                       || (hopamp->State == HAL_OPAMP_STATE_BUSYLOCKED))
//  992   {
//  993     trimmingvalue = OPAMP_FACTORYTRIMMING_DUMMY;
//  994   }
//  995   else
//  996   {
//  997     /* Check the parameter */
//  998     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  999     assert_param(IS_OPAMP_FACTORYTRIMMING(trimmingoffset));
// 1000     assert_param(IS_OPAMP_POWERMODE(hopamp->Init.PowerMode));
// 1001     
// 1002     /* Check the trimming mode */
// 1003     if (hopamp->Init.UserTrimming == OPAMP_TRIMMING_USER) 
// 1004     {
// 1005       /* This fonction must called when OPAMP init parameter "UserTrimming"   */
// 1006       /* is set to trimming factory, and before OPAMP calibration (function   */
// 1007       /* "HAL_OPAMP_SelfCalibrate()").                                        */
// 1008       /* Otherwise, factory triming value cannot be retrieved and error       */
// 1009       /* status is returned.                                                  */
// 1010       trimmingvalue = OPAMP_FACTORYTRIMMING_DUMMY;
// 1011     }
// 1012     else
// 1013     {
// 1014       /* Select trimming settings depending on power mode */
// 1015       if (hopamp->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
// 1016       {
// 1017         tmp_opamp_reg_trimming = &OPAMP->OTR;
// 1018       }
// 1019       else
// 1020       {
// 1021         tmp_opamp_reg_trimming = &OPAMP->LPOTR;
// 1022       }
// 1023       
// 1024       /* Get factory trimming  */
// 1025       trimmingvalue = ((*tmp_opamp_reg_trimming >> OPAMP_OFFSET_TRIM_BITSPOSITION(hopamp, trimmingoffset)) & OPAMP_TRIM_VALUE_MASK);
// 1026     }
// 1027   }
// 1028   
// 1029   return trimmingvalue;
// 1030 }
// 1031 
// 1032 /**
// 1033   * @}
// 1034   */
// 1035 
// 1036 
// 1037 /** @defgroup OPAMP_Exported_Functions_Group4 Peripheral State functions 
// 1038  *  @brief   Peripheral State functions 
// 1039  *
// 1040 @verbatim   
// 1041  ===============================================================================
// 1042                       ##### Peripheral State functions #####
// 1043  ===============================================================================
// 1044     [..]
// 1045     This subsection permit to get in run-time the status of the peripheral.
// 1046 
// 1047 @endverbatim
// 1048   * @{
// 1049   */
// 1050 
// 1051 /**
// 1052   * @brief  Return the OPAMP state
// 1053   * @param  hopamp : OPAMP handle
// 1054   * @retval HAL state
// 1055   */
// 1056 HAL_OPAMP_StateTypeDef HAL_OPAMP_GetState(OPAMP_HandleTypeDef* hopamp)
// 1057 {
// 1058   /* Check the OPAMP handle allocation */
// 1059   if(hopamp == NULL)
// 1060   {
// 1061     return HAL_OPAMP_STATE_RESET;
// 1062   }
// 1063 
// 1064   /* Check the parameter */
// 1065   assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
// 1066 
// 1067   return hopamp->State;
// 1068 }
// 1069 
// 1070 /**
// 1071   * @}
// 1072   */
// 1073 
// 1074 /**
// 1075   * @}
// 1076   */
// 1077 
// 1078 #endif /* STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX || STM32L162xC || STM32L152xC || STM32L151xC */
// 1079 
// 1080 #endif /* HAL_OPAMP_MODULE_ENABLED */
// 1081 /**
// 1082   * @}
// 1083   */
// 1084 
// 1085 /**
// 1086   * @}
// 1087   */
// 1088 
// 1089 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
