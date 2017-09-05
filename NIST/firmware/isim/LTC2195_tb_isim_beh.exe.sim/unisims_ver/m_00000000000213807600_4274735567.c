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
static int ng0[] = {1, 0};
static int ng1[] = {0, 0};
static int ng2[] = {2, 0};
static int ng3[] = {3, 0};
static int ng4[] = {4, 0};
static int ng5[] = {5, 0};
static int ng6[] = {6, 0};
static int ng7[] = {7, 0};
static int ng8[] = {8, 0};
static const char *ng9 = "Attribute Syntax Error : The attribute DIVIDE on %s instance %m is set to %d.  Legal values for this attribute are 1, 2, 3, 4, 5, 6, 7 or 8.";
static int ng10[] = {1414681925, 0, 0, 0};
static int ng11[] = {1095521093, 0, 70, 0};
static const char *ng12 = "Attribute Syntax Error : The attribute ENABLE_SYNC on %s instance %m is set to %s.  Legal values for this attribute are TRUE or FALSE.";
static int ng13[] = {1414681925, 0};
static unsigned int ng14[] = {1U, 0U};
static int ng15[] = {0, 0, 0, 0};
static int ng16[] = {1, 0, 0, 0};
static unsigned int ng17[] = {0U, 0U};



static void NetDecl_57_0(char *t0)
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

LAB0:    t1 = (t0 + 5816U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 11956);
    t3 = *((char **)t2);
    t4 = ((((char*)(t3))) + 40U);
    t5 = *((char **)t4);
    t4 = (t0 + 9368);
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
    t18 = (t0 + 9112);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_67_1(char *t0)
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

LAB0:    t1 = (t0 + 6064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3296);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9432);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 9128);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_69_2(char *t0)
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

LAB0:    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 9144);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_71_3(char *t0)
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

