/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static int ng0[] = {1346458451, 0, 16985, 0};
static int ng1[] = {0, 0};
static int ng2[] = {49, 0, 0, 0};
static int ng3[] = {1, 0};
static int ng4[] = {50, 0, 0, 0};
static int ng5[] = {2, 0};
static int ng6[] = {51, 0, 0, 0};
static int ng7[] = {4, 0};
static int ng8[] = {52, 0, 0, 0};
static int ng9[] = {53, 0, 0, 0};
static int ng10[] = {6, 0};
static int ng11[] = {54, 0, 0, 0};
static int ng12[] = {55, 0, 0, 0};
static int ng13[] = {8, 0};
static int ng14[] = {56, 0, 0, 0};
static const char *ng15 = "Attribute Syntax Error : The attribute BUFR_DIVIDE on BUFR instance %m is set to %s.  Legal values for this attribute are BYPASS, 1, 2, 3, 4, 5, 6, 7 or 8.";
static int ng16[] = {1413830708, 0, 5654866, 0};
static int ng17[] = {1413830709, 0, 5654866, 0};
static int ng18[] = {1413830710, 0, 5654866, 0};
static int ng19[] = {1380533587, 0, 3625797, 0};
static const char *ng20 = "Attribute Syntax Error : The attribute SIM_DEVICE on BUFR instance %m is set to %s.  Legal values for this attribute are VIRTEX4 or VIRTEX5 or VIRTEX6 or 7SERIES.";
static unsigned int ng21[] = {1U, 0U};
static unsigned int ng22[] = {0U, 0U};

static void NetReassign_119_14(char *);
static void NetReassign_120_15(char *);
static void NetReassign_121_16(char *);
static void NetReassign_122_17(char *);
static void NetReassign_124_18(char *);
static void NetReassign_125_19(char *);
static void NetReassign_126_20(char *);
static void NetReassign_127_21(char *);


static void NetDecl_43_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 5840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 14392);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 40U);
    t5 = *((char **)t4);
    t4 = (t0 + 11624);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 0U);
    t18 = (t0 + 11368);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Gate_56_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 6088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1960U);
    t3 = *((char **)t2);
    t2 = (t0 + 11688);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 11688);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 11384);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void Gate_57_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 6336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 11752);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 11752);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 11400);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void Gate_58_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 6584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = (t0 + 11816);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 11816);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 11416);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void Gate_59_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 6832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t0 + 11880);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 11880);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 11432);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void Gate_60_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 7080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2120U);
    t3 = *((char **)t2);
    t2 = (t0 + 11944);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 4);
    t9 = (t3 + 4);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 11944);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t15 = (t0 + 11448);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void Initial_63_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;

LAB0:
LAB2:    t1 = (t0 + 472);
    t2 = *((char **)t1);

