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
static const char *ng0 = "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/ADC_test/LTC2195.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {50U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {256U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {8U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {7U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static unsigned int ng15[] = {12U, 0U};
static int ng16[] = {0, 0};
static int ng17[] = {1, 0};
static int ng18[] = {2, 0};
static int ng19[] = {5, 0};
static int ng20[] = {3, 0};
static int ng21[] = {8, 0};
static int ng22[] = {4, 0};
static int ng23[] = {9, 0};
static int ng24[] = {6, 0};
static int ng25[] = {7, 0};
static unsigned int ng26[] = {49U, 0U};
static unsigned int ng27[] = {13U, 0U};
static unsigned int ng28[] = {380U, 0U};
static unsigned int ng29[] = {255U, 0U};
static unsigned int ng30[] = {128U, 0U};
static unsigned int ng31[] = {288U, 0U};
static unsigned int ng32[] = {512U, 0U};



static int sp_PS_next_state(char *t1, char *t2)
{
    char t11[8];
    char t23[8];
    char t36[8];
    char t52[8];
    char t60[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
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
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
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
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;

LAB0:    t0 = 1;
    xsi_set_current_line(90, ng0);

LAB2:    xsi_set_current_line(91, ng0);
    t3 = (t1 + 19600);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 4);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng6)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB10;

LAB11:    t3 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB12;

LAB13:    t3 = ((char*)((ng9)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB14;

LAB15:    t3 = ((char*)((ng10)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB16;

LAB17:    t3 = ((char*)((ng11)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB18;

LAB19:    t3 = ((char*)((ng7)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB20;

LAB21:    t3 = ((char*)((ng12)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB22;

LAB23:    t3 = ((char*)((ng13)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB24;

LAB25:    t3 = ((char*)((ng14)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB26;

LAB27:    t3 = ((char*)((ng15)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB28;

LAB29:
LAB31:
LAB30:    xsi_set_current_line(137, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 19440);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB32:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(93, ng0);
    t8 = (t1 + 20080);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t12 = (t10 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t10);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t12) != 0)
        goto LAB35;

LAB36:    t19 = (t11 + 4);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t19);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB37;

LAB38:    memcpy(t60, t11, 8);

LAB39:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 19440);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB53:    goto LAB32;

LAB6:    xsi_set_current_line(98, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB8:    xsi_set_current_line(100, ng0);
    t4 = (t1 + 20560);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t10 = (t8 + 4);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t10);
    t17 = *((unsigned int *)t12);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t12);
    t30 = (t22 | t29);
    t31 = (~(t30));
    t32 = (t21 & t31);
    if (t32 != 0)
        goto LAB57;

LAB54:    if (t30 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t11) = 1;

LAB57:    t19 = (t11 + 4);
    t33 = *((unsigned int *)t19);
    t34 = (~(t33));
    t39 = *((unsigned int *)t11);
    t40 = (t39 & t34);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB58;

LAB59:    xsi_set_current_line(103, ng0);
    t3 = (t1 + 19920);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t8 = (t1 + 19760);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB62;

LAB61:    t18 = (t10 + 4);
    if (*((unsigned int *)t18) != 0)
        goto LAB62;

LAB65:    if (*((unsigned int *)t6) > *((unsigned int *)t10))
        goto LAB63;

LAB64:    memset(t23, 0, 8);
    t24 = (t11 + 4);
    t13 = *((unsigned int *)t24);
    t14 = (~(t13));
    t15 = *((unsigned int *)t11);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t24) != 0)
        goto LAB68;

LAB69:    t26 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = *((unsigned int *)t26);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB70;

LAB71:    memcpy(t60, t23, 8);

LAB72:    t98 = (t60 + 4);
    t70 = *((unsigned int *)t98);
    t71 = (~(t70));
    t72 = *((unsigned int *)t60);
    t73 = (t72 & t71);
    t76 = (t73 != 0);
    if (t76 > 0)
        goto LAB85;

LAB86:    xsi_set_current_line(106, ng0);
    t3 = (t1 + 19920);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t8 = (t1 + 19760);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB89;

LAB88:    t18 = (t10 + 4);
    if (*((unsigned int *)t18) != 0)
        goto LAB89;

LAB92:    if (*((unsigned int *)t6) < *((unsigned int *)t10))
        goto LAB90;

LAB91:    memset(t23, 0, 8);
    t24 = (t11 + 4);
    t13 = *((unsigned int *)t24);
    t14 = (~(t13));
    t15 = *((unsigned int *)t11);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t24) != 0)
        goto LAB95;

LAB96:    t26 = (t23 + 4);
    t20 = *((unsigned int *)t23);
    t21 = *((unsigned int *)t26);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB97;

LAB98:    memcpy(t60, t23, 8);

LAB99:    t98 = (t60 + 4);
    t70 = *((unsigned int *)t98);
    t71 = (~(t70));
    t72 = *((unsigned int *)t60);
    t73 = (t72 & t71);
    t76 = (t73 != 0);
    if (t76 > 0)
        goto LAB112;

LAB113:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 19440);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB114:
LAB87:
LAB60:    goto LAB32;

LAB10:    xsi_set_current_line(111, ng0);
    t4 = ((char*)((ng8)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB12:    xsi_set_current_line(113, ng0);
    t4 = ((char*)((ng9)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB14:    xsi_set_current_line(115, ng0);
    t4 = ((char*)((ng10)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB16:    xsi_set_current_line(117, ng0);
    t4 = (t1 + 20400);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t10 = (t8 + 4);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t10);
    t17 = *((unsigned int *)t12);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t12);
    t30 = (t22 | t29);
    t31 = (~(t30));
    t32 = (t21 & t31);
    if (t32 != 0)
        goto LAB118;

LAB115:    if (t30 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t11) = 1;

LAB118:    t19 = (t11 + 4);
    t33 = *((unsigned int *)t19);
    t34 = (~(t33));
    t39 = *((unsigned int *)t11);
    t40 = (t39 & t34);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(120, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t1 + 19440);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB121:    goto LAB32;

LAB18:    xsi_set_current_line(122, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB20:    xsi_set_current_line(124, ng0);
    t4 = ((char*)((ng12)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB22:    xsi_set_current_line(126, ng0);
    t4 = ((char*)((ng13)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB24:    xsi_set_current_line(128, ng0);
    t4 = ((char*)((ng14)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB26:    xsi_set_current_line(130, ng0);
    t4 = (t1 + 20400);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t10 = (t8 + 4);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t10);
    t17 = *((unsigned int *)t12);
    t20 = (t16 ^ t17);
    t21 = (t15 | t20);
    t22 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t12);
    t30 = (t22 | t29);
    t31 = (~(t30));
    t32 = (t21 & t31);
    if (t32 != 0)
        goto LAB125;

LAB122:    if (t30 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t11) = 1;

LAB125:    t19 = (t11 + 4);
    t33 = *((unsigned int *)t19);
    t34 = (~(t33));
    t39 = *((unsigned int *)t11);
    t40 = (t39 & t34);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(133, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t1 + 19440);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB128:    goto LAB32;

LAB28:    xsi_set_current_line(135, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 19440);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB32;

LAB33:    *((unsigned int *)t11) = 1;
    goto LAB36;

LAB35:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB36;

LAB37:    t24 = (t1 + 20240);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t23, 0, 8);
    t27 = (t23 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 8);
    *((unsigned int *)t23) = t30;
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 8);
    *((unsigned int *)t27) = t32;
    t33 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t33 & 255U);
    t34 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t34 & 255U);
    t35 = ((char*)((ng2)));
    memset(t36, 0, 8);
    t37 = (t23 + 4);
    t38 = (t35 + 4);
    t39 = *((unsigned int *)t23);
    t40 = *((unsigned int *)t35);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB43;

LAB40:    if (t48 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t36) = 1;

LAB43:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t53) != 0)
        goto LAB46;

LAB47:    t61 = *((unsigned int *)t11);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t11 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB39;

LAB42:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t52) = 1;
    goto LAB47;

LAB46:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB47;

LAB48:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t11 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t11);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB50;

LAB51:    xsi_set_current_line(94, ng0);
    t98 = ((char*)((ng3)));
    t99 = (t1 + 19440);
    xsi_vlogvar_assign_value(t99, t98, 0, 0, 4);
    goto LAB53;

LAB56:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB57;

LAB58:    xsi_set_current_line(101, ng0);
    t24 = ((char*)((ng4)));
    t25 = (t1 + 19440);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 4);
    goto LAB60;

LAB62:    t19 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB64;

LAB63:    *((unsigned int *)t11) = 1;
    goto LAB64;

LAB66:    *((unsigned int *)t23) = 1;
    goto LAB69;

LAB68:    t25 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB69;

LAB70:    t27 = (t1 + 19760);
    t28 = (t27 + 56U);
    t35 = *((char **)t28);
    t37 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t38 = (t35 + 4);
    if (*((unsigned int *)t38) != 0)
        goto LAB74;

LAB73:    t51 = (t37 + 4);
    if (*((unsigned int *)t51) != 0)
        goto LAB74;

LAB77:    if (*((unsigned int *)t35) < *((unsigned int *)t37))
        goto LAB75;

LAB76:    memset(t52, 0, 8);
    t59 = (t36 + 4);
    t29 = *((unsigned int *)t59);
    t30 = (~(t29));
    t31 = *((unsigned int *)t36);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB78;

LAB79:    if (*((unsigned int *)t59) != 0)
        goto LAB80;

LAB81:    t34 = *((unsigned int *)t23);
    t39 = *((unsigned int *)t52);
    t40 = (t34 & t39);
    *((unsigned int *)t60) = t40;
    t65 = (t23 + 4);
    t66 = (t52 + 4);
    t74 = (t60 + 4);
    t41 = *((unsigned int *)t65);
    t42 = *((unsigned int *)t66);
    t43 = (t41 | t42);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t74);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB82;

LAB83:
LAB84:    goto LAB72;

LAB74:    t53 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB76;

LAB75:    *((unsigned int *)t36) = 1;
    goto LAB76;

LAB78:    *((unsigned int *)t52) = 1;
    goto LAB81;

LAB80:    t64 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB81;

LAB82:    t46 = *((unsigned int *)t60);
    t47 = *((unsigned int *)t74);
    *((unsigned int *)t60) = (t46 | t47);
    t75 = (t23 + 4);
    t92 = (t52 + 4);
    t48 = *((unsigned int *)t23);
    t49 = (~(t48));
    t50 = *((unsigned int *)t75);
    t54 = (~(t50));
    t55 = *((unsigned int *)t52);
    t56 = (~(t55));
    t57 = *((unsigned int *)t92);
    t58 = (~(t57));
    t7 = (t49 & t54);
    t84 = (t56 & t58);
    t61 = (~(t7));
    t62 = (~(t84));
    t63 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t63 & t61);
    t67 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t67 & t62);
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & t61);
    t69 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t69 & t62);
    goto LAB84;

LAB85:    xsi_set_current_line(104, ng0);
    t99 = ((char*)((ng6)));
    t100 = (t1 + 19440);
    xsi_vlogvar_assign_value(t100, t99, 0, 0, 4);
    goto LAB87;

LAB89:    t19 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB91;

LAB90:    *((unsigned int *)t11) = 1;
    goto LAB91;

LAB93:    *((unsigned int *)t23) = 1;
    goto LAB96;

LAB95:    t25 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB96;

LAB97:    t27 = (t1 + 19760);
    t28 = (t27 + 56U);
    t35 = *((char **)t28);
    t37 = ((char*)((ng5)));
    memset(t36, 0, 8);
    t38 = (t35 + 4);
    if (*((unsigned int *)t38) != 0)
        goto LAB101;

LAB100:    t51 = (t37 + 4);
    if (*((unsigned int *)t51) != 0)
        goto LAB101;

LAB104:    if (*((unsigned int *)t35) > *((unsigned int *)t37))
        goto LAB102;

LAB103:    memset(t52, 0, 8);
    t59 = (t36 + 4);
    t29 = *((unsigned int *)t59);
    t30 = (~(t29));
    t31 = *((unsigned int *)t36);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t59) != 0)
        goto LAB107;

