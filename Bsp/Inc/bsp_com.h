/**
 *
 * @brief       :  
 *
 * @file        : bsp_com.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-09-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-09-27           v0.1              wangjian        first version 
*/

#ifndef  __BSP_COM__
#define  __BSP_COM__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/

/* Define --------------------------------------------------------------------*/
#define	__BSP_COM0__                                DEV_UART1
#define	__BSP_COM1__                                DEV_UART2
#define	__BSP_COM2__                                DEV_UART3

#define	__COM_RTX__                                 DEV_UART_MODE_TX_RX 
#define	__COM_CONFIG_STOP__                         DEV_UART_STOPBITS_1 
#define	__COM_CONFIG_BIT__                          DEV_UART_WORDLENGTH_8B
#define	__COM_CONFIG_PARITY__                       DEV_UART_PARITY_NONE
    
#define	__COM0_TX_FIFO_SIZE__                       128
#define	__COM0_RX_FIFO_SIZE__                       128
#define	__COM1_TX_FIFO_SIZE__                       128
#define	__COM1_RX_FIFO_SIZE__                       128
#define	__COM2_TX_FIFO_SIZE__                       128
#define	__COM2_RX_FIFO_SIZE__                       128

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif

#endif