LAB3:    t1 = ((char*)((ng0)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB4;

LAB5:    t1 = ((char*)((ng2)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB6;

LAB7:    t1 = ((char*)((ng4)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB8;

LAB9:    t1 = ((char*)((ng6)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB10;

LAB11:    t1 = ((char*)((ng8)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB12;

LAB13:    t1 = ((char*)((ng9)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB14;

LAB15:    t1 = ((char*)((ng11)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB16;

LAB17:    t1 = ((char*)((ng12)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB18;

LAB19:    t1 = ((char*)((ng14)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 48, t1, 48);
    if (t3 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:
LAB33:    t1 = (t0 + 472);
    t4 = *((char **)t1);
    xsi_vlogfile_write(1, 0, 0, ng15, 2, t0, (char)118, t4, 48);
    xsi_vlog_finish(1);

LAB24:    t1 = (t0 + 608);
    t4 = *((char **)t1);

LAB34:    t1 = ((char*)((ng16)));
    t3 = xsi_vlog_unsigned_case_compare(t4, 56, t1, 56);
    if (t3 == 1)
        goto LAB35;

LAB36:    t5 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 56, t5, 56);
    if (t6 == 1)
        goto LAB37;

LAB38:    t7 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 56, t7, 56);
    if (t8 == 1)
        goto LAB39;

LAB40:    t9 = ((char*)((ng19)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 56, t9, 56);
    if (t10 == 1)
        goto LAB41;

LAB42:
LAB44:
LAB43:
LAB46:    t11 = (t0 + 608);
    t12 = *((char **)t11);
    xsi_vlogfile_write(1, 0, 0, ng20, 2, t0, (char)118, t12, 56);
    xsi_vlog_finish(1);

LAB45:
LAB1:    return;
LAB4:    t4 = ((char*)((ng1)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB24;

LAB6:
LAB25:    t4 = ((char*)((ng3)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng3)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB8:
LAB26:    t4 = ((char*)((ng5)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng5)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB10:
LAB27:    t4 = ((char*)((ng7)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng5)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB12:
LAB28:    t4 = ((char*)((ng7)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng7)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB14:
LAB29:    t4 = ((char*)((ng10)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng7)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB16:
LAB30:    t4 = ((char*)((ng10)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng10)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB18:
LAB31:    t4 = ((char*)((ng13)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng10)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB20:
LAB32:    t4 = ((char*)((ng13)));
    t5 = (t0 + 3640);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t1 = ((char*)((ng13)));
    t4 = (t0 + 3800);
    xsi_vlogvar_assign_value(t4, t1, 0, 0, 32);
    goto LAB24;

LAB35:    goto LAB45;

LAB37:    goto LAB45;

LAB39:    goto LAB45;

LAB41:    goto LAB45;

}

static void Always_117_7(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;

LAB0:    t1 = (t0 + 7576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 11464);
    *((int *)t2) = 1;
    t3 = (t0 + 7608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t4 = (t0 + 2760U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng21)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t23) != 0)
        goto LAB11;

LAB12:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB13;

LAB14:    memcpy(t61, t22, 8);

LAB15:    t89 = (t61 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t61);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB27;

LAB28:    t2 = (t0 + 2760U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng22)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB42;

LAB39:    if (t18 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t6) = 1;

LAB42:    memset(t22, 0, 8);
    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t8) != 0)
        goto LAB45;

LAB46:    t23 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (!(t31));
    t33 = *((unsigned int *)t23);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB47;

LAB48:    memcpy(t61, t22, 8);

LAB49:    t75 = (t61 + 4);
    t90 = *((unsigned int *)t75);
    t91 = (~(t90));
    t92 = *((unsigned int *)t61);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB61;

LAB62:
LAB63:
LAB29:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:    *((unsigned int *)t22) = 1;
    goto LAB12;

LAB11:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB12;

LAB13:    t35 = (t0 + 2600U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng21)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB19;

LAB16:    if (t49 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t37) = 1;

LAB19:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t54) != 0)
        goto LAB22;

LAB23:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = (t22 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB15;

LAB18:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t53) = 1;
    goto LAB23;

LAB22:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB23;

LAB24:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t22 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t76);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    goto LAB26;

LAB27:
LAB30:    t95 = (t0 + 4280);
    xsi_set_assignedflag(t95);
    t96 = (t0 + 14400);
    *((int *)t96) = 1;
    NetReassign_119_14(t0);
    t2 = (t0 + 3480);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14404);
    *((int *)t3) = 1;
    NetReassign_120_15(t0);
    t2 = (t0 + 3960);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14408);
    *((int *)t3) = 1;
    NetReassign_121_16(t0);
    t2 = (t0 + 4120);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14412);
    *((int *)t3) = 1;
    NetReassign_122_17(t0);
    t2 = (t0 + 2760U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng21)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB29;

LAB33:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB34;

LAB35:
LAB38:    t21 = (t0 + 4440);
    xsi_set_assignedflag(t21);
    t23 = (t0 + 14416);
    *((int *)t23) = 1;
    NetReassign_124_18(t0);
    t2 = (t0 + 4600);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14420);
    *((int *)t3) = 1;
    NetReassign_125_19(t0);
    t2 = (t0 + 4760);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14424);
    *((int *)t3) = 1;
    NetReassign_126_20(t0);
    t2 = (t0 + 4920);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 14428);
    *((int *)t3) = 1;
    NetReassign_127_21(t0);
    goto LAB37;

LAB41:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB42;

LAB43:    *((unsigned int *)t22) = 1;
    goto LAB46;

LAB45:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB46;

LAB47:    t29 = (t0 + 2600U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng22)));
    memset(t37, 0, 8);
    t35 = (t30 + 4);
    t36 = (t29 + 4);
    t40 = *((unsigned int *)t30);
    t41 = *((unsigned int *)t29);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t35);
    t44 = *((unsigned int *)t36);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t35);
    t48 = *((unsigned int *)t36);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB53;

LAB50:    if (t49 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t37) = 1;

LAB53:    memset(t53, 0, 8);
    t39 = (t37 + 4);
    t55 = *((unsigned int *)t39);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t39) != 0)
        goto LAB56;

LAB57:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t54 = (t22 + 4);
    t60 = (t53 + 4);
    t65 = (t61 + 4);
    t68 = *((unsigned int *)t54);
    t69 = *((unsigned int *)t60);
    t70 = (t68 | t69);
    *((unsigned int *)t65) = t70;
    t71 = *((unsigned int *)t65);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB58;

LAB59:
LAB60:    goto LAB49;

LAB52:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB53;

LAB54:    *((unsigned int *)t53) = 1;
    goto LAB57;

LAB56:    t52 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB57;

LAB58:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t65);
    *((unsigned int *)t61) = (t73 | t74);
    t66 = (t22 + 4);
    t67 = (t53 + 4);
    t77 = *((unsigned int *)t66);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t67);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t87 & t85);
    t88 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t88 & t86);
    goto LAB60;

LAB61:
LAB64:    t76 = (t0 + 4280);
    xsi_vlogvar_deassign(t76, 0, 0);
    t2 = (t0 + 3480);
    xsi_vlogvar_deassign(t2, 0, 31);
    t2 = (t0 + 3960);
    xsi_vlogvar_deassign(t2, 0, 0);
    t2 = (t0 + 4120);
    xsi_vlogvar_deassign(t2, 0, 0);
    t2 = (t0 + 2760U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng22)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB68;

LAB65:    if (t18 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t6) = 1;

LAB68:    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB69;

LAB70:
LAB71:    goto LAB63;

LAB67:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB68;

LAB69:
LAB72:    t21 = (t0 + 4440);
    xsi_vlogvar_deassign(t21, 0, 0);
    t2 = (t0 + 4600);
    xsi_vlogvar_deassign(t2, 0, 0);
    t2 = (t0 + 4760);
    xsi_vlogvar_deassign(t2, 0, 0);
    t2 = (t0 + 4920);
    xsi_vlogvar_deassign(t2, 0, 0);
    goto LAB71;

}

static void Initial_143_8(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = ((char*)((ng1)));
    t2 = (t0 + 4920);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_146_9(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 8072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 11480);
    *((int *)t2) = 1;
    t3 = (t0 + 8104);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 2440U);
    t5 = *((char **)t4);
    t4 = (t0 + 4440);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    t2 = (t0 + 4440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4600);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    t2 = (t0 + 4600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4760);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    t2 = (t0 + 4760);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4920);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Cont_154_10(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[16];
    char t7[8];
    char t22[16];
    char t23[8];
    char t31[8];
    char t59[8];
    char t74[16];
    char t75[8];
    char t83[8];
    char *t1;
    char *t2;
    char *t5;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;

LAB0:    t1 = (t0 + 8320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 608);
    t5 = *((char **)t2);
    t2 = ((char*)((ng17)));
    xsi_vlog_unsigned_equal(t6, 56, t5, 56, t2, 56);
    memset(t7, 0, 8);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t8) != 0)
        goto LAB6;

LAB7:    t15 = (t7 + 4);
    t16 = *((unsigned int *)t7);
    t17 = (!(t16));
    t18 = *((unsigned int *)t15);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB8;

LAB9:    memcpy(t31, t7, 8);

LAB10:    memset(t59, 0, 8);
    t60 = (t31 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t31);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t60) != 0)
        goto LAB20;

