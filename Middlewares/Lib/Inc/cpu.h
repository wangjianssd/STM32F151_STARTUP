/**
 *
 * @brief       :  
 *
 * @file        : cpu.h
 * @author      : wangjian
 * Version      : v0.0.1
 * Date         : 2016-10-09
 *
 * Change Logs  :
 *
 * Date                 Version           Author          Notes
 * 2016-10-09           v0.1              wangjian        first version 
*/
#ifndef  __CPU__
#define  __CPU__

#ifdef __cplusplus
 extern "C" {
#endif
/* Includes ------------------------------------------------------------------*/
#include <stdint.h>

/* Define --------------------------------------------------------------------*/
#define DEBUG_PRINT                             (0u)	

#define HAVE_LONG_LONG                          (1u)
#define IS_LITTLE_ENDIAN                        (1u)

#define DEF_ON                                   1u     
#define DEF_OFF                                  0u

#define DEF_TRUE                                 1u     
#define DEF_FALSE                                0u

#define DEF_HIGH                                 1u     
#define DEF_LOW                                  0u

#define DEF_ZERO                                 0u

#define DEF_NULL                                 (void *)0

#ifndef STATIC
#define STATIC                  
#endif

#if DEBUG_PRINT > 0
#include <stdio.h>
#define PRINTF(...)              printf(__VA_ARGS__)
#else
#define PRINTF(...)              
#endif

#ifndef st
#define st(x)                   do { x } while (__LINE__ == -1)
#endif

#ifndef BV
#define BV(n)                   (1 << (n))
#endif

#ifndef BM
#define BM(n)                   (1 << (n))
#endif

#ifndef BF
#define BF(x,b,s)               (((x) & (b)) >> (s))
#endif

#ifndef MIN
#define MIN(n,m)                (((n) < (m)) ? (n) : (m))
#endif

#ifndef MAX
#define MAX(n,m)                (((n) < (m)) ? (m) : (n))
#endif

#ifndef ABS
#define ABS(n)                  (((n) < 0) ? -(n) : (n))
#endif

#define ARRAY_LEN(arr)          (sizeof(arr))/(sizeof(arr[0]))

#define HI_UINT16(a)            (((uint16_t)(a) >> 8) & 0xFF)
#define LO_UINT16(a)            ((uint16_t)(a) & 0xFF)

#define HI_1_UINT32(a)            (((uint32_t)(a) >> 24) & 0xFF)
#define HI_2_UINT32(a)            (((uint32_t)(a) >> 16) & 0xFF)
#define HI_3_UINT32(a)            (((uint32_t)(a) >> 8) & 0xFF)
#define HI_4_UINT32(a)            ((uint32_t)(a) & 0xFF)

#define S2B_UINT32(a)         \
                                  (((uint32_t)(a) & 0xFF000000)  >> 24)\
                                   + (((uint32_t)(a) & 0x00FF0000)  >> 8)\
                                   + (((uint32_t)(a) & 0x0000FF00)  << 8)\
                                   + (((uint32_t)(a) & 0x000000FF)  << 24)

#define S2B_UINT16(a)           ((((uint16_t)(a) & 0xFF00) >> 8) \
                                 + (((uint16_t)(a) & 0x00FF) << 8))

#define BUILD_UINT16(loByte, hiByte) \
          ((uint16_t)(((loByte) & 0x00FF) + (((hiByte) & 0x00FF) << 8)))

#ifndef _NOP
#define  _NOP()                 asm("NOP");
#endif

#if DEBUG_PRINT > 0
#include <stdio.h>
#define PRINTF(...)              printf(__VA_ARGS__)
#else
#define PRINTF(...)              
#endif


#ifdef __cplusplus
#define DEF_I                                   volatile        /* defines 'read only' permissions          */
#else
#define DEF_I                                   volatile const  /* defines 'read only' permissions          */
#endif
#define DEF_O                                   volatile        /* defines 'write only' permissions         */
#define DEF_IO                                  volatile        /* defines 'read / write' permissions       */
    
#define DEF_BYTE                                8u                       

#define DEF_BIT0                                0x01u
#define DEF_BIT1                                0x02u
#define DEF_BIT2                                0x04u
#define DEF_BIT3                                0x08u
#define DEF_BIT4                                0x10u
#define DEF_BIT5                                0x20u
#define DEF_BIT6                                0x40u
#define DEF_BIT7                                0x80u
#define DEF_BIT8                                0x0100u
#define DEF_BIT9                                0x0200u
#define DEF_BIT10                               0x0400u
#define DEF_BIT11                               0x0800u
#define DEF_BIT12                               0x1000u
#define DEF_BIT13                               0x2000u
#define DEF_BIT14                               0x4000u
#define DEF_BIT15                               0x8000u
#define DEF_BIT16                               0x010000u
#define DEF_BIT17                               0x020000u
#define DEF_BIT18                               0x040000u
#define DEF_BIT19                               0x080000u
#define DEF_BIT20                               0x100000u
#define DEF_BIT21                               0x200000u
#define DEF_BIT22                               0x400000u
#define DEF_BIT23                               0x800000u
#define DEF_BIT24                               0x01000000u
#define DEF_BIT25                               0x02000000u
#define DEF_BIT26                               0x04000000u
#define DEF_BIT27                               0x08000000u
#define DEF_BIT28                               0x10000000u
#define DEF_BIT29                               0x20000000u
#define DEF_BIT30                               0x40000000u
#define DEF_BIT31                               0x80000000u


/* Exported types ------------------------------------------------------------*/
typedef unsigned char  bool_t;
//typedef unsigned char  uint8_t;              
//typedef signed   char  int8_t;               
//typedef unsigned short uint16_t;             
//typedef signed   short int16_t;            
//typedef unsigned int   uint32_t;             
//typedef signed   int   int32_t;
//typedef float          fp32_t;           
//typedef double         fp64_t;

#if HAVE_LONG_LONG > 0
//typedef signed long long  int64_t;
//typedef unsigned int long uint64_t;
#else
typedef struct
{
#if IS_LITTLE_ENDIAN > 0
    uint32_t lo;
    uint32_t hi;
#else
    uint32_t hi;
    uint32_t lo;
#endif
} uint64_t;
typedef uint64_t int64_t;
#endif

typedef void (*FNCT_VOID)(void);            
typedef void (*FNCT_PTR )(void *);

typedef union
{
    void (*pfnHandler)(void);
    uint32_t ulPtr;
}
uVectorEntry;

/* Function prototypes -------------------------------------------------------*/
int8_t *ComiledDateGet(void);
int8_t *ComiledTimeGet(void);

/* Variables -----------------------------------------------------------------*/


#ifdef __cplusplus
}
#endif

#endif