LAB0:    t1 = (t0 + 6560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3616);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9560);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 9160);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_76_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 6808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1936U);
    t3 = *((char **)t2);
    t2 = (t0 + 9624);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 9176);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_78_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 7056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2096U);
    t3 = *((char **)t2);
    t2 = (t0 + 9688);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 9192);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Cont_80_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 7304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2256U);
    t3 = *((char **)t2);
    t2 = (t0 + 9752);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 9208);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Initial_83_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    t1 = (t0 + 7552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:
LAB4:    t2 = (t0 + 472);
    t3 = *((char **)t2);

LAB5:    t2 = ((char*)((ng0)));
    t4 = xsi_vlog_signed_case_compare(t3, 32, t2, 32);
    if (t4 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t4 = xsi_vlog_signed_case_compare(t3, 32, t2, 32);
    if (t4 == 1)
        goto LAB8;

LAB9:    t5 = ((char*)((ng3)));
    t7 = xsi_vlog_signed_case_compare(t3, 32, t5, 32);
    if (t7 == 1)
        goto LAB10;

LAB11:    t6 = ((char*)((ng4)));
    t8 = xsi_vlog_signed_case_compare(t3, 32, t6, 32);
    if (t8 == 1)
        goto LAB12;

LAB13:    t9 = ((char*)((ng5)));
    t10 = xsi_vlog_signed_case_compare(t3, 32, t9, 32);
    if (t10 == 1)
        goto LAB14;

LAB15:    t11 = ((char*)((ng6)));
    t12 = xsi_vlog_signed_case_compare(t3, 32, t11, 32);
    if (t12 == 1)
        goto LAB16;

LAB17:    t13 = ((char*)((ng7)));
    t14 = xsi_vlog_signed_case_compare(t3, 32, t13, 32);
    if (t14 == 1)
        goto LAB18;

LAB19:    t15 = ((char*)((ng8)));
    t16 = xsi_vlog_signed_case_compare(t3, 32, t15, 32);
    if (t16 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:
LAB26:    t17 = (t0 + 744);
    t18 = *((char **)t17);
    t17 = (t0 + 472);
    t19 = *((char **)t17);
    xsi_vlogfile_write(1, 0, 0, ng9, 3, t0, (char)118, t18, 48, (char)119, t19, 32);
    t2 = ((char*)((ng0)));
    t5 = (t0 + 4096);
    xsi_vlogvar_assign_value(t5, t2, 0, 0, 1);

LAB24:    t2 = (t0 + 608);
    t5 = *((char **)t2);

LAB27:    t2 = ((char*)((ng10)));
    t4 = xsi_vlog_unsigned_case_compare(t5, 32, t2, 40);
    if (t4 == 1)
        goto LAB28;

LAB29:    t6 = ((char*)((ng11)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 32, t6, 40);
    if (t7 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:
LAB35:    t9 = (t0 + 744);
    t11 = *((char **)t9);
    t9 = (t0 + 608);
    t13 = *((char **)t9);
    xsi_vlogfile_write(1, 0, 0, ng12, 3, t0, (char)118, t11, 48, (char)118, t13, 32);
    t2 = ((char*)((ng0)));
    t6 = (t0 + 4096);
    xsi_vlogvar_assign_value(t6, t2, 0, 0, 1);

LAB34:    t2 = (t0 + 4096);
    t6 = (t2 + 56U);
    t9 = *((char **)t6);
    t11 = (t9 + 4);
    t20 = *((unsigned int *)t11);
    t21 = (~(t20));
    t22 = *((unsigned int *)t9);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB36;

LAB37:
LAB38:
LAB1:    return;
LAB6:
LAB25:    t5 = ((char*)((ng1)));
    t6 = (t0 + 4096);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    goto LAB24;

LAB8:    goto LAB6;

LAB10:    goto LAB6;

LAB12:    goto LAB6;

LAB14:    goto LAB6;

LAB16:    goto LAB6;

LAB18:    goto LAB6;

LAB20:    goto LAB6;

LAB28:    goto LAB34;

LAB30:    goto LAB28;

LAB36:
LAB39:    t13 = (t0 + 7360);
    xsi_process_wait(t13, 1LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    xsi_vlog_finish(1);
    goto LAB38;

}

static void Always_130_8(char *t0)
{
    char t4[8];
    char t13[8];
    char t27[8];
    char t43[8];
    char t60[8];
    char t76[8];
    char t84[8];
    char t112[8];
    char t120[8];
    char t160[16];
    char t161[16];
    char t162[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
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
    char *t75;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    int t144;
    int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    char *t159;
    double t163;
    double t164;
    double t165;
    double t166;
    double t167;
    double t168;
    double t169;

LAB0:    t1 = (t0 + 7800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 9224);
    *((int *)t2) = 1;
    t3 = (t0 + 7832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t5 = (t0 + 2736U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    memset(t13, 0, 8);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) != 0)
        goto LAB12;

LAB13:    t21 = (t13 + 4);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB14;

LAB15:    memcpy(t120, t13, 8);

LAB16:    t152 = (t120 + 4);
    t153 = *((unsigned int *)t152);
    t154 = (~(t153));
    t155 = *((unsigned int *)t120);
    t156 = (t155 & t154);
    t157 = (t156 != 0);
    if (t157 > 0)
        goto LAB46;

LAB47:    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t14 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t14);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t14);
    t19 = (t17 | t18);
    t22 = (~(t19));
    t23 = (t16 & t22);
    if (t23 != 0)
        goto LAB53;

LAB50:    if (t19 != 0)
        goto LAB52;

LAB51:    *((unsigned int *)t4) = 1;

LAB53:    t21 = (t4 + 4);
    t24 = *((unsigned int *)t21);
    t30 = (~(t24));
    t31 = *((unsigned int *)t4);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB54;

LAB55:
LAB56:
LAB48:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t20 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB13;

LAB14:    t25 = (t0 + 608);
    t26 = *((char **)t25);
    t25 = ((char*)((ng13)));
    memset(t27, 0, 8);
    t28 = (t26 + 4);
    t29 = (t25 + 4);
    t30 = *((unsigned int *)t26);
    t31 = *((unsigned int *)t25);
    t32 = (t30 ^ t31);
    t33 = *((unsigned int *)t28);
    t34 = *((unsigned int *)t29);
    t35 = (t33 ^ t34);
    t36 = (t32 | t35);
    t37 = *((unsigned int *)t28);
    t38 = *((unsigned int *)t29);
    t39 = (t37 | t38);
    t40 = (~(t39));
    t41 = (t36 & t40);
    if (t41 != 0)
        goto LAB20;

LAB17:    if (t39 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t27) = 1;

LAB20:    memset(t43, 0, 8);
    t44 = (t27 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (~(t45));
    t47 = *((unsigned int *)t27);
    t48 = (t47 & t46);
    t49 = (t48 & 1U);
    if (t49 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t44) != 0)
        goto LAB23;

LAB24:    t51 = (t43 + 4);
    t52 = *((unsigned int *)t43);
    t53 = (!(t52));
    t54 = *((unsigned int *)t51);
    t55 = (t53 || t54);
    if (t55 > 0)
        goto LAB25;

LAB26:    memcpy(t84, t43, 8);

LAB27:    memset(t112, 0, 8);
    t113 = (t84 + 4);
    t114 = *((unsigned int *)t113);
    t115 = (~(t114));
    t116 = *((unsigned int *)t84);
    t117 = (t116 & t115);
    t118 = (t117 & 1U);
    if (t118 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t113) != 0)
        goto LAB41;

LAB42:    t121 = *((unsigned int *)t13);
    t122 = *((unsigned int *)t112);
    t123 = (t121 & t122);
    *((unsigned int *)t120) = t123;
    t124 = (t13 + 4);
    t125 = (t112 + 4);
    t126 = (t120 + 4);
    t127 = *((unsigned int *)t124);
    t128 = *((unsigned int *)t125);
    t129 = (t127 | t128);
    *((unsigned int *)t126) = t129;
    t130 = *((unsigned int *)t126);
    t131 = (t130 != 0);
    if (t131 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB16;

LAB19:    t42 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t43) = 1;
    goto LAB24;

LAB23:    t50 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB24;

LAB25:    t56 = (t0 + 4256);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = ((char*)((ng14)));
    memset(t60, 0, 8);
    t61 = (t58 + 4);
    t62 = (t59 + 4);
    t63 = *((unsigned int *)t58);
    t64 = *((unsigned int *)t59);
    t65 = (t63 ^ t64);
    t66 = *((unsigned int *)t61);
    t67 = *((unsigned int *)t62);
    t68 = (t66 ^ t67);
    t69 = (t65 | t68);
    t70 = *((unsigned int *)t61);
    t71 = *((unsigned int *)t62);
    t72 = (t70 | t71);
    t73 = (~(t72));
    t74 = (t69 & t73);
    if (t74 != 0)
        goto LAB31;

LAB28:    if (t72 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t60) = 1;

LAB31:    memset(t76, 0, 8);
    t77 = (t60 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t60);
    t81 = (t80 & t79);
    t82 = (t81 & 1U);
    if (t82 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t77) != 0)
        goto LAB34;

LAB35:    t85 = *((unsigned int *)t43);
    t86 = *((unsigned int *)t76);
    t87 = (t85 | t86);
    *((unsigned int *)t84) = t87;
    t88 = (t43 + 4);
    t89 = (t76 + 4);
    t90 = (t84 + 4);
    t91 = *((unsigned int *)t88);
    t92 = *((unsigned int *)t89);
    t93 = (t91 | t92);
    *((unsigned int *)t90) = t93;
    t94 = *((unsigned int *)t90);
    t95 = (t94 != 0);
    if (t95 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB27;

LAB30:    t75 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t76) = 1;
    goto LAB35;

LAB34:    t83 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t83) = 1;
    goto LAB35;

LAB36:    t96 = *((unsigned int *)t84);
    t97 = *((unsigned int *)t90);
    *((unsigned int *)t84) = (t96 | t97);
    t98 = (t43 + 4);
    t99 = (t76 + 4);
    t100 = *((unsigned int *)t98);
    t101 = (~(t100));
    t102 = *((unsigned int *)t43);
    t103 = (t102 & t101);
    t104 = *((unsigned int *)t99);
    t105 = (~(t104));
    t106 = *((unsigned int *)t76);
    t107 = (t106 & t105);
    t108 = (~(t103));
    t109 = (~(t107));
    t110 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t110 & t108);
    t111 = *((unsigned int *)t90);
    *((unsigned int *)t90) = (t111 & t109);
    goto LAB38;

LAB39:    *((unsigned int *)t112) = 1;
    goto LAB42;

LAB41:    t119 = (t112 + 4);
    *((unsigned int *)t112) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB42;

LAB43:    t132 = *((unsigned int *)t120);
    t133 = *((unsigned int *)t126);
    *((unsigned int *)t120) = (t132 | t133);
    t134 = (t13 + 4);
    t135 = (t112 + 4);
    t136 = *((unsigned int *)t13);
    t137 = (~(t136));
    t138 = *((unsigned int *)t134);
    t139 = (~(t138));
    t140 = *((unsigned int *)t112);
    t141 = (~(t140));
    t142 = *((unsigned int *)t135);
    t143 = (~(t142));
    t144 = (t137 & t139);
    t145 = (t141 & t143);
    t146 = (~(t144));
    t147 = (~(t145));
    t148 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t148 & t146);
    t149 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t149 & t147);
    t150 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t150 & t146);
    t151 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t151 & t147);
    goto LAB45;