LAB21:    t67 = (t59 + 4);
    t68 = *((unsigned int *)t59);
    t69 = (!(t68));
    t70 = *((unsigned int *)t67);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB22;

LAB23:    memcpy(t83, t59, 8);

LAB24:    memset(t4, 0, 8);
    t111 = (t83 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t83);
    t115 = (t114 & t113);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t111) != 0)
        goto LAB34;

LAB35:    t118 = (t4 + 4);
    t119 = *((unsigned int *)t4);
    t120 = *((unsigned int *)t118);
    t121 = (t119 || t120);
    if (t121 > 0)
        goto LAB36;

LAB37:    t124 = *((unsigned int *)t4);
    t125 = (~(t124));
    t126 = *((unsigned int *)t118);
    t127 = (t125 || t126);
    if (t127 > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t118) > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t4) > 0)
        goto LAB42;

LAB43:    memcpy(t3, t129, 8);

LAB44:    t130 = (t0 + 12008);
    t131 = (t130 + 56U);
    t132 = *((char **)t131);
    t133 = (t132 + 56U);
    t134 = *((char **)t133);
    memset(t134, 0, 8);
    t135 = 1U;
    t136 = t135;
    t137 = (t3 + 4);
    t138 = *((unsigned int *)t3);
    t135 = (t135 & t138);
    t139 = *((unsigned int *)t137);
    t136 = (t136 & t139);
    t140 = (t134 + 4);
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t141 | t135);
    t142 = *((unsigned int *)t140);
    *((unsigned int *)t140) = (t142 | t136);
    xsi_driver_vfirst_trans(t130, 0, 0);
    t143 = (t0 + 11496);
    *((int *)t143) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB6:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB7;

