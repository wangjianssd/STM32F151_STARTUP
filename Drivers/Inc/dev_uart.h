/**
 * @brief       : 
 *
 * @file        : uart.h
 * @author      : WangJian
 * @version     : v0.0.1
 * @date        : 2016/09/20
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2016/09/20  v0.0.1       WangJian    first version
 */

#ifndef __DEV_UART_H__
#define __DEV_UART_H__
/* Exported incluides --------------------------------------------------------*/
#include "dev_gpio.h"

/* Define --------------------------------------------------------------------*/
/*        |UART1	   |UART2       |UART3		 |UART4		  |UART5	   |
          |TX_AF  RX_AF|TX_AF  RX_AF|TX_AF  RX_AF|TX_AF  RX_AF|TX_AF  RX_AF|
UART_AF0  |PA9	  PA10 |PA2	   PA3	|PB10	PB11 |PC10	PC11  |PC12   PD2  |
UART_AF1  |PB6	  PB7  |PD5	   PD6	|PC10	PC11 |			  |            |
UART_AF2  |			   |       	    |PD8	PD9  |            |            |
*/
//UART1 
//TX
#define DEV_UART1_PIN_AF0_TX_PORT                   DEV_GPIO_PORTA
#define DEV_UART1_PIN_AF0_TX_PIN                    DEV_GPIO_PIN9
#define DEV_UART1_PIN_AF1_TX_PORT                   DEV_GPIO_PORTB
#define DEV_UART1_PIN_AF1_TX_PIN                    DEV_GPIO_PIN6
//RX
#define DEV_UART1_PIN_AF0_RX_PORT                   DEV_GPIO_PORTA
#define DEV_UART1_PIN_AF0_RX_PIN                    DEV_GPIO_PIN10
#define DEV_UART1_PIN_AF1_RX_PORT                   DEV_GPIO_PORTB
#define DEV_UART1_PIN_AF1_RX_PIN                    DEV_GPIO_PIN7

//UART2
//TX
#define DEV_UART2_PIN_AF0_TX_PORT                   DEV_GPIO_PORTA
#define DEV_UART2_PIN_AF0_TX_PIN                    DEV_GPIO_PIN2
#define DEV_UART2_PIN_AF1_TX_PORT                   DEV_GPIO_PORTD
#define DEV_UART2_PIN_AF1_TX_PIN                    DEV_GPIO_PIN5
//RX
#define DEV_UART2_PIN_AF0_RX_PORT                   DEV_GPIO_PORTA
#define DEV_UART2_PIN_AF0_RX_PIN                    DEV_GPIO_PIN3
#define DEV_UART2_PIN_AF1_RX_PORT                   DEV_GPIO_PORTD
#define DEV_UART2_PIN_AF1_RX_PIN                    DEV_GPIO_PIN6

//UART3
//TX
#define DEV_UART3_PIN_AF0_TX_PORT                   DEV_GPIO_PORTB
#define DEV_UART3_PIN_AF0_TX_PIN                    DEV_GPIO_PIN10
#define DEV_UART3_PIN_AF1_TX_PORT                   DEV_GPIO_PORTC
#define DEV_UART3_PIN_AF1_TX_PIN                    DEV_GPIO_PIN10
#define DEV_UART3_PIN_AF2_TX_PORT                   DEV_GPIO_PORTD
#define DEV_UART3_PIN_AF2_TX_PIN                    DEV_GPIO_PIN8
//RX
#define DEV_UART3_PIN_AF0_RX_PORT                   DEV_GPIO_PORTB
#define DEV_UART3_PIN_AF0_RX_PIN                    DEV_GPIO_PIN11
#define DEV_UART3_PIN_AF1_RX_PORT                   DEV_GPIO_PORTC
#define DEV_UART3_PIN_AF1_RX_PIN                    DEV_GPIO_PIN11
#define DEV_UART3_PIN_AF2_RX_PORT                   DEV_GPIO_PORTD
#define DEV_UART3_PIN_AF2_RX_PIN                    DEV_GPIO_PIN9

//UART4
//TX
#define DEV_UART4_PIN_AF0_TX_PORT                   DEV_GPIO_PORTC
#define DEV_UART4_PIN_AF0_TX_PIN                    DEV_GPIO_PIN10
//RX
#define DEV_UART4_PIN_AF0_RX_PORT                   DEV_GPIO_PORTC
#define DEV_UART4_PIN_AF0_RX_PIN                    DEV_GPIO_PIN11

//UART5
//TX
#define DEV_UART5_PIN_AF0_TX_PORT                   DEV_GPIO_PORTC
#define DEV_UART5_PIN_AF0_TX_PIN                    DEV_GPIO_PIN12
//RX
#define DEV_UART5_PIN_AF0_RX_PORT                   DEV_GPIO_PORTD
#define DEV_UART5_PIN_AF0_RX_PIN                    DEV_GPIO_PIN2