LAB46:
LAB49:    t158 = ((char*)((ng1)));
    t159 = (t0 + 4256);
    xsi_vlogvar_wait_assign_value(t159, t158, 0, 0, 1, 0LL);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4416);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4576);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4736);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4896);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    goto LAB48;

LAB52:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB53;

LAB54:
LAB57:    t25 = xsi_vlog_time(t160, 1.0000000000000000, 1.0000000000000000);
    t26 = (t0 + 4416);
    xsi_vlogvar_wait_assign_value(t26, t160, 0, 0, 64, 0LL);
    t2 = (t0 + 4416);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng15)));
    xsi_vlog_unsigned_not_equal(t160, 64, t5, 64, t6, 32);
    t12 = (t160 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t160);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB58;

LAB59:
LAB60:    goto LAB56;

LAB58:
LAB61:    t14 = xsi_vlog_time(t161, 1.0000000000000000, 1.0000000000000000);
    t20 = (t0 + 4416);
    t21 = (t20 + 56U);
    t25 = *((char **)t21);
    xsi_vlog_unsigned_minus(t162, 64, t161, 64, t25, 64);
    t26 = (t0 + 4576);
    xsi_vlogvar_assign_value(t26, t162, 0, 0, 64);
    t2 = (t0 + 2736U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB62;

LAB63:
LAB64:    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t3, 32, t2, 32);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB65;