LAB8:    t20 = (t0 + 608);
    t21 = *((char **)t20);
    t20 = ((char*)((ng18)));
    xsi_vlog_unsigned_equal(t22, 56, t21, 56, t20, 56);
    memset(t23, 0, 8);
    t24 = (t22 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t24) != 0)
        goto LAB13;

LAB14:    t32 = *((unsigned int *)t7);
    t33 = *((unsigned int *)t23);
    t34 = (t32 | t33);
    *((unsigned int *)t31) = t34;
    t35 = (t7 + 4);
    t36 = (t23 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t23) = 1;
    goto LAB14;

LAB13:    t30 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB14;

LAB15:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    t45 = (t7 + 4);
    t46 = (t23 + 4);
    t47 = *((unsigned int *)t45);
    t48 = (~(t47));
    t49 = *((unsigned int *)t7);
    t50 = (t49 & t48);
    t51 = *((unsigned int *)t46);
    t52 = (~(t51));
    t53 = *((unsigned int *)t23);
    t54 = (t53 & t52);
    t55 = (~(t50));
    t56 = (~(t54));
    t57 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t57 & t55);
    t58 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t58 & t56);
    goto LAB17;

LAB18:    *((unsigned int *)t59) = 1;
    goto LAB21;

LAB20:    t66 = (t59 + 4);
    *((unsigned int *)t59) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB21;

LAB22:    t72 = (t0 + 608);
    t73 = *((char **)t72);
    t72 = ((char*)((ng19)));
    xsi_vlog_unsigned_equal(t74, 56, t73, 56, t72, 56);
    memset(t75, 0, 8);
    t76 = (t74 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t74);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t76) != 0)
        goto LAB27;

LAB28:    t84 = *((unsigned int *)t59);
    t85 = *((unsigned int *)t75);
    t86 = (t84 | t85);
    *((unsigned int *)t83) = t86;
    t87 = (t59 + 4);
    t88 = (t75 + 4);
    t89 = (t83 + 4);
    t90 = *((unsigned int *)t87);
    t91 = *((unsigned int *)t88);
    t92 = (t90 | t91);
    *((unsigned int *)t89) = t92;
    t93 = *((unsigned int *)t89);
    t94 = (t93 != 0);
    if (t94 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t75) = 1;
    goto LAB28;

LAB27:    t82 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB28;

LAB29:    t95 = *((unsigned int *)t83);
    t96 = *((unsigned int *)t89);
    *((unsigned int *)t83) = (t95 | t96);
    t97 = (t59 + 4);
    t98 = (t75 + 4);
    t99 = *((unsigned int *)t97);
    t100 = (~(t99));
    t101 = *((unsigned int *)t59);
    t102 = (t101 & t100);
    t103 = *((unsigned int *)t98);
    t104 = (~(t103));
    t105 = *((unsigned int *)t75);
    t106 = (t105 & t104);
    t107 = (~(t102));
    t108 = (~(t106));
    t109 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t109 & t107);
    t110 = *((unsigned int *)t89);
    *((unsigned int *)t89) = (t110 & t108);
    goto LAB31;

LAB32:    *((unsigned int *)t4) = 1;
    goto LAB35;

LAB34:    t117 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t117) = 1;
    goto LAB35;

LAB36:    t122 = (t0 + 2440U);
    t123 = *((char **)t122);
    goto LAB37;

LAB38:    t122 = (t0 + 4920);
    t128 = (t122 + 56U);
    t129 = *((char **)t128);
    goto LAB39;

LAB40:    xsi_vlog_unsigned_bit_combine(t3, 1, t123, 1, t129, 1);
    goto LAB44;

LAB42:    memcpy(t3, t123, 8);
    goto LAB44;

}

