/**
 * @brief       : 
 *
 * @file        : debug.c
 * @author      : gang.cheng
 *
 * Version      : v0.0.1
 * Date         : 2015/5/7
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2015/5/7    v0.0.1      gang.cheng    first version
 */
#include <lib.h>

void DBG_ASSERT(bool_t cond _DBG_LINE_)
{
    if (cond == false)
    {
        while (1);
    }
}