LAB108:    t34 = *((unsigned int *)t23);
    t39 = *((unsigned int *)t52);
    t40 = (t34 & t39);
    *((unsigned int *)t60) = t40;
    t65 = (t23 + 4);
    t66 = (t52 + 4);
    t74 = (t60 + 4);
    t41 = *((unsigned int *)t65);
    t42 = *((unsigned int *)t66);
    t43 = (t41 | t42);
    *((unsigned int *)t74) = t43;
    t44 = *((unsigned int *)t74);
    t45 = (t44 != 0);
    if (t45 == 1)
        goto LAB109;

LAB110:
LAB111:    goto LAB99;

LAB101:    t53 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB103;

LAB102:    *((unsigned int *)t36) = 1;
    goto LAB103;

LAB105:    *((unsigned int *)t52) = 1;
    goto LAB108;

LAB107:    t64 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB108;

LAB109:    t46 = *((unsigned int *)t60);
    t47 = *((unsigned int *)t74);
    *((unsigned int *)t60) = (t46 | t47);
    t75 = (t23 + 4);
    t92 = (t52 + 4);
    t48 = *((unsigned int *)t23);
    t49 = (~(t48));
    t50 = *((unsigned int *)t75);
    t54 = (~(t50));
    t55 = *((unsigned int *)t52);
    t56 = (~(t55));
    t57 = *((unsigned int *)t92);
    t58 = (~(t57));
    t7 = (t49 & t54);
    t84 = (t56 & t58);
    t61 = (~(t7));
    t62 = (~(t84));
    t63 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t63 & t61);
    t67 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t67 & t62);
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & t61);
    t69 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t69 & t62);
    goto LAB111;