static void Cont_156_11(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 8568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2920U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 & t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 12072);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memset(t40, 0, 8);
    t41 = 1U;
    t42 = t41;
    t43 = (t5 + 4);
    t44 = *((unsigned int *)t5);
    t41 = (t41 & t44);
    t45 = *((unsigned int *)t43);
    t42 = (t42 & t45);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t47 | t41);
    t48 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t48 | t42);
    xsi_driver_vfirst_trans(t36, 0, 0);
    t49 = (t0 + 11512);
    *((int *)t49) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t3);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t28 = (t21 & t23);
    t29 = (t25 & t27);
    t30 = (~(t28));
    t31 = (~(t29));
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & t30);
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t34 & t30);
    t35 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t35 & t31);
    goto LAB6;

}

static void Always_161_12(char *t0)
{
    char t6[8];
    char t30[8];
    char t46[8];
    char t62[8];
    char t78[8];
    char t86[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    int t110;
    int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;

LAB0:    t1 = (t0 + 8816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 11528);
    *((int *)t2) = 1;
    t3 = (t0 + 8848);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t4 = (t0 + 2920U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng21)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB8;

LAB5:    if (t18 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

LAB8:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB9;

LAB10:
LAB102:    t2 = ((char*)((ng1)));
    t3 = (t0 + 3480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3960);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB11:    goto LAB2;

LAB7:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB8;

LAB9:
LAB12:    t28 = (t0 + 2280U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng21)));
    memset(t30, 0, 8);
    t31 = (t29 + 4);
    t32 = (t28 + 4);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t28);
    t35 = (t33 ^ t34);
    t36 = *((unsigned int *)t31);
    t37 = *((unsigned int *)t32);
    t38 = (t36 ^ t37);
    t39 = (t35 | t38);
    t40 = *((unsigned int *)t31);
    t41 = *((unsigned int *)t32);
    t42 = (t40 | t41);
    t43 = (~(t42));
    t44 = (t39 & t43);
    if (t44 != 0)
        goto LAB16;

LAB13:    if (t42 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t30) = 1;

LAB16:    memset(t46, 0, 8);
    t47 = (t30 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t30);
    t51 = (t50 & t49);
    t52 = (t51 & 1U);
    if (t52 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t47) != 0)
        goto LAB19;

LAB20:    t54 = (t46 + 4);
    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t54);
    t57 = (t55 || t56);
    if (t57 > 0)
        goto LAB21;

LAB22:    memcpy(t86, t46, 8);

LAB23:    t118 = (t86 + 4);
    t119 = *((unsigned int *)t118);
    t120 = (~(t119));
    t121 = *((unsigned int *)t86);
    t122 = (t121 & t120);
    t123 = (t122 != 0);
    if (t123 > 0)
        goto LAB35;

LAB36:    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3800);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_signed_equal(t6, 32, t4, 32, t8, 32);
    memset(t30, 0, 8);
    t21 = (t6 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t21) != 0)
        goto LAB41;

LAB42:    t28 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t28);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB43;

LAB44:    memcpy(t78, t30, 8);

LAB45:    t79 = (t78 + 4);
    t80 = *((unsigned int *)t79);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (t82 & t81);
    t84 = (t83 != 0);
    if (t84 > 0)
        goto LAB57;

LAB58:    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3640);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_signed_equal(t6, 32, t4, 32, t8, 32);
    memset(t30, 0, 8);
    t21 = (t6 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t21) != 0)
        goto LAB69;

LAB70:    t28 = (t30 + 4);
    t14 = *((unsigned int *)t30);
    t15 = *((unsigned int *)t28);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB71;

LAB72:    memcpy(t78, t30, 8);

LAB73:    t79 = (t78 + 4);
    t80 = *((unsigned int *)t79);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (t82 & t81);
    t84 = (t83 != 0);
    if (t84 > 0)
        goto LAB85;

LAB86:
LAB87:
LAB59:
LAB37:    t2 = (t0 + 3960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng22)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB98;

LAB95:    if (t18 != 0)
        goto LAB97;

LAB96:    *((unsigned int *)t6) = 1;

LAB98:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB99;

LAB100:
LAB101:    goto LAB11;

LAB15:    t45 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t46) = 1;
    goto LAB20;

LAB19:    t53 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB20;

LAB21:    t58 = (t0 + 3960);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = ((char*)((ng21)));
    memset(t62, 0, 8);
    t63 = (t60 + 4);
    t64 = (t61 + 4);
    t65 = *((unsigned int *)t60);
    t66 = *((unsigned int *)t61);
    t67 = (t65 ^ t66);
    t68 = *((unsigned int *)t63);
    t69 = *((unsigned int *)t64);
    t70 = (t68 ^ t69);
    t71 = (t67 | t70);
    t72 = *((unsigned int *)t63);
    t73 = *((unsigned int *)t64);
    t74 = (t72 | t73);
    t75 = (~(t74));
    t76 = (t71 & t75);
    if (t76 != 0)
        goto LAB27;

