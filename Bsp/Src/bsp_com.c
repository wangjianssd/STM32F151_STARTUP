/**
 *
 * @brief       :  
 *
 * @file        : bsp_com.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-09-27
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-09-27           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "bsp.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
static 	void BspCom1RxHander( uint8_t* data, uint16_t size );
/* Variables -----------------------------------------------------------------*/
static uint8_t COM1TxFIFO[__COM1_TX_FIFO_SIZE__ + FIFO_INFO_SIZE] = {0};
static uint8_t COM1RxFIFO[__COM1_RX_FIFO_SIZE__ + FIFO_INFO_SIZE] = {0};

//static uint8_t COM2TxFIFO[__COM2_TX_FIFO_SIZE__ + FIFO_INFO_SIZE];
//static uint8_t COM2RxFIFO[__COM2_RX_FIFO_SIZE__ + FIFO_INFO_SIZE];

//static uint8_t COM3TxFIFO[__COM3_TX_FIFO_SIZE__ + FIFO_INFO_SIZE];
//static uint8_t COM3RxFIFO[__COM3_RX_FIFO_SIZE__ + FIFO_INFO_SIZE];


/*****************************************************************************
 * Function      : BspCom1Init
 * Description   : Init com1
 * Input         : uint32_t buad
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160927
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspCom1Init(uint32_t buad )
{
    DevUartHander huart;
    
    huart.baud 		= buad;
	huart.length 	= DEV_UART_WORDLENGTH_8B;
	huart.mode 		= __COM1_RTX__;
	huart.parity 	= __COM1_CONFIG_PARITY__;
	huart.stop_bit 	= __COM1_CONFIG_STOP__;
	huart.device 	= __BSP_COM1__;

	if (DevUartInit(huart) != true)
	{
		return false;
	}

	FIFOInit ((FIFODataTypeDef *)COM1TxFIFO);
	FIFOInit ((FIFODataTypeDef *)COM1RxFIFO);
	
	DevUartRxCbRegister(__BSP_COM1__, BspCom1RxHander);
	
	return true;
}

/*****************************************************************************
 * Function      : BspCom1SendData
 * Description   : COM1 send data
 * Input         : uint8_t *data
                uint32_t len
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspCom1SendData( uint8_t *data, uint32_t len )
{
	DevUartTx(__BSP_COM1__, data, len);
}

/*****************************************************************************
 * Function      : BspCom1TxFIFOIn
 * Description   : put com1 send data in com1 TX FIFO 
 * Input         : uint8_t *data
                   uint16_t len
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspCom1TxFIFOIn( uint8_t *data, uint16_t len )
{
	if (__COM1_TX_FIFO_SIZE__ - GetFIFOCount((FIFODataTypeDef *)COM1TxFIFO, __COM1_TX_FIFO_SIZE__) < len)
	{
        return false;
	}

	if (FIFOIn((FIFODataTypeDef *)COM1TxFIFO, data, __COM1_TX_FIFO_SIZE__)
		!= FIFO_OK)
	{
		return false;
	}

	return true;
}

/*****************************************************************************
 * Function      : BspCom1TxFIFOOut
 * Description   : Send COM1 TX FIFO data
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspCom1TxFIFOOut( void )
{
    uint8_t byte;
    
    while (!FIFOIsEmpty((FIFODataTypeDef *)COM1TxFIFO))
    {
        FIFOOut((FIFODataTypeDef *)COM1TxFIFO, &byte, __COM1_TX_FIFO_SIZE__);
        DevUartTx(__BSP_COM1__, &byte, 1);
    }
}

/*****************************************************************************
 * Function      : BspCom1RxFIFOIsEmpty
 * Description   : check whether COM1 RX FIFO is empty
 * Input         : void
 * Output        : None
 * Return        : bool
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool BspCom1RxFIFOIsEmpty( void )
{
    return FIFOIsEmpty((FIFODataTypeDef *)COM1RxFIFO);    
}

/*****************************************************************************
 * Function      : BspCom1RxFIFOOut
 * Description   : get COM1 RX data
 * Input         : void
 * Output        : None
 * Return        : uint8_t
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
uint8_t BspCom1RxFIFOOut( void )
{
    uint8_t byte;

	FIFOOut((FIFODataTypeDef *)COM1RxFIFO, &byte, __COM1_RX_FIFO_SIZE__);

	return byte;
}

/*****************************************************************************
 * Function      : BspCom1RxHander
 * Description   : hander for COM1 rx irq
 * Input         : uint8_t* data
 				   uint16_t size
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspCom1RxHander( uint8_t* data, uint16_t size )
{
	uint8_t i;
	
	for (i = 0; i < size; i++)
	{
		FIFOIn((FIFODataTypeDef *)COM1RxFIFO, &data[i], __COM1_RX_FIFO_SIZE__);
	}
}

/*****************************************************************************
 * Function      : BspCom1RxFIFOClear
 * Description   : clear COM1 RX FIFO
 * Input         : void
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20160928
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void BspCom1RxFIFOClear( void )
{
	FIFOInit ((FIFODataTypeDef *)COM1RxFIFO);
}