LAB66:    t2 = (t0 + 4576);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t163 = xsi_vlog_convert_to_real(t5, 64, 2);
    t6 = (t0 + 472);
    t12 = *((char **)t6);
    t6 = ((char*)((ng16)));
    xsi_vlog_signed_minus(t160, 64, t12, 32, t6, 32);
    t164 = xsi_vlog_convert_to_real(t160, 32, 1);
    t165 = (2.0000000000000000 * t164);
    t14 = ((char*)((ng16)));
    t166 = xsi_vlog_convert_to_real(t14, 32, 1);
    t167 = (t165 - t166);
    t168 = (t167 / 4.0000000000000000);
    t169 = (t163 * t168);
    xsi_vlog_convert_real_to_values(t169, t161, 64);
    t20 = (t0 + 4736);
    xsi_vlogvar_wait_assign_value(t20, t161, 0, 0, 64, 0LL);

LAB67:    t2 = (t0 + 4576);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4896);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 64, 0LL);
    goto LAB60;

LAB62:    t5 = ((char*)((ng0)));
    t6 = (t0 + 4256);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB64;

LAB65:    t6 = (t0 + 4576);
    t12 = (t6 + 56U);
    t14 = *((char **)t12);
    t163 = xsi_vlog_convert_to_real(t14, 64, 2);
    t164 = (1.0000000000000000 / 4.0000000000000000);
    t165 = (t163 * t164);
    xsi_vlog_convert_real_to_values(t165, t160, 64);
    t20 = (t0 + 4736);
    xsi_vlogvar_wait_assign_value(t20, t160, 0, 0, 64, 0LL);
    goto LAB67;

}

