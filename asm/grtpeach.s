.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_802228B4
func_802228B4:
/* 802228B4 0021F494  4E 80 00 20 */	blr 
/* 802228B8 0021F498  7C 08 02 A6 */	mflr r0
/* 802228BC 0021F49C  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 802228C0 0021F4A0  90 01 00 04 */	stw r0, 4(r1)
/* 802228C4 0021F4A4  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 802228C8 0021F4A8  38 A3 00 8C */	addi r5, r3, 0x8c
/* 802228CC 0021F4AC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802228D0 0021F4B0  38 80 00 01 */	li r4, 1
/* 802228D4 0021F4B4  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 802228D8 0021F4B8  38 60 00 00 */	li r3, 0
/* 802228DC 0021F4BC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802228E0 0021F4C0  98 05 00 00 */	stb r0, 0(r5)
/* 802228E4 0021F4C4  38 60 00 00 */	li r3, 0
/* 802228E8 0021F4C8  88 05 00 00 */	lbz r0, 0(r5)
/* 802228EC 0021F4CC  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 802228F0 0021F4D0  98 05 00 00 */	stb r0, 0(r5)
/* 802228F4 0021F4D4  48 00 00 65 */	bl func_80222958
/* 802228F8 0021F4D8  38 60 00 01 */	li r3, 1
/* 802228FC 0021F4DC  48 00 00 5D */	bl func_80222958
/* 80222900 0021F4E0  38 60 00 02 */	li r3, 2
/* 80222904 0021F4E4  48 00 00 55 */	bl func_80222958
/* 80222908 0021F4E8  4B FA 10 B9 */	bl func_801C39C0
/* 8022290C 0021F4EC  4B FA 12 A9 */	bl func_801C3BB4
/* 80222910 0021F4F0  4B FA 19 01 */	bl func_801C4210
/* 80222914 0021F4F4  4B FA 19 99 */	bl func_801C42AC
/* 80222918 0021F4F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022291C 0021F4FC  38 21 00 08 */	addi r1, r1, 8
/* 80222920 0021F500  7C 08 03 A6 */	mtlr r0
/* 80222924 0021F504  4E 80 00 20 */	blr 
/* 80222928 0021F508  4E 80 00 20 */	blr 
/* 8022292C 0021F50C  7C 08 02 A6 */	mflr r0
/* 80222930 0021F510  38 60 00 00 */	li r3, 0
/* 80222934 0021F514  90 01 00 04 */	stw r0, 4(r1)
/* 80222938 0021F518  94 21 FF F8 */	stwu r1, -8(r1)
/* 8022293C 0021F51C  4B FA 84 C9 */	bl func_801CAE04
/* 80222940 0021F520  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80222944 0021F524  38 21 00 08 */	addi r1, r1, 8
/* 80222948 0021F528  7C 08 03 A6 */	mtlr r0
/* 8022294C 0021F52C  4E 80 00 20 */	blr 
/* 80222950 0021F530  38 60 00 00 */	li r3, 0
/* 80222954 0021F534  4E 80 00 20 */	blr 

