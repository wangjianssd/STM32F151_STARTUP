/**
 *
 * @brief       :  
 *
 * @file        : dev_flash.c
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-10
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-10           v0.1              wangjian        first version 
*/
/* Includes ------------------------------------------------------------------*/
#include "device.h"

/* Define --------------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/
/*****************************************************************************
 * Function      : DevFlashUnlock
 * Description   : Unlock device flash
 * Input         : void
 * Output        : None
 * Return        : bool_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool_t DevFlashUnlock( void )
{
#ifdef  STM32L151xD
    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | FLASH_FLAG_SIZERR | FLASH_FLAG_OPTVERR | FLASH_FLAG_OPTVERRUSR);
#endif
    
#ifdef  STM32L151xB
    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_WRPERR | FLASH_FLAG_PGAERR | FLASH_FLAG_SIZERR | FLASH_FLAG_OPTVERR);
#endif
    if (HAL_FLASH_Unlock() != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : DevFlashLock
 * Description   : Lock device flash
 * Input         : void
 * Output        : None
 * Return        : bool_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool_t DevFlashLock( void )
{
    if (HAL_FLASH_Lock() != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : DevFlashErase
 * Description   : Erase device flash
 * Input         : uint32_t address
 * Output        : None
 * Return        : bool_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool_t DevFlashErase( uint32_t address)
{
    FLASH_EraseInitTypeDef erase;
    uint32_t err;
    
    erase.TypeErase     = FLASH_TYPEERASE_PAGES;
    erase.PageAddress   = address;
    erase.NbPages       = 1;
    
    if (HAL_FLASHEx_Erase(&erase, &err) != HAL_OK)
    {
        return DEF_FALSE;
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : DevFlashWrite
 * Description   : Programe device flash
 * Input         : uint32_t address
                   CPU_INT8U const *pdata
                   uint32_t len
 * Output        : None
 * Return        : bool_t
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
bool_t DevFlashWrite( uint32_t address, uint8_t const *pdata, uint32_t len )
{
    uint32_t i;
    uint32_t j;
    uint32_t word;
    uint32_t addr;
    uint32_t word_addr;
    uint32_t temp;
    
    uint8_t bank_buffer[__DEVICE_FLASH_BANK_SIZE__];
    addr = address;
    j = len;
    
    if (len >= 4 - (address % 4))
    {
        if ((addr % 4) != 0)
        {	
            //read bank back
            //addr = (address /__DEVICE_FLASH_BANK_SIZE__) * __DEVICE_FLASH_BANK_SIZE__;
            
            //DevFlashRead (addr, bank_buffer, __DEVICE_FLASH_BANK_SIZE__);

            //read modify word
            addr = address;
            
            temp =  (*(uint32_t *)(address & 0xFFFFFFFFC)) & (0xFFFFFFFF << ((4 - (addr % 4)) * 8));
           // word =  *((uint32_t *)pdata) << ((4 - addr % 4) * 8); 
            word = 0;
            for (i = 0; i < (4 - (addr %4)); i++)
            {
              word <<= 8;
              
              word |= pdata[i];
            }	        
            
            word |= temp;
            
            word = NToHL(word);
            word_addr = addr - (addr % 4);
            
            //addr = (address % __DEVICE_FLASH_BANK_SIZE__) / 4 * 4;
            
            //fill the bank arrary
            //*((uint32_t *)&bank_buffer[addr]) = word;

            //erase bank
            //if (DEF_TRUE != DevFlashErase (word_addr))
            //{
            //    return DEF_FALSE;
            //}

            //write bank
//            for (i = 0; i < (__DEVICE_FLASH_BANK_SIZE__ / 4); i++)
//            {
//                word_addr = (address /__DEVICE_FLASH_BANK_SIZE__) * __DEVICE_FLASH_BANK_SIZE__ + i * 4;
//                
//                word = *((uint32_t *)&bank_buffer[i * 4]);
//
//                if (HAL_OK != HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, word_addr, word))
//                {
//                    return DEF_FALSE;
//                }
//            }

            if (HAL_OK != HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, word_addr, word))
            {
                return DEF_FALSE;
            }
    	    pdata += 4 - (addr % 4);	
    	    j = len - (4 - (addr % 4));
    	    addr = addr - (addr % 4) + 4;		
        }

        for (i = 0; i < j / 4; i++)
        {
            word_addr = addr + i * 4;				
            word = *(((uint32_t *)pdata) + i);
            
            if (HAL_OK != HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, word_addr, word))
            {
                return DEF_FALSE;
            }
        }
    
        if ((j % 4) != 0)
        {
            word_addr = addr + i * 4;
            temp = *(uint32_t *)(word_addr);
                    
            word = 0;
            for (i = 0; i < (j % 4); i++)
            {         
              word <<= 8;

              word |= pdata[j - i - 1];
              
            }	        
            
            word |= temp;
            //word_addr = addr - (addr % 4);
            
            //word_addr = addr + i * 4;
            //word = NToHL(NToHL((*((uint32_t *)pdata + i))) | (0xFFFFFFFF >> (((addr + len) % 4) * 8))); 
            
            if (HAL_OK != HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, word_addr, word))
            {
                return DEF_FALSE;
            }
        }		
    }
    else
    {
        if (address != 0)
        {
            word = NToHL(NToHL((*((uint32_t *)pdata))) >> ((addr % 4) * 8) | ((0xFFFFFFFF << ((4 - (addr % 4)) * 8)) | (0xFFFFFFFF >> ((addr % 4) + len) * 8)));
        }
        else
        {
            word = NToHL(NToHL((*((uint32_t *)pdata))) | (0xFFFFFFFF >> (len * 8)));
        }
		
        word_addr = addr - (addr % 4);
        if (HAL_OK != HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, word_addr, word))
        {
            return DEF_FALSE;
        }
    }
    
    return DEF_TRUE;
}

/*****************************************************************************
 * Function      : DevFlashRead
 * Description   : Read device flash
 * Input         : uint32_t address
                   uint8_t *pdata
                   uint32_t len
 * Output        : None
 * Return        : void
 * Others        : 
 * Record
 * 1.Date        : 20161010
 *   Author      : wangjian
 *   Modification: Created function

*****************************************************************************/
void DevFlashRead( uint32_t address, uint8_t *pdata, uint32_t len )
{
    for (uint32_t i = 0; i < len; i++)
    {
        pdata[i] = *((DEF_IO uint8_t*)(address + i));
    }

}