LAB24:    if (t74 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t62) = 1;

LAB27:    memset(t78, 0, 8);
    t79 = (t62 + 4);
    t80 = *((unsigned int *)t79);
    t81 = (~(t80));
    t82 = *((unsigned int *)t62);
    t83 = (t82 & t81);
    t84 = (t83 & 1U);
    if (t84 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t79) != 0)
        goto LAB30;

LAB31:    t87 = *((unsigned int *)t46);
    t88 = *((unsigned int *)t78);
    t89 = (t87 & t88);
    *((unsigned int *)t86) = t89;
    t90 = (t46 + 4);
    t91 = (t78 + 4);
    t92 = (t86 + 4);
    t93 = *((unsigned int *)t90);
    t94 = *((unsigned int *)t91);
    t95 = (t93 | t94);
    *((unsigned int *)t92) = t95;
    t96 = *((unsigned int *)t92);
    t97 = (t96 != 0);
    if (t97 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB23;

LAB26:    t77 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t78) = 1;
    goto LAB31;

LAB30:    t85 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t85) = 1;
    goto LAB31;

LAB32:    t98 = *((unsigned int *)t86);
    t99 = *((unsigned int *)t92);
    *((unsigned int *)t86) = (t98 | t99);
    t100 = (t46 + 4);
    t101 = (t78 + 4);
    t102 = *((unsigned int *)t46);
    t103 = (~(t102));
    t104 = *((unsigned int *)t100);
    t105 = (~(t104));
    t106 = *((unsigned int *)t78);
    t107 = (~(t106));
    t108 = *((unsigned int *)t101);
    t109 = (~(t108));
    t110 = (t103 & t105);
    t111 = (t107 & t109);
    t112 = (~(t110));
    t113 = (~(t111));
    t114 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t114 & t112);
    t115 = *((unsigned int *)t92);
    *((unsigned int *)t92) = (t115 & t113);
    t116 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t116 & t112);
    t117 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t117 & t113);
    goto LAB34;

LAB35:
LAB38:    t124 = ((char*)((ng21)));
    t125 = (t0 + 4280);
    xsi_vlogvar_assign_value(t125, t124, 0, 0, 1);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 3960);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB37;

LAB39:    *((unsigned int *)t30) = 1;
    goto LAB42;

LAB41:    t22 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB42;

LAB43:    t29 = (t0 + 4120);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t45 = ((char*)((ng22)));
    memset(t46, 0, 8);
    t47 = (t32 + 4);
    t53 = (t45 + 4);
    t17 = *((unsigned int *)t32);
    t18 = *((unsigned int *)t45);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t47);
    t23 = *((unsigned int *)t53);
    t24 = (t20 ^ t23);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t47);
    t27 = *((unsigned int *)t53);
    t33 = (t26 | t27);
    t34 = (~(t33));
    t35 = (t25 & t34);
    if (t35 != 0)
        goto LAB49;

LAB46:    if (t33 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t46) = 1;

LAB49:    memset(t62, 0, 8);
    t58 = (t46 + 4);
    t36 = *((unsigned int *)t58);
    t37 = (~(t36));
    t38 = *((unsigned int *)t46);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t58) != 0)
        goto LAB52;

LAB53:    t41 = *((unsigned int *)t30);
    t42 = *((unsigned int *)t62);
    t43 = (t41 & t42);
    *((unsigned int *)t78) = t43;
    t60 = (t30 + 4);
    t61 = (t62 + 4);
    t63 = (t78 + 4);
    t44 = *((unsigned int *)t60);
    t48 = *((unsigned int *)t61);
    t49 = (t44 | t48);
    *((unsigned int *)t63) = t49;
    t50 = *((unsigned int *)t63);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB54;

LAB55:
LAB56:    goto LAB45;

LAB48:    t54 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t62) = 1;
    goto LAB53;

LAB52:    t59 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB53;

