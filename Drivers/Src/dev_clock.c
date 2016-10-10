/**
 * @brief       : 
 *
 * @file        : clock.c
 * @author      : wangjian
 *
 * Version      : v0.0.1
 * Date         : 2016/09/21
 * Change Logs  :
 *
 * Date          Version      Author        Notes
 * 2016/09/21    v0.0.1        wangjian    first version
 */
/* Exported includes _--------------------------------------------------------*/
#include "device.h"

/*****************************************************************************
 * Function      : DevClockInit
 * Description   : System Clock Configuration
 * Input         : void  
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool DevClockInit(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

  __HAL_RCC_PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  //config RCC osc select
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_LSI
                              |RCC_OSCILLATORTYPE_LSE;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = (__DEVICE_HSI_CLK__ / 1000000);
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL4;
  RCC_OscInitStruct.PLL.PLLDIV = RCC_PLL_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    return false;
  }

  //config SYSCLK AHB APB1 APB2 CLK
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    return false;
  }
  
  //config RTC clock
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_RTC;
  PeriphClkInit.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    return false;
  }
  
  
//config systick clock
  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);
  
  SystemCoreClockUpdate();

  return true;
}

/*****************************************************************************
 * Function      : DevClockCoreGet
 * Description   : Get system core clock 
 * Input         : void
 * Output        : None
 * Return        : uint32_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t DevClockCoreGet( void )
{
    return HAL_RCC_GetHCLKFreq();
}

/*****************************************************************************
 * Function      : DevClockHSEGet
 * Description   : Get HSE clock 
 * Input         : void
 * Output        : None
 * Return        : uint32_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t DevClockHSEGet( void )
{
    return __DEVICE_HSE_CLK__;
}

/*****************************************************************************
 * Function      : DevClockHSIGet
 * Description   : Get HSI clock 
 * Input         : void
 * Output        : None
 * Return        : uint32_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t DevClockHSIGet( void )
{
    return __DEVICE_HSI_CLK__;
}

/*****************************************************************************
 * Function      : DevClockLSEGet
 * Description   : Get LSE clock 
 * Input         : void
 * Output        : None
 * Return        : uint32_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t DevClockLSEGet( void )
{
    return __DEVICE_LSE_CLK__;
}

/*****************************************************************************
 * Function      : DevClockLSIGet
 * Description   : Get LSI clock 
 * Input         : void
 * Output        : None
 * Return        : uint32_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t DevClockLSIGet( void )
{
    return __DEVICE_LSI_CLK__;
}

/*****************************************************************************
 * Function      : DevClockMCOEnable
 * Description   : Config and Enable MCO output on MCO1 pin(PA8).
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevClockMCOEnable( void )
{
    HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_LSI, RCC_MCODIV_16);
}

/*****************************************************************************
 * Function      : DevClockMCODisnable
 * Description   : Config and Disable MCO output on MCO1 pin(PA8).
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevClockMCODisnable( void )
{
    HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_NOCLOCK, RCC_MCODIV_1);
    
   // DevGpioDeInit(DEV_GPIO_PORTA, DEV_GPIO_PIN8);
}

