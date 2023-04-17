#include "forward.h"
#include <baselib/forward.h>

#include "ftdata.h"

#include "ft_0877.h"
#include "types.h"

#include "ftCaptain/ftCa_Init.h"
#include "ftCaptain/ftCa_SpecialLw.h"
#include "ftCaptain/ftCa_SpecialHi.h"
#include "ftCaptain/ftCa_SpecialN.h"
#include "ftCaptain/ftCa_SpecialS.h"
#include "ftCLink/ftCl_Init.h"
#include "ftCrazyHand/ftCh_Init.h"
#include "ftDonkey/ftDk_Init.h"
#include "ftDonkey/ftDk_SpecialHi.h"
#include "ftDonkey/ftDk_SpecialLw.h"
#include "ftDonkey/ftDk_SpecialN.h"
#include "ftDonkey/ftDk_SpecialS.h"
#include "ftDrMario/ftDr_Init.h"
#include "ftEmblem/ftFe_Init.h"
#include "ftFalco/ftFc_Init.h"
#include "ftFox/ftFx_Init.h"
#include "ftGameWatch/ftGw_Init.h"
#include "ftGanon/ftGn_Init.h"
#include "ftGigaKoopa/ftGk_Init.h"
#include "ftKirby/ftKb_Init.h"
#include "ftKoopa/ftkoopa.h"
#include "ftLink/ftLk_Init.h"
#include "ftLuigi/ftLg_Init.h"
#include "ftMario/ftmario.h"
#include "ftMario/ftmario2.h"
#include "ftMars/ftMs_Init.h"
#include "ftMasterHand/ftMh_Init.h"
#include "ftMasterHand/ftMh_MS_341.h"
#include "ftMewtwo/ftMt_Init.h"
#include "ftNana/fticeclimber2_nana.h"
#include "ftNess/ftNs_Init.h"
#include "ftPeach/ftPe_Init.h"
#include "ftPichu/ftPc_Init.h"
#include "ftPikachu/ftpikachu.h"
#include "ftPikachu/ftPk_Init.h"
#include "ftPopo/fticeclimber.h"
#include "ftPopo/fticeclimber1.h"
#include "ftPurin/ftPr_Init.h"
#include "ftSamus/ftSs_Init.h"
#include "ftSamus/ftSs_SpecialN.h"
#include "ftSamus/ftSs_SpecialS.h"
#include "ftSamus/ftSs_SpecialHi.h"
#include "ftSamus/ftSs_SpecialLw_1.h"
#include "ftSandbag/ftSb_Init.h"
#include "ftSeak/ftSk_Init.h"
#include "ftSeak/ftSk_SpecialHi.h"
#include "ftSeak/ftSk_SpecialLw.h"
#include "ftSeak/ftSk_SpecialN.h"
#include "ftSeak/ftSk_SpecialS.h"
#include "ftYoshi/ftYs_Init.h"
#include "ftYoshi/ftYs_Shield.h"
#include "ftYoshi/ftYs_SpecialN.h"
#include "ftZakoBoy/ftBo_Init.h"
#include "ftZakoGirl/ftGl_Init.h"
#include "ftZelda/ftZd_Init.h"

#include <dolphin/mtx/types.h>

typedef struct ftData_UnkCountStruct {
    /// Always zero; could be #NULL or the high part of a 64-bit integer.
    int zero;

    /// A count or ASID.
    int count;
} ftData_UnkCountStruct;

ftData_UnkCountStruct ftData_Table_Unk0[FTKIND_MAX] = {
    { 0, 303 }, { 0, 327 }, { 0, 318 }, { 0, 337 }, { 0, 479 }, { 0, 316 },
    { 0, 314 }, { 0, 317 }, { 0, 326 }, { 0, 318 }, { 0, 321 }, { 0, 321 },
    { 0, 320 }, { 0, 313 }, { 0, 314 }, { 0, 327 }, { 0, 314 }, { 0, 312 },
    { 0, 327 }, { 0, 311 }, { 0, 314 }, { 0, 303 }, { 0, 327 }, { 0, 320 },
    { 0, 323 }, { 0, 318 }, { 0, 327 }, { 0, 345 }, { 0, 344 }, { 0, 295 },
    { 0, 295 }, { 0, 316 }, { 0, 296 },
};

