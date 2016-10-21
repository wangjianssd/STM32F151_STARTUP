#ifndef __PRIM_H__
#define __PRIM_H__

#include <pbuf.h>

typedef enum
{
	M2M_CTRL_REQUEST = 1,			// macքϞПļ®֡ȫȳìһ޸ɫۺԥד
	M2M_DATA_CACHE,					// macքϞП֡ۺԥȫȳì֨ʱǷʪȫ

	M2M_JOIN_REQUEST,				// macքɫθȫȳ֡ȫȳ
	A2M_DATA_REQUEST,				// ݬӢǷappӺʺք˽ߝ֡ìԫսMAC
    A2M_JOIN_REPLY,
    A2M_DEBUG_REQUEST,              // ݬӢǷappӺʺքӢ˔֡ìԫսMAC

	M2M_TRANSPOND_TO_JUNIOR,		// א݌˕սƤ׃֡ìappӣԦmӔ۳ԫ֝սMACӣ
	M2M_TRANSPOND_TO_COORD,			// א݌˕սЂܶʨѸʏԫք˽ߝ֡ìѨҪתע

	M2A_APP_REQUEST,				// ˕սAPP֡ìʏԫսAPP
	M2A_CONFIG_REQUEST,
	M2A_DATA_REQUEST,				// ׷ܺ˕ս˽ߝ֡ìʏԫսAPP
	M2A_JOIN_REQUEST,
} prim_type_t;

typedef struct _mcps_data_request_
{
    uint8_t send_cnt;
} a2m_data_request_t;


typedef union
{
    a2m_data_request_t a2m_data_request_arg;
} mac_prim_arg_t;


typedef union
{
	mac_prim_arg_t mac_prim_arg;
} prim_arg_t;


typedef struct
{
	prim_arg_t prim_arg;
    pbuf_t *pbuf;
} prim_args_t;

#endif

