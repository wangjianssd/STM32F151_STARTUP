;/**
; *
; * @brief       :  
; *
; * @file        : startup_cm3.s
; * @author      : wangjian
; * Version      : v0.0.1
; * Date         : 2016-10-09
; *
;* Description        : STM32L151XD Devices vector for EWARM toolchain. 
;*                      This module performs:
;*                      - Set the initial SP
;*                      - Set the initial PC == ResetHandler,
;*                      - Set the vector table entries with the exceptions ISR 
;*                        address.
;*                      - Configure the system clock
;*                      - Branches to main in the C library (which eventually
;*                        calls main()).
;*                      After Reset the Cortex-M3 processor is in Thread mode,
;*                      priority is Privileged, and the Stack is set to Main.
;
; *
; * Date                 Version           Author          Notes
; * 2016-10-09           v0.1              wangjian        first version 
;*/

        MODULE  ?cstartup

        ;; Forward declaration of sections.
        SECTION CSTACK:DATA:NOROOT(3)

        SECTION .intvec:CODE:NOROOT(2)
        
        EXTERN  ResetHandler
        EXTERN  NMIISR
        EXTERN  FaultISR
        EXTERN  MemFaultISR
        EXTERN  BusFaultISR
        EXTERN  UsageFaultISR
        EXTERN  PendSVISR
        EXTERN  SysTickISR 
        EXTERN  SvcISR 
        EXTERN  DebugMonISR 
        EXTERN  ReservedISR 
        PUBLIC  __vector_table

        DATA
__vector_table
        DCD     sfe(CSTACK)
        DCD     ResetHandler              ; Reset Handler
        DCD     NMIISR                    ; NMI Handler
        DCD     FaultISR                  ; Hard Fault Handler
        DCD     MemFaultISR               ; MPU Fault Handler
        DCD     BusFaultISR               ; Bus Fault Handler
        DCD     UsageFaultISR             ; Usage Fault Handler
        DCD     ReservedISR               ; Reserved
        DCD     ReservedISR               ; Reserved
        DCD     ReservedISR               ; Reserved
        DCD     ReservedISR               ; Reserved
        DCD     SvcISR                    ; SVCall Handler
        DCD     DebugMonISR               ; Debug Monitor Handler
        DCD     ReservedISR               ; Reserved
        DCD     PendSVISR                 ; PendSV Handler
        DCD     SysTickISR                ; SysTick Handler
                
        END
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