LAB112:    xsi_set_current_line(107, ng0);
    t99 = ((char*)((ng7)));
    t100 = (t1 + 19440);
    xsi_vlogvar_assign_value(t100, t99, 0, 0, 4);
    goto LAB114;

LAB117:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(118, ng0);
    t24 = ((char*)((ng11)));
    t25 = (t1 + 19440);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 4);
    goto LAB121;

LAB124:    t18 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(131, ng0);
    t24 = ((char*)((ng15)));
    t25 = (t1 + 19440);
    xsi_vlogvar_assign_value(t25, t24, 0, 0, 4);
    goto LAB128;

}

static int sp_delay_value(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;

LAB0:    t0 = 1;
    xsi_set_current_line(455, ng0);

LAB2:    xsi_set_current_line(456, ng0);
    t3 = (t1 + 20880);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng16)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t6, 32);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng17)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng18)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng20)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB10;

LAB11:    t3 = ((char*)((ng22)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB12;

LAB13:    t3 = ((char*)((ng19)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB14;

LAB15:    t3 = ((char*)((ng24)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB16;

LAB17:    t3 = ((char*)((ng25)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB18;

LAB19:    t3 = ((char*)((ng21)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 1, t3, 32);
    if (t7 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(467, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t1 + 20720);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB24:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(457, ng0);
    t8 = ((char*)((ng16)));
    t9 = (t1 + 20720);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB24;

LAB6:    xsi_set_current_line(458, ng0);
    t4 = ((char*)((ng18)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB8:    xsi_set_current_line(459, ng0);
    t4 = ((char*)((ng19)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB10:    xsi_set_current_line(460, ng0);
    t4 = ((char*)((ng21)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB12:    xsi_set_current_line(461, ng0);
    t4 = ((char*)((ng23)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB14:    xsi_set_current_line(462, ng0);
    t4 = ((char*)((ng23)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB16:    xsi_set_current_line(463, ng0);
    t4 = ((char*)((ng23)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB18:    xsi_set_current_line(464, ng0);
    t4 = ((char*)((ng21)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

LAB20:    xsi_set_current_line(465, ng0);
    t4 = ((char*)((ng16)));
    t6 = (t1 + 20720);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 32);
    goto LAB24;

}

static int sp_next_state(char *t1, char *t2)
{
    char t11[8];
    char t24[8];
    char t40[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    int t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;

LAB0:    t0 = 1;
    xsi_set_current_line(722, ng0);

LAB2:    xsi_set_current_line(723, ng0);
    t3 = (t1 + 21200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 4);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng6)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB10;

LAB11:    t3 = ((char*)((ng8)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB12;

LAB13:    t3 = ((char*)((ng9)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB14;

LAB15:    t3 = ((char*)((ng10)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB16;

LAB17:    t3 = ((char*)((ng11)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB18;

LAB19:    t3 = ((char*)((ng7)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB20;

LAB21:    t3 = ((char*)((ng12)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB22;

LAB23:    t3 = ((char*)((ng13)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB24;

LAB25:    t3 = ((char*)((ng14)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB26;

LAB27:    t3 = ((char*)((ng15)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB28;

LAB29:    t3 = ((char*)((ng27)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 4, t3, 4);
    if (t7 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:    xsi_set_current_line(783, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB34:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(728, ng0);
    t8 = (t1 + 21520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t12 = (t1 + 21680);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t11, 0, 8);
    t15 = (t11 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 8);
    *((unsigned int *)t11) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 8);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t21 & 255U);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 & 255U);
    t23 = ((char*)((ng26)));
    memset(t24, 0, 8);
    t25 = (t11 + 4);
    t26 = (t23 + 4);
    t27 = *((unsigned int *)t11);
    t28 = *((unsigned int *)t23);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t25);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t26);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB38;

LAB35:    if (t36 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t24) = 1;

LAB38:    t41 = *((unsigned int *)t10);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t44 = (t10 + 4);
    t45 = (t24 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB39;

LAB40:
LAB41:    t72 = (t40 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t40);
    t76 = (t75 & t74);
    t77 = (t76 != 0);
    if (t77 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(731, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB44:    goto LAB34;

LAB6:    xsi_set_current_line(733, ng0);
    t4 = (t1 + 21360);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng3)));
    memset(t11, 0, 8);
    t10 = (t8 + 4);
    t12 = (t9 + 4);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t9);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t12);
    t22 = (t20 ^ t21);
    t27 = (t19 | t22);
    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t12);
    t30 = (t28 | t29);
    t31 = (~(t30));
    t32 = (t27 & t31);
    if (t32 != 0)
        goto LAB48;

LAB45:    if (t30 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t11) = 1;

LAB48:    t14 = (t11 + 4);
    t33 = *((unsigned int *)t14);
    t34 = (~(t33));
    t35 = *((unsigned int *)t11);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(736, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB51:    goto LAB34;

LAB8:    xsi_set_current_line(738, ng0);
    t4 = (t1 + 21840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(741, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB54:    goto LAB34;

LAB10:    xsi_set_current_line(743, ng0);
    t4 = ((char*)((ng8)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB12:    xsi_set_current_line(745, ng0);
    t4 = ((char*)((ng9)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB14:    xsi_set_current_line(747, ng0);
    t4 = (t1 + 21840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(750, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB57:    goto LAB34;

LAB16:    xsi_set_current_line(752, ng0);
    t4 = ((char*)((ng11)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB18:    xsi_set_current_line(754, ng0);
    t4 = ((char*)((ng7)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB20:    xsi_set_current_line(756, ng0);
    t4 = (t1 + 21840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB58;

LAB59:    xsi_set_current_line(759, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB60:    goto LAB34;

LAB22:    xsi_set_current_line(761, ng0);
    t4 = ((char*)((ng13)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB24:    xsi_set_current_line(763, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB26:    xsi_set_current_line(774, ng0);
    t4 = (t1 + 21840);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(777, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t1 + 21040);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB63:    goto LAB34;

LAB28:    xsi_set_current_line(779, ng0);
    t4 = ((char*)((ng27)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB30:    xsi_set_current_line(781, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t1 + 21040);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 4);
    goto LAB34;

LAB37:    t39 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB38;

LAB39:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t10 + 4);
    t55 = (t24 + 4);
    t56 = *((unsigned int *)t10);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & t66);
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB41;

LAB42:    xsi_set_current_line(729, ng0);
    t78 = ((char*)((ng14)));
    t79 = (t1 + 21040);
    xsi_vlogvar_assign_value(t79, t78, 0, 0, 4);
    goto LAB44;

LAB47:    t13 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(734, ng0);
    t15 = ((char*)((ng4)));
    t16 = (t1 + 21040);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 4);
    goto LAB51;

LAB52:    xsi_set_current_line(739, ng0);
    t10 = ((char*)((ng6)));
    t12 = (t1 + 21040);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 4);
    goto LAB54;

LAB55:    xsi_set_current_line(748, ng0);
    t10 = ((char*)((ng10)));
    t12 = (t1 + 21040);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 4);
    goto LAB57;

LAB58:    xsi_set_current_line(757, ng0);
    t10 = ((char*)((ng12)));
    t12 = (t1 + 21040);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 4);
    goto LAB60;

LAB61:    xsi_set_current_line(775, ng0);
    t10 = ((char*)((ng15)));
    t12 = (t1 + 21040);
    xsi_vlogvar_assign_value(t12, t10, 0, 0, 4);
    goto LAB63;

}

static void Always_143_0(char *t0)
{
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;

LAB0:    t1 = (t0 + 22760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 31760);
    *((int *)t2) = 1;
    t3 = (t0 + 22792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(143, ng0);

LAB5:    xsi_set_current_line(144, ng0);
    t4 = (t0 + 6720U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(152, ng0);

LAB10:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 18320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 18480);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t0 + 18640);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 6880U);
    t17 = *((char **)t16);
    t16 = (t0 + 7040U);
    t18 = *((char **)t16);
    t16 = (t0 + 9600U);
    t19 = *((char **)t16);
    t16 = (t0 + 9760U);
    t20 = *((char **)t16);
    t16 = (t0 + 22568);
    t21 = (t0 + 5064);
    t22 = xsi_create_subprogram_invocation(t16, 0, t0, t21, 0, 0);
    t23 = (t0 + 19600);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 4);
    t24 = (t0 + 19760);
    xsi_vlogvar_assign_value(t24, t12, 0, 0, 9);
    t25 = (t0 + 19920);
    xsi_vlogvar_assign_value(t25, t15, 0, 0, 9);
    t26 = (t0 + 20080);
    xsi_vlogvar_assign_value(t26, t17, 0, 0, 1);
    t27 = (t0 + 20240);
    xsi_vlogvar_assign_value(t27, t18, 0, 0, 16);
    t28 = (t0 + 20400);
    xsi_vlogvar_assign_value(t28, t19, 0, 0, 1);
    t29 = (t0 + 20560);
    xsi_vlogvar_assign_value(t29, t20, 0, 0, 1);

LAB11:    t30 = (t0 + 22664);
    t31 = *((char **)t30);
    t32 = (t31 + 80U);
    t33 = *((char **)t32);
    t34 = (t33 + 272U);
    t35 = *((char **)t34);
    t36 = (t35 + 0U);
    t37 = *((char **)t36);
    t38 = ((int  (*)(char *, char *))t37)(t0, t31);
    if (t38 != 0)
        goto LAB13;

LAB12:    t31 = (t0 + 22664);
    t39 = *((char **)t31);
    t31 = (t0 + 19440);
    t40 = (t31 + 56U);
    t41 = *((char **)t40);
    memcpy(t42, t41, 8);
    t43 = (t0 + 5064);
    t44 = (t0 + 22568);
    t45 = 0;
    xsi_delete_subprogram_invocation(t43, t39, t0, t44, t45);
    t46 = (t0 + 18320);
    xsi_vlogvar_wait_assign_value(t46, t42, 0, 0, 4, 0LL);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 18320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB14:    t5 = ((char*)((ng1)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t38 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng8)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng9)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng10)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng11)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng7)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng12)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng13)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng14)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng15)));
    t38 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t38 == 1)
        goto LAB39;

LAB40:
LAB41:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(144, ng0);

LAB9:    xsi_set_current_line(145, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 18320);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 18480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 18640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t30 = (t0 + 22760U);
    *((char **)t30) = &&LAB11;
    goto LAB1;

LAB15:    xsi_set_current_line(156, ng0);

LAB42:    xsi_set_current_line(157, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB17:    xsi_set_current_line(161, ng0);

LAB43:    xsi_set_current_line(162, ng0);
    t3 = (t0 + 7200U);
    t5 = *((char **)t3);
    memset(t42, 0, 8);
    t3 = (t42 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    *((unsigned int *)t42) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t10 & 511U);
    t47 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t47 & 511U);
    t12 = (t0 + 18640);
    xsi_vlogvar_wait_assign_value(t12, t42, 0, 0, 9, 0LL);
    goto LAB41;

LAB19:    xsi_set_current_line(164, ng0);

LAB44:    goto LAB41;

LAB21:    xsi_set_current_line(167, ng0);

LAB45:    xsi_set_current_line(168, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(169, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 18160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB23:    xsi_set_current_line(171, ng0);

LAB46:    xsi_set_current_line(172, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB41;

LAB25:    xsi_set_current_line(174, ng0);

LAB47:    xsi_set_current_line(175, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB27:    xsi_set_current_line(178, ng0);

LAB48:    xsi_set_current_line(179, ng0);
    t3 = (t0 + 17840);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    memset(t42, 0, 8);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t11);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB52;

LAB50:    if (*((unsigned int *)t12) == 0)
        goto LAB49;

LAB51:    t13 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t13) = 1;

LAB52:    t14 = (t42 + 4);
    t15 = (t11 + 4);
    t47 = *((unsigned int *)t11);
    t48 = (~(t47));
    *((unsigned int *)t42) = t48;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB54;

LAB53:    t53 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t53 & 1U);
    t54 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t54 & 1U);
    t16 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t16, t42, 0, 0, 1, 0LL);
    goto LAB41;

LAB29:    xsi_set_current_line(181, ng0);

LAB55:    xsi_set_current_line(182, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 18480);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 9, t5, 9, t11, 9);
    t12 = (t0 + 18480);
    xsi_vlogvar_wait_assign_value(t12, t42, 0, 0, 9, 0LL);
    goto LAB41;

LAB31:    xsi_set_current_line(185, ng0);

LAB56:    xsi_set_current_line(186, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB33:    xsi_set_current_line(189, ng0);

LAB57:    xsi_set_current_line(190, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB41;

LAB35:    xsi_set_current_line(192, ng0);

LAB58:    xsi_set_current_line(193, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18000);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB41;

LAB37:    xsi_set_current_line(196, ng0);

LAB59:    xsi_set_current_line(197, ng0);
    t3 = (t0 + 17840);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    memset(t42, 0, 8);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t11);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB63;

LAB61:    if (*((unsigned int *)t12) == 0)
        goto LAB60;

LAB62:    t13 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t13) = 1;

LAB63:    t14 = (t42 + 4);
    t15 = (t11 + 4);
    t47 = *((unsigned int *)t11);
    t48 = (~(t47));
    *((unsigned int *)t42) = t48;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB65;

LAB64:    t53 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t53 & 1U);
    t54 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t54 & 1U);
    t16 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t16, t42, 0, 0, 1, 0LL);
    goto LAB41;

LAB39:    xsi_set_current_line(199, ng0);

LAB66:    xsi_set_current_line(200, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 17840);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 18480);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t42, 0, 8);
    xsi_vlog_unsigned_minus(t42, 9, t5, 9, t11, 9);
    t12 = (t0 + 18480);
    xsi_vlogvar_wait_assign_value(t12, t42, 0, 0, 9, 0LL);
    goto LAB41;

LAB49:    *((unsigned int *)t42) = 1;
    goto LAB52;

LAB54:    t49 = *((unsigned int *)t42);
    t50 = *((unsigned int *)t15);
    *((unsigned int *)t42) = (t49 | t50);
    t51 = *((unsigned int *)t14);
    t52 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t51 | t52);
    goto LAB53;

LAB60:    *((unsigned int *)t42) = 1;
    goto LAB63;

LAB65:    t49 = *((unsigned int *)t42);
    t50 = *((unsigned int *)t15);
    *((unsigned int *)t42) = (t49 | t50);
    t51 = *((unsigned int *)t14);
    t52 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t51 | t52);
    goto LAB64;

}

static void Cont_378_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 23008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(378, ng0);
    t2 = (t0 + 8960U);
    t4 = *((char **)t2);
    t2 = (t0 + 9280U);
    t5 = *((char **)t2);
    t2 = (t0 + 8640U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t3, 5, 5, 3U, t6, 1, t5, 2, t4, 2);
    t2 = (t0 + 31904);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 31U;
    t12 = t11;
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t2, 0, 4);
    t19 = (t0 + 31776);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Cont_379_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;

LAB0:    t1 = (t0 + 23256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(379, ng0);
    t2 = (t0 + 9120U);
    t4 = *((char **)t2);
    t2 = (t0 + 9440U);
    t5 = *((char **)t2);
    t2 = (t0 + 8800U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t3, 5, 5, 3U, t6, 1, t5, 2, t4, 2);
    t2 = (t0 + 31968);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memset(t10, 0, 8);
    t11 = 31U;
    t12 = t11;
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t11 = (t11 & t14);
    t15 = *((unsigned int *)t13);
    t12 = (t12 & t15);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 | t11);
    t18 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t18 | t12);
    xsi_driver_vfirst_trans(t2, 0, 4);
    t19 = (t0 + 31792);
    *((int *)t19) = 1;

LAB1:    return;
}

static void Always_383_3(char *t0)
{
    char t4[8];
    char t7[8];
    char t17[8];
    char t27[8];
    char t37[8];
    char t47[8];
    char t57[8];
    char t67[8];
    char t77[8];
    char t87[8];
    char t97[8];
    char t107[8];
    char t117[8];
    char t127[8];
    char t137[8];
    char t147[8];
    char t157[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    char *t125;
    char *t126;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    char *t146;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    char *t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;

LAB0:    t1 = (t0 + 23504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(383, ng0);
    t2 = (t0 + 31808);
    *((int *)t2) = 1;
    t3 = (t0 + 23536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(383, ng0);

LAB5:    xsi_set_current_line(385, ng0);
    t5 = (t0 + 11040U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 15);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 15);
    t14 = (t13 & 1);
    *((unsigned int *)t5) = t14;
    t15 = (t0 + 11040U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t15 = (t17 + 4);
    t18 = (t16 + 4);
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 7);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 7);
    t24 = (t23 & 1);
    *((unsigned int *)t15) = t24;
    t25 = (t0 + 11040U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t27 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 14);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 >> 14);
    t34 = (t33 & 1);
    *((unsigned int *)t25) = t34;
    t35 = (t0 + 11040U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    t35 = (t37 + 4);
    t38 = (t36 + 4);
    t39 = *((unsigned int *)t36);
    t40 = (t39 >> 6);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 >> 6);
    t44 = (t43 & 1);
    *((unsigned int *)t35) = t44;
    t45 = (t0 + 11040U);
    t46 = *((char **)t45);
    memset(t47, 0, 8);
    t45 = (t47 + 4);
    t48 = (t46 + 4);
    t49 = *((unsigned int *)t46);
    t50 = (t49 >> 13);
    t51 = (t50 & 1);
    *((unsigned int *)t47) = t51;
    t52 = *((unsigned int *)t48);
    t53 = (t52 >> 13);
    t54 = (t53 & 1);
    *((unsigned int *)t45) = t54;
    t55 = (t0 + 11040U);
    t56 = *((char **)t55);
    memset(t57, 0, 8);
    t55 = (t57 + 4);
    t58 = (t56 + 4);
    t59 = *((unsigned int *)t56);
    t60 = (t59 >> 5);
    t61 = (t60 & 1);
    *((unsigned int *)t57) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 >> 5);
    t64 = (t63 & 1);
    *((unsigned int *)t55) = t64;
    t65 = (t0 + 11040U);
    t66 = *((char **)t65);
    memset(t67, 0, 8);
    t65 = (t67 + 4);
    t68 = (t66 + 4);
    t69 = *((unsigned int *)t66);
    t70 = (t69 >> 12);
    t71 = (t70 & 1);
    *((unsigned int *)t67) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 >> 12);
    t74 = (t73 & 1);
    *((unsigned int *)t65) = t74;
    t75 = (t0 + 11040U);
    t76 = *((char **)t75);
    memset(t77, 0, 8);
    t75 = (t77 + 4);
    t78 = (t76 + 4);
    t79 = *((unsigned int *)t76);
    t80 = (t79 >> 4);
    t81 = (t80 & 1);
    *((unsigned int *)t77) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 >> 4);
    t84 = (t83 & 1);
    *((unsigned int *)t75) = t84;
    t85 = (t0 + 11040U);
    t86 = *((char **)t85);
    memset(t87, 0, 8);
    t85 = (t87 + 4);
    t88 = (t86 + 4);
    t89 = *((unsigned int *)t86);
    t90 = (t89 >> 11);
    t91 = (t90 & 1);
    *((unsigned int *)t87) = t91;
    t92 = *((unsigned int *)t88);
    t93 = (t92 >> 11);
    t94 = (t93 & 1);
    *((unsigned int *)t85) = t94;
    t95 = (t0 + 11040U);
    t96 = *((char **)t95);
    memset(t97, 0, 8);
    t95 = (t97 + 4);
    t98 = (t96 + 4);
    t99 = *((unsigned int *)t96);
    t100 = (t99 >> 3);
    t101 = (t100 & 1);
    *((unsigned int *)t97) = t101;
    t102 = *((unsigned int *)t98);
    t103 = (t102 >> 3);
    t104 = (t103 & 1);
    *((unsigned int *)t95) = t104;
    t105 = (t0 + 11040U);
    t106 = *((char **)t105);
    memset(t107, 0, 8);
    t105 = (t107 + 4);
    t108 = (t106 + 4);
    t109 = *((unsigned int *)t106);
    t110 = (t109 >> 10);
    t111 = (t110 & 1);
    *((unsigned int *)t107) = t111;
    t112 = *((unsigned int *)t108);
    t113 = (t112 >> 10);
    t114 = (t113 & 1);
    *((unsigned int *)t105) = t114;
    t115 = (t0 + 11040U);
    t116 = *((char **)t115);
    memset(t117, 0, 8);
    t115 = (t117 + 4);
    t118 = (t116 + 4);
    t119 = *((unsigned int *)t116);
    t120 = (t119 >> 2);
    t121 = (t120 & 1);
    *((unsigned int *)t117) = t121;
    t122 = *((unsigned int *)t118);
    t123 = (t122 >> 2);
    t124 = (t123 & 1);
    *((unsigned int *)t115) = t124;
    t125 = (t0 + 11040U);
    t126 = *((char **)t125);
    memset(t127, 0, 8);
    t125 = (t127 + 4);
    t128 = (t126 + 4);
    t129 = *((unsigned int *)t126);
    t130 = (t129 >> 9);
    t131 = (t130 & 1);
    *((unsigned int *)t127) = t131;
    t132 = *((unsigned int *)t128);
    t133 = (t132 >> 9);
    t134 = (t133 & 1);
    *((unsigned int *)t125) = t134;
    t135 = (t0 + 11040U);
    t136 = *((char **)t135);
    memset(t137, 0, 8);
    t135 = (t137 + 4);
    t138 = (t136 + 4);
    t139 = *((unsigned int *)t136);
    t140 = (t139 >> 1);
    t141 = (t140 & 1);
    *((unsigned int *)t137) = t141;
    t142 = *((unsigned int *)t138);
    t143 = (t142 >> 1);
    t144 = (t143 & 1);
    *((unsigned int *)t135) = t144;
    t145 = (t0 + 11040U);
    t146 = *((char **)t145);
    memset(t147, 0, 8);
    t145 = (t147 + 4);
    t148 = (t146 + 4);
    t149 = *((unsigned int *)t146);
    t150 = (t149 >> 8);
    t151 = (t150 & 1);
    *((unsigned int *)t147) = t151;
    t152 = *((unsigned int *)t148);
    t153 = (t152 >> 8);
    t154 = (t153 & 1);
    *((unsigned int *)t145) = t154;
    t155 = (t0 + 11040U);
    t156 = *((char **)t155);
    memset(t157, 0, 8);
    t155 = (t157 + 4);
    t158 = (t156 + 4);
    t159 = *((unsigned int *)t156);
    t160 = (t159 >> 0);
    t161 = (t160 & 1);
    *((unsigned int *)t157) = t161;
    t162 = *((unsigned int *)t158);
    t163 = (t162 >> 0);
    t164 = (t163 & 1);
    *((unsigned int *)t155) = t164;
    xsi_vlogtype_concat(t4, 16, 16, 16U, t157, 1, t147, 1, t137, 1, t127, 1, t117, 1, t107, 1, t97, 1, t87, 1, t77, 1, t67, 1, t57, 1, t47, 1, t37, 1, t27, 1, t17, 1, t7, 1);
    t165 = (t0 + 17360);
    xsi_vlogvar_wait_assign_value(t165, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(389, ng0);
    t2 = (t0 + 11040U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t5 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t5);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t6 = (t0 + 11040U);
    t8 = *((char **)t6);
    memset(t17, 0, 8);
    t6 = (t17 + 4);
    t15 = (t8 + 4);
    t19 = *((unsigned int *)t8);
    t20 = (t19 >> 23);
    t21 = (t20 & 1);
    *((unsigned int *)t17) = t21;
    t22 = *((unsigned int *)t15);
    t23 = (t22 >> 23);
    t24 = (t23 & 1);
    *((unsigned int *)t6) = t24;
    t16 = (t0 + 11040U);
    t18 = *((char **)t16);
    memset(t27, 0, 8);
    t16 = (t27 + 4);
    t25 = (t18 + 4);
    t29 = *((unsigned int *)t18);
    t30 = (t29 >> 30);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t25);
    t33 = (t32 >> 30);
    t34 = (t33 & 1);
    *((unsigned int *)t16) = t34;
    t26 = (t0 + 11040U);
    t28 = *((char **)t26);
    memset(t37, 0, 8);
    t26 = (t37 + 4);
    t35 = (t28 + 4);
    t39 = *((unsigned int *)t28);
    t40 = (t39 >> 22);
    t41 = (t40 & 1);
    *((unsigned int *)t37) = t41;
    t42 = *((unsigned int *)t35);
    t43 = (t42 >> 22);
    t44 = (t43 & 1);
    *((unsigned int *)t26) = t44;
    t36 = (t0 + 11040U);
    t38 = *((char **)t36);
    memset(t47, 0, 8);
    t36 = (t47 + 4);
    t45 = (t38 + 4);
    t49 = *((unsigned int *)t38);
    t50 = (t49 >> 29);
    t51 = (t50 & 1);
    *((unsigned int *)t47) = t51;
    t52 = *((unsigned int *)t45);
    t53 = (t52 >> 29);
    t54 = (t53 & 1);
    *((unsigned int *)t36) = t54;
    t46 = (t0 + 11040U);
    t48 = *((char **)t46);
    memset(t57, 0, 8);
    t46 = (t57 + 4);
    t55 = (t48 + 4);
    t59 = *((unsigned int *)t48);
    t60 = (t59 >> 21);
    t61 = (t60 & 1);
    *((unsigned int *)t57) = t61;
    t62 = *((unsigned int *)t55);
    t63 = (t62 >> 21);
    t64 = (t63 & 1);
    *((unsigned int *)t46) = t64;
    t56 = (t0 + 11040U);
    t58 = *((char **)t56);
    memset(t67, 0, 8);
    t56 = (t67 + 4);
    t65 = (t58 + 4);
    t69 = *((unsigned int *)t58);
    t70 = (t69 >> 28);
    t71 = (t70 & 1);
    *((unsigned int *)t67) = t71;
    t72 = *((unsigned int *)t65);
    t73 = (t72 >> 28);
    t74 = (t73 & 1);
    *((unsigned int *)t56) = t74;
    t66 = (t0 + 11040U);
    t68 = *((char **)t66);
    memset(t77, 0, 8);
    t66 = (t77 + 4);
    t75 = (t68 + 4);
    t79 = *((unsigned int *)t68);
    t80 = (t79 >> 20);
    t81 = (t80 & 1);
    *((unsigned int *)t77) = t81;
    t82 = *((unsigned int *)t75);
    t83 = (t82 >> 20);
    t84 = (t83 & 1);
    *((unsigned int *)t66) = t84;
    t76 = (t0 + 11040U);
    t78 = *((char **)t76);
    memset(t87, 0, 8);
    t76 = (t87 + 4);
    t85 = (t78 + 4);
    t89 = *((unsigned int *)t78);
    t90 = (t89 >> 27);
    t91 = (t90 & 1);
    *((unsigned int *)t87) = t91;
    t92 = *((unsigned int *)t85);
    t93 = (t92 >> 27);
    t94 = (t93 & 1);
    *((unsigned int *)t76) = t94;
    t86 = (t0 + 11040U);
    t88 = *((char **)t86);
    memset(t97, 0, 8);
    t86 = (t97 + 4);
    t95 = (t88 + 4);
    t99 = *((unsigned int *)t88);
    t100 = (t99 >> 19);
    t101 = (t100 & 1);
    *((unsigned int *)t97) = t101;
    t102 = *((unsigned int *)t95);
    t103 = (t102 >> 19);
    t104 = (t103 & 1);
    *((unsigned int *)t86) = t104;
    t96 = (t0 + 11040U);
    t98 = *((char **)t96);
    memset(t107, 0, 8);
    t96 = (t107 + 4);
    t105 = (t98 + 4);
    t109 = *((unsigned int *)t98);
    t110 = (t109 >> 26);
    t111 = (t110 & 1);
    *((unsigned int *)t107) = t111;
    t112 = *((unsigned int *)t105);
    t113 = (t112 >> 26);
    t114 = (t113 & 1);
    *((unsigned int *)t96) = t114;
    t106 = (t0 + 11040U);
    t108 = *((char **)t106);
    memset(t117, 0, 8);
    t106 = (t117 + 4);
    t115 = (t108 + 4);
    t119 = *((unsigned int *)t108);
    t120 = (t119 >> 18);
    t121 = (t120 & 1);
    *((unsigned int *)t117) = t121;
    t122 = *((unsigned int *)t115);
    t123 = (t122 >> 18);
    t124 = (t123 & 1);
    *((unsigned int *)t106) = t124;
    t116 = (t0 + 11040U);
    t118 = *((char **)t116);
    memset(t127, 0, 8);
    t116 = (t127 + 4);
    t125 = (t118 + 4);
    t129 = *((unsigned int *)t118);
    t130 = (t129 >> 25);
    t131 = (t130 & 1);
    *((unsigned int *)t127) = t131;
    t132 = *((unsigned int *)t125);
    t133 = (t132 >> 25);
    t134 = (t133 & 1);
    *((unsigned int *)t116) = t134;
    t126 = (t0 + 11040U);
    t128 = *((char **)t126);
    memset(t137, 0, 8);
    t126 = (t137 + 4);
    t135 = (t128 + 4);
    t139 = *((unsigned int *)t128);
    t140 = (t139 >> 17);
    t141 = (t140 & 1);
    *((unsigned int *)t137) = t141;
    t142 = *((unsigned int *)t135);
    t143 = (t142 >> 17);
    t144 = (t143 & 1);
    *((unsigned int *)t126) = t144;
    t136 = (t0 + 11040U);
    t138 = *((char **)t136);
    memset(t147, 0, 8);
    t136 = (t147 + 4);
    t145 = (t138 + 4);
    t149 = *((unsigned int *)t138);
    t150 = (t149 >> 24);
    t151 = (t150 & 1);
    *((unsigned int *)t147) = t151;
    t152 = *((unsigned int *)t145);
    t153 = (t152 >> 24);
    t154 = (t153 & 1);
    *((unsigned int *)t136) = t154;
    t146 = (t0 + 11040U);
    t148 = *((char **)t146);
    memset(t157, 0, 8);
    t146 = (t157 + 4);
    t155 = (t148 + 4);
    t159 = *((unsigned int *)t148);
    t160 = (t159 >> 16);
    t161 = (t160 & 1);
    *((unsigned int *)t157) = t161;
    t162 = *((unsigned int *)t155);
    t163 = (t162 >> 16);
    t164 = (t163 & 1);
    *((unsigned int *)t146) = t164;
    xsi_vlogtype_concat(t4, 16, 16, 16U, t157, 1, t147, 1, t137, 1, t127, 1, t117, 1, t107, 1, t97, 1, t87, 1, t77, 1, t67, 1, t57, 1, t47, 1, t37, 1, t27, 1, t17, 1, t7, 1);
    t156 = (t0 + 17520);
    xsi_vlogvar_wait_assign_value(t156, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(397, ng0);
    t2 = (t0 + 11040U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 8);
    t6 = (t3 + 12);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t8 = (t0 + 17680);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 4, 0LL);
    goto LAB2;

}

static void Always_790_4(char *t0)
{
    char t36[8];
    char t41[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;

LAB0:    t1 = (t0 + 23752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(790, ng0);
    t2 = (t0 + 31824);
    *((int *)t2) = 1;
    t3 = (t0 + 23784);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(790, ng0);

LAB5:    xsi_set_current_line(791, ng0);
    t4 = (t0 + 6720U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(796, ng0);

LAB10:    xsi_set_current_line(797, ng0);
    t2 = (t0 + 19120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 19280);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t0 + 6880U);
    t14 = *((char **)t13);
    t13 = (t0 + 7040U);
    t15 = *((char **)t13);
    t13 = (t0 + 11680U);
    t16 = *((char **)t13);
    t13 = (t0 + 23560);
    t17 = (t0 + 5928);
    t18 = xsi_create_subprogram_invocation(t13, 0, t0, t17, 0, 0);
    t19 = (t0 + 21200);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 4);
    t20 = (t0 + 21360);
    xsi_vlogvar_assign_value(t20, t12, 0, 0, 8);
    t21 = (t0 + 21520);
    xsi_vlogvar_assign_value(t21, t14, 0, 0, 1);
    t22 = (t0 + 21680);
    xsi_vlogvar_assign_value(t22, t15, 0, 0, 16);
    t23 = (t0 + 21840);
    xsi_vlogvar_assign_value(t23, t16, 0, 0, 1);

LAB11:    t24 = (t0 + 23656);
    t25 = *((char **)t24);
    t26 = (t25 + 80U);
    t27 = *((char **)t26);
    t28 = (t27 + 272U);
    t29 = *((char **)t28);
    t30 = (t29 + 0U);
    t31 = *((char **)t30);
    t32 = ((int  (*)(char *, char *))t31)(t0, t25);
    if (t32 != 0)
        goto LAB13;

LAB12:    t25 = (t0 + 23656);
    t33 = *((char **)t25);
    t25 = (t0 + 21040);
    t34 = (t25 + 56U);
    t35 = *((char **)t34);
    memcpy(t36, t35, 8);
    t37 = (t0 + 5928);
    t38 = (t0 + 23560);
    t39 = 0;
    xsi_delete_subprogram_invocation(t37, t33, t0, t38, t39);
    t40 = (t0 + 19120);
    xsi_vlogvar_wait_assign_value(t40, t36, 0, 0, 4, 0LL);
    xsi_set_current_line(798, ng0);
    t2 = (t0 + 19120);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB14:    t5 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t5, 4);
    if (t32 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng8)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng9)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng11)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng7)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng13)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng14)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng15)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng27)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t32 == 1)
        goto LAB41;

LAB42:
LAB43:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(791, ng0);

LAB9:    xsi_set_current_line(792, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 19120);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(793, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 19280);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(794, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t24 = (t0 + 23752U);
    *((char **)t24) = &&LAB11;
    goto LAB1;

LAB15:    xsi_set_current_line(799, ng0);

LAB44:    xsi_set_current_line(800, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB43;

LAB17:    xsi_set_current_line(803, ng0);

LAB45:    xsi_set_current_line(804, ng0);
    t3 = (t0 + 19280);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng3)));
    memset(t36, 0, 8);
    xsi_vlog_unsigned_minus(t36, 8, t11, 8, t12, 8);
    t13 = (t0 + 19280);
    xsi_vlogvar_wait_assign_value(t13, t36, 0, 0, 8, 0LL);
    goto LAB43;

LAB19:    xsi_set_current_line(806, ng0);

LAB46:    xsi_set_current_line(807, ng0);
    t3 = ((char*)((ng30)));
    t5 = (t0 + 18960);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    goto LAB43;

LAB21:    xsi_set_current_line(809, ng0);

LAB47:    xsi_set_current_line(810, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB23:    xsi_set_current_line(812, ng0);

LAB48:    xsi_set_current_line(813, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB25:    xsi_set_current_line(816, ng0);

LAB49:    xsi_set_current_line(817, ng0);
    t3 = ((char*)((ng31)));
    t5 = (t0 + 18960);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    goto LAB43;

LAB27:    xsi_set_current_line(819, ng0);

LAB50:    xsi_set_current_line(820, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB29:    xsi_set_current_line(822, ng0);

LAB51:    xsi_set_current_line(823, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB31:    xsi_set_current_line(830, ng0);

LAB52:    xsi_set_current_line(831, ng0);
    t3 = ((char*)((ng32)));
    t5 = (t0 + 18960);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 16, 0LL);
    goto LAB43;

LAB33:    xsi_set_current_line(833, ng0);

LAB53:    xsi_set_current_line(834, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB35:    xsi_set_current_line(836, ng0);

LAB54:    xsi_set_current_line(837, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB37:    xsi_set_current_line(850, ng0);

LAB55:    xsi_set_current_line(851, ng0);
    t3 = (t0 + 7200U);
    t5 = *((char **)t3);
    memset(t41, 0, 8);
    t3 = (t41 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    *((unsigned int *)t41) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t10 & 255U);
    t42 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t42 & 255U);
    t12 = (t0 + 7040U);
    t13 = *((char **)t12);
    memset(t43, 0, 8);
    t12 = (t43 + 4);
    t14 = (t13 + 4);
    t44 = *((unsigned int *)t13);
    t45 = (t44 >> 0);
    *((unsigned int *)t43) = t45;
    t46 = *((unsigned int *)t14);
    t47 = (t46 >> 0);
    *((unsigned int *)t12) = t47;
    t48 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t48 & 127U);
    t49 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t49 & 127U);
    t15 = ((char*)((ng1)));
    xsi_vlogtype_concat(t36, 16, 16, 3U, t15, 1, t43, 7, t41, 8);
    t16 = (t0 + 18960);
    xsi_vlogvar_wait_assign_value(t16, t36, 0, 0, 16, 0LL);
    goto LAB43;

LAB39:    xsi_set_current_line(853, ng0);

LAB56:    xsi_set_current_line(854, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

LAB41:    xsi_set_current_line(856, ng0);

LAB57:    xsi_set_current_line(857, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 18800);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB43;

}

static void implSig1_execute(char *t0)
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

LAB0:    t1 = (t0 + 24000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 32032);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig2_execute(char *t0)
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

LAB0:    t1 = (t0 + 24248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32096);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig3_execute(char *t0)
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

LAB0:    t1 = (t0 + 24496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32160);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig4_execute(char *t0)
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

LAB0:    t1 = (t0 + 24744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 32224);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig5_execute(char *t0)
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

LAB0:    t1 = (t0 + 24992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig6_execute(char *t0)
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

LAB0:    t1 = (t0 + 25240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 32352);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig7_execute(char *t0)
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

LAB0:    t1 = (t0 + 25488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32416);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig8_execute(char *t0)
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

LAB0:    t1 = (t0 + 25736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 32480);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig9_execute(char *t0)
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

LAB0:    t1 = (t0 + 25984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32544);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig10_execute(char *t0)
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

LAB0:    t1 = (t0 + 26232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32608);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig11_execute(char *t0)
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

LAB0:    t1 = (t0 + 26480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32672);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig12_execute(char *t0)
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

LAB0:    t1 = (t0 + 26728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32736);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig13_execute(char *t0)
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

LAB0:    t1 = (t0 + 26976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 32800);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig14_execute(char *t0)
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

LAB0:    t1 = (t0 + 27224U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32864);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig15_execute(char *t0)
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

LAB0:    t1 = (t0 + 27472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32928);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig16_execute(char *t0)
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

LAB0:    t1 = (t0 + 27720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 32992);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig17_execute(char *t0)
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

LAB0:    t1 = (t0 + 27968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33056);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig18_execute(char *t0)
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

LAB0:    t1 = (t0 + 28216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 33120);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig19_execute(char *t0)
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

LAB0:    t1 = (t0 + 28464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33184);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig20_execute(char *t0)
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

LAB0:    t1 = (t0 + 28712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33248);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig21_execute(char *t0)
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

LAB0:    t1 = (t0 + 28960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33312);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig22_execute(char *t0)
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

LAB0:    t1 = (t0 + 29208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33376);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig23_execute(char *t0)
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

LAB0:    t1 = (t0 + 29456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 33440);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig24_execute(char *t0)
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

LAB0:    t1 = (t0 + 29704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33504);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig25_execute(char *t0)
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

LAB0:    t1 = (t0 + 29952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33568);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig26_execute(char *t0)
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

LAB0:    t1 = (t0 + 30200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33632);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig27_execute(char *t0)
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

LAB0:    t1 = (t0 + 30448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33696);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig28_execute(char *t0)
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

LAB0:    t1 = (t0 + 30696U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 33760);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig29_execute(char *t0)
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

LAB0:    t1 = (t0 + 30944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33824);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig30_execute(char *t0)
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

LAB0:    t1 = (t0 + 31192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig31_execute(char *t0)
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

LAB0:    t1 = (t0 + 31440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 33952);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void work_m_00000000002402727685_3925655535_init()
{
	static char *pe[] = {(void *)Always_143_0,(void *)Cont_378_1,(void *)Cont_379_2,(void *)Always_383_3,(void *)Always_790_4,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute,(void *)implSig6_execute,(void *)implSig7_execute,(void *)implSig8_execute,(void *)implSig9_execute,(void *)implSig10_execute,(void *)implSig11_execute,(void *)implSig12_execute,(void *)implSig13_execute,(void *)implSig14_execute,(void *)implSig15_execute,(void *)implSig16_execute,(void *)implSig17_execute,(void *)implSig18_execute,(void *)implSig19_execute,(void *)implSig20_execute,(void *)implSig21_execute,(void *)implSig22_execute,(void *)implSig23_execute,(void *)implSig24_execute,(void *)implSig25_execute,(void *)implSig26_execute,(void *)implSig27_execute,(void *)implSig28_execute,(void *)implSig29_execute,(void *)implSig30_execute,(void *)implSig31_execute};
	static char *se[] = {(void *)sp_PS_next_state,(void *)sp_delay_value,(void *)sp_next_state};
	xsi_register_didat("work_m_00000000002402727685_3925655535", "isim/LTC2195_tb_isim_beh.exe.sim/work/m_00000000002402727685_3925655535.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
