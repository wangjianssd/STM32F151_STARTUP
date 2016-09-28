/*************************************************************************************************************
*                                                  MODULE                                                    *
*************************************************************************************************************/
#ifndef FIFO_H
#define FIFO_H

#ifdef __cplusplus
extern "C" {
#endif
    
    
/*************************************************************************************************************
*                                                 DEFINES                                                    *
*************************************************************************************************************/ 
#define	FIFO_OK                                 0
#define	FIFO_ERROR_FULL                         1
#define	FIFO_ERROR_EMPTY                        2
#define	FIFO_ERROR_COUNT                        3

#define	FIFO_INFO_SIZE                          12
    
#define	FIFO_STATUS_FULL                        1
#define	FIFO_STATUS_EMPTY                       2
#define	FIFO_STATUS_OTHER                       3
    

/*************************************************************************************************************
*                                                  DATA TYPES                                                *
*************************************************************************************************************/
#pragma pack(1)
    
typedef struct
{
   uint32_t front;
   uint32_t rear; 
   uint32_t flag;    
} FIFOInfoTypeDef;  

typedef struct
{
    FIFOInfoTypeDef info;
    uint8_t pdata;     
} FIFODataTypeDef;

#pragma pack()  


/*************************************************************************************************************
*                                            FUNCTION STATEMENT                                              *
*************************************************************************************************************/  
void FIFOInit (FIFODataTypeDef *pfifo);
uint8_t FIFOIn (FIFODataTypeDef *pfifo, uint8_t *byte,uint32_t size);
uint8_t FIFOOut (FIFODataTypeDef *pfifo, uint8_t *byte,uint32_t size);
uint8_t FIFOIsEmpty (FIFODataTypeDef *pfifo);
uint8_t FIFOIsFull (FIFODataTypeDef *pfifo,uint32_t size);
uint32_t GetFIFOCount (FIFODataTypeDef *pfifo,uint32_t size);


/*************************************************************************************************************
*                                               MODULE END                                                   *
*************************************************************************************************************/ 
#ifdef __cplusplus
}
#endif

#endif