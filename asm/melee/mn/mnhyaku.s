.include "macros.inc"

.section .text  # 0x8024C68C - 0x8024CE70

.global func_8024C68C
func_8024C68C:
/* 8024C68C 0024926C  7C 08 02 A6 */	mflr r0
/* 8024C690 00249270  90 01 00 04 */	stw r0, 4(r1)
/* 8024C694 00249274  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8024C698 00249278  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8024C69C 0024927C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8024C6A0 00249280  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8024C6A4 00249284  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8024C6A8 00249288  A0 6D B5 28 */	lhz r3, lbl_804D6BC8@sda21(r13)
/* 8024C6AC 0024928C  80 8D B5 B8 */	lwz r4, lbl_804D6C58@sda21(r13)
/* 8024C6B0 00249290  28 03 00 00 */	cmplwi r3, 0
/* 8024C6B4 00249294  83 C4 00 2C */	lwz r30, 0x2c(r4)
/* 8024C6B8 00249298  41 82 00 20 */	beq lbl_8024C6D8
/* 8024C6BC 0024929C  38 03 FF FF */	addi r0, r3, -1
/* 8024C6C0 002492A0  B0 0D B5 28 */	sth r0, lbl_804D6BC8@sda21(r13)
/* 8024C6C4 002492A4  38 00 00 00 */	li r0, 0
/* 8024C6C8 002492A8  38 6D B5 28 */	addi r3, r13, lbl_804D6BC8@sda21
/* 8024C6CC 002492AC  B0 03 00 02 */	sth r0, 2(r3)
/* 8024C6D0 002492B0  90 03 00 04 */	stw r0, 4(r3)
/* 8024C6D4 002492B4  48 00 02 FC */	b lbl_8024C9D0
lbl_8024C6D8:
/* 8024C6D8 002492B8  38 60 00 04 */	li r3, 4
/* 8024C6DC 002492BC  4B FD CF 49 */	bl func_80229624
/* 8024C6E0 002492C0  3B E0 00 00 */	li r31, 0
/* 8024C6E4 002492C4  38 00 00 20 */	li r0, 0x20
/* 8024C6E8 002492C8  3C 80 80 4A */	lis r4, lbl_804A04F0@ha
/* 8024C6EC 002492CC  3B A4 04 F0 */	addi r29, r4, lbl_804A04F0@l
/* 8024C6F0 002492D0  7C 60 00 38 */	and r0, r3, r0
/* 8024C6F4 002492D4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8024C6F8 002492D8  7F E5 F8 38 */	and r5, r31, r31
/* 8024C6FC 002492DC  7C 04 FA 78 */	xor r4, r0, r31
/* 8024C700 002492E0  93 FD 00 08 */	stw r31, 8(r29)
/* 8024C704 002492E4  7C A0 FA 78 */	xor r0, r5, r31
/* 8024C708 002492E8  7C 80 03 79 */	or. r0, r4, r0
/* 8024C70C 002492EC  41 82 00 24 */	beq lbl_8024C730
/* 8024C710 002492F0  38 60 00 00 */	li r3, 0
/* 8024C714 002492F4  4B DD 79 1D */	bl func_80024030
/* 8024C718 002492F8  9B FD 00 11 */	stb r31, 0x11(r29)
/* 8024C71C 002492FC  38 60 00 09 */	li r3, 9
/* 8024C720 00249300  38 80 00 02 */	li r4, 2
/* 8024C724 00249304  38 A0 00 03 */	li r5, 3
/* 8024C728 00249308  4B FD D1 6D */	bl func_80229894
/* 8024C72C 0024930C  48 00 02 A4 */	b lbl_8024C9D0
lbl_8024C730:
/* 8024C730 00249310  38 00 00 10 */	li r0, 0x10
/* 8024C734 00249314  7C 60 00 38 */	and r0, r3, r0
/* 8024C738 00249318  7C 04 FA 78 */	xor r4, r0, r31
/* 8024C73C 0024931C  7C A0 FA 78 */	xor r0, r5, r31
/* 8024C740 00249320  7C 80 03 79 */	or. r0, r4, r0
/* 8024C744 00249324  41 82 00 94 */	beq lbl_8024C7D8
/* 8024C748 00249328  38 60 00 01 */	li r3, 1
/* 8024C74C 0024932C  4B DD 78 E5 */	bl func_80024030
/* 8024C750 00249330  4B FD CE 5D */	bl func_802295AC
/* 8024C754 00249334  4B F1 B0 95 */	bl func_801677E8
/* 8024C758 00249338  88 1E 00 00 */	lbz r0, 0(r30)
/* 8024C75C 0024933C  2C 00 00 03 */	cmpwi r0, 3
/* 8024C760 00249340  41 82 00 54 */	beq lbl_8024C7B4
/* 8024C764 00249344  40 80 00 1C */	bge lbl_8024C780
/* 8024C768 00249348  2C 00 00 01 */	cmpwi r0, 1
/* 8024C76C 0024934C  41 82 00 30 */	beq lbl_8024C79C
/* 8024C770 00249350  40 80 00 38 */	bge lbl_8024C7A8
/* 8024C774 00249354  2C 00 00 00 */	cmpwi r0, 0
/* 8024C778 00249358  40 80 00 18 */	bge lbl_8024C790
/* 8024C77C 0024935C  48 00 02 54 */	b lbl_8024C9D0
lbl_8024C780:
/* 8024C780 00249360  2C 00 00 05 */	cmpwi r0, 5
/* 8024C784 00249364  41 82 00 48 */	beq lbl_8024C7CC
/* 8024C788 00249368  40 80 02 48 */	bge lbl_8024C9D0
/* 8024C78C 0024936C  48 00 00 34 */	b lbl_8024C7C0
lbl_8024C790:
/* 8024C790 00249370  38 60 00 21 */	li r3, 0x21
/* 8024C794 00249374  4B FD D0 CD */	bl func_80229860
/* 8024C798 00249378  48 00 02 38 */	b lbl_8024C9D0
lbl_8024C79C:
/* 8024C79C 0024937C  38 60 00 22 */	li r3, 0x22
/* 8024C7A0 00249380  4B FD D0 C1 */	bl func_80229860
/* 8024C7A4 00249384  48 00 02 2C */	b lbl_8024C9D0
lbl_8024C7A8:
/* 8024C7A8 00249388  38 60 00 23 */	li r3, 0x23
/* 8024C7AC 0024938C  4B FD D0 B5 */	bl func_80229860
/* 8024C7B0 00249390  48 00 02 20 */	b lbl_8024C9D0
lbl_8024C7B4:
/* 8024C7B4 00249394  38 60 00 24 */	li r3, 0x24
/* 8024C7B8 00249398  4B FD D0 A9 */	bl func_80229860
/* 8024C7BC 0024939C  48 00 02 14 */	b lbl_8024C9D0
lbl_8024C7C0:
/* 8024C7C0 002493A0  38 60 00 25 */	li r3, 0x25
/* 8024C7C4 002493A4  4B FD D0 9D */	bl func_80229860
/* 8024C7C8 002493A8  48 00 02 08 */	b lbl_8024C9D0
lbl_8024C7CC:
/* 8024C7CC 002493AC  38 60 00 26 */	li r3, 0x26
/* 8024C7D0 002493B0  4B FD D0 91 */	bl func_80229860
/* 8024C7D4 002493B4  48 00 01 FC */	b lbl_8024C9D0
lbl_8024C7D8:
/* 8024C7D8 002493B8  38 00 00 04 */	li r0, 4
/* 8024C7DC 002493BC  7C 60 00 38 */	and r0, r3, r0
/* 8024C7E0 002493C0  7C 04 FA 78 */	xor r4, r0, r31
/* 8024C7E4 002493C4  7C A0 FA 78 */	xor r0, r5, r31
/* 8024C7E8 002493C8  7C 80 03 79 */	or. r0, r4, r0
/* 8024C7EC 002493CC  41 82 00 EC */	beq lbl_8024C8D8
/* 8024C7F0 002493D0  38 60 00 02 */	li r3, 2
/* 8024C7F4 002493D4  4B DD 78 3D */	bl func_80024030
/* 8024C7F8 002493D8  88 7E 00 00 */	lbz r3, 0(r30)
/* 8024C7FC 002493DC  28 03 00 00 */	cmplwi r3, 0
/* 8024C800 002493E0  40 82 00 10 */	bne lbl_8024C810
/* 8024C804 002493E4  38 00 00 05 */	li r0, 5
/* 8024C808 002493E8  98 1E 00 00 */	stb r0, 0(r30)
/* 8024C80C 002493EC  48 00 00 0C */	b lbl_8024C818
lbl_8024C810:
/* 8024C810 002493F0  38 03 FF FF */	addi r0, r3, -1
/* 8024C814 002493F4  98 1E 00 00 */	stb r0, 0(r30)
lbl_8024C818:
/* 8024C818 002493F8  80 6D B5 B8 */	lwz r3, lbl_804D6C58@sda21(r13)
/* 8024C81C 002493FC  8B DE 00 00 */	lbz r30, 0(r30)
/* 8024C820 00249400  83 A3 00 28 */	lwz r29, 0x28(r3)
/* 8024C824 00249404  7F A3 EB 78 */	mr r3, r29
/* 8024C828 00249408  4B FE 2A 71 */	bl func_8022F298
/* 8024C82C 0024940C  3C 60 80 3F */	lis r3, lbl_803EF680@ha
/* 8024C830 00249410  FF E0 08 90 */	fmr f31, f1
/* 8024C834 00249414  57 C4 10 3A */	slwi r4, r30, 2
/* 8024C838 00249418  38 03 F6 80 */	addi r0, r3, lbl_803EF680@l
/* 8024C83C 0024941C  7C 60 22 14 */	add r3, r0, r4
/* 8024C840 00249420  C0 23 00 00 */	lfs f1, 0(r3)
/* 8024C844 00249424  7F A3 EB 78 */	mr r3, r29
/* 8024C848 00249428  48 12 30 75 */	bl HSD_JObjReqAnimAll
/* 8024C84C 0024942C  7F A3 EB 78 */	mr r3, r29
/* 8024C850 00249430  48 12 40 D9 */	bl HSD_JObjAnimAll
/* 8024C854 00249434  7F A3 EB 78 */	mr r3, r29
/* 8024C858 00249438  FC 20 F8 90 */	fmr f1, f31
/* 8024C85C 0024943C  48 12 30 61 */	bl HSD_JObjReqAnimAll
/* 8024C860 00249440  38 7D 00 00 */	addi r3, r29, 0
/* 8024C864 00249444  38 80 00 FF */	li r4, 0xff
/* 8024C868 00249448  38 A0 00 80 */	li r5, 0x80
/* 8024C86C 0024944C  4B FE 2B 6D */	bl func_8022F3D8
/* 8024C870 00249450  7F A3 EB 78 */	mr r3, r29
/* 8024C874 00249454  48 12 40 B5 */	bl HSD_JObjAnimAll
/* 8024C878 00249458  80 6D B5 B8 */	lwz r3, lbl_804D6C58@sda21(r13)
/* 8024C87C 0024945C  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8024C880 00249460  80 7E 00 04 */	lwz r3, 4(r30)
/* 8024C884 00249464  28 03 00 00 */	cmplwi r3, 0
/* 8024C888 00249468  41 82 00 08 */	beq lbl_8024C890
/* 8024C88C 0024946C  48 15 94 39 */	bl func_803A5CC4
lbl_8024C890:
/* 8024C890 00249470  88 1E 00 00 */	lbz r0, 0(r30)
/* 8024C894 00249474  38 8D 99 80 */	addi r4, r13, lbl_804D5020@sda21
/* 8024C898 00249478  C0 22 C7 50 */	lfs f1, lbl_804DC130@sda21(r2)
/* 8024C89C 0024947C  38 60 00 00 */	li r3, 0
/* 8024C8A0 00249480  7F A4 00 AE */	lbzx r29, r4, r0
/* 8024C8A4 00249484  C0 42 C7 54 */	lfs f2, lbl_804DC134@sda21(r2)
/* 8024C8A8 00249488  38 80 00 01 */	li r4, 1
/* 8024C8AC 0024948C  C0 62 C7 58 */	lfs f3, lbl_804DC138@sda21(r2)
/* 8024C8B0 00249490  C0 82 C7 5C */	lfs f4, lbl_804DC13C@sda21(r2)
/* 8024C8B4 00249494  C0 A2 C7 60 */	lfs f5, lbl_804DC140@sda21(r2)
/* 8024C8B8 00249498  48 15 92 15 */	bl func_803A5ACC
/* 8024C8BC 0024949C  90 7E 00 04 */	stw r3, 4(r30)
/* 8024C8C0 002494A0  7F A4 EB 78 */	mr r4, r29
/* 8024C8C4 002494A4  C0 02 C7 64 */	lfs f0, lbl_804DC144@sda21(r2)
/* 8024C8C8 002494A8  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8024C8CC 002494AC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8024C8D0 002494B0  48 15 9A 99 */	bl func_803A6368
/* 8024C8D4 002494B4  48 00 00 FC */	b lbl_8024C9D0
lbl_8024C8D8:
/* 8024C8D8 002494B8  38 00 00 08 */	li r0, 8
/* 8024C8DC 002494BC  7C 60 00 38 */	and r0, r3, r0
/* 8024C8E0 002494C0  7C 03 FA 78 */	xor r3, r0, r31
/* 8024C8E4 002494C4  7C A0 FA 78 */	xor r0, r5, r31
/* 8024C8E8 002494C8  7C 60 03 79 */	or. r0, r3, r0
/* 8024C8EC 002494CC  41 82 00 E4 */	beq lbl_8024C9D0
/* 8024C8F0 002494D0  38 60 00 02 */	li r3, 2
/* 8024C8F4 002494D4  4B DD 77 3D */	bl func_80024030
/* 8024C8F8 002494D8  88 7E 00 00 */	lbz r3, 0(r30)
/* 8024C8FC 002494DC  28 03 00 05 */	cmplwi r3, 5
/* 8024C900 002494E0  40 82 00 0C */	bne lbl_8024C90C
/* 8024C904 002494E4  9B FE 00 00 */	stb r31, 0(r30)
/* 8024C908 002494E8  48 00 00 0C */	b lbl_8024C914
lbl_8024C90C:
/* 8024C90C 002494EC  38 03 00 01 */	addi r0, r3, 1
/* 8024C910 002494F0  98 1E 00 00 */	stb r0, 0(r30)
lbl_8024C914:
/* 8024C914 002494F4  80 6D B5 B8 */	lwz r3, lbl_804D6C58@sda21(r13)
/* 8024C918 002494F8  8B DE 00 00 */	lbz r30, 0(r30)
/* 8024C91C 002494FC  83 A3 00 28 */	lwz r29, 0x28(r3)
/* 8024C920 00249500  7F A3 EB 78 */	mr r3, r29
/* 8024C924 00249504  4B FE 29 75 */	bl func_8022F298
/* 8024C928 00249508  3C 60 80 3F */	lis r3, lbl_803EF680@ha
/* 8024C92C 0024950C  FF E0 08 90 */	fmr f31, f1
/* 8024C930 00249510  57 C4 10 3A */	slwi r4, r30, 2
/* 8024C934 00249514  38 03 F6 80 */	addi r0, r3, lbl_803EF680@l
/* 8024C938 00249518  7C 60 22 14 */	add r3, r0, r4
/* 8024C93C 0024951C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8024C940 00249520  7F A3 EB 78 */	mr r3, r29
/* 8024C944 00249524  48 12 2F 79 */	bl HSD_JObjReqAnimAll
/* 8024C948 00249528  7F A3 EB 78 */	mr r3, r29
/* 8024C94C 0024952C  48 12 3F DD */	bl HSD_JObjAnimAll
/* 8024C950 00249530  7F A3 EB 78 */	mr r3, r29
/* 8024C954 00249534  FC 20 F8 90 */	fmr f1, f31
/* 8024C958 00249538  48 12 2F 65 */	bl HSD_JObjReqAnimAll
/* 8024C95C 0024953C  38 7D 00 00 */	addi r3, r29, 0
/* 8024C960 00249540  38 80 00 FF */	li r4, 0xff
/* 8024C964 00249544  38 A0 00 80 */	li r5, 0x80
/* 8024C968 00249548  4B FE 2A 71 */	bl func_8022F3D8
/* 8024C96C 0024954C  7F A3 EB 78 */	mr r3, r29
/* 8024C970 00249550  48 12 3F B9 */	bl HSD_JObjAnimAll
/* 8024C974 00249554  80 6D B5 B8 */	lwz r3, lbl_804D6C58@sda21(r13)
/* 8024C978 00249558  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8024C97C 0024955C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8024C980 00249560  28 03 00 00 */	cmplwi r3, 0
/* 8024C984 00249564  41 82 00 08 */	beq lbl_8024C98C
/* 8024C988 00249568  48 15 93 3D */	bl func_803A5CC4
lbl_8024C98C:
/* 8024C98C 0024956C  88 1E 00 00 */	lbz r0, 0(r30)
/* 8024C990 00249570  38 8D 99 80 */	addi r4, r13, lbl_804D5020@sda21
/* 8024C994 00249574  C0 22 C7 50 */	lfs f1, lbl_804DC130@sda21(r2)
/* 8024C998 00249578  38 60 00 00 */	li r3, 0
/* 8024C99C 0024957C  7F A4 00 AE */	lbzx r29, r4, r0
/* 8024C9A0 00249580  C0 42 C7 54 */	lfs f2, lbl_804DC134@sda21(r2)
/* 8024C9A4 00249584  38 80 00 01 */	li r4, 1
/* 8024C9A8 00249588  C0 62 C7 58 */	lfs f3, lbl_804DC138@sda21(r2)
/* 8024C9AC 0024958C  C0 82 C7 5C */	lfs f4, lbl_804DC13C@sda21(r2)
/* 8024C9B0 00249590  C0 A2 C7 60 */	lfs f5, lbl_804DC140@sda21(r2)
/* 8024C9B4 00249594  48 15 91 19 */	bl func_803A5ACC
/* 8024C9B8 00249598  90 7E 00 04 */	stw r3, 4(r30)
/* 8024C9BC 0024959C  7F A4 EB 78 */	mr r4, r29
/* 8024C9C0 002495A0  C0 02 C7 64 */	lfs f0, lbl_804DC144@sda21(r2)
/* 8024C9C4 002495A4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8024C9C8 002495A8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8024C9CC 002495AC  48 15 99 9D */	bl func_803A6368
lbl_8024C9D0:
/* 8024C9D0 002495B0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8024C9D4 002495B4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8024C9D8 002495B8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8024C9DC 002495BC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8024C9E0 002495C0  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8024C9E4 002495C4  38 21 00 58 */	addi r1, r1, 0x58
/* 8024C9E8 002495C8  7C 08 03 A6 */	mtlr r0
/* 8024C9EC 002495CC  4E 80 00 20 */	blr 
lbl_8024C9F0:
/* 8024C9F0 002495D0  7C 08 02 A6 */	mflr r0
/* 8024C9F4 002495D4  3C 80 80 3F */	lis r4, lbl_803EF674@ha
/* 8024C9F8 002495D8  90 01 00 04 */	stw r0, 4(r1)
/* 8024C9FC 002495DC  38 A0 00 80 */	li r5, 0x80
/* 8024CA00 002495E0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8024CA04 002495E4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8024CA08 002495E8  3B E4 F6 74 */	addi r31, r4, lbl_803EF674@l
/* 8024CA0C 002495EC  38 9F 00 00 */	addi r4, r31, 0
/* 8024CA10 002495F0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8024CA14 002495F4  7C 7E 1B 78 */	mr r30, r3
/* 8024CA18 002495F8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8024CA1C 002495FC  4B FE 21 FD */	bl func_8022EC18
/* 8024CA20 00249600  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8024CA24 00249604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8024CA28 00249608  4C 41 13 82 */	cror 2, 1, 2
/* 8024CA2C 0024960C  40 82 00 0C */	bne lbl_8024CA38
/* 8024CA30 00249610  7F C3 F3 78 */	mr r3, r30
/* 8024CA34 00249614  48 14 37 F5 */	bl func_80390228
lbl_8024CA38:
/* 8024CA38 00249618  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8024CA3C 0024961C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8024CA40 00249620  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8024CA44 00249624  38 21 00 18 */	addi r1, r1, 0x18
/* 8024CA48 00249628  7C 08 03 A6 */	mtlr r0
/* 8024CA4C 0024962C  4E 80 00 20 */	blr 
lbl_8024CA50:
/* 8024CA50 00249630  7C 08 02 A6 */	mflr r0
/* 8024CA54 00249634  3C 80 80 4A */	lis r4, lbl_804A04F0@ha
/* 8024CA58 00249638  90 01 00 04 */	stw r0, 4(r1)
/* 8024CA5C 0024963C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8024CA60 00249640  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8024CA64 00249644  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8024CA68 00249648  7C 7E 1B 78 */	mr r30, r3
/* 8024CA6C 0024964C  88 04 04 F0 */	lbz r0, lbl_804A04F0@l(r4)
/* 8024CA70 00249650  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8024CA74 00249654  28 00 00 21 */	cmplwi r0, 0x21
/* 8024CA78 00249658  41 82 00 38 */	beq lbl_8024CAB0
/* 8024CA7C 0024965C  80 6D C1 98 */	lwz r3, lbl_804D7838@sda21(r13)
/* 8024CA80 00249660  48 14 33 A5 */	bl func_8038FE24
/* 8024CA84 00249664  3C 60 80 25 */	lis r3, lbl_8024C9F0@ha
/* 8024CA88 00249668  38 83 C9 F0 */	addi r4, r3, lbl_8024C9F0@l
/* 8024CA8C 0024966C  38 7E 00 00 */	addi r3, r30, 0
/* 8024CA90 00249670  38 A0 00 00 */	li r5, 0
/* 8024CA94 00249674  48 14 32 C1 */	bl func_8038FD54
/* 8024CA98 00249678  80 8D C1 9C */	lwz r4, lbl_804D783C@sda21(r13)
/* 8024CA9C 0024967C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8024CAA0 00249680  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8024CAA4 00249684  98 03 00 0D */	stb r0, 0xd(r3)
/* 8024CAA8 00249688  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024CAAC 0024968C  48 15 92 19 */	bl func_803A5CC4
lbl_8024CAB0:
/* 8024CAB0 00249690  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8024CAB4 00249694  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8024CAB8 00249698  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8024CABC 0024969C  38 21 00 18 */	addi r1, r1, 0x18
/* 8024CAC0 002496A0  7C 08 03 A6 */	mtlr r0
/* 8024CAC4 002496A4  4E 80 00 20 */	blr 
lbl_8024CAC8:
/* 8024CAC8 002496A8  7C 08 02 A6 */	mflr r0
/* 8024CACC 002496AC  3C 80 80 4A */	lis r4, lbl_804A04F0@ha
/* 8024CAD0 002496B0  90 01 00 04 */	stw r0, 4(r1)
/* 8024CAD4 002496B4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8024CAD8 002496B8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8024CADC 002496BC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8024CAE0 002496C0  7C 7E 1B 78 */	mr r30, r3
/* 8024CAE4 002496C4  88 04 04 F0 */	lbz r0, lbl_804A04F0@l(r4)
/* 8024CAE8 002496C8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8024CAEC 002496CC  28 00 00 21 */	cmplwi r0, 0x21
/* 8024CAF0 002496D0  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 8024CAF4 002496D4  41 82 00 3C */	beq lbl_8024CB30
/* 8024CAF8 002496D8  80 6D C1 98 */	lwz r3, lbl_804D7838@sda21(r13)
/* 8024CAFC 002496DC  48 14 33 29 */	bl func_8038FE24
/* 8024CB00 002496E0  3C 60 80 25 */	lis r3, lbl_8024C9F0@ha
/* 8024CB04 002496E4  38 83 C9 F0 */	addi r4, r3, lbl_8024C9F0@l
/* 8024CB08 002496E8  38 7E 00 00 */	addi r3, r30, 0
/* 8024CB0C 002496EC  38 A0 00 00 */	li r5, 0
/* 8024CB10 002496F0  48 14 32 45 */	bl func_8038FD54
/* 8024CB14 002496F4  80 8D C1 9C */	lwz r4, lbl_804D783C@sda21(r13)
/* 8024CB18 002496F8  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8024CB1C 002496FC  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8024CB20 00249700  98 03 00 0D */	stb r0, 0xd(r3)
/* 8024CB24 00249704  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024CB28 00249708  48 15 91 9D */	bl func_803A5CC4
/* 8024CB2C 0024970C  48 00 00 50 */	b lbl_8024CB7C
lbl_8024CB30:
/* 8024CB30 00249710  3C 80 80 3F */	lis r4, lbl_803EF668@ha
/* 8024CB34 00249714  3B E4 F6 68 */	addi r31, r4, lbl_803EF668@l
/* 8024CB38 00249718  38 9F 00 00 */	addi r4, r31, 0
/* 8024CB3C 0024971C  38 A0 00 80 */	li r5, 0x80
/* 8024CB40 00249720  4B FE 20 D9 */	bl func_8022EC18
/* 8024CB44 00249724  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8024CB48 00249728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8024CB4C 0024972C  40 82 00 30 */	bne lbl_8024CB7C
/* 8024CB50 00249730  80 6D C1 98 */	lwz r3, lbl_804D7838@sda21(r13)
/* 8024CB54 00249734  48 14 32 D1 */	bl func_8038FE24
/* 8024CB58 00249738  3C 60 80 25 */	lis r3, lbl_8024CA50@ha
/* 8024CB5C 0024973C  38 83 CA 50 */	addi r4, r3, lbl_8024CA50@l
/* 8024CB60 00249740  38 7E 00 00 */	addi r3, r30, 0
/* 8024CB64 00249744  38 A0 00 00 */	li r5, 0
/* 8024CB68 00249748  48 14 31 ED */	bl func_8038FD54
/* 8024CB6C 0024974C  80 8D C1 9C */	lwz r4, lbl_804D783C@sda21(r13)
/* 8024CB70 00249750  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8024CB74 00249754  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8024CB78 00249758  98 03 00 0D */	stb r0, 0xd(r3)
lbl_8024CB7C:
/* 8024CB7C 0024975C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8024CB80 00249760  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8024CB84 00249764  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8024CB88 00249768  38 21 00 28 */	addi r1, r1, 0x28
/* 8024CB8C 0024976C  7C 08 03 A6 */	mtlr r0
/* 8024CB90 00249770  4E 80 00 20 */	blr 

.global func_8024CB94
func_8024CB94:
/* 8024CB94 00249774  7C 08 02 A6 */	mflr r0
/* 8024CB98 00249778  3C A0 80 3F */	lis r5, lbl_803EF668@ha
/* 8024CB9C 0024977C  90 01 00 04 */	stw r0, 4(r1)
/* 8024CBA0 00249780  3C 80 80 4A */	lis r4, lbl_804A08E8@ha
/* 8024CBA4 00249784  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024CBA8 00249788  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8024CBAC 0024978C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8024CBB0 00249790  3B 63 00 00 */	addi r27, r3, 0
/* 8024CBB4 00249794  3B A5 F6 68 */	addi r29, r5, lbl_803EF668@l
/* 8024CBB8 00249798  3B C4 08 E8 */	addi r30, r4, lbl_804A08E8@l
/* 8024CBBC 0024979C  38 60 00 06 */	li r3, 6
/* 8024CBC0 002497A0  38 80 00 07 */	li r4, 7
/* 8024CBC4 002497A4  38 A0 00 80 */	li r5, 0x80
/* 8024CBC8 002497A8  48 14 36 29 */	bl func_803901F0
/* 8024CBCC 002497AC  7C 7F 1B 78 */	mr r31, r3
/* 8024CBD0 002497B0  93 ED B5 B8 */	stw r31, lbl_804D6C58@sda21(r13)
/* 8024CBD4 002497B4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8024CBD8 002497B8  48 12 42 6D */	bl HSD_JObjLoadJoint
/* 8024CBDC 002497BC  3B 83 00 00 */	addi r28, r3, 0
/* 8024CBE0 002497C0  88 8D C1 A9 */	lbz r4, lbl_804D7849@sda21(r13)
/* 8024CBE4 002497C4  38 7F 00 00 */	addi r3, r31, 0
/* 8024CBE8 002497C8  38 BC 00 00 */	addi r5, r28, 0
/* 8024CBEC 002497CC  48 14 3E 85 */	bl func_80390A70
/* 8024CBF0 002497D0  3C 60 80 39 */	lis r3, func_80391070@ha
/* 8024CBF4 002497D4  38 83 10 70 */	addi r4, r3, func_80391070@l
/* 8024CBF8 002497D8  38 7F 00 00 */	addi r3, r31, 0
/* 8024CBFC 002497DC  38 A0 00 04 */	li r5, 4
/* 8024CC00 002497E0  38 C0 00 80 */	li r6, 0x80
/* 8024CC04 002497E4  48 14 3A 99 */	bl func_8039069C
/* 8024CC08 002497E8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8024CC0C 002497EC  7F 83 E3 78 */	mr r3, r28
/* 8024CC10 002497F0  80 BE 00 08 */	lwz r5, 8(r30)
/* 8024CC14 002497F4  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8024CC18 002497F8  48 12 2F 45 */	bl HSD_JObjAddAnimAll
/* 8024CC1C 002497FC  7F 83 E3 78 */	mr r3, r28
/* 8024CC20 00249800  C0 22 C7 68 */	lfs f1, lbl_804DC148@sda21(r2)
/* 8024CC24 00249804  48 12 2C 99 */	bl HSD_JObjReqAnimAll
/* 8024CC28 00249808  7F 83 E3 78 */	mr r3, r28
/* 8024CC2C 0024980C  48 12 3C FD */	bl HSD_JObjAnimAll
/* 8024CC30 00249810  38 60 00 08 */	li r3, 8
/* 8024CC34 00249814  48 13 25 B1 */	bl HSD_MemAlloc
/* 8024CC38 00249818  7C 7E 1B 79 */	or. r30, r3, r3
/* 8024CC3C 0024981C  40 82 00 20 */	bne lbl_8024CC5C
/* 8024CC40 00249820  38 7D 00 30 */	addi r3, r29, 0x30
/* 8024CC44 00249824  4C C6 31 82 */	crclr 6
/* 8024CC48 00249828  48 0F 8A 61 */	bl OSReport
/* 8024CC4C 0024982C  38 7D 00 48 */	addi r3, r29, 0x48
/* 8024CC50 00249830  38 BD 00 54 */	addi r5, r29, 0x54
/* 8024CC54 00249834  38 80 01 68 */	li r4, 0x168
/* 8024CC58 00249838  48 13 B5 C9 */	bl __assert
lbl_8024CC5C:
/* 8024CC5C 0024983C  9B 7E 00 00 */	stb r27, 0(r30)
/* 8024CC60 00249840  38 00 00 00 */	li r0, 0
/* 8024CC64 00249844  3C 60 80 38 */	lis r3, HSD_Free@ha
/* 8024CC68 00249848  90 1E 00 04 */	stw r0, 4(r30)
/* 8024CC6C 0024984C  38 A3 F1 B0 */	addi r5, r3, HSD_Free@l
/* 8024CC70 00249850  38 7F 00 00 */	addi r3, r31, 0
/* 8024CC74 00249854  38 DE 00 00 */	addi r6, r30, 0
/* 8024CC78 00249858  38 80 00 00 */	li r4, 0
/* 8024CC7C 0024985C  48 14 3E ED */	bl func_80390B68
/* 8024CC80 00249860  8B DE 00 00 */	lbz r30, 0(r30)
/* 8024CC84 00249864  7F 83 E3 78 */	mr r3, r28
/* 8024CC88 00249868  4B FE 26 11 */	bl func_8022F298
/* 8024CC8C 0024986C  57 C0 10 3A */	slwi r0, r30, 2
/* 8024CC90 00249870  FF E0 08 90 */	fmr f31, f1
/* 8024CC94 00249874  7C 7D 02 14 */	add r3, r29, r0
/* 8024CC98 00249878  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8024CC9C 0024987C  7F 83 E3 78 */	mr r3, r28
/* 8024CCA0 00249880  48 12 2C 1D */	bl HSD_JObjReqAnimAll
/* 8024CCA4 00249884  7F 83 E3 78 */	mr r3, r28
/* 8024CCA8 00249888  48 12 3C 81 */	bl HSD_JObjAnimAll
/* 8024CCAC 0024988C  7F 83 E3 78 */	mr r3, r28
/* 8024CCB0 00249890  FC 20 F8 90 */	fmr f1, f31
/* 8024CCB4 00249894  48 12 2C 09 */	bl HSD_JObjReqAnimAll
/* 8024CCB8 00249898  38 7C 00 00 */	addi r3, r28, 0
/* 8024CCBC 0024989C  38 80 00 FF */	li r4, 0xff
/* 8024CCC0 002498A0  38 A0 00 80 */	li r5, 0x80
/* 8024CCC4 002498A4  4B FE 27 15 */	bl func_8022F3D8
/* 8024CCC8 002498A8  7F 83 E3 78 */	mr r3, r28
/* 8024CCCC 002498AC  48 12 3C 5D */	bl HSD_JObjAnimAll
/* 8024CCD0 002498B0  3C 60 80 25 */	lis r3, lbl_8024CAC8@ha
/* 8024CCD4 002498B4  38 83 CA C8 */	addi r4, r3, lbl_8024CAC8@l
/* 8024CCD8 002498B8  38 7F 00 00 */	addi r3, r31, 0
/* 8024CCDC 002498BC  38 A0 00 00 */	li r5, 0
/* 8024CCE0 002498C0  48 14 30 75 */	bl func_8038FD54
/* 8024CCE4 002498C4  80 8D C1 9C */	lwz r4, lbl_804D783C@sda21(r13)
/* 8024CCE8 002498C8  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8024CCEC 002498CC  50 80 26 B6 */	rlwimi r0, r4, 4, 0x1a, 0x1b
/* 8024CCF0 002498D0  98 03 00 0D */	stb r0, 0xd(r3)
/* 8024CCF4 002498D4  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 8024CCF8 002498D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8024CCFC 002498DC  28 03 00 00 */	cmplwi r3, 0
/* 8024CD00 002498E0  41 82 00 08 */	beq lbl_8024CD08
/* 8024CD04 002498E4  48 15 8F C1 */	bl func_803A5CC4
lbl_8024CD08:
/* 8024CD08 002498E8  88 1E 00 00 */	lbz r0, 0(r30)
/* 8024CD0C 002498EC  38 8D 99 80 */	addi r4, r13, lbl_804D5020@sda21
/* 8024CD10 002498F0  C0 22 C7 50 */	lfs f1, lbl_804DC130@sda21(r2)
/* 8024CD14 002498F4  38 60 00 00 */	li r3, 0
/* 8024CD18 002498F8  7F A4 00 AE */	lbzx r29, r4, r0
/* 8024CD1C 002498FC  C0 42 C7 54 */	lfs f2, lbl_804DC134@sda21(r2)
/* 8024CD20 00249900  38 80 00 01 */	li r4, 1
/* 8024CD24 00249904  C0 62 C7 58 */	lfs f3, lbl_804DC138@sda21(r2)
/* 8024CD28 00249908  C0 82 C7 5C */	lfs f4, lbl_804DC13C@sda21(r2)
/* 8024CD2C 0024990C  C0 A2 C7 60 */	lfs f5, lbl_804DC140@sda21(r2)
/* 8024CD30 00249910  48 15 8D 9D */	bl func_803A5ACC
/* 8024CD34 00249914  90 7E 00 04 */	stw r3, 4(r30)
/* 8024CD38 00249918  7F A4 EB 78 */	mr r4, r29
/* 8024CD3C 0024991C  C0 02 C7 64 */	lfs f0, lbl_804DC144@sda21(r2)
/* 8024CD40 00249920  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8024CD44 00249924  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8024CD48 00249928  48 15 96 21 */	bl func_803A6368
/* 8024CD4C 0024992C  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8024CD50 00249930  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024CD54 00249934  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8024CD58 00249938  38 21 00 30 */	addi r1, r1, 0x30
/* 8024CD5C 0024993C  7C 08 03 A6 */	mtlr r0
/* 8024CD60 00249940  4E 80 00 20 */	blr 

.global func_8024CD64
func_8024CD64:
/* 8024CD64 00249944  7C 08 02 A6 */	mflr r0
/* 8024CD68 00249948  3C 80 80 4A */	lis r4, lbl_804A04F0@ha
/* 8024CD6C 0024994C  90 01 00 04 */	stw r0, 4(r1)
/* 8024CD70 00249950  38 00 00 05 */	li r0, 5
/* 8024CD74 00249954  3C A0 80 4A */	lis r5, lbl_804A08E8@ha
/* 8024CD78 00249958  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8024CD7C 0024995C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8024CD80 00249960  3B E0 00 00 */	li r31, 0
/* 8024CD84 00249964  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8024CD88 00249968  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8024CD8C 0024996C  3B A5 08 E8 */	addi r29, r5, lbl_804A08E8@l
/* 8024CD90 00249970  3C A0 80 3F */	lis r5, lbl_803EF668@ha
/* 8024CD94 00249974  93 81 00 18 */	stw r28, 0x18(r1)
/* 8024CD98 00249978  3B 83 00 00 */	addi r28, r3, 0
/* 8024CD9C 0024997C  3B C5 F6 68 */	addi r30, r5, lbl_803EF668@l
/* 8024CDA0 00249980  B0 0D B5 28 */	sth r0, lbl_804D6BC8@sda21(r13)
/* 8024CDA4 00249984  38 60 00 12 */	li r3, 0x12
/* 8024CDA8 00249988  8C 04 04 F0 */	lbzu r0, lbl_804A04F0@l(r4)
/* 8024CDAC 0024998C  98 04 00 01 */	stb r0, 1(r4)
/* 8024CDB0 00249990  38 00 00 21 */	li r0, 0x21
/* 8024CDB4 00249994  98 04 00 00 */	stb r0, 0(r4)
/* 8024CDB8 00249998  B3 E4 00 02 */	sth r31, 2(r4)
/* 8024CDBC 0024999C  4B DD A1 71 */	bl func_80026F2C
/* 8024CDC0 002499A0  38 60 00 02 */	li r3, 2
/* 8024CDC4 002499A4  38 C0 00 08 */	li r6, 8
/* 8024CDC8 002499A8  38 A0 00 00 */	li r5, 0
/* 8024CDCC 002499AC  4B DD A2 61 */	bl func_8002702C
/* 8024CDD0 002499B0  4B DD A3 99 */	bl func_80027168
/* 8024CDD4 002499B4  4B DD A8 75 */	bl func_80027648
/* 8024CDD8 002499B8  80 6D B5 18 */	lwz r3, lbl_804D6BB8@sda21(r13)
/* 8024CDDC 002499BC  38 1E 00 B4 */	addi r0, r30, 0xb4
/* 8024CDE0 002499C0  38 9D 00 00 */	addi r4, r29, 0
/* 8024CDE4 002499C4  4C C6 31 82 */	crclr 6
/* 8024CDE8 002499C8  90 01 00 08 */	stw r0, 8(r1)
/* 8024CDEC 002499CC  38 BE 00 60 */	addi r5, r30, 0x60
/* 8024CDF0 002499D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024CDF4 002499D4  38 DD 00 04 */	addi r6, r29, 4
/* 8024CDF8 002499D8  38 FE 00 78 */	addi r7, r30, 0x78
/* 8024CDFC 002499DC  39 1D 00 08 */	addi r8, r29, 8
/* 8024CE00 002499E0  39 3E 00 94 */	addi r9, r30, 0x94
/* 8024CE04 002499E4  39 5D 00 0C */	addi r10, r29, 0xc
/* 8024CE08 002499E8  4B DC 9C E9 */	bl func_80016AF0
/* 8024CE0C 002499EC  7F 83 E3 78 */	mr r3, r28
/* 8024CE10 002499F0  4B FF FD 85 */	bl func_8024CB94
/* 8024CE14 002499F4  38 60 00 00 */	li r3, 0
/* 8024CE18 002499F8  38 80 00 01 */	li r4, 1
/* 8024CE1C 002499FC  38 A0 00 80 */	li r5, 0x80
/* 8024CE20 00249A00  48 14 33 D1 */	bl func_803901F0
/* 8024CE24 00249A04  3C 80 80 25 */	lis r4, func_8024C68C@ha
/* 8024CE28 00249A08  38 84 C6 8C */	addi r4, r4, func_8024C68C@l
/* 8024CE2C 00249A0C  38 A0 00 00 */	li r5, 0
/* 8024CE30 00249A10  48 14 2F 25 */	bl func_8038FD54
/* 8024CE34 00249A14  80 CD C1 9C */	lwz r6, lbl_804D783C@sda21(r13)
/* 8024CE38 00249A18  38 80 00 7F */	li r4, 0x7f
/* 8024CE3C 00249A1C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8024CE40 00249A20  38 A0 00 40 */	li r5, 0x40
/* 8024CE44 00249A24  50 C0 26 B6 */	rlwimi r0, r6, 4, 0x1a, 0x1b
/* 8024CE48 00249A28  98 03 00 0D */	stb r0, 0xd(r3)
/* 8024CE4C 00249A2C  38 60 75 30 */	li r3, 0x7530
/* 8024CE50 00249A30  4B DD 69 59 */	bl func_800237A8
/* 8024CE54 00249A34  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8024CE58 00249A38  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8024CE5C 00249A3C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8024CE60 00249A40  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8024CE64 00249A44  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8024CE68 00249A48  38 21 00 28 */	addi r1, r1, 0x28
/* 8024CE6C 00249A4C  7C 08 03 A6 */	mtlr r0
/* 8024CE70 00249A50  4E 80 00 20 */	blr 
