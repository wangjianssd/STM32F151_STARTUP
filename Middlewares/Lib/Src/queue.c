/*************************************************************************************************************
*                                              INCLUDE FILES                                                 *
*************************************************************************************************************/
#include <lib.h>


/*************************************************************************************************************
*                                            FUNCTION PROTOTYPES                                             *
*************************************************************************************************************/
void QueueInit (void *hq)
{
    sQueue *p;

    p = (sQueue *)hq;
    p->front = p->rear = 0;
    p->count = 0;
}

uint8_t QueueIsEmpty (void *hq)
{
    sQueue *p;

    p = (sQueue *)hq;

    if (p->count == 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

uint8_t QueueIsFull (void *hq, uint32_t queue_size)
{
    sQueue *p;

    p = (sQueue *)hq;

    if (p->count == queue_size)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

void QueueIn (void *hq, void **item, uint32_t item_size, uint32_t queue_size)
{   
    sQueue *p;

    p = (sQueue *)hq;

    *item = (void *)((uint32_t)(&p->item)+ p->rear * item_size);

    if (QueueIsFull(hq, queue_size) == 0)
    {	
        p->rear = (p->rear + 1) % queue_size;
    }
    else
    {
        p->front = (p->front + 1) % queue_size;
        p->rear = (p->rear + 1) % queue_size;
    }
	
	p->count++;

    if (p->count > queue_size)
    {
        p->count = queue_size;
    }
}

uint8_t  QueueOut (void *hq, void **item, uint32_t item_size, uint32_t queue_size)
{
    sQueue *p;

    p = (sQueue *)hq;

    if (p->count == 0)
    {
        return 0;
    }

    *item = (void *)((uint32_t)(&p->item)+ p->front * item_size);

    p->front = (p->front + 1) % queue_size;  
	
    p->count--;

    return 1;
}


/*************************************************************************************************************
*                                               MODULE END                                                   *
*************************************************************************************************************/
