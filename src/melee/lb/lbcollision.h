#ifndef GALE01_005BB0
#define GALE01_005BB0

#include <platform.h>
#include "ft/forward.h"
#include "lb/forward.h"
#include <baselib/forward.h>

#include <placeholder.h>
#include <dolphin/mtx/types.h>
#include <baselib/jobj.h>

typedef struct {
    Vec3 v1;
    f32 v2;
    HSD_JObj* jobj;
} Foo;

/* 005BB0 */ int lbColl_80005BB0(HitCapsule*, int);
/* 005C44 */ bool lbColl_80005C44(Vec3*, Vec3*, Vec3*, Vec3*, float, float);
/* 005EBC */ float lbColl_80005EBC(Vec3*, Vec3*, Vec3*, float*);
/* 005FC0 */ float lbColl_80005FC0(Vec3*, Vec3*, Vec3*, float*);
/* 006094 */ bool lbColl_80006094(Vec3*, Vec3*, Vec3*, Vec3*, Vec3*, Vec3*,
                                  float, float);
/* 0067F8 */ bool lbColl_800067F8(Vec3*, Vec3*, Vec3*, Vec3*, Vec3*, Vec3*,
                                  float, float, float);
/* 0077A0 */ void lbColl_800077A0(Vec3*, Mtx, Vec3*, Vec3*, Vec3*, Vec3*,
                                  float* angle, float, float);
/* 007AFC */ bool lbColl_80007AFC(HitCapsule*, HitCapsule*, float, float);
/* 007B78 */ UNK_RET lbColl_80007B78(Mtx, Mtx, float, float);
/* 007BCC */ bool lbColl_80007BCC(HitCapsule*, HitResult* shield_hit, unk_t,
                                  s32, float, float, float);
/* 007D68 */ void lbColl_JObjSetupMatrix(HSD_JObj*);
/* 007DD8 */ void lbColl_80007DD8(HitCapsule*, HitResult*, Mtx, Vec3*, float*,
                                  float);
/* 007ECC */ bool lbColl_80007ECC(HitCapsule*, HurtCapsule*, Mtx,
                                  float hit_scl_y, float hurt_scl_y,
                                  float hurt_pos_z);
/* 00805C */ bool lbColl_8000805C(HitCapsule* arg0, HurtCapsule* arg1,
                                  Mtx arg2, s32 arg3, float arg4, float arg5,
                                  float arg6);
/* 008248 */ bool lbColl_80008248(HitCapsule*, HurtCapsule*, Mtx, float, float,
                                  float);
/* 0083C4 */ void lbColl_800083C4(HurtCapsule*);
/* 008428 */ void lbColl_80008428(HitCapsule*);
/* 008434 */ void lbColl_80008434(HitCapsule*);
/* 008440 */ void lbColl_80008440(HitCapsule*);
/* 0084FC */ void lbColl_CopyHitCapsule(HitCapsule* src, HitCapsule* dst);
/* 008688 */ bool lbColl_80008688(HitCapsule*, enum_t, Fighter*);
/* 008820 */ UNK_RET lbColl_80008820(UNK_PARAMS);
/* 0089B8 */ void lbColl_800089B8(HitCapsule* hit, UNK_T arg1);
/* 008A5C */ void lbColl_80008A5C(HitCapsule* hit);
/* 008D30 */ void lbColl_80008D30(HitCapsule*, UNK_T);
/* 008DA4 */ UNK_RET lbColl_80008DA4(UNK_PARAMS);
/* 008FC8 */ void lbColl_80008FC8(Vec3, Vec3, u8*, u8*, float);
/* 0096B4 */ void lbColl_800096B4(MtxPtr, Vec3, Vec3, u8*, u8*, float);
/* 009DD4 */ UNK_RET lbColl_80009DD4(UNK_PARAMS);
/* 009F54 */ bool lbColl_80009F54(HitCapsule* hit, u32 arg1, float arg8);
/* 00A044 */ bool lbColl_8000A044(HitCapsule* hit, u32 arg1, float arg8);
/* 00A10C */ UNK_RET lbColl_8000A10C(UNK_PARAMS);
/* 00A1A8 */ UNK_RET lbColl_8000A1A8(UNK_PARAMS);
/* 00A244 */ bool lbColl_8000A244(HurtCapsule* hurt, u32 arg1, Mtx arg2,
                                  float arg3);
/* 00A460 */ bool lbColl_8000A460(Foo* hurt, u32 arg1);
/* 00A584 */ bool lbColl_8000A584(HurtCapsule* hurt, u32 arg1, u32 arg2,
                                  Mtx arg3, f32 arg8);
/* 00A78C */ UNK_RET lbColl_8000A78C(UNK_PARAMS);
/* 00A95C */ bool lbColl_8000A95C(HitResult* hit, u32 arg1, Mtx arg2,
                                  f32 pos_z);
/* 00AB2C */ UNK_RET lbColl_8000AB2C(UNK_PARAMS);
/* 00ACFC */ bool lbColl_8000ACFC(UNK_T, HitCapsule*);

static inline bool approximatelyZero(float x)
{
    bool result;

    if ((x < 0.00001f) && (x > -0.00001f)) {
        result = true;
    } else {
        result = false;
    }

    return result;
}

static inline bool testPlusX(Vec3* a, Vec3* b, Vec3* c, float offset)
{
    float x = a->x + offset;
    if (x < b->x && x < c->x) {
        return false;
    }

    return true;
}

static inline bool testPlus(float a, float b, float c, float offset)
{
    float x = a + offset;
    if (x < b && x < c) {
        return false;
    }

    return true;
}

static inline bool testMinusX(Vec3* a, Vec3* b, Vec3* c, float offset)
{
    float x = a->x - offset;
    if (x > b->x && x > c->x) {
        return false;
    }

    return true;
}

#endif