.global func_80222958
func_80222958:
/* 80222958 0021F538  7C 08 02 A6 */	mflr r0
/* 8022295C 0021F53C  90 01 00 04 */	stw r0, 4(r1)
/* 80222960 0021F540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222964 0021F544  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80222968 0021F548  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022296C 0021F54C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80222970 0021F550  93 81 00 10 */	stw r28, 0x10(r1)
/* 80222974 0021F554  3B 83 00 00 */	addi r28, r3, 0
/* 80222978 0021F558  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 8022297C 0021F55C  3C 60 80 3F */	lis r3, lbl_803E90F0@ha
/* 80222980 0021F560  3B E3 90 F0 */	addi r31, r3, lbl_803E90F0@l
/* 80222984 0021F564  38 7C 00 00 */	addi r3, r28, 0
/* 80222988 0021F568  7F BF 02 14 */	add r29, r31, r0
/* 8022298C 0021F56C  4B F9 EB 45 */	bl func_801C14D0
/* 80222990 0021F570  7C 7E 1B 79 */	or. r30, r3, r3
/* 80222994 0021F574  41 82 00 70 */	beq lbl_80222A04
/* 80222998 0021F578  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 8022299C 0021F57C  38 00 00 00 */	li r0, 0
/* 802229A0 0021F580  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 802229A4 0021F584  90 1F 00 08 */	stw r0, 8(r31)
/* 802229A8 0021F588  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 802229AC 0021F58C  38 7E 00 00 */	addi r3, r30, 0
/* 802229B0 0021F590  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802229B4 0021F594  38 A0 00 03 */	li r5, 3
/* 802229B8 0021F598  38 C0 00 00 */	li r6, 0
/* 802229BC 0021F59C  48 16 DC E1 */	bl func_8039069C
/* 802229C0 0021F5A0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802229C4 0021F5A4  28 00 00 00 */	cmplwi r0, 0
/* 802229C8 0021F5A8  41 82 00 08 */	beq lbl_802229D0
/* 802229CC 0021F5AC  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_802229D0:
/* 802229D0 0021F5B0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802229D4 0021F5B4  28 0C 00 00 */	cmplwi r12, 0
/* 802229D8 0021F5B8  41 82 00 10 */	beq lbl_802229E8
/* 802229DC 0021F5BC  7D 88 03 A6 */	mtlr r12
/* 802229E0 0021F5C0  38 7E 00 00 */	addi r3, r30, 0
/* 802229E4 0021F5C4  4E 80 00 21 */	blrl 
lbl_802229E8:
/* 802229E8 0021F5C8  80 9D 00 08 */	lwz r4, 8(r29)
/* 802229EC 0021F5CC  28 04 00 00 */	cmplwi r4, 0
/* 802229F0 0021F5D0  41 82 00 2C */	beq lbl_80222A1C
/* 802229F4 0021F5D4  38 7E 00 00 */	addi r3, r30, 0
/* 802229F8 0021F5D8  38 A0 00 04 */	li r5, 4
/* 802229FC 0021F5DC  48 16 D3 59 */	bl func_8038FD54
/* 80222A00 0021F5E0  48 00 00 1C */	b lbl_80222A1C
lbl_80222A04:
/* 80222A04 0021F5E4  38 DC 00 00 */	addi r6, r28, 0
/* 80222A08 0021F5E8  4C C6 31 82 */	crclr 6
/* 80222A0C 0021F5EC  38 7F 00 90 */	addi r3, r31, 0x90
/* 80222A10 0021F5F0  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80222A14 0021F5F4  38 A0 00 C3 */	li r5, 0xc3
/* 80222A18 0021F5F8  48 12 2C 91 */	bl OSReport
lbl_80222A1C:
/* 80222A1C 0021F5FC  7F C3 F3 78 */	mr r3, r30
/* 80222A20 0021F600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222A24 0021F604  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222A28 0021F608  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80222A2C 0021F60C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80222A30 0021F610  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80222A34 0021F614  38 21 00 20 */	addi r1, r1, 0x20
/* 80222A38 0021F618  7C 08 03 A6 */	mtlr r0
/* 80222A3C 0021F61C  4E 80 00 20 */	blr 
/* 80222A40 0021F620  7C 08 02 A6 */	mflr r0
/* 80222A44 0021F624  38 A0 00 00 */	li r5, 0
/* 80222A48 0021F628  90 01 00 04 */	stw r0, 4(r1)
/* 80222A4C 0021F62C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80222A50 0021F630  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80222A54 0021F634  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80222A58 0021F638  4B FA 56 E1 */	bl func_801C8138
/* 80222A5C 0021F63C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80222A60 0021F640  38 21 00 08 */	addi r1, r1, 8
/* 80222A64 0021F644  7C 08 03 A6 */	mtlr r0
/* 80222A68 0021F648  4E 80 00 20 */	blr 
/* 80222A6C 0021F64C  38 60 00 00 */	li r3, 0
/* 80222A70 0021F650  4E 80 00 20 */	blr 
/* 80222A74 0021F654  4E 80 00 20 */	blr 
/* 80222A78 0021F658  4E 80 00 20 */	blr 
/* 80222A7C 0021F65C  7C 08 02 A6 */	mflr r0
/* 80222A80 0021F660  90 01 00 04 */	stw r0, 4(r1)
/* 80222A84 0021F664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222A88 0021F668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80222A8C 0021F66C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80222A90 0021F670  7C 7E 1B 78 */	mr r30, r3
/* 80222A94 0021F674  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80222A98 0021F678  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80222A9C 0021F67C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222AA0 0021F680  4B FA 04 31 */	bl func_801C2ED0
/* 80222AA4 0021F684  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222AA8 0021F688  38 7E 00 00 */	addi r3, r30, 0
/* 80222AAC 0021F68C  38 A0 00 00 */	li r5, 0
/* 80222AB0 0021F690  4B FA 56 89 */	bl func_801C8138
/* 80222AB4 0021F694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222AB8 0021F698  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222ABC 0021F69C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80222AC0 0021F6A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80222AC4 0021F6A4  7C 08 03 A6 */	mtlr r0
/* 80222AC8 0021F6A8  4E 80 00 20 */	blr 
/* 80222ACC 0021F6AC  38 60 00 00 */	li r3, 0
/* 80222AD0 0021F6B0  4E 80 00 20 */	blr 
/* 80222AD4 0021F6B4  7C 08 02 A6 */	mflr r0
/* 80222AD8 0021F6B8  90 01 00 04 */	stw r0, 4(r1)
/* 80222ADC 0021F6BC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80222AE0 0021F6C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80222AE4 0021F6C4  7C 7F 1B 78 */	mr r31, r3
/* 80222AE8 0021F6C8  4B DE EB 0D */	bl func_800115F4
/* 80222AEC 0021F6CC  7F E3 FB 78 */	mr r3, r31
/* 80222AF0 0021F6D0  4B FA 04 F1 */	bl func_801C2FE0
/* 80222AF4 0021F6D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80222AF8 0021F6D8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80222AFC 0021F6DC  38 21 00 18 */	addi r1, r1, 0x18
/* 80222B00 0021F6E0  7C 08 03 A6 */	mtlr r0
/* 80222B04 0021F6E4  4E 80 00 20 */	blr 
/* 80222B08 0021F6E8  4E 80 00 20 */	blr 
/* 80222B0C 0021F6EC  7C 08 02 A6 */	mflr r0
/* 80222B10 0021F6F0  90 01 00 04 */	stw r0, 4(r1)
/* 80222B14 0021F6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222B18 0021F6F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80222B1C 0021F6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80222B20 0021F700  7C 7E 1B 78 */	mr r30, r3
/* 80222B24 0021F704  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80222B28 0021F708  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80222B2C 0021F70C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222B30 0021F710  4B FA 03 A1 */	bl func_801C2ED0
/* 80222B34 0021F714  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222B38 0021F718  38 7E 00 00 */	addi r3, r30, 0
/* 80222B3C 0021F71C  38 A0 00 00 */	li r5, 0
/* 80222B40 0021F720  4B FA 55 F9 */	bl func_801C8138
/* 80222B44 0021F724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222B48 0021F728  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222B4C 0021F72C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80222B50 0021F730  38 21 00 20 */	addi r1, r1, 0x20
/* 80222B54 0021F734  7C 08 03 A6 */	mtlr r0
/* 80222B58 0021F738  4E 80 00 20 */	blr 
/* 80222B5C 0021F73C  38 60 00 00 */	li r3, 0
/* 80222B60 0021F740  4E 80 00 20 */	blr 
/* 80222B64 0021F744  7C 08 02 A6 */	mflr r0
/* 80222B68 0021F748  90 01 00 04 */	stw r0, 4(r1)
/* 80222B6C 0021F74C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80222B70 0021F750  4B FA 04 71 */	bl func_801C2FE0
/* 80222B74 0021F754  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80222B78 0021F758  38 21 00 08 */	addi r1, r1, 8
/* 80222B7C 0021F75C  7C 08 03 A6 */	mtlr r0
/* 80222B80 0021F760  4E 80 00 20 */	blr 
/* 80222B84 0021F764  4E 80 00 20 */	blr 
/* 80222B88 0021F768  38 60 00 00 */	li r3, 0
/* 80222B8C 0021F76C  4E 80 00 20 */	blr 
/* 80222B90 0021F770  38 60 00 01 */	li r3, 1
/* 80222B94 0021F774  4E 80 00 20 */	blr 
