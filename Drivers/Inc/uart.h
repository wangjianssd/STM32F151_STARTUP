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

#ifndef __UART_H__
#define __UART_H__

/* Exported types ------------------------------------------------------------*/
typedef enum
{
	DEV_UART1, /*!< UART1 */
	DEV_UART2, /*!< UART2 */
	DEV_UART3, /*!< UART3 */
	DEV_UART_NUM
} DevUart;

typedef enum
{
	DEV_UART_WORDLENGTH_8B,  /*!< UART 8BIT WORD LENGTH */
	DEV_UART_WORDLENGTH_9B   /*!< UART 9BIT WORD LENGTH */
}DevUartWordLen;

typedef enum
{
	DEV_UART_STOPBITS_1,  /*!< UART 1BIT STOP BITS */
	DEV_UART_STOPBITS_2   /*!< UART 2BIT STOP BITS */
}DevUartStopBit;

typedef enum
{
	DEV_UART_PARITY_NONE,   /*!< UART NONE PARITY */
	DEV_UART_PARITY_EVEN, 	/*!< UART EVEN PARITY */
	DEV_UART_PARITY_ODD     /*!< UART ODD PARITY */
}DevUartParity;

typedef enum
{
	DEV_UART_MODE_RX,   	/*!< UART MODE RX  */
	DEV_UART_MODE_TX,       /*!< UART MOED TX  */
	DEV_UART_MODE_TX_RX     /*!< UART MODE TRX */
}DevUartMode;

typedef struct
{
	DevUart          device;    /*!< Specifies the UART device */
	uint32_t         baud;      /*!< Specifies the UART buad rate    */
	DevUartWordLen   length;    /*!< Specifies the UART word length */
	DevUartStopBit   stop_bit;  /*!< Specifies the UART stop bit */
	DevUartParity    parity;    /*!< Specifies the UART parity */
	DevUartMode    	 mode;      /*!< Specifies the UART parity */
}DevUartHander;

typedef void (*DEV_UART_RX_FUNC_PTR)(uint8_t* data, uint16_t size);            

/* Exported functions --------------------------------------------------------*/
bool DevUartInit(DevUartHander huart);
bool DevUartTx(DevUart uart, uint8_t* data, uint16_t size);
bool DevUartRx(DevUart uart, uint8_t* data, uint16_t size);
void DevUartRxCbRegister(DevUart uart, DEV_UART_RX_FUNC_PTR isr);
void DevUartRxCbUnregister(DevUart uart);
#endif