LAB54:    t52 = *((unsigned int *)t78);
    t55 = *((unsigned int *)t63);
    *((unsigned int *)t78) = (t52 | t55);
    t64 = (t30 + 4);
    t77 = (t62 + 4);
    t56 = *((unsigned int *)t30);
    t57 = (~(t56));
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t62);
    t68 = (~(t67));
    t69 = *((unsigned int *)t77);
    t70 = (~(t69));
    t110 = (t57 & t66);
    t111 = (t68 & t70);
    t71 = (~(t110));
    t72 = (~(t111));
    t73 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t73 & t71);
    t74 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t74 & t72);
    t75 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t75 & t71);
    t76 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t76 & t72);
    goto LAB56;

LAB57:
LAB60:    t85 = (t0 + 4280);
    t90 = (t85 + 56U);
    t91 = *((char **)t90);
    memset(t86, 0, 8);
    t92 = (t91 + 4);
    t87 = *((unsigned int *)t92);
    t88 = (~(t87));
    t89 = *((unsigned int *)t91);
    t93 = (t89 & t88);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB64;

LAB62:    if (*((unsigned int *)t92) == 0)
        goto LAB61;

LAB63:    t100 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t100) = 1;

LAB64:    t101 = (t86 + 4);
    t118 = (t91 + 4);
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    *((unsigned int *)t86) = t96;
    *((unsigned int *)t101) = 0;
    if (*((unsigned int *)t118) != 0)
        goto LAB66;

LAB65:    t103 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t103 & 1U);
    t104 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t104 & 1U);
    t124 = (t0 + 4280);
    xsi_vlogvar_assign_value(t124, t86, 0, 0, 1);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4120);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB59;

LAB61:    *((unsigned int *)t86) = 1;
    goto LAB64;

LAB66:    t97 = *((unsigned int *)t86);
    t98 = *((unsigned int *)t118);
    *((unsigned int *)t86) = (t97 | t98);
    t99 = *((unsigned int *)t101);
    t102 = *((unsigned int *)t118);
    *((unsigned int *)t101) = (t99 | t102);
    goto LAB65;

LAB67:    *((unsigned int *)t30) = 1;
    goto LAB70;

LAB69:    t22 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB70;

LAB71:    t29 = (t0 + 4120);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    t45 = ((char*)((ng21)));
    memset(t46, 0, 8);
    t47 = (t32 + 4);
    t53 = (t45 + 4);
    t17 = *((unsigned int *)t32);
    t18 = *((unsigned int *)t45);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t47);
    t23 = *((unsigned int *)t53);
    t24 = (t20 ^ t23);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t47);
    t27 = *((unsigned int *)t53);
    t33 = (t26 | t27);
    t34 = (~(t33));
    t35 = (t25 & t34);
    if (t35 != 0)
        goto LAB77;

LAB74:    if (t33 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t46) = 1;

LAB77:    memset(t62, 0, 8);
    t58 = (t46 + 4);
    t36 = *((unsigned int *)t58);
    t37 = (~(t36));
    t38 = *((unsigned int *)t46);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t58) != 0)
        goto LAB80;

LAB81:    t41 = *((unsigned int *)t30);
    t42 = *((unsigned int *)t62);
    t43 = (t41 & t42);
    *((unsigned int *)t78) = t43;
    t60 = (t30 + 4);
    t61 = (t62 + 4);
    t63 = (t78 + 4);
    t44 = *((unsigned int *)t60);
    t48 = *((unsigned int *)t61);
    t49 = (t44 | t48);
    *((unsigned int *)t63) = t49;
    t50 = *((unsigned int *)t63);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB82;

LAB83:
LAB84:    goto LAB73;

LAB76:    t54 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB77;

LAB78:    *((unsigned int *)t62) = 1;
    goto LAB81;

LAB80:    t59 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB81;

LAB82:    t52 = *((unsigned int *)t78);
    t55 = *((unsigned int *)t63);
    *((unsigned int *)t78) = (t52 | t55);
    t64 = (t30 + 4);
    t77 = (t62 + 4);
    t56 = *((unsigned int *)t30);
    t57 = (~(t56));
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t62);
    t68 = (~(t67));
    t69 = *((unsigned int *)t77);
    t70 = (~(t69));
    t110 = (t57 & t66);
    t111 = (t68 & t70);
    t71 = (~(t110));
    t72 = (~(t111));
    t73 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t73 & t71);
    t74 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t74 & t72);
    t75 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t75 & t71);
    t76 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t76 & t72);
    goto LAB84;

LAB85:
LAB88:    t85 = (t0 + 4280);
    t90 = (t85 + 56U);
    t91 = *((char **)t90);
    memset(t86, 0, 8);
    t92 = (t91 + 4);
    t87 = *((unsigned int *)t92);
    t88 = (~(t87));
    t89 = *((unsigned int *)t91);
    t93 = (t89 & t88);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB92;