/* Exported types ------------------------------------------------------------*/
typedef enum
{
    DEV_UART1 = 1, /*!< UART1 */
    DEV_UART2 = 2, /*!< UART2 */
    DEV_UART3 = 3, /*!< UART3 */
    DEV_UART4 = 4, /*!< UART4 */
    DEV_UART5 = 5, /*!< UART5 */
    DEV_UART_NUM
} DevUart;

typedef enum
{
	DEV_UART_PIN_AF0, /*!< UART_PIN_AF0 */
	DEV_UART_PIN_AF1, /*!< UART_PIN_AF1 */
    DEV_UART_PIN_AF2, /*!< UART_PIN_AF2 */
    DEV_UART_PIN_AF_NUM
} DevUartPinAF;

typedef struct
{
    DevUartPinAF  tx_af;
    DevUartPinAF  rx_af;
} DevUartPin;

typedef enum
{
	DEV_UART_WORDLENGTH_8B = UART_WORDLENGTH_8B,  /*!< UART 8BIT WORD LENGTH */
	DEV_UART_WORDLENGTH_9B = UART_WORDLENGTH_9B  /*!< UART 9BIT WORD LENGTH */
}DevUartWordLen;

typedef enum
{
	DEV_UART_STOPBITS_1 = UART_STOPBITS_1,  /*!< UART 1BIT STOP BITS */
	DEV_UART_STOPBITS_2 = UART_STOPBITS_2   /*!< UART 2BIT STOP BITS */
}DevUartStopBit;

typedef enum
{
	DEV_UART_PARITY_NONE = UART_PARITY_NONE,   /*!< UART NONE PARITY */
	DEV_UART_PARITY_EVEN = UART_PARITY_EVEN,   /*!< UART EVEN PARITY */
	DEV_UART_PARITY_ODD  = UART_PARITY_ODD     /*!< UART ODD PARITY */
}DevUartParity;

typedef enum
{
	DEV_UART_MODE_RX 	= UART_MODE_RX,   	/*!< UART MODE RX  */
	DEV_UART_MODE_TX	= UART_MODE_TX,     /*!< UART MOED TX  */
	DEV_UART_MODE_TX_RX = UART_MODE_TX_RX,  /*!< UART MODE TRX */
}DevUartMode;

typedef enum
{
	DEV_UART_HWCONTROL_NONE 	= UART_HWCONTROL_NONE,   	/*!< UART FLOW CONTROL NONE  */
	DEV_UART_HWCONTROL_RTS		= UART_HWCONTROL_RTS,       /*!< UART FLOW CONTROL RTS */
	DEV_UART_HWCONTROL_CTS 		= UART_HWCONTROL_CTS,    	/*!< UART FLOW CONTROL CTS */
	DEV_UART_HWCONTROL_RTS_CTS 	= UART_HWCONTROL_RTS_CTS	/*!< UART FLOW CONTROL RTS&CTS */
}DevUartFlowCtl;

typedef enum
{
	DEV_UART_IT_PE 		= UART_IT_PE,   	/*!< UART IRQ TYPE PE  */
    DEV_UART_IT_TXE		= UART_IT_TXE,		/*!< UART IRQ TYPE TXE  */
	DEV_UART_IT_TC		= UART_IT_TC,		/*!< UART IRQ TYPE TC  */
	DEV_UART_IT_RXNE	= UART_IT_RXNE,		/*!< UART IRQ TYPE RXNE  */
	DEV_UART_IT_IDLE	= UART_IT_IDLE,		/*!< UART IRQ TYPE IDLE  */
	DEV_UART_IT_LBD		= UART_IT_LBD,		/*!< UART IRQ TYPE LBD  */
	DEV_UART_IT_CTS		= UART_IT_CTS,		/*!< UART IRQ TYPE CTS  */
	DEV_UART_IT_ERR		= UART_IT_ERR,		/*!< UART IRQ TYPE ERR  */
}DevUartIrq;

typedef struct
{
	uint32_t          baud;       /*!< Specifies the UART buad rate    */
	DevUartWordLen    length;     /*!< Specifies the UART word length */
	DevUartStopBit    stop_bit;   /*!< Specifies the UART stop bit */
	DevUartParity     parity;     /*!< Specifies the UART parity */
	DevUartMode    	  mode;       /*!< Specifies the UART parity */
	DevUartFlowCtl    flow_contrl;/*!< Specifies the UART flow control */
    DevUartPin        pin;        /*!< Specifies the UART trx pin */ 
}DevUartConfig;

typedef void (*DEV_UART_RX_FUNC_PTR)(uint8_t* data, uint16_t size);            

/* Exported functions --------------------------------------------------------*/
bool DevUartInit(DevUart uart, DevUartConfig config);
bool DevUartTx(DevUart uart, uint8_t* data, uint16_t size);
bool DevUartRx(DevUart uart, uint8_t* data, uint16_t size);
void DevUartRxCbRegister(DevUart uart, DEV_UART_RX_FUNC_PTR isr);
void DevUartRxCbUnregister(DevUart uart);
void DevUartIrqEnable( DevUart uart, DevUartIrq irq );
void DevUartIrqDisable( DevUart uart, DevUartIrq irq );

#endif

