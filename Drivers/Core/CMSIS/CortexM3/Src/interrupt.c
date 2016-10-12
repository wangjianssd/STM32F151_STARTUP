/**
 *
 * @brief       :  
 *
 * @file        : interrupt.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-09
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-09           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "interrupt.h"
#include "lib.h"
#include "core_cm3.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/


/* Variables -----------------------------------------------------------------*/
extern const uVectorEntry __vector_table[];
extern void __iar_program_start (void);
__no_init uVectorEntry IntVectTbl[CORE_INT_SRC_NBR + PERIPH_INT_SRC_NBR] @ INT_VECT_TABLE_ADDR;
__IO uint32_t SystemTick;


/* Function prototypes -------------------------------------------------------*/
void IntInit (void)
{
    uint32_t vect;
    
    IntVectTbl[0].ulPtr = __vector_table[0].ulPtr;
    
    for (vect = 1; vect < CORE_INT_SRC_NBR; vect++) 
    {
        IntVectTbl[vect].pfnHandler = __vector_table[vect].pfnHandler;
    }

    for (vect = CORE_INT_SRC_NBR; vect < (CORE_INT_SRC_NBR + PERIPH_INT_SRC_NBR); vect++) 
    {
        IntVectRegister(vect, IntHandlerDefault);
    }
}

void IntVectRegister (IRQn_Type irq, FNCT_VOID isr)
{ 
    if (irq < PERIPH_INT_SRC_NBR) 
    {
        IntVectTbl[irq + CORE_INT_SRC_NBR].pfnHandler = isr;
    }
}

void IntVectUnregister (IRQn_Type irq)
{ 
    if (irq < PERIPH_INT_SRC_NBR) 
    {
        IntVectTbl[irq + CORE_INT_SRC_NBR].pfnHandler = IntHandlerDefault;
    }
}

void IntEnable (IRQn_Type irq)
{
    NVIC_ClearPendingIRQ(irq);
    NVIC_EnableIRQ(irq);
}

void IntDisable (IRQn_Type irq)
{
    NVIC_ClearPendingIRQ(irq);
    NVIC_DisableIRQ(irq);
}

void IntHandlerDefault (void)
{
    while(DEF_TRUE);
}

void ResetHandler (void)
{
    __iar_program_start();
}

void NMIISR (void)
{
    while (DEF_TRUE);
}

void FaultISR (void)
{
    while (DEF_TRUE);
}

void MemFaultISR (void)
{
    while (DEF_TRUE);
}

void BusFaultISR (void)
{
    while (DEF_TRUE);
}

void UsageFaultISR (void)
{
    while (DEF_TRUE);
}

void ReservedISR (void)
{
    while (DEF_TRUE);
}

void PendSVISR (void)
{
    while (DEF_TRUE);
}

void SvcISR (void)
{
    while (DEF_TRUE);

}

void DebugMonISR (void)
{
    while (DEF_TRUE);
}

void SysTickISR (void)
{
    HAL_IncTick();

//#if APP_OS_EN > 0
//    
//#if OS_CRITICAL_METHOD == 3u
//    OS_CPU_SR  cpu_sr;
//#endif

//    OS_ENTER_CRITICAL();                         /* Tell uC/OS-II that we are starting an ISR               */
//    OSIntNesting++;
//    OS_EXIT_CRITICAL();

//    OSTimeTick();                                /* Call uC/OS-II's OSTimeTick()                            */

//    OSIntExit();                                 /* Tell uC/OS-II that we are leaving the ISR               */
//#else
//    SysTickTimimg();
//#endif  
    //HAL_IncTick();
    if (SystemTick > 0)
    {
      SystemTick--;
    }

}

/*****************************************************************************
 * Function      : SysTickInit
 * Description   : Init system tick
 * Input         : uint32_t tick
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161009
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void SysTickInit( uint32_t tick )
{
    SysTick_Config(tick);
    
    /*Configure the SysTick IRQ priority */
    HAL_NVIC_SetPriority(SysTick_IRQn, 15 ,0);
}

/*****************************************************************************
 * Function      : SysTickGet
 * Description   : Get system tick count
 * Input         : void
 * Output        : None
 * Return        : uint32_t 
 * Others        : 
 * Record
 * 1.Date        : 20161009
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint32_t  SysTickGet( void )
{
    return SystemTick;
}

/*****************************************************************************
 * Function      : SysTickDelay
 * Description   : Using system tick timer to make delay function
 * Input         : __IO uint32_t delay in milliseconds
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161009
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void SysTickDelay(uint32_t tick)
{
    SystemTick = tick;
    
    while(SystemTick)
    {
    }
}