Event ftData_Table_Unk1[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    ftKb_Init_800EE528,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftPr_Init_8013C2F8,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

HSD_GObjEvent ftData_OnLoad[FTKIND_MAX] = {
    ftMr_Init_OnLoad,      ftFx_Init_OnLoad,       ftCa_Init_OnLoad,
    ftDk_Init_OnLoad,     ftKb_Init_OnLoad,     ftKp_Init_OnLoad,
    ftLk_Init_OnLoad,       ftSk_Init_OnLoad,      ftNs_Init_OnLoad,
    ftPe_Init_OnLoad,      ftPp_Init_OnLoad,      ftNn_Init_OnLoad,
    ftPk_Init_OnLoad,    ftSs_Init_OnLoad,     ftYs_Init_OnLoad,
    ftPr_Init_OnLoad,      ftMt_Init_OnLoad,    ftLg_Init_OnLoad,
    ftMs_Init_OnLoad,       ftZd_Init_OnLoad,     ftCl_Init_OnLoad,
    ftDr_Init_OnLoad,    ftFc_Init_OnLoad,     ftPc_Init_OnLoad,
    ftGw_Init_OnLoad,  ftGn_Init_OnLoad,     ftFe_Init_OnLoad,
    ftMh_Init_OnLoad, ftCh_Init_OnLoad, ftBo_Init_OnLoad,
    ftGl_Init_OnLoad,   ftGk_Init_OnLoad, ftSb_Init_OnLoad,
};

HSD_GObjEvent ftData_OnDeath[FTKIND_MAX] = {
    ftMr_Init_OnDeath,      ftFx_Init_OnDeath,       ftCa_Init_OnDeath,
    ftDk_Init_OnDeath,     ftKb_Init_OnDeath,     ftKp_Init_OnDeath,
    ftLk_Init_OnDeath,       ftSk_Init_OnDeath,      ftNs_Init_OnDeath,
    ftPe_Init_OnDeath,      ftPp_Init_OnDeath,      ftNn_Init_OnDeath,
    ftPk_Init_OnDeath,    ftSs_Init_OnDeath,     ftYs_Init_OnDeath,
    ftPr_Init_OnDeath,      ftMt_Init_OnDeath,    ftLg_Init_OnDeath,
    ftMs_Init_OnDeath,       ftZd_Init_OnDeath,     ftCl_Init_OnDeath,
    ftDr_Init_OnDeath,    ftFc_Init_OnDeath,     ftPc_Init_OnDeath,
    ftGw_Init_OnDeath,  ftGn_Init_OnDeath,     ftFe_Init_OnDeath,
    ftMh_Init_OnDeath, ftCh_Init_OnDeath, ftBo_Init_OnDeath,
    ftGl_Init_OnDeath,   ftGk_Init_OnDeath, ftSb_Init_OnDeath,
};

HSD_GObjEvent ftData_OnUserDataRemove[FTKIND_MAX] = {
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, ftPr_Init_OnUserDataRemove,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    NULL,
};

MotionState* ftData_CharacterStateTables[FTKIND_MAX] = {
    ftMr_Init_MotionStateTable,
    ftFx_Init_MotionStateTable,
    ftCa_Init_MotionStateTable,
    ftDk_Init_MotionStateTable,
    ftKb_Init_MotionStateTable,
    ftKp_Init_MotionStateTable,
    ftLk_Init_MotionStateTable,
    ftSk_Init_MotionStateTable,
    ftNs_Init_MotionStateTable,
    ftPe_Init_MotionStateTable,
    ftPp_Init_MotionStateTable,
    ftNn_Init_MotionStateTable,
    ftPk_Init_MotionStateTable,
    ftSs_Init_MotionStateTable,
    ftYs_Init_MotionStateTable,
    ftPr_Init_MotionStateTable,
    ftMt_Init_MotionStateTable,
    ftLg_Init_MotionStateTable,
    ftMs_Init_MotionStateTable,
    ftZd_Init_MotionStateTable,
    ftCl_Init_MotionStateTable,
    ftDr_Init_MotionStateTable,
    ftFc_Init_MotionStateTable,
    ftPc_Init_MotionStateTable,
    ftGw_Init_MotionStateTable,
    ftGn_Init_MotionStateTable,
    ftFe_Init_MotionStateTable,
    ftMh_Init_MotionStateTable,
    ftCh_Init_MotionStateTable,
    NULL,
    NULL,
    ftGk_Init_MotionStateTable,
    ftSb_Init_MotionStateTable,
};

MotionState* ftData_UnkMotionStates0[FTKIND_MAX] = {
    ftMr_Init_UnkMotionStates0, NULL, NULL, NULL,         ftKb_Init_UnkMotionStates0, NULL, NULL,
    NULL,         NULL, NULL, NULL,         NULL,         NULL, NULL,
    NULL,         NULL, NULL, ftLg_Init_UnkMotionStates0, NULL,         NULL, NULL,
    NULL,         NULL, NULL, NULL,         NULL,         NULL, NULL,
    NULL,         NULL, NULL, ftGk_Init_UnkMotionStates0, NULL,
};

HSD_GObjEvent ftData_SpecialS[FTKIND_MAX] = {
    ftMr_SpecialS_Enter,
    ftFx_SpecialSStart_Enter,
    ftCa_SpecialS_Enter,
    ftDk_SpecialS_Enter,
    ftKb_SpecialS_Enter,
    ftKp_SpecialS_Enter,
    ftLk_SpecialS_Enter,
    ftSk_SpecialS_Enter,
    ftNs_SpecialS_Enter,
    ftPe_SpecialS_Enter,
    ftPp_SpecialS_Enter,
    NULL,
    ftPk_SpecialS_Enter,
    ftSs_SpecialS_Enter,
    ftYs_SpecialS_Enter,
    ftPr_SpecialS_Enter,
    ftMt_SpecialS_Enter,
    ftLg_SpecialS_Enter,
    ftMs_SpecialS_Enter,
    ftZd_SpecialS_Enter,
    ftLk_SpecialS_Enter,
    ftMr_SpecialS_Enter,
    ftFx_SpecialSStart_Enter,
    ftPk_SpecialS_Enter,
    ftGw_SpecialS_Enter,
    ftCa_SpecialS_Enter,
    ftMs_SpecialS_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialS_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialAirHi[FTKIND_MAX] = {
    ftMr_SpecialAirHi_Enter,
    ftFx_SpecialAirHiStart_Enter,
    ftCa_SpecialAirHi_Enter,
    ftDk_SpecialAirHi_Enter,
    ftKb_SpecialAirHi_Enter,
    ftKp_SpecialAirHi_Enter,
    ftLk_SpecialAirHi_Enter,
    ftSk_SpecialAirHi_Enter,
    ftNs_SpecialAirHiStart_Enter,
    ftPe_SpecialAirHi_Enter,
    ftPp_SpecialAirHi_Enter,
    NULL,
    ftPk_SpecialAirHi_Enter,
    ftSs_SpecialAirHi_Enter,
    ftYs_SpecialAirHi_Enter,
    ftPr_SpecialAirHi_Enter,
    ftMt_SpecialAirHiStart_Enter,
    ftLg_SpecialAirHi_Enter,
    ftMs_SpecialAirHi_Enter,
    ftZd_SpecialAirHi_Enter,
    ftLk_SpecialAirHi_Enter,
    ftMr_SpecialAirHi_Enter,
    ftFx_SpecialAirHiStart_Enter,
    ftPk_SpecialAirHi_Enter,
    ftGw_SpecialAirHi_Enter,
    ftCa_SpecialAirHi_Enter,
    ftMs_SpecialAirHi_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialAirHi_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialAirLw[FTKIND_MAX] = {
    ftMr_SpecialAirLw_Enter,
    ftFx_SpecialAirLw_Enter,
    ftCa_SpecialAirLw_Enter,
    NULL,
    ftKb_SpecialAirLw_Enter,
    ftKp_SpecialAirLw_Enter,
    ftLk_SpecialAirLw_Enter,
    ftSk_SpecialAirLw_Enter,
    ftNs_SpecialAirLwStart_Enter,
    ftPe_SpecialAirLw_Enter,
    ftPp_SpecialAirLw_Enter,
    ftPp_SpecialAirLw_Enter,
    ftPk_SpecialAirLw_Enter,
    ftSs_SpecialAirLw_Enter,
    ftYs_SpecialAirLw_Enter,
    ftPr_SpecialAirLw_Enter,
    ftMt_SpecialAirLw_Enter,
    ftLg_SpecialAirLw_Enter,
    ftMs_SpecialAirLw_Enter,
    ftZd_SpecialAirLw_Enter,
    ftLk_SpecialAirLw_Enter,
    ftMr_SpecialAirLw_Enter,
    ftFx_SpecialAirLw_Enter,
    ftPk_SpecialAirLw_Enter,
    ftGw_SpecialAirLw_Enter,
    ftCa_SpecialAirLw_Enter,
    ftMs_SpecialAirLw_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialAirLw_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialAirS[FTKIND_MAX] = {
    ftMr_SpecialAirS_Enter,
    ftFx_SpecialAirSStart_Enter,
    ftCa_SpecialAirS_Enter,
    ftDk_SpecialAirS_Enter,
    ftKb_SpecialAirS_Enter,
    ftKp_SpecialAirS_Enter,
    ftLk_SpecialAirS_Enter,
    ftSk_SpecialAirS_Enter,
    ftNs_SpecialAirS_Enter,
    ftPe_SpecialAirS_Enter,
    ftPp_SpecialAirS_Enter,
    NULL,
    ftPk_SpecialAirS_Enter,
    ftSs_SpecialAirS_Enter,
    ftYs_SpecialAirS_Enter,
    ftPr_SpecialAirS_Enter,
    ftMt_SpecialAirS_Enter,
    ftLg_SpecialAirS_Enter,
    ftMs_SpecialAirS_Enter,
    ftZd_SpecialAirS_Enter,
    ftLk_SpecialAirS_Enter,
    ftMr_SpecialAirS_Enter,
    ftFx_SpecialAirSStart_Enter,
    ftPk_SpecialAirS_Enter,
    ftGw_SpecialAirS_Enter,
    ftCa_SpecialAirS_Enter,
    ftMs_SpecialAirS_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialAirS_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialAirN[FTKIND_MAX] = {
    ftMr_SpecialAirN_Enter,
    ftFx_SpecialAirN_Enter,
    ftCa_SpecialAirN_Enter,
    ftDk_SpecialAirN_Enter,
    ftKb_SpecialAirN_Enter,
    ftKp_SpecialAirN_Enter,
    ftLk_SpecialAirN_Enter,
    ftSk_SpecialAirN_Enter,
    ftNs_SpecialAirNStart_Enter,
    ftPe_SpecialAirN_Enter,
    ftPp_SpecialAirN_Enter,
    ftPp_SpecialAirN_Enter,
    ftPk_SpecialAirN_Enter,
    ftSs_SpecialAirN_Enter,
    ftYs_SpecialAirN_Enter,
    ftPr_SpecialAirN_Enter,
    ftMt_SpecialAirN_Enter,
    ftLg_SpecialAirN_Enter,
    ftMs_SpecialAirN_Enter,
    ftZd_SpecialAirN_Enter,
    ftLk_SpecialAirN_Enter,
    ftMr_SpecialAirN_Enter,
    ftFx_SpecialAirN_Enter,
    ftPk_SpecialAirN_Enter,
    ftGw_SpecialAirN_Enter,
    ftCa_SpecialAirN_Enter,
    ftMs_SpecialAirN_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialAirN_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialN[FTKIND_MAX] = {
    ftMr_SpecialN_Enter,
    ftFx_SpecialN_Enter,
    ftCa_SpecialN_Enter,
    ftDk_SpecialN_Enter,
    ftKb_SpecialN_Enter,
    ftKp_SpecialN_Enter,
    ftLk_SpecialN_Enter,
    ftSk_SpecialN_Enter,
    ftNs_SpecialNStart_Enter,
    ftPe_SpecialN_Enter,
    ftPp_SpecialN_Enter,
    ftPp_SpecialN_Enter,
    ftPk_SpecialN_Enter,
    ftSs_SpecialN_Enter,
    ftYs_SpecialN_Enter,
    ftPr_SpecialN_Enter,
    ftMt_SpecialN_Enter,
    ftLg_SpecialN_Enter,
    ftMs_SpecialN_Enter,
    ftZd_SpecialN_Enter,
    ftLk_SpecialN_Enter,
    ftMr_SpecialN_Enter,
    ftFx_SpecialN_Enter,
    ftPk_SpecialN_Enter,
    ftGw_SpecialN_Enter,
    ftCa_SpecialN_Enter,
    ftMs_SpecialN_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialN_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialLw[FTKIND_MAX] = {
    ftMr_SpecialLw_Enter,
    ftFx_SpecialLw_Enter,
    ftCa_SpecialLw_Enter,
    ftDk_SpecialLw_Enter,
    ftKb_SpecialLw_Enter,
    ftKp_SpecialLw_Enter,
    ftLk_SpecialLw_Enter,
    ftSk_SpecialLw_Enter,
    ftNs_SpecialLwStart_Enter,
    ftPe_SpecialLw_Enter,
    ftPp_SpecialLw_Enter,
    ftPp_SpecialLw_Enter,
    ftPk_SpecialLw_Enter,
    ftSs_SpecialLw_Enter,
    ftYs_SpecialLw_Enter,
    ftPr_SpecialLw_Enter,
    ftMt_SpecialLw_Enter,
    ftLg_SpecialLw_Enter,
    ftMs_SpecialLw_Enter,
    ftZd_SpecialLw_Enter,
    ftLk_SpecialLw_Enter,
    ftMr_SpecialLw_Enter,
    ftFx_SpecialLw_Enter,
    ftPk_SpecialLw_Enter,
    ftGw_SpecialLw_Enter,
    ftCa_SpecialLw_Enter,
    ftMs_SpecialLw_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialLw_Enter,
    NULL,
};

HSD_GObjEvent ftData_SpecialHi[FTKIND_MAX] = {
    ftMr_SpecialHi_Enter,
    ftFx_SpecialHi_Enter,
    ftCa_SpecialHi_Enter,
    ftDk_SpecialHi_Enter,
    ftKb_SpecialHi_Enter,
    ftKp_SpecialHi_Enter,
    ftLk_SpecialHi_Enter,
    ftSk_SpecialHi_Enter,
    ftNs_SpecialHiStart_Enter,
    ftPe_SpecialHi_Enter,
    ftPp_SpecialHi_Enter,
    NULL,
    ftPk_SpecialHi_Enter,
    ftSs_SpecialHi_Enter,
    ftYs_SpecialHi_Enter,
    ftPr_SpecialHi_Enter,
    ftMt_SpecialHiStart_Enter,
    ftLg_SpecialHi_Enter,
    ftMs_SpecialHi_Enter,
    ftZd_SpecialHi_Enter,
    ftLk_SpecialHi_Enter,
    ftMr_SpecialHi_Enter,
    ftFx_SpecialHi_Enter,
    ftPk_SpecialHi_Enter,
    ftGw_SpecialHi_Enter,
    ftCa_SpecialHi_Enter,
    ftMs_SpecialHi_Enter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftKp_SpecialHi_Enter,
    NULL,
};

HSD_GObjEvent ftData_OnAbsorb[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftNs_Init_OnAbsorb,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGw_Init_OnAbsorb,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

Fighter_ItemEvent ftData_OnItemPickupExt[FTKIND_MAX] = {
    ftMr_Init_OnItemPickup,
    ftFx_Init_OnItemPickup,
    ftCa_Init_OnItemPickup,
    ftDk_Init_OnItemPickup,
    ftKb_Init_OnItemPickup,
    ftKp_Init_OnItemPickup,
    ftLk_Init_OnItemPickupExt,
    ftSk_Init_OnItemPickup,
    ftNs_Init_OnItemPickup,
    ftPe_Init_OnItemPickup,
    ftPp_Init_OnItemPickup,
    ftPp_Init_OnItemPickup,
    ftPk_Init_OnItemPickup,
    ftSs_Init_OnItemPickup,
    ftYs_Init_OnItemPickup,
    ftPr_Init_OnItemPickup,
    ftMt_Init_OnItemPickup,
    ftLg_Init_OnItemPickup,
    ftMs_Init_OnItemPickup,
    ftZd_Init_OnItemPickup,
    ftCl_Init_OnItemPickupExt,
    ftDr_Init_OnItemPickup,
    ftFc_Init_OnItemPickup,
    ftPc_Init_OnItemPickup,
    ftGw_Init_OnItemPickup,
    ftGn_Init_OnItemPickup,
    ftFe_Init_OnItemPickup,
    NULL,
    NULL,
    ftBo_Init_OnItemPickup,
    ftGl_Init_OnItemPickup,
    ftGk_Init_OnItemPickup,
    NULL,
};

HSD_GObjEvent ftData_OnItemInvisible[FTKIND_MAX] = {
    ftMr_Init_OnItemInvisible,
    ftFx_Init_OnItemInvisible,
    ftCa_Init_OnItemInvisible,
    ftDk_Init_OnItemInvisible,
    ftKb_Init_OnItemInvisible,
    ftKp_Init_OnItemInvisible,
    ftLk_Init_OnItemInvisible,
    ftSk_Init_OnItemInvisible,
    ftNs_Init_OnItemInvisible,
    ftPe_Init_OnItemInvisible,
    ftPp_Init_OnItemInvisible,
    ftPp_Init_OnItemInvisible,
    ftPk_Init_OnItemInvisible,
    ftSs_Init_OnItemInvisible,
    ftYs_Init_OnItemInvisible,
    ftPr_Init_OnItemInvisible,
    ftMt_Init_OnItemInvisible,
    ftLg_Init_OnItemInvisible,
    ftMs_Init_OnItemInvisible,
    ftZd_Init_OnItemInvisible,
    ftCl_Init_OnItemInvisible,
    ftDr_Init_OnItemInvisible,
    ftFc_Init_OnItemInvisible,
    ftPc_Init_OnItemInvisible,
    ftGw_Init_OnItemInvisible,
    ftGn_Init_OnItemInvisible,
    ftFe_Init_OnItemInvisible,
    NULL,
    NULL,
    ftBo_Init_OnItemInvisible,
    ftGl_Init_OnItemInvisible,
    ftGk_Init_OnItemInvisible,
    NULL,
};

HSD_GObjEvent ftData_OnItemVisible[FTKIND_MAX] = {
    ftMr_Init_OnItemVisible,
    ftFx_Init_OnItemVisible,
    ftCa_Init_OnItemVisible,
    ftDk_Init_OnItemVisible,
    ftKb_Init_OnItemVisible,
    ftKp_Init_OnItemVisible,
    ftLk_Init_OnItemVisible,
    ftSk_Init_OnItemVisible,
    ftNs_Init_OnItemVisible,
    ftPe_Init_OnItemVisible,
    ftPp_Init_OnItemVisible,
    ftPp_Init_OnItemVisible,
    ftPk_Init_OnItemVisible,
    ftSs_Init_OnItemVisible,
    ftYs_Init_OnItemVisible,
    ftPr_Init_OnItemVisible,
    ftMt_Init_OnItemVisible,
    ftLg_Init_OnItemVisible,
    ftMs_Init_OnItemVisible,
    ftZd_Init_OnItemVisible,
    ftCl_Init_OnItemVisible,
    ftDr_Init_OnItemVisible,
    ftFc_Init_OnItemVisible,
    ftPc_Init_OnItemVisible,
    ftGw_Init_OnItemVisible,
    ftGn_Init_OnItemVisible,
    ftFe_Init_OnItemVisible,
    NULL,
    NULL,
    ftBo_Init_OnItemVisible,
    ftGl_Init_OnItemVisible,
    ftGk_Init_OnItemVisible,
    NULL,
};

Fighter_ItemEvent ftData_OnItemDropExt[FTKIND_MAX] = {
    ftMr_Init_OnItemDrop,
    ftFx_Init_OnItemDrop,
    ftCa_Init_OnItemDrop,
    ftDk_Init_OnItemDrop,
    ftKb_Init_OnItemDrop,
    ftKp_Init_OnItemDrop,
    ftLk_Init_OnItemDropExt,
    ftSk_Init_OnItemDrop,
    ftNs_Init_OnItemDrop,
    ftPe_Init_OnItemDrop,
    ftPp_Init_OnItemDrop,
    ftPp_Init_OnItemDrop,
    ftPk_Init_OnItemDrop,
    ftSs_Init_OnItemDrop,
    ftYs_Init_OnItemDrop,
    ftPr_Init_OnItemDrop,
    ftMt_Init_OnItemDrop,
    ftLg_Init_OnItemDrop,
    ftMs_Init_OnItemDrop,
    ftZd_Init_OnItemDrop,
    ftCl_Init_OnItemDropExt,
    ftDr_Init_OnItemDrop,
    ftFc_Init_OnItemDrop,
    ftPc_Init_OnItemDrop,
    ftGw_Init_OnItemDrop,
    ftGn_Init_OnItemDrop,
    ftFe_Init_OnItemDrop,
    NULL,
    NULL,
    ftBo_Init_OnItemDrop,
    ftGl_Init_OnItemDrop,
    ftGk_Init_OnItemDrop,
    NULL,
};

Fighter_ItemEvent ftData_OnItemPickup[FTKIND_MAX] = {
    ftMr_Init_OnItemPickup,
    ftFx_Init_OnItemPickup,
    ftCa_Init_OnItemPickup,
    ftDk_Init_OnItemPickup,
    ftKb_Init_OnItemPickup,
    ftKp_Init_OnItemPickup,
    ftLk_Init_OnItemPickup,
    ftSk_Init_OnItemPickup,
    ftNs_Init_OnItemPickup,
    ftPe_Init_OnItemPickup,
    ftPp_Init_OnItemPickup,
    ftPp_Init_OnItemPickup,
    ftPk_Init_OnItemPickup,
    ftSs_Init_OnItemPickup,
    ftYs_Init_OnItemPickup,
    ftPr_Init_OnItemPickup,
    ftMt_Init_OnItemPickup,
    ftLg_Init_OnItemPickup,
    ftMs_Init_OnItemPickup,
    ftZd_Init_OnItemPickup,
    ftCl_Init_OnItemPickup,
    ftDr_Init_OnItemPickup,
    ftFc_Init_OnItemPickup,
    ftPc_Init_OnItemPickup,
    ftGw_Init_OnItemPickup,
    ftGn_Init_OnItemPickup,
    ftFe_Init_OnItemPickup,
    NULL,
    NULL,
    ftBo_Init_OnItemPickup,
    ftGl_Init_OnItemPickup,
    ftGk_Init_OnItemPickup,
    NULL,
};

Fighter_ItemEvent ftData_OnItemDrop[FTKIND_MAX] = {
    ftMr_Init_OnItemDrop,
    ftFx_Init_OnItemDrop,
    ftCa_Init_OnItemDrop,
    ftDk_Init_OnItemDrop,
    ftKb_Init_OnItemDrop,
    ftKp_Init_OnItemDrop,
    ftLk_Init_OnItemDrop,
    ftSk_Init_OnItemDrop,
    ftNs_Init_OnItemDrop,
    ftPe_Init_OnItemDrop,
    ftPp_Init_OnItemDrop,
    ftPp_Init_OnItemDrop,
    ftPk_Init_OnItemDrop,
    ftSs_Init_OnItemDrop,
    ftYs_Init_OnItemDrop,
    ftPr_Init_OnItemDrop,
    ftMt_Init_OnItemDrop,
    ftLg_Init_OnItemDrop,
    ftMs_Init_OnItemDrop,
    ftZd_Init_OnItemDrop,
    ftCl_Init_OnItemDrop,
    ftDr_Init_OnItemDrop,
    ftFc_Init_OnItemDrop,
    ftPc_Init_OnItemDrop,
    ftGw_Init_OnItemDrop,
    ftGn_Init_OnItemDrop,
    ftFe_Init_OnItemDrop,
    NULL,
    NULL,
    ftBo_Init_OnItemDrop,
    ftGl_Init_OnItemDrop,
    ftGk_Init_OnItemDrop,
    NULL,
};

HSD_GObjEvent ftData_UnkMotionStates1[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftPk_Init_UnkMotionStates1,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

HSD_GObjEvent ftData_UnkMotionStates2[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftPk_Init_UnkMotionStates2,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

HSD_GObjEvent ftData_OnKnockbackEnter[FTKIND_MAX] = {
    ftMr_Init_OnKnockbackEnter,
    ftFx_Init_OnKnockbackEnter,
    NULL,
    ftDk_Init_OnKnockbackEnter,
    ftKb_Init_OnKnockbackEnter,
    ftKp_Init_OnKnockbackEnter,
    ftLk_Init_OnKnockbackEnter,
    ftSk_Init_OnKnockbackEnter,
    ftNs_Init_OnKnockbackEnter,
    ftPe_Init_OnKnockbackEnter,
    ftPp_Init_OnKnockbackEnter,
    ftPp_Init_OnKnockbackEnter,
    ftPk_Init_OnKnockbackEnter,
    NULL,
    ftYs_Init_OnKnockbackEnter,
    ftPr_Init_OnKnockbackEnter,
    ftMt_Init_OnKnockbackEnter,
    ftLg_Init_OnKnockbackEnter,
    ftMs_Init_OnKnockbackEnter,
    ftZd_Init_OnKnockbackEnter,
    ftCl_Init_OnKnockbackEnter,
    ftDr_Init_OnKnockbackEnter,
    ftFc_Init_OnKnockbackEnter,
    ftPc_Init_OnKnockbackEnter,
    NULL,
    ftGn_Init_OnKnockbackEnter,
    ftFe_Init_OnKnockbackEnter,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGk_Init_OnKnockbackEnter,
    ftSb_Init_OnKnockbackEnter,
};

HSD_GObjEvent ftData_OnKnockbackExit[FTKIND_MAX] = {
    ftMr_Init_OnKnockbackExit,
    ftFx_Init_OnKnockbackExit,
    NULL,
    ftDk_Init_OnKnockbackExit,
    ftKb_Init_OnKnockbackExit,
    ftKp_Init_OnKnockbackExit,
    ftLk_Init_OnKnockbackExit,
    ftSk_Init_OnKnockbackExit,
    ftNs_Init_OnKnockbackExit,
    ftPe_Init_OnKnockbackExit,
    ftPp_Init_OnKnockbackExit,
    ftPp_Init_OnKnockbackExit,
    ftPk_Init_OnKnockbackExit,
    NULL,
    ftYs_Init_OnKnockbackExit,
    ftPr_Init_OnKnockbackExit,
    ftMt_Init_OnKnockbackExit,
    ftLg_Init_OnKnockbackExit,
    ftMs_Init_OnKnockbackExit,
    ftZd_Init_OnKnockbackExit,
    ftCl_Init_OnKnockbackExit,
    ftDr_Init_OnKnockbackExit,
    ftFc_Init_OnKnockbackExit,
    ftPc_Init_OnKnockbackExit,
    NULL,
    ftGn_Init_OnKnockbackExit,
    ftFe_Init_OnKnockbackExit,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGk_Init_OnKnockbackExit,
    ftSb_Init_OnKnockbackExit,
};

HSD_GObjEvent ftData_UnkMotionStates3[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    ftKb_Init_UnkMotionStates3,
    ftKp_Init_UnkMotionStates3,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGk_Init_UnkMotionStates3,
    NULL,
};

HSD_GObjEvent ftData_UnkMotionStates4[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    ftDk_Init_UnkMotionStates4,
    ftKb_Init_UnkMotionStates4,
    NULL,
    NULL,
    ftSk_Init_UnkMotionStates4,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftSs_Init_UnkMotionStates4,
    NULL,
    NULL,
    ftMt_Init_UnkMotionStates4,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGw_Init_UnkMotionStates4,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

HSD_GObjEvent ftData_LoadSpecialAttrs[FTKIND_MAX] = {
    ftMr_Init_LoadSpecialAttrs,     ftFx_Init_LoadSpecialAttrs,
    ftCa_Init_LoadSpecialAttrs,   ftDk_Init_LoadSpecialAttrs,
    ftKb_Init_LoadSpecialAttrs,     ftKp_Init_LoadSpecialAttrs,
    ftLk_Init_LoadSpecialAttrs,      ftSk_Init_LoadSpecialAttrs,
    ftNs_Init_LoadSpecialAttrs,      ftPe_Init_LoadSpecialAttrs,
    ftPp_Init_LoadSpecialAttrs,      ftNn_Init_LoadSpecialAttrs,
    ftPk_Init_LoadSpecialAttrs,   ftSs_Init_LoadSpecialAttrs,
    ftYs_Init_LoadSpecialAttrs,     ftPr_Init_LoadSpecialAttrs,
    ftMt_Init_LoadSpecialAttrs,    ftLg_Init_LoadSpecialAttrs,
    ftMs_Init_LoadSpecialAttrs,      ftZd_Init_LoadSpecialAttrs,
    ftCl_Init_LoadSpecialAttrs,     ftDr_Init_LoadSpecialAttrs,
    ftFc_Init_LoadSpecialAttrs,     ftPc_Init_LoadSpecialAttrs,
    ftGw_Init_LoadSpecialAttrs, ftGn_Init_LoadSpecialAttrs,
    ftFe_Init_LoadSpecialAttrs,       ftMh_Init_LoadSpecialAttrs,
    ftCh_Init_LoadSpecialAttrs, ftBo_Init_LoadSpecialAttrs,
    ftGl_Init_LoadSpecialAttrs,  ftGk_Init_LoadSpecialAttrs,
    ftSb_Init_LoadSpecialAttrs,
};

/// Standard Character .dat File Names
char* ftData_803C1F40[FTKIND_MAX * 2] = {
    ftMr_Init_DatFilename, ftMr_Init_DataName, ftFx_Init_DatFilename,         ftFx_Init_DataName,
    ftCa_Init_DatFilename, ftCa_Init_DataName, ftDk_Init_DatFilename,         ftDk_Init_DataName,
    ftKb_Init_DatFilename, ftKb_Init_DataName, ftKp_Init_DatFilename,         ftKp_Init_DataName,
    ftLk_Init_DatFilename, ftLk_Init_DataName, ftSk_Init_DatFilename,         ftSk_Init_DataName,
    ftNs_Init_DatFilename, ftNs_Init_DataName, ftPe_Init_DatFilename, ftPe_Init_DataName,
    ftPp_Init_DatFilename, ftPp_Init_DataName, ftNn_Init_DatFilename,         ftNn_Init_DataName,
    ftPk_Init_DatFilename, ftPk_Init_DataName, ftSs_Init_DatFilename,         ftSs_Init_DataName,
    ftYs_Init_DatFilename, ftYs_Init_DataName, ftPr_Init_DatFilename,         ftPr_Init_DataName,
    ftMt_Init_DatFilename, ftMt_Init_DataName, ftLg_Init_DatFilename,         ftLg_Init_DataName,
    ftMs_Init_DatFilename, ftMs_Init_DataName, ftZd_Init_DatFilename,         ftZd_Init_DataName,
    ftCl_Init_DatFilename, ftCl_Init_DataName, ftDr_Init_DatFilename,         ftDr_Init_DataName,
    ftFc_Init_DatFilename, ftFc_Init_DataName, ftPc_Init_DatFilename,         ftPc_Init_DataName,
    ftGw_Init_DatFilename, ftGw_Init_DataName, ftGn_Init_DatFilename,         ftGn_Init_DataName,
    ftFe_Init_DatFilename, ftFe_Init_DataName, ftMh_Init_DatFilename,         ftMh_Init_DataName,
    ftCh_Init_DatFilename, ftCh_Init_DataName, ftBo_Init_DatFilename,         ftBo_Init_DataName,
    ftGl_Init_DatFilename, ftGl_Init_DataName, ftGk_Init_DatFilename,         ftGk_Init_DataName,
    ftSb_Init_DatFilename, ftSb_Init_DataName,
};

HSD_GObjEvent ftData_UnkMotionStates5[FTKIND_MAX] = {
    NULL, NULL, NULL, NULL, ftKb_Init_UnkMotionStates5,
    NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL, NULL, NULL,
    NULL, NULL, NULL,
};

Fighter_UnkMtxEvent ftData_UnkMtxFunc0[FTKIND_MAX] = {
    NULL,
    NULL,
    NULL,
    NULL,
    ftKb_UnkMtxFunc0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftPr_Init_UnkMtxFunc0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/// Character model group (e.g. high poly, low poly, metal) visibility change
/// callbacks
ftData_UnkModelStruct ftData_UnkIntBoolFunc0 = {
    {
        NULL,
        NULL,
        NULL,
        NULL,
        ftKb_UnkIntBoolFunc0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        ftPr_Init_UnkIntBoolFunc0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        NULL,
        NULL,
        NULL,
        NULL,
        ftKb_Init_UnkMotionStates6,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        ftPr_Init_UnkMotionStates6,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
};

HSD_GObjEvent ftData_UnkCallbackPairs0[][FTKIND_MAX] = {
    {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        ftKb_Init_UnkCallbackPairs0_0,
        ftKb_Init_UnkCallbackPairs0_1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    }

};

struct {
    /// Costume and Joint Strings
    Fighter_CostumeStrings* costume_strings[FTKIND_MAX];
    /// Animation .dat Filenames
    char* anim_dat_filenames[FTKIND_MAX];
} ftData_803C2360 = {
    {
        ftMr_Init_CostumeStrings, ftFx_Init_CostumeStrings,
        ftCa_Init_CostumeStrings,           ftDk_Init_CostumeStrings,
        ftKb_Init_CostumeStrings,           ftKp_Init_CostumeStrings,
        ftLk_Init_CostumeStrings,           ftSk_Init_CostumeStrings,
        ftNs_Init_CostumeStrings,           ftPe_Init_CostumeStrings,
        ftPp_Init_CostumeStrings,           ftNn_Init_CostumeStrings,
        ftPk_Init_CostumeStrings,           ftSs_Init_CostumeStrings,
        ftYs_Init_CostumeStrings,           ftPr_Init_CostumeStrings,
        ftMt_Init_CostumeStrings,           ftLg_Init_CostumeStrings,
        ftMs_Init_CostumeStrings,           ftZd_Init_CostumeStrings,
        ftCl_Init_CostumeStrings,           ftDr_Init_CostumeStrings,
        ftFc_Init_CostumeStrings,           ftPc_Init_CostumeStrings,
        ftGw_Init_CostumeStrings,           ftGn_Init_CostumeStrings,
        ftFe_Init_CostumeStrings,           ftMh_Init_CostumeStrings,
        ftCh_Init_CostumeStrings,           ftBo_Init_CostumeStrings,
        ftGl_Init_CostumeStrings,           ftGk_Init_CostumeStrings,
        ftSb_Init_CostumeStrings,
    },
    {
        ftMr_Init_AnimDatFilename, ftFx_Init_AnimDatFilename, ftCa_Init_AnimDatFilename, ftDk_Init_AnimDatFilename, ftKb_Init_AnimDatFilename,
        ftKp_Init_AnimDatFilename, ftLk_Init_AnimDatFilename, ftSk_Init_AnimDatFilename, ftNs_Init_AnimDatFilename, ftPe_Init_AnimDatFilename,
        ftPp_Init_AnimDatFilename, ftNn_Init_AnimDatFilename, ftPk_Init_AnimDatFilename, ftSs_Init_AnimDatFilename, ftYs_Init_AnimDatFilename,
        ftPr_Init_AnimDatFilename, ftMt_Init_AnimDatFilename, ftLg_Init_AnimDatFilename, ftMs_Init_AnimDatFilename, ftZd_Init_AnimDatFilename,
        ftCl_Init_AnimDatFilename, ftDr_Init_AnimDatFilename, ftFc_Init_AnimDatFilename, ftPc_Init_AnimDatFilename, ftGw_Init_AnimDatFilename,
        ftGn_Init_AnimDatFilename, ftFe_Init_AnimDatFilename, ftMh_Init_AnimDatFilename, ftCh_Init_AnimDatFilename, ftBo_Init_AnimDatFilename,
        ftGl_Init_AnimDatFilename, ftGk_Init_AnimDatFilename, ftSb_Init_AnimDatFilename,
    }

};

/// Demo Lookup Strings
Fighter_DemoStrings* ftData_803C2468[FTKIND_MAX] = {
    &ftMr_Init_DemoMotionFilenames,
    &ftFx_Init_DemoMotionFilenames,
    &ftCa_Init_DemoMotionFilenames,
    &ftDk_Init_DemoMotionFilenames,
    &ftKb_Init_DemoMotionFilenames,
    &ftKp_Init_DemoMotionFilenames,
    &ftLk_Init_DemoMotionFilenames,
    &ftSk_Init_DemoMotionFilenames,
    &ftNs_Init_DemoMotionFilenames,
    &ftPe_Init_DemoMotionFilenames,
    &ftPp_Init_DemoMotionFilenames,
    &ftNn_Init_DemoMotionFilenames,
    &ftPk_Init_DemoMotionFilenames,
    &ftSs_Init_DemoMotionFilenames,
    &ftYs_Init_DemoMotionFilenames,
    &ftPr_Init_DemoMotionFilenames,
    &ftMt_Init_DemoMotionFilenames,
    &ftLg_Init_DemoMotionFilenames,
    &ftMs_Init_DemoMotionFilenames,
    &ftZd_Init_DemoMotionFilenames,
    &ftCl_Init_DemoMotionFilenames,
    &ftDr_Init_DemoMotionFilenames,
    &ftFc_Init_DemoMotionFilenames,
    &ftPc_Init_DemoMotionFilenames,
    &ftGw_Init_DemoMotionFilenames,
    &ftGn_Init_DemoMotionFilenames,
    &ftFe_Init_DemoMotionFilenames,
    NULL,
    NULL,
    NULL,
    NULL,
    &ftGk_Init_DemoMotionFilenames,
    NULL,
};

Fighter_DemoGetter ftData_803C24EC[FTKIND_MAX] = {
    ftMr_Init_GetMotionFileString,
    NULL,
    NULL,
    NULL,
    ftKb_Init_GetMotionFileString,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftLg_Init_GetMotionFileString,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGk_Init_GetMotionFileString,
    NULL,
};

Fighter_UnkPtrEvent ftData_UnkDemoCallbacks0[FTKIND_MAX] = {
    ftMr_Init_UnkDemoCallbacks0,
    NULL,
    NULL,
    NULL,
    ftKb_Init_UnkDemoCallbacks0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftLg_Init_UnkDemoCallbacks0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    ftGk_Init_UnkDemoCallbacks0,
    NULL,
};

ftData_UnkCountStruct ftData_UnkIntPairs[FTKIND_MAX] = {
    { 0, 16 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 18 }, { 0, 14 },
    { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 },
    { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 16 },
    { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 },
    { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 }, { 0, 14 },
    { 0, 14 }, { 0, 15 }, { 0, 14 },
};

s8 ftData_UnkBytePerCharacter[FTKIND_MAX] = {
    1,  3,  4,  8, 5, 12, 6, 17, 10, 15, 14, 14, 7,  2,  9,  11, 13,
    18, 16, 17, 6, 1, 3,  7, -1, 19, 49, -1, -1, -1, -1, 12, -1,
};
