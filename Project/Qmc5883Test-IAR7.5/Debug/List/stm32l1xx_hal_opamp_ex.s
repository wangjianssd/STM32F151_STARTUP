///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.50.1.10123/W32 for ARM      21/Sep/2016  16:57:24
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp_ex.c
//    Command line =  
//        D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp_ex.c
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
//        D:\01work\proj\地磁\Code\Project\Qmc5883Test-IAR7.5\Debug\List\stm32l1xx_hal_opamp_ex.s
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
// D:\01work\proj\地磁\Code\Drivers\Core\STM32L1xx_HAL_Driver\Src\stm32l1xx_hal_opamp_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32l1xx_hal_opamp_ex.c
//    4   * @author  MCD Application Team
//    5   * @version V1.2.0
//    6   * @date    01-July-2016
//    7   * @brief   Extended OPAMP HAL module driver.
//    8   *
//    9   *          This file provides firmware functions to manage the following
//   10   *          functionalities of the operational amplifier(s)(OPAMP1, OPAMP2 etc)
//   11   *          peripheral:
//   12   *           + Extended Initialization and de-initialization functions
//   13   *           + Extended Peripheral Control functions
//   14   *         
//   15   ******************************************************************************
//   16   * @attention
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
//   19   *
//   20   * Redistribution and use in source and binary forms, with or without modification,
//   21   * are permitted provided that the following conditions are met:
//   22   *   1. Redistributions of source code must retain the above copyright notice,
//   23   *      this list of conditions and the following disclaimer.
//   24   *   2. Redistributions in binary form must reproduce the above copyright notice,
//   25   *      this list of conditions and the following disclaimer in the documentation
//   26   *      and/or other materials provided with the distribution.
//   27   *   3. Neither the name of STMicroelectronics nor the names of its contributors
//   28   *      may be used to endorse or promote products derived from this software
//   29   *      without specific prior written permission.
//   30   *
//   31   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   32   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   33   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//   34   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//   35   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   36   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   37   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//   38   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//   39   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//   40   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   41   *
//   42   ******************************************************************************
//   43   */
//   44 
//   45 /* Includes ------------------------------------------------------------------*/
//   46 #include "stm32l1xx_hal.h"
//   47 
//   48 #ifdef HAL_OPAMP_MODULE_ENABLED
//   49 
//   50 #if defined (STM32L151xCA) || defined (STM32L151xD) || defined (STM32L152xCA) || defined (STM32L152xD) || defined (STM32L162xCA) || defined (STM32L162xD) || defined (STM32L151xE) || defined (STM32L151xDX) || defined (STM32L152xE) || defined (STM32L152xDX) || defined (STM32L162xE) || defined (STM32L162xDX) || defined (STM32L162xC) || defined (STM32L152xC) || defined (STM32L151xC)
//   51 
//   52 /** @addtogroup STM32L1xx_HAL_Driver
//   53   * @{
//   54   */
//   55 
//   56 /** @defgroup OPAMPEx OPAMPEx
//   57   * @brief OPAMP Extended HAL module driver.
//   58   * @{
//   59   */
//   60 
//   61 /* Private typedef -----------------------------------------------------------*/
//   62 /* Private define ------------------------------------------------------------*/
//   63 /* Private macro -------------------------------------------------------------*/
//   64 /* Private variables ---------------------------------------------------------*/
//   65 /* Private function prototypes -----------------------------------------------*/
//   66 /* Exported functions --------------------------------------------------------*/
//   67 
//   68 /** @addtogroup OPAMPEx_Exported_Functions OPAMPEx Exported Functions
//   69   * @{
//   70   */
//   71 
//   72 /** @addtogroup OPAMPEx_Exported_Functions_Group1
//   73   * @brief    Extended operation functions
//   74   *
//   75 @verbatim
//   76  ===============================================================================
//   77               ##### Extended IO operation functions #####
//   78  ===============================================================================
//   79   [..]
//   80       (+) OPAMP Self calibration. 
//   81 
//   82 @endverbatim
//   83   * @{
//   84   */
//   85 
//   86 #if defined (STM32L151xD) || defined (STM32L152xD) || defined (STM32L162xD)
//   87 
//   88 /*  3 OPAMPS available */
//   89 /*  3 OPAMPS can be calibrated in parallel */
//   90 
//   91 /**
//   92   * @brief  Run the self calibration of the 3 OPAMPs in parallel.
//   93   * @note   Trimming values (PMOS & NMOS) are updated and user trimming is 
//   94   *         enabled is calibration is succesful.
//   95   * @note   Calibration is performed in the mode specified in OPAMP init
//   96   *         structure (mode normal or low-power). To perform calibration for
//   97   *         both modes, repeat this function twice after OPAMP init structure
//   98   *         accordingly updated.
//   99   * @note   Calibration runs about 10 ms (5 dichotmy steps, repeated for P  
//  100   *         and N transistors: 10 steps with 1 ms for each step).
//  101   * @param  hopamp1 handle
//  102   * @param  hopamp2 handle
//  103   * @param  hopamp3 handle
//  104   * @retval HAL status
//  105   */
//  106 HAL_StatusTypeDef HAL_OPAMPEx_SelfCalibrateAll(OPAMP_HandleTypeDef *hopamp1, OPAMP_HandleTypeDef *hopamp2, OPAMP_HandleTypeDef *hopamp3)
//  107 {
//  108   HAL_StatusTypeDef status = HAL_OK;
//  109   
//  110   uint32_t* opamp1_trimmingvalue = 0;
//  111   uint32_t opamp1_trimmingvaluen = 0;
//  112   uint32_t opamp1_trimmingvaluep = 0;
//  113   
//  114   uint32_t* opamp2_trimmingvalue = 0;
//  115   uint32_t opamp2_trimmingvaluen = 0;
//  116   uint32_t opamp2_trimmingvaluep = 0;
//  117   
//  118   uint32_t* opamp3_trimmingvalue = 0;
//  119   uint32_t opamp3_trimmingvaluen = 0;
//  120   uint32_t opamp3_trimmingvaluep = 0;
//  121   
//  122   uint32_t trimming_diff_pair = 0;          /* Selection of differential transistors pair high or low */
//  123 
//  124   __IO uint32_t* tmp_opamp1_reg_trimming;   /* Selection of register of trimming depending on power mode: OTR or LPOTR */
//  125   __IO uint32_t* tmp_opamp2_reg_trimming;
//  126   __IO uint32_t* tmp_opamp3_reg_trimming;
//  127   uint32_t tmp_opamp1_otr_otuser = 0;       /* Selection of bit OPAMP_OTR_OT_USER depending on trimming register pointed: OTR or LPOTR */
//  128   uint32_t tmp_opamp2_otr_otuser = 0;
//  129   uint32_t tmp_opamp3_otr_otuser = 0;
//  130   
//  131   uint32_t tmp_Opa1calout_DefaultSate = 0;  /* Bit OPAMP_CSR_OPA1CALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  132   uint32_t tmp_Opa2calout_DefaultSate = 0;  /* Bit OPAMP_CSR_OPA2CALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  133   uint32_t tmp_Opa3calout_DefaultSate = 0;  /* Bit OPAMP_CSR_OPA3CALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  134 
//  135   uint32_t tmp_OpaxSwitchesContextBackup = 0;
//  136   
//  137   uint8_t trimming_diff_pair_iteration_count = 0;       /* For calibration loop algorithm: to repeat the calibration loop for both differential transistors pair high and low */
//  138   uint8_t delta = 0;                                    /* For calibration loop algorithm: Variable for dichotomy steps value */
//  139   uint8_t final_step_check = 0;                         /* For calibration loop algorithm: Flag for additional check of last trimming step */
//  140   
//  141   /* Check the OPAMP handle allocation */
//  142   /* Check if OPAMP locked */
//  143   if((hopamp1 == NULL) || (hopamp1->State == HAL_OPAMP_STATE_BUSYLOCKED) ||
//  144      (hopamp2 == NULL) || (hopamp2->State == HAL_OPAMP_STATE_BUSYLOCKED) ||
//  145      (hopamp3 == NULL) || (hopamp3->State == HAL_OPAMP_STATE_BUSYLOCKED)   ) 
//  146   {
//  147     status = HAL_ERROR;
//  148   }
//  149   else
//  150   {
//  151   
//  152     /* Check if OPAMP in calibration mode and calibration not yet enable */
//  153     if((hopamp1->State == HAL_OPAMP_STATE_READY) &&
//  154        (hopamp2->State == HAL_OPAMP_STATE_READY) &&
//  155        (hopamp3->State == HAL_OPAMP_STATE_READY)   )
//  156     {
//  157       /* Check the parameter */
//  158       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp1->Instance));
//  159       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp2->Instance));
//  160       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp3->Instance));
//  161       assert_param(IS_OPAMP_POWERMODE(hopamp1->Init.PowerMode));
//  162       assert_param(IS_OPAMP_POWERMODE(hopamp2->Init.PowerMode));
//  163       assert_param(IS_OPAMP_POWERMODE(hopamp3->Init.PowerMode));
//  164       
//  165       /* Update OPAMP state */
//  166       hopamp1->State = HAL_OPAMP_STATE_CALIBBUSY;
//  167       hopamp2->State = HAL_OPAMP_STATE_CALIBBUSY;
//  168       hopamp3->State = HAL_OPAMP_STATE_CALIBBUSY;
//  169       
//  170       /* Backup of switches configuration to restore it at the end of the     */
//  171       /* calibration.                                                         */
//  172       tmp_OpaxSwitchesContextBackup = READ_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES_ALL_OPAMPS);
//  173       
//  174       /* Open all switches on non-inverting input, inverting input and output */
//  175       /* feedback.                                                            */
//  176       CLEAR_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES_ALL_OPAMPS);
//  177       
//  178       /* Set calibration mode to user programmed trimming values */
//  179       SET_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  180       
//  181       /* Select trimming settings depending on power mode */
//  182       if (hopamp1->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  183       {
//  184         tmp_opamp1_otr_otuser = OPAMP_OTR_OT_USER;
//  185         tmp_opamp1_reg_trimming = &OPAMP->OTR;
//  186       }
//  187       else
//  188       {
//  189         tmp_opamp1_otr_otuser = 0x00000000;
//  190         tmp_opamp1_reg_trimming = &OPAMP->LPOTR;
//  191       }
//  192       
//  193       if (hopamp2->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  194       {
//  195         tmp_opamp2_otr_otuser = OPAMP_OTR_OT_USER;
//  196         tmp_opamp2_reg_trimming = &OPAMP->OTR;
//  197       }
//  198       else
//  199       {
//  200         tmp_opamp2_otr_otuser = 0x00000000;
//  201         tmp_opamp2_reg_trimming = &OPAMP->LPOTR;
//  202       }
//  203       
//  204       if (hopamp3->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  205       {
//  206         tmp_opamp3_otr_otuser = OPAMP_OTR_OT_USER;
//  207         tmp_opamp3_reg_trimming = &OPAMP->OTR;
//  208       }
//  209       else
//  210       {
//  211         tmp_opamp3_otr_otuser = 0x00000000;
//  212         tmp_opamp3_reg_trimming = &OPAMP->LPOTR;
//  213       }
//  214       
//  215       /* Enable the selected opamp */
//  216       CLEAR_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD_ALL);
//  217       
//  218       /* Perform trimming for both differential transistors pair high and low */
//  219       for (trimming_diff_pair_iteration_count = 0; trimming_diff_pair_iteration_count <=1; trimming_diff_pair_iteration_count++)
//  220       {
//  221         if (trimming_diff_pair_iteration_count == 0)
//  222         {
//  223           /* Calibration of transistors differential pair high (NMOS) */
//  224           trimming_diff_pair = OPAMP_FACTORYTRIMMING_N;
//  225           opamp1_trimmingvalue = &opamp1_trimmingvaluen;
//  226           opamp2_trimmingvalue = &opamp2_trimmingvaluen;
//  227           opamp3_trimmingvalue = &opamp3_trimmingvaluen;
//  228           
//  229           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  230           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  231           tmp_Opa1calout_DefaultSate = RESET;
//  232           tmp_Opa2calout_DefaultSate = RESET;
//  233           tmp_Opa3calout_DefaultSate = RESET;
//  234           
//  235           /* Enable calibration for N differential pair */
//  236           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_L_ALL,
//  237                                  OPAMP_CSR_OPAXCAL_H_ALL);
//  238         }
//  239         else /* (trimming_diff_pair_iteration_count == 1) */
//  240         {
//  241           /* Calibration of transistors differential pair low (PMOS) */
//  242           trimming_diff_pair = OPAMP_FACTORYTRIMMING_P;
//  243           opamp1_trimmingvalue = &opamp1_trimmingvaluep;
//  244           opamp2_trimmingvalue = &opamp2_trimmingvaluep;
//  245           opamp3_trimmingvalue = &opamp3_trimmingvaluep;
//  246           
//  247           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  248           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  249           tmp_Opa1calout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp1);
//  250           tmp_Opa2calout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp2);
//  251           tmp_Opa3calout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp3);
//  252           
//  253           /* Enable calibration for P differential pair */
//  254           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_H_ALL,
//  255                                  OPAMP_CSR_OPAXCAL_L_ALL);
//  256         }
//  257         
//  258       
//  259         /* Perform calibration parameter search by dichotomy sweep */
//  260         /*  - Delta initial value 16: for 5 dichotomy steps: 16 for the       */
//  261         /*    initial range, then successive delta sweeps (8, 4, 2, 1).       */
//  262         /*    can extend the search range to +/- 15 units.                    */
//  263         /*  - Trimming initial value 15: search range will go from 0 to 30    */
//  264         /*    (Trimming value 31 is forbidden).                               */
//  265         /* Note: After dichotomy sweep, the trimming result is determined.    */
//  266         /*       However, the final trimming step is deduced from previous    */
//  267         /*       trimming steps tested but is not effectively tested.         */
//  268         /*       An additional test step (using variable "final_step_check")  */
//  269         /*       allow to Test the final trimming step.                       */
//  270         *opamp1_trimmingvalue = 15;
//  271         *opamp2_trimmingvalue = 15;
//  272         *opamp3_trimmingvalue = 15;
//  273         delta = 16;
//  274         
//  275         while ((delta != 0) || (final_step_check == 1))
//  276         {
//  277           /* Set candidate trimming */
//  278           MODIFY_REG(*tmp_opamp1_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  279                                                OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, *opamp1_trimmingvalue) | tmp_opamp1_otr_otuser);
//  280 
//  281           MODIFY_REG(*tmp_opamp2_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  282                                                OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, *opamp2_trimmingvalue) | tmp_opamp2_otr_otuser);
//  283 
//  284           MODIFY_REG(*tmp_opamp3_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp3, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  285                                                OPAMP_OFFSET_TRIM_SET(hopamp3, trimming_diff_pair, *opamp3_trimmingvalue) | tmp_opamp3_otr_otuser);
//  286           
//  287           /* Offset trimming time: during calibration, minimum time needed    */
//  288           /* between two steps to have 1 mV accuracy.                         */
//  289           HAL_Delay(OPAMP_TRIMMING_DELAY);
//  290           
//  291           /* Set flag for additional check of last trimming step equal to     */
//  292           /* dichotomy step before its division by 2 (equivalent to previous  */
//  293           /* value of dichotomy step).                                        */
//  294           final_step_check = delta;
//  295           
//  296           /* Divide range by 2 to continue dichotomy sweep */
//  297           delta >>= 1;
//  298           
//  299           /* Set trimming values for next iteration in function of trimming   */
//  300           /* result toggle (versus initial state).                            */
//  301           /* Trimming values update with dichotomy delta of previous          */
//  302           /* iteration.                                                       */
//  303           /* Note: on the last trimming loop, delta is equal to 0 and         */
//  304           /*       therefore has no effect.                                   */
//  305           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp1)) != tmp_Opa1calout_DefaultSate)
//  306           {
//  307             /* If calibration output is has toggled, try lower trimming */
//  308             *opamp1_trimmingvalue -= delta;
//  309           }
//  310           else
//  311           {
//  312             /* If calibration output is has not toggled, try higher trimming */
//  313             *opamp1_trimmingvalue += delta;
//  314           }
//  315           
//  316           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp2)) != tmp_Opa2calout_DefaultSate)
//  317           {
//  318             /* If calibration output is has toggled, try lower trimming */
//  319             *opamp2_trimmingvalue -= delta;
//  320           }
//  321           else
//  322           {
//  323             /* If calibration output is has not toggled, try higher trimming */
//  324             *opamp2_trimmingvalue += delta;
//  325           }
//  326 
//  327           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp3)) != tmp_Opa3calout_DefaultSate)
//  328           {
//  329             /* If calibration output is has toggled, try lower trimming */
//  330             *opamp3_trimmingvalue -= delta;
//  331           }
//  332           else
//  333           {
//  334             /* If calibration output is has not toggled, try higher trimming */
//  335             *opamp3_trimmingvalue += delta;
//  336           }
//  337         }
//  338         
//  339         /* Check trimming result of the selected step and perform final fine  */
//  340         /* trimming.                                                          */
//  341         /*  - If calibration output is has toggled: the current step is       */
//  342         /*    already optimized.                                              */
//  343         /*  - If calibration output is has not toggled: the current step can  */
//  344         /*    be optimized by incrementing it of one step.                    */
//  345         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp1)) == tmp_Opa1calout_DefaultSate)
//  346         {
//  347           *opamp1_trimmingvalue += 1;
//  348           
//  349           /* Set final fine trimming */
//  350           MODIFY_REG(*tmp_opamp1_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  351                                                OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, *opamp1_trimmingvalue) | tmp_opamp1_otr_otuser);
//  352         }
//  353         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp2)) == tmp_Opa2calout_DefaultSate)
//  354         {
//  355           *opamp2_trimmingvalue += 1;
//  356           
//  357           /* Set final fine trimming */
//  358           MODIFY_REG(*tmp_opamp2_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  359                                                OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, *opamp2_trimmingvalue) | tmp_opamp2_otr_otuser);
//  360         }
//  361         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp3)) == tmp_Opa3calout_DefaultSate)
//  362         {
//  363           *opamp3_trimmingvalue += 1;
//  364           
//  365           /* Set final fine trimming */
//  366           MODIFY_REG(*tmp_opamp3_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp3, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  367                                                OPAMP_OFFSET_TRIM_SET(hopamp3, trimming_diff_pair, *opamp3_trimmingvalue) | tmp_opamp3_otr_otuser);
//  368         }
//  369         
//  370       }
//  371        
//  372 
//  373       /* Disable calibration for P and N differential pairs */
//  374       /* Disable the selected opamp */
//  375       CLEAR_BIT (OPAMP->CSR, (OPAMP_CSR_OPAXCAL_H_ALL | 
//  376                               OPAMP_CSR_OPAXCAL_L_ALL |
//  377                               OPAMP_CSR_OPAXPD_ALL     ));
//  378       
//  379       /* Backup of switches configuration to restore it at the end of the     */
//  380       /* calibration.                                                         */
//  381       SET_BIT(OPAMP->CSR, tmp_OpaxSwitchesContextBackup);
//  382       
//  383       /* Self calibration is successful */
//  384       /* Store calibration (user trimming) results in init structure. */
//  385       
//  386       /* Set user trimming mode */  
//  387       hopamp1->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  388       hopamp2->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  389       hopamp3->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  390       
//  391       /* Affect calibration parameters depending on mode normal/low power */
//  392       if (hopamp1->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  393       {
//  394         /* Write calibration result N */
//  395         hopamp1->Init.TrimmingValueN = opamp1_trimmingvaluen;
//  396         /* Write calibration result P */
//  397         hopamp1->Init.TrimmingValueP = opamp1_trimmingvaluep;
//  398       }
//  399       else
//  400       {
//  401         /* Write calibration result N */
//  402         hopamp1->Init.TrimmingValueNLowPower = opamp1_trimmingvaluen;
//  403         /* Write calibration result P */
//  404         hopamp1->Init.TrimmingValuePLowPower = opamp1_trimmingvaluep;
//  405       }
//  406       
//  407       if (hopamp2->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  408       {
//  409         /* Write calibration result N */
//  410         hopamp2->Init.TrimmingValueN = opamp2_trimmingvaluen;
//  411         /* Write calibration result P */
//  412         hopamp2->Init.TrimmingValueP = opamp2_trimmingvaluep;
//  413       }
//  414       else
//  415       {
//  416         /* Write calibration result N */
//  417         hopamp2->Init.TrimmingValueNLowPower = opamp2_trimmingvaluen;
//  418         /* Write calibration result P */
//  419         hopamp2->Init.TrimmingValuePLowPower = opamp2_trimmingvaluep;
//  420       }
//  421       
//  422       if (hopamp3->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  423       {
//  424         /* Write calibration result N */
//  425         hopamp3->Init.TrimmingValueN = opamp3_trimmingvaluen;
//  426         /* Write calibration result P */
//  427         hopamp3->Init.TrimmingValueP = opamp3_trimmingvaluep;
//  428       }
//  429       else
//  430       {
//  431         /* Write calibration result N */
//  432         hopamp3->Init.TrimmingValueNLowPower = opamp3_trimmingvaluen;
//  433         /* Write calibration result P */
//  434         hopamp3->Init.TrimmingValuePLowPower = opamp3_trimmingvaluep;
//  435       }
//  436 
//  437       /* Update OPAMP state */
//  438       hopamp1->State = HAL_OPAMP_STATE_READY;
//  439       hopamp2->State = HAL_OPAMP_STATE_READY;
//  440       hopamp3->State = HAL_OPAMP_STATE_READY;
//  441 
//  442     }
//  443     else
//  444     {
//  445       /* OPAMP can not be calibrated from this mode */ 
//  446       status = HAL_ERROR;
//  447     }
//  448   }
//  449 
//  450   return status;
//  451 }
//  452 
//  453 #else
//  454 
//  455 /*  2 OPAMPS available */
//  456 /*  2 OPAMPS can be calibrated in parallel */
//  457 
//  458 /**
//  459   * @brief  Run the self calibration of the 2 OPAMPs in parallel.
//  460   * @note   Trimming values (PMOS & NMOS) are updated and user trimming is 
//  461   *         enabled is calibration is succesful.
//  462   * @note   Calibration is performed in the mode specified in OPAMP init
//  463   *         structure (mode normal or low-power). To perform calibration for
//  464   *         both modes, repeat this function twice after OPAMP init structure
//  465   *         accordingly updated.
//  466   * @note   Calibration runs about 10 ms (5 dichotmy steps, repeated for P  
//  467   *         and N transistors: 10 steps with 1 ms for each step).
//  468   * @param  hopamp1 handle
//  469   * @param  hopamp2 handle
//  470   * @retval HAL status
//  471   */
//  472 HAL_StatusTypeDef HAL_OPAMPEx_SelfCalibrateAll(OPAMP_HandleTypeDef *hopamp1, OPAMP_HandleTypeDef *hopamp2)
//  473 {
//  474   HAL_StatusTypeDef status = HAL_OK;
//  475   
//  476   uint32_t* opamp1_trimmingvalue = 0;
//  477   uint32_t opamp1_trimmingvaluen = 0;
//  478   uint32_t opamp1_trimmingvaluep = 0;
//  479   
//  480   uint32_t* opamp2_trimmingvalue = 0;
//  481   uint32_t opamp2_trimmingvaluen = 0;
//  482   uint32_t opamp2_trimmingvaluep = 0;
//  483   
//  484   uint32_t trimming_diff_pair = 0;          /* Selection of differential transistors pair high or low */
//  485 
//  486   __IO uint32_t* tmp_opamp1_reg_trimming;   /* Selection of register of trimming depending on power mode: OTR or LPOTR */
//  487   __IO uint32_t* tmp_opamp2_reg_trimming;
//  488   uint32_t tmp_opamp1_otr_otuser = 0;       /* Selection of bit OPAMP_OTR_OT_USER depending on trimming register pointed: OTR or LPOTR */
//  489   uint32_t tmp_opamp2_otr_otuser = 0;
//  490   
//  491   uint32_t tmp_Opa1calout_DefaultSate = 0;  /* Bit OPAMP_CSR_OPA1CALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  492   uint32_t tmp_Opa2calout_DefaultSate = 0;  /* Bit OPAMP_CSR_OPA2CALOUT default state when trimming value is 00000b. Used to detect the bit toggling */
//  493 
//  494   uint32_t tmp_OpaxSwitchesContextBackup = 0;
//  495   
//  496   uint8_t trimming_diff_pair_iteration_count = 0;       /* For calibration loop algorithm: to repeat the calibration loop for both differential transistors pair high and low */
//  497   uint8_t delta = 0;                                    /* For calibration loop algorithm: Variable for dichotomy steps value */
//  498   uint8_t final_step_check = 0;                         /* For calibration loop algorithm: Flag for additional check of last trimming step */
//  499   
//  500   /* Check the OPAMP handle allocation */
//  501   /* Check if OPAMP locked */
//  502   if((hopamp1 == NULL) || (hopamp1->State == HAL_OPAMP_STATE_BUSYLOCKED) ||
//  503      (hopamp2 == NULL) || (hopamp2->State == HAL_OPAMP_STATE_BUSYLOCKED)   ) 
//  504   {
//  505     status = HAL_ERROR;
//  506   }
//  507   else
//  508   {
//  509   
//  510     /* Check if OPAMP in calibration mode and calibration not yet enable */
//  511     if((hopamp1->State == HAL_OPAMP_STATE_READY) &&
//  512        (hopamp2->State == HAL_OPAMP_STATE_READY)   )
//  513     {
//  514       /* Check the parameter */
//  515       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp1->Instance));
//  516       assert_param(IS_OPAMP_ALL_INSTANCE(hopamp2->Instance));
//  517       assert_param(IS_OPAMP_POWERMODE(hopamp1->Init.PowerMode));
//  518       assert_param(IS_OPAMP_POWERMODE(hopamp2->Init.PowerMode));
//  519       
//  520       /* Update OPAMP state */
//  521       hopamp1->State = HAL_OPAMP_STATE_CALIBBUSY;
//  522       hopamp2->State = HAL_OPAMP_STATE_CALIBBUSY;
//  523       
//  524       /* Backup of switches configuration to restore it at the end of the     */
//  525       /* calibration.                                                         */
//  526       tmp_OpaxSwitchesContextBackup = READ_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES_ALL_OPAMPS);
//  527       
//  528       /* Open all switches on non-inverting input, inverting input and output */
//  529       /* feedback.                                                            */
//  530       CLEAR_BIT(OPAMP->CSR, OPAMP_CSR_ALL_SWITCHES_ALL_OPAMPS);
//  531       
//  532       /* Set calibration mode to user programmed trimming values */
//  533       SET_BIT(OPAMP->OTR, OPAMP_OTR_OT_USER);
//  534       
//  535       /* Select trimming settings depending on power mode */
//  536       if (hopamp1->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  537       {
//  538         tmp_opamp1_otr_otuser = OPAMP_OTR_OT_USER;
//  539         tmp_opamp1_reg_trimming = &OPAMP->OTR;
//  540       }
//  541       else
//  542       {
//  543         tmp_opamp1_otr_otuser = 0x00000000;
//  544         tmp_opamp1_reg_trimming = &OPAMP->LPOTR;
//  545       }
//  546       
//  547       if (hopamp2->Init.PowerMode == OPAMP_POWERMODE_NORMAL)
//  548       {
//  549         tmp_opamp2_otr_otuser = OPAMP_OTR_OT_USER;
//  550         tmp_opamp2_reg_trimming = &OPAMP->OTR;
//  551       }
//  552       else
//  553       {
//  554         tmp_opamp2_otr_otuser = 0x00000000;
//  555         tmp_opamp2_reg_trimming = &OPAMP->LPOTR;
//  556       }
//  557       
//  558       /* Enable the selected opamp */
//  559       CLEAR_BIT (OPAMP->CSR, OPAMP_CSR_OPAXPD_ALL);
//  560       
//  561       /* Perform trimming for both differential transistors pair high and low */
//  562       for (trimming_diff_pair_iteration_count = 0; trimming_diff_pair_iteration_count <=1; trimming_diff_pair_iteration_count++)
//  563       {
//  564         if (trimming_diff_pair_iteration_count == 0)
//  565         {
//  566           /* Calibration of transistors differential pair high (NMOS) */
//  567           trimming_diff_pair = OPAMP_FACTORYTRIMMING_N;
//  568           opamp1_trimmingvalue = &opamp1_trimmingvaluen;
//  569           opamp2_trimmingvalue = &opamp2_trimmingvaluen;
//  570           
//  571           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  572           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  573           tmp_Opa1calout_DefaultSate = RESET;
//  574           tmp_Opa2calout_DefaultSate = RESET;
//  575           
//  576           /* Enable calibration for N differential pair */
//  577           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_L_ALL,
//  578                                  OPAMP_CSR_OPAXCAL_H_ALL);
//  579         }
//  580         else /* (trimming_diff_pair_iteration_count == 1) */
//  581         {
//  582           /* Calibration of transistors differential pair low (PMOS) */
//  583           trimming_diff_pair = OPAMP_FACTORYTRIMMING_P;
//  584           opamp1_trimmingvalue = &opamp1_trimmingvaluep;
//  585           opamp2_trimmingvalue = &opamp2_trimmingvaluep;
//  586           
//  587           /* Set bit OPAMP_CSR_OPAXCALOUT default state when trimming value   */
//  588           /* is 00000b. Used to detect the bit toggling during trimming.      */
//  589           tmp_Opa1calout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp1);
//  590           tmp_Opa2calout_DefaultSate = OPAMP_CSR_OPAXCALOUT(hopamp2);
//  591           
//  592           /* Enable calibration for P differential pair */
//  593           MODIFY_REG(OPAMP->CSR, OPAMP_CSR_OPAXCAL_H_ALL,
//  594                                  OPAMP_CSR_OPAXCAL_L_ALL);
//  595         }
//  596         
//  597       
//  598         /* Perform calibration parameter search by dichotomy sweep */
//  599         /*  - Delta initial value 16: for 5 dichotomy steps: 16 for the       */
//  600         /*    initial range, then successive delta sweeps (8, 4, 2, 1).       */
//  601         /*    can extend the search range to +/- 15 units.                    */
//  602         /*  - Trimming initial value 15: search range will go from 0 to 30    */
//  603         /*    (Trimming value 31 is forbidden).                               */
//  604         /* Note: After dichotomy sweep, the trimming result is determined.    */
//  605         /*       However, the final trimming step is deduced from previous    */
//  606         /*       trimming steps tested but is not effectively tested.         */
//  607         /*       An additional test step (using variable "final_step_check")  */
//  608         /*       allow to Test the final trimming step.                       */
//  609         *opamp1_trimmingvalue = 15;
//  610         *opamp2_trimmingvalue = 15;
//  611         delta = 16;
//  612         
//  613         while ((delta != 0) || (final_step_check == 1))
//  614         {
//  615           /* Set candidate trimming */
//  616           MODIFY_REG(*tmp_opamp1_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  617                                                OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, *opamp1_trimmingvalue) | tmp_opamp1_otr_otuser);
//  618 
//  619           MODIFY_REG(*tmp_opamp2_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  620                                                OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, *opamp2_trimmingvalue) | tmp_opamp2_otr_otuser);
//  621 
//  622           
//  623           /* Offset trimming time: during calibration, minimum time needed    */
//  624           /* between two steps to have 1 mV accuracy.                         */
//  625           HAL_Delay(OPAMP_TRIMMING_DELAY);
//  626           
//  627           /* Set flag for additional check of last trimming step equal to     */
//  628           /* dichotomy step before its division by 2 (equivalent to previous  */
//  629           /* value of dichotomy step).                                        */
//  630           final_step_check = delta;
//  631           
//  632           /* Divide range by 2 to continue dichotomy sweep */
//  633           delta >>= 1;
//  634           
//  635           /* Set trimming values for next iteration in function of trimming   */
//  636           /* result toggle (versus initial state).                            */
//  637           /* Trimming values update with dichotomy delta of previous          */
//  638           /* iteration.                                                       */
//  639           /* Note: on the last trimming loop, delta is equal to 0 and         */
//  640           /*       therefore has no effect.                                   */
//  641           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp1)) != tmp_Opa1calout_DefaultSate)
//  642           {
//  643             /* If calibration output is has toggled, try lower trimming */
//  644             *opamp1_trimmingvalue -= delta;
//  645           }
//  646           else
//  647           {
//  648             /* If calibration output is has not toggled, try higher trimming */
//  649             *opamp1_trimmingvalue += delta;
//  650           }
//  651           
//  652           if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp2)) != tmp_Opa2calout_DefaultSate)
//  653           {
//  654             /* If calibration output is has toggled, try lower trimming */
//  655             *opamp2_trimmingvalue -= delta;
//  656           }
//  657           else
//  658           {
//  659             /* If calibration output is has not toggled, try higher trimming */
//  660             *opamp2_trimmingvalue += delta;
//  661           }
//  662         }
//  663         
//  664         /* Check trimming result of the selected step and perform final fine  */
//  665         /* trimming.                                                          */
//  666         /*  - If calibration output is has toggled: the current step is       */
//  667         /*    already optimized.                                              */
//  668         /*  - If calibration output is has not toggled: the current step can  */
//  669         /*    be optimized by incrementing it of one step.                    */
//  670         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp1)) == tmp_Opa1calout_DefaultSate)
//  671         {
//  672           *opamp1_trimmingvalue += 1;
//  673           
//  674           /* Set final fine trimming */
//  675           MODIFY_REG(*tmp_opamp1_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  676                                                OPAMP_OFFSET_TRIM_SET(hopamp1, trimming_diff_pair, *opamp1_trimmingvalue) | tmp_opamp1_otr_otuser);
//  677         }
//  678         if (READ_BIT(OPAMP->CSR, OPAMP_CSR_OPAXCALOUT(hopamp2)) == tmp_Opa2calout_DefaultSate)
//  679         {
//  680           *opamp2_trimmingvalue += 1;
//  681           
//  682           /* Set final fine trimming */
//  683           MODIFY_REG(*tmp_opamp2_reg_trimming, OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, OPAMP_TRIM_VALUE_MASK) ,
//  684                                                OPAMP_OFFSET_TRIM_SET(hopamp2, trimming_diff_pair, *opamp2_trimmingvalue) | tmp_opamp2_otr_otuser);
//  685 
//  686         }
//  687         
//  688       }
//  689        
//  690 
//  691       /* Disable calibration for P and N differential pairs */
//  692       /* Disable the selected opamp */
//  693       CLEAR_BIT (OPAMP->CSR, (OPAMP_CSR_OPAXCAL_H_ALL | 
//  694                               OPAMP_CSR_OPAXCAL_L_ALL |
//  695                               OPAMP_CSR_OPAXPD_ALL     ));
//  696       
//  697       /* Backup of switches configuration to restore it at the end of the     */
//  698       /* calibration.                                                         */
//  699       SET_BIT(OPAMP->CSR, tmp_OpaxSwitchesContextBackup);
//  700       
//  701       /* Self calibration is successful */
//  702       /* Store calibration (user trimming) results in init structure. */
//  703       
//  704       /* Set user trimming mode */  
//  705       hopamp1->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  706       hopamp2->Init.UserTrimming = OPAMP_TRIMMING_USER;
//  707       
//  708       /* Affect calibration parameters depending on mode normal/low power */
//  709       if (hopamp1->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  710       {
//  711         /* Write calibration result N */
//  712         hopamp1->Init.TrimmingValueN = opamp1_trimmingvaluen;
//  713         /* Write calibration result P */
//  714         hopamp1->Init.TrimmingValueP = opamp1_trimmingvaluep;
//  715       }
//  716       else
//  717       {
//  718         /* Write calibration result N */
//  719         hopamp1->Init.TrimmingValueNLowPower = opamp1_trimmingvaluen;
//  720         /* Write calibration result P */
//  721         hopamp1->Init.TrimmingValuePLowPower = opamp1_trimmingvaluep;
//  722       }
//  723       
//  724       if (hopamp2->Init.PowerMode != OPAMP_POWERMODE_LOWPOWER)
//  725       {
//  726         /* Write calibration result N */
//  727         hopamp2->Init.TrimmingValueN = opamp2_trimmingvaluen;
//  728         /* Write calibration result P */
//  729         hopamp2->Init.TrimmingValueP = opamp2_trimmingvaluep;
//  730       }
//  731       else
//  732       {
//  733         /* Write calibration result N */
//  734         hopamp2->Init.TrimmingValueNLowPower = opamp2_trimmingvaluen;
//  735         /* Write calibration result P */
//  736         hopamp2->Init.TrimmingValuePLowPower = opamp2_trimmingvaluep;
//  737       }
//  738 
//  739       /* Update OPAMP state */
//  740       hopamp1->State = HAL_OPAMP_STATE_READY;
//  741       hopamp2->State = HAL_OPAMP_STATE_READY;
//  742 
//  743     }
//  744     else
//  745     {
//  746       /* OPAMP can not be calibrated from this mode */ 
//  747       status = HAL_ERROR;
//  748     }
//  749   }
//  750 
//  751   return status;
//  752 }
//  753 
//  754 #endif /* STM32L151xD || STM32L152xD || STM32L162xD */
//  755 
//  756 /**
//  757   * @}
//  758   */
//  759 
//  760 /** @defgroup OPAMPEx_Exported_Functions_Group2 Extended Peripheral Control functions 
//  761  *  @brief   Extended peripheral control functions 
//  762  *
//  763 @verbatim   
//  764  ===============================================================================
//  765              ##### Peripheral Control functions #####
//  766  ===============================================================================
//  767     [..]
//  768       (+) OPAMP unlock. 
//  769 
//  770 @endverbatim
//  771   * @{
//  772   */
//  773 
//  774 /**
//  775   * @brief  Unlock the selected opamp configuration.
//  776   *         This function must be called only when OPAMP is in state "locked".
//  777   * @param  hopamp: OPAMP handle
//  778   * @retval HAL status
//  779   */
//  780 HAL_StatusTypeDef HAL_OPAMPEx_Unlock(OPAMP_HandleTypeDef* hopamp)
//  781 {
//  782   HAL_StatusTypeDef status = HAL_OK;
//  783 
//  784   /* Check the OPAMP handle allocation */
//  785   /* Check if OPAMP locked */
//  786   if((hopamp == NULL) || (hopamp->State == HAL_OPAMP_STATE_RESET)
//  787                       || (hopamp->State == HAL_OPAMP_STATE_READY)
//  788                       || (hopamp->State == HAL_OPAMP_STATE_CALIBBUSY)
//  789                       || (hopamp->State == HAL_OPAMP_STATE_BUSY))
//  790   
//  791   {
//  792     status = HAL_ERROR;
//  793   }
//  794   else
//  795   {
//  796     /* Check the parameter */
//  797     assert_param(IS_OPAMP_ALL_INSTANCE(hopamp->Instance));
//  798   
//  799    /* OPAMP state changed to locked */
//  800     hopamp->State = HAL_OPAMP_STATE_BUSY;
//  801   }
//  802   return status; 
//  803 }
//  804 
//  805 /**
//  806   * @}
//  807   */
//  808 
//  809 /**
//  810   * @}
//  811   */
//  812 
//  813 #endif /* STM32L151xCA || STM32L151xD || STM32L152xCA || STM32L152xD || STM32L162xCA || STM32L162xD || STM32L151xE || STM32L151xDX || STM32L152xE || STM32L152xDX || STM32L162xE || STM32L162xDX || STM32L162xC || STM32L152xC || STM32L151xC */
//  814 
//  815 #endif /* HAL_OPAMP_MODULE_ENABLED */
//  816 /**
//  817   * @}
//  818   */
//  819 
//  820 /**
//  821   * @}
//  822   */
//  823 
//  824 /************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
// 
//
// 
//
//
//Errors: none
//Warnings: none