static void Always_156_9(char *t0)
{
    char t8[8];
    char t24[8];
    char t39[16];
    char t40[8];
    char t48[8];
    char t76[8];
    char t92[16];
    char t93[8];
    char t101[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    int t125;
    int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    char *t139;
    char *t140;
    char *t141;
    double t142;
    double t143;
    char *t144;

LAB0:    t1 = (t0 + 8048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 9240);
    *((int *)t2) = 1;
    t3 = (t0 + 8080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 4256);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng0)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    memset(t24, 0, 8);
    t25 = (t8 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t25) != 0)
        goto LAB12;

LAB13:    t32 = (t24 + 4);
    t33 = *((unsigned int *)t24);
    t34 = (!(t33));
    t35 = *((unsigned int *)t32);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB14;

LAB15:    memcpy(t48, t24, 8);

LAB16:    memset(t76, 0, 8);
    t77 = (t48 + 4);
    t78 = *((unsigned int *)t77);
    t79 = (~(t78));
    t80 = *((unsigned int *)t48);
    t81 = (t80 & t79);
    t82 = (t81 & 1U);
    if (t82 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t77) != 0)
        goto LAB26;

LAB27:    t84 = (t76 + 4);
    t85 = *((unsigned int *)t76);
    t86 = *((unsigned int *)t84);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB28;

LAB29:    memcpy(t101, t76, 8);

LAB30:    t133 = (t101 + 4);
    t134 = *((unsigned int *)t133);
    t135 = (~(t134));
    t136 = *((unsigned int *)t101);
    t137 = (t136 & t135);
    t138 = (t137 != 0);
    if (t138 > 0)
        goto LAB38;

LAB39:    t2 = ((char*)((ng17)));
    t3 = (t0 + 3776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB40:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t24) = 1;
    goto LAB13;

LAB12:    t31 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB13;

LAB14:    t37 = (t0 + 608);
    t38 = *((char **)t37);
    t37 = ((char*)((ng11)));
    xsi_vlog_unsigned_equal(t39, 40, t38, 32, t37, 40);
    memset(t40, 0, 8);
    t41 = (t39 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t39);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t41) != 0)
        goto LAB19;

LAB20:    t49 = *((unsigned int *)t24);
    t50 = *((unsigned int *)t40);
    t51 = (t49 | t50);
    *((unsigned int *)t48) = t51;
    t52 = (t24 + 4);
    t53 = (t40 + 4);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t52);
    t56 = *((unsigned int *)t53);
    t57 = (t55 | t56);
    *((unsigned int *)t54) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 != 0);
    if (t59 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB16;

LAB17:    *((unsigned int *)t40) = 1;
    goto LAB20;

LAB19:    t47 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB20;

LAB21:    t60 = *((unsigned int *)t48);
    t61 = *((unsigned int *)t54);
    *((unsigned int *)t48) = (t60 | t61);
    t62 = (t24 + 4);
    t63 = (t40 + 4);
    t64 = *((unsigned int *)t62);
    t65 = (~(t64));
    t66 = *((unsigned int *)t24);
    t67 = (t66 & t65);
    t68 = *((unsigned int *)t63);
    t69 = (~(t68));
    t70 = *((unsigned int *)t40);
    t71 = (t70 & t69);
    t72 = (~(t67));
    t73 = (~(t71));
    t74 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t74 & t72);
    t75 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t75 & t73);
    goto LAB23;

LAB24:    *((unsigned int *)t76) = 1;
    goto LAB27;

LAB26:    t83 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t83) = 1;
    goto LAB27;

LAB28:    t88 = (t0 + 4736);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    t91 = ((char*)((ng15)));
    xsi_vlog_unsigned_greater(t92, 64, t90, 64, t91, 32);
    memset(t93, 0, 8);
    t94 = (t92 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t92);
    t98 = (t97 & t96);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t94) != 0)
        goto LAB33;

