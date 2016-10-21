/**
 * @brief       : 
 *
 * @file        : pbuf.h
 * @author      : WangJifang
 * @version     : v0.0.1
 * @date        : 2015/8/28
 *
 * Change Logs  :
 *
 * Date        Version      Author      Notes
 * 2015/8/28    v0.0.1      WangJifang    some notes
 */


#ifndef __PBUF_H
#define __PBUF_H

#include <data_type_def.h>
#include <lib.h>

#define PBUF_DBG_EN                 (0u)

#if PBUF_DBG_EN > 0

/*юӎ*/
#define _PLINE1_  ,uint16_t line
#define _PLINE2_  ,uint16_t line
/*ʵӎ*/
#define __PLINE1  ,__LINE__
#define __PLINE2  ,__LINE__

#else

#define _PLINE1_
#define _PLINE2_
#define __PLINE1
#define __PLINE2

#endif
/******************************************************************************/
#define PBUF_TYPE_MAX_NUM               (3u)    // PBUF缓冲类型上限
#define PBUF_NUM_MAX                    (4u)   // 表示各类pbuf个数的上限

#define SMALL_PBUF_BUFFER_SIZE          (1u)
#define MEDIUM_PBUF_BUFFER_SIZE         (4u)
#define LARGE_PBUF_BUFFER_SIZE          (10u)

#define SMALL_PBUF_NUM                  (8u)    // 各种PBUF最大个数
#define MEDIUM_PBUF_NUM                 (3u)
#define LARGE_PBUF_NUM                  (3u)

enum _PBUF_TYPE
{
    SMALL_PBUF,
    MEDIUM_PBUF,
    LARGE_PBUF,
    PBUF_TYPE_INVALID
};

#define PBUF_DATA_SIZE(pbuf)        (pbuf->end - pbuf->head)

typedef struct _pbuf_type_t
{
    uint8_t type;
    uint8_t size;
    uint8_t num;
} pbuf_type_t;

typedef struct
{
	int8_t rssi_dbm;

    nwk_id_t src_id;        // ޓ˕ս˽ߝ֡ʱìΪͬҽģࠩ͡٩ͬҽהгхϢû
    nwk_id_t dst_id;        // ͮд֡քĿքޚ֣θçַ֘
	uint8_t	 seq;
	uint8_t	 send_mode:2,
		     is_ack : 1,
	         need_ack : 1,
             crc_ok:1,
             debug_info:1,
             reserved : 2;
} pkt_attri_t;

typedef struct
{
    struct list_head list;
	uint8_t *data_p;		//ָв˽ߝȸ
	uint8_t *head;			//ָв˽ߝȸք֚һٶؖޚ
	uint8_t *end;			//ָв˽ߝȸքخ۳һٶؖޚ
	uint8_t data_len;		//كpbufքʵ݊˽ߝӤ׈
    pkt_attri_t attri;
    bool_t used;
#if PBUF_DBG_EN > 0
    uint16_t alloc_line;
    uint16_t free_line;
#endif
} pbuf_t;

extern uint8_t pbuf_cnt[PBUF_TYPE_MAX_NUM];

/**
 * pbuf_init: ΪpbufʪȫһࠩŚզȸԲìѨҪƤ׃ٷזpbufքճСۍ˽ֈ
 */
void pbuf_init(void);

/**
 * ʪȫһٶpbufìԃ4զ؅ԃۧ˽ߝ
 *
 * @param size: ԃۧք˽ߝӤ׈
 * @param _PLINE1_: pbuf_alloc()λ׃քѐۅìַԃʱԫɫʵӎюʽ__PLINE1
 *
 * @return: ʪȫԉ٦ղ׵ܘpbufքָ֫ìʧќղ޸ɫ׏Ҕ
 */
pbuf_t *pbuf_alloc(uint8_t size _PLINE1_);

/**
 * ˍ؅ӑޭʹԃΪքpbuf
 *
 * @param pbuf: ѨҪәطքpbufքָ֫քָ֫
 * @param _PLINE2_: ַԃpbuf_free()λ׃քѐۅìַԃʱԫɫʵӎюʽ__PLINE2
 *
 * @return: Ϟ
 */
void pbuf_free(pbuf_t **const pbuf _PLINE2_);

/**
 * вpbuf->end׽вӆ֯pbuf->data_pָ֫ìӆ֯ߠkΪlen
 *
 * @param pbuf: ѨҪәطքpbufքָ֫
 * @param len: data_pѨҪӆ֯քߠk
 *
 * @return: ԉ٦ղ׵ܘdata_pָ֫ìʧќ׵ܘNULL
 */
uint8_t *pbuf_skip_datap_forward(pbuf_t *const pbuf,
                                 uint8_t len);

/**
 * вpbuf->head׽вӆ֯pbuf->data_pָ֫ìӆ֯ߠkΪlen
 *
 * @param pbuf: ѨҪәطքpbufքָ֫
 * @param len: data_pѨҪӆ֯քߠk
 *
 * @return: ԉ٦ղ׵ܘdata_pָ֫ìʧќ׵ܘNULL
 */
uint8_t *pbuf_skip_datap_backward(pbuf_t *const pbuf,
                                  uint8_t len);

/**
 * вpbufք˽ߝȸ߽Ѵ˽ߝìҢӆ֯data_pָ֫ìلҤdata_len
 *
 * @param pbuf: Ŀքַ֘pbufքָ֫(Փpbuf->data_pߪʼ߽Ѵ)
 * @param src: Դַ֘քָ֫
 * @param len: ѨҪ߽Ѵք˽ߝӤ׈
 *
 * @return: ԉ٦ղ׵ܘTRUE, ʧќղ׵ܘFALSE
 */
bool_t pbuf_copy_data_in(pbuf_t *const pbuf,
                         const uint8_t *const src,
                         uint8_t len);

/**
 * Փpbufք˽ߝȸ߽Ѵ˽ߝìҢӆ֯data_pָ֫ìһلҤdata_len
 *
 * @param dst: Ŀքַ֘քָ֫
 * @param pbuf: Դַ֘pbufքָ֫(Փpbuf->data_pߪʼ߽Ѵ)
 * @param len: ѨҪ߽Ѵք˽ߝӤ׈
 *
 *  @return: ԉ٦ղ׵ܘTRUE, ʧќղ׵ܘ
 */
bool_t pbuf_copy_data_out(uint8_t *const dst,
                          pbuf_t *const pbuf,
                          uint8_t len);

#endif
/**
 * @}
 */