LAB90:    if (*((unsigned int *)t92) == 0)
        goto LAB89;

LAB91:    t100 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t100) = 1;

LAB92:    t101 = (t86 + 4);
    t118 = (t91 + 4);
    t95 = *((unsigned int *)t91);
    t96 = (~(t95));
    *((unsigned int *)t86) = t96;
    *((unsigned int *)t101) = 0;
    if (*((unsigned int *)t118) != 0)
        goto LAB94;

LAB93:    t103 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t103 & 1U);
    t104 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t104 & 1U);
    t124 = (t0 + 4280);
    xsi_vlogvar_assign_value(t124, t86, 0, 0, 1);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 4120);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3480);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB87;

LAB89:    *((unsigned int *)t86) = 1;
    goto LAB92;

LAB94:    t97 = *((unsigned int *)t86);
    t98 = *((unsigned int *)t118);
    *((unsigned int *)t86) = (t97 | t98);
    t99 = *((unsigned int *)t101);
    t102 = *((unsigned int *)t118);
    *((unsigned int *)t101) = (t99 | t102);
    goto LAB93;

LAB97:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB98;

LAB99:    t28 = (t0 + 3480);
    t29 = (t28 + 56U);
    t31 = *((char **)t29);
    t32 = ((char*)((ng3)));
    memset(t30, 0, 8);
    xsi_vlog_signed_add(t30, 32, t31, 32, t32, 32);
    t45 = (t0 + 3480);
    xsi_vlogvar_assign_value(t45, t30, 0, 0, 32);
    goto LAB101;

}

static void Cont_212_13(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;

LAB0:    t1 = (t0 + 9064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3640);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_signed_equal(t8, 32, t6, 32, t7, 32);
    memset(t4, 0, 8);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t9) != 0)
        goto LAB6;

LAB7:    t16 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB8;

LAB9:    t22 = *((unsigned int *)t4);
    t23 = (~(t22));
    t24 = *((unsigned int *)t16);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t16) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t27, 8);

LAB16:    t28 = (t0 + 12136);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memset(t32, 0, 8);
    t33 = 1U;
    t34 = t33;
    t35 = (t3 + 4);
    t36 = *((unsigned int *)t3);
    t33 = (t33 & t36);
    t37 = *((unsigned int *)t35);
    t34 = (t34 & t37);
    t38 = (t32 + 4);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t39 | t33);
    t40 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t40 | t34);
    xsi_driver_vfirst_trans(t28, 0, 0);
    t41 = (t0 + 11544);
    *((int *)t41) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t15 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB7;

LAB8:    t20 = (t0 + 2280U);
    t21 = *((char **)t20);
    goto LAB9;

LAB10:    t20 = (t0 + 4280);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 1, t21, 1, t27, 1);
    goto LAB16;

LAB14:    memcpy(t3, t21, 8);
    goto LAB16;

}

static void NetReassign_119_14(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14400);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4280);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_120_15(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 14404);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3480);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 32, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_121_16(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng21)));
    t4 = (t0 + 14408);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 3960);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_122_17(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14412);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4120);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_124_18(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14416);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4440);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_125_19(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14420);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4600);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_126_20(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14424);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4760);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_127_21(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 11048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t3 = 0;
    t2 = ((char*)((ng22)));
    t4 = (t0 + 14428);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 4920);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void unisims_ver_m_00000000001502444915_3985585492_init()
{
	static char *pe[] = {(void *)NetDecl_43_0,(void *)Gate_56_1,(void *)Gate_57_2,(void *)Gate_58_3,(void *)Gate_59_4,(void *)Gate_60_5,(void *)Initial_63_6,(void *)Always_117_7,(void *)Initial_143_8,(void *)Always_146_9,(void *)Cont_154_10,(void *)Cont_156_11,(void *)Always_161_12,(void *)Cont_212_13,(void *)NetReassign_119_14,(void *)NetReassign_120_15,(void *)NetReassign_121_16,(void *)NetReassign_122_17,(void *)NetReassign_124_18,(void *)NetReassign_125_19,(void *)NetReassign_126_20,(void *)NetReassign_127_21};
	xsi_register_didat("unisims_ver_m_00000000001502444915_3985585492", "isim/DAC_Sweep_Test_TB_isim_beh.exe.sim/unisims_ver/m_00000000001502444915_3985585492.didat");
	xsi_register_executes(pe);
}