LAB34:    t102 = *((unsigned int *)t76);
    t103 = *((unsigned int *)t93);
    t104 = (t102 & t103);
    *((unsigned int *)t101) = t104;
    t105 = (t76 + 4);
    t106 = (t93 + 4);
    t107 = (t101 + 4);
    t108 = *((unsigned int *)t105);
    t109 = *((unsigned int *)t106);
    t110 = (t108 | t109);
    *((unsigned int *)t107) = t110;
    t111 = *((unsigned int *)t107);
    t112 = (t111 != 0);
    if (t112 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB30;

LAB31:    *((unsigned int *)t93) = 1;
    goto LAB34;

LAB33:    t100 = (t93 + 4);
    *((unsigned int *)t93) = 1;
    *((unsigned int *)t100) = 1;
    goto LAB34;

LAB35:    t113 = *((unsigned int *)t101);
    t114 = *((unsigned int *)t107);
    *((unsigned int *)t101) = (t113 | t114);
    t115 = (t76 + 4);
    t116 = (t93 + 4);
    t117 = *((unsigned int *)t76);
    t118 = (~(t117));
    t119 = *((unsigned int *)t115);
    t120 = (~(t119));
    t121 = *((unsigned int *)t93);
    t122 = (~(t121));
    t123 = *((unsigned int *)t116);
    t124 = (~(t123));
    t125 = (t118 & t120);
    t126 = (t122 & t124);
    t127 = (~(t125));
    t128 = (~(t126));
    t129 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t129 & t127);
    t130 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t130 & t128);
    t131 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t131 & t127);
    t132 = *((unsigned int *)t101);
    *((unsigned int *)t101) = (t132 & t128);
    goto LAB37;

LAB38:
LAB41:    t139 = (t0 + 4736);
    t140 = (t139 + 56U);
    t141 = *((char **)t140);
    t142 = xsi_vlog_convert_to_real(t141, 64, 2);
    t143 = (t142 < 0.00000000000000000);
    if (t143 == 1)
        goto LAB42;

LAB43:    t142 = (t142 + 0.50000000000000000);
    t142 = ((int64)(t142));

LAB44:    t142 = (t142 * 1.0000000000000000);
    t144 = (t0 + 7856);
    xsi_process_wait(t144, t142);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB42:    t142 = 0.00000000000000000;
    goto LAB44;

LAB45:    t2 = ((char*)((ng14)));
    t3 = (t0 + 3776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t8, 0, 8);
    xsi_vlog_signed_not_equal(t8, 32, t3, 32, t2, 32);
    t4 = (t8 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (~(t11));
    t13 = *((unsigned int *)t8);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB46;

LAB47:
LAB48:    goto LAB40;

LAB46:
LAB49:    t5 = (t0 + 4896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t142 = xsi_vlog_convert_to_real(t7, 64, 2);
    t143 = (t142 < 0.00000000000000000);
    if (t143 == 1)
        goto LAB50;

LAB51:    t142 = (t142 + 0.50000000000000000);
    t142 = ((int64)(t142));

LAB52:    t142 = (t142 * 1.0000000000000000);
    t9 = (t0 + 7856);
    xsi_process_wait(t9, t142);
    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB50:    t142 = 0.00000000000000000;
    goto LAB52;

LAB53:    t2 = ((char*)((ng17)));
    t3 = (t0 + 3776);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB48;

}

static void Always_170_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 8296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 9256);
    *((int *)t2) = 1;
    t3 = (t0 + 8328);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 3776);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 3616);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_174_11(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 8544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 9272);
    *((int *)t2) = 1;
    t3 = (t0 + 8576);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t4 = (t0 + 2896U);
    t5 = *((char **)t4);
    t4 = (t0 + 3296);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_180_12(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 8792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 9288);
    *((int *)t2) = 1;
    t3 = (t0 + 8824);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t4 = (t0 + 2736U);
    t5 = *((char **)t4);
    t4 = (t0 + 3456);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB2;

}


extern void unisims_ver_m_00000000000213807600_4274735567_init()
{
	static char *pe[] = {(void *)NetDecl_57_0,(void *)Cont_67_1,(void *)Cont_69_2,(void *)Cont_71_3,(void *)Cont_76_4,(void *)Cont_78_5,(void *)Cont_80_6,(void *)Initial_83_7,(void *)Always_130_8,(void *)Always_156_9,(void *)Always_170_10,(void *)Always_174_11,(void *)Always_180_12};
	xsi_register_didat("unisims_ver_m_00000000000213807600_4274735567", "isim/LTC2195_tb_isim_beh.exe.sim/unisims_ver/m_00000000000213807600_4274735567.didat");
	xsi_register_executes(pe);
}
