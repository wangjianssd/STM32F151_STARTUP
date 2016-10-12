/*************************************************************************************************************
*                                                  MODULE                                                    *
*************************************************************************************************************/
#ifndef INTERRUPT_H
#define INTERRUPT_H

#ifdef __cplusplus
extern "C" {
#endif
#include "lib.h"
//#include <stdint.h>
#include "stm32l151xd.h"


/*************************************************************************************************************
*                                                 DEFINES                                                    *
*************************************************************************************************************/
#define INT_VECT_TABLE_OFFSET_ADDR              0UL
#define INT_VECT_TABLE_ADDR                     (SRAM_BASE + INT_VECT_TABLE_OFFSET_ADDR)

#define CORE_INT_SRC_NBR                        16u    
#define PERIPH_INT_SRC_NBR                      (IRQn_Num)

/*************************************************************************************************************
*                                            FUNCTION STATEMENT                                              *
*************************************************************************************************************/
__STATIC_INLINE void CM3VectTabSetOffset(uint32_t table, uint32_t offset)
{   
    SCB->VTOR = table | (offset & (uint32_t)0x1FFFFF80);
}

void IntInit (void);
void IntVectRegister (IRQn_Type irq, FNCT_VOID isr);
void IntVectUnregister (IRQn_Type irq);
void IntEnable (IRQn_Type irq);
void IntDisable (IRQn_Type irq);
void IntHandlerDefault (void);
void ResetHandler (void);
void NMIISR (void);
void FaultISR (void);
void MemFaultISR (void);
void BusFaultISR (void);
void UsageFaultISR (void);
void ReservedISR (void);
void PendSVISR (void);
void SysTickISR (void);
void SvcISR (void);
void DebugMonISR (void);
void SysTickInit( uint32_t tick );
uint32_t  SysTickGet( void );
void SysTickDelay(uint32_t tick);


/*************************************************************************************************************
*                                               MODULE END                                                   *
*************************************************************************************************************/
#ifdef __cplusplus
}
#endif

#endif
