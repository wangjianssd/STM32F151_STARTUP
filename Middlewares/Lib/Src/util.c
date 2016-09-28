/*************************************************************************************************************
*                                              INCLUDE FILES                                                 *
*************************************************************************************************************/
#include <lib.h>


/*************************************************************************************************************
*                                            FUNCTION PROTOTYPES                                             *
*************************************************************************************************************/
uint16_t NToHS (uint16_t data)
{
   return (((data >> 8) & 0x00FF) | ((data << 8) & 0xFF00));
}

uint16_t HToNS (uint16_t data)
{
   return (((data >> 8) & 0x00FF) | ((data << 8) & 0xFF00));
}

uint32_t NToHL (uint32_t data)
{
   return (((data >> 24) & 0x000000FF) | ((data << 24) & 0xFF000000) 
        | ((data >> 8) & 0x0000FF00) | ((data << 8) & 0x00FF0000));
}

uint32_t HToNL (uint32_t data)
{
   return (((data >> 24) & 0x000000FF) | ((data << 24) & 0xFF000000) 
        | ((data >> 8) & 0x0000FF00) | ((data << 8) & 0x00FF0000));
}


/*************************************************************************************************************
*                                               MODULE END                                                   *
*************************************************************************************************************/