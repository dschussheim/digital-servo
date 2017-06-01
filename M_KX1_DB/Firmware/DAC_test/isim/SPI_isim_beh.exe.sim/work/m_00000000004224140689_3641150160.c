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
static const char *ng0 = "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/SPI.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {25U, 0U};
static int ng8[] = {1, 0};
static int ng9[] = {3, 0};
static int ng10[] = {0, 0};
static int ng11[] = {7, 0};
static int ng12[] = {8, 0};
static int ng13[] = {16, 0};



static int sp_next_state(char *t1, char *t2)
{
    char t10[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
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
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;

LAB0:    t0 = 1;
    xsi_set_current_line(74, ng0);

LAB2:    xsi_set_current_line(75, ng0);
    t3 = (t1 + 5480);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);

LAB3:    t6 = ((char*)((ng1)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t6, 3);
    if (t7 == 1)
        goto LAB4;

LAB5:    t3 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB6;

LAB7:    t3 = ((char*)((ng3)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = ((char*)((ng4)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB10;

LAB11:    t3 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB12;

LAB13:    t3 = ((char*)((ng6)));
    t7 = xsi_vlog_unsigned_case_compare(t5, 3, t3, 3);
    if (t7 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t1 + 5320);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);

LAB18:    t0 = 0;

LAB1:    return t0;
LAB4:    xsi_set_current_line(77, ng0);
    t8 = ((char*)((ng1)));
    t9 = (t1 + 5320);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 3);
    goto LAB18;

LAB6:    xsi_set_current_line(79, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t1 + 5320);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 3);
    goto LAB18;

LAB8:    xsi_set_current_line(81, ng0);
    t4 = ((char*)((ng4)));
    t6 = (t1 + 5320);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 3);
    goto LAB18;

LAB10:    xsi_set_current_line(83, ng0);
    t4 = ((char*)((ng5)));
    t6 = (t1 + 5320);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 3);
    goto LAB18;

LAB12:    xsi_set_current_line(85, ng0);
    t4 = (t1 + 5640);
    t6 = (t4 + 56U);
    t8 = *((char **)t6);
    t9 = ((char*)((ng2)));
    memset(t10, 0, 8);
    t11 = (t8 + 4);
    t12 = (t9 + 4);
    t13 = *((unsigned int *)t8);
    t14 = *((unsigned int *)t9);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 ^ t17);
    t19 = (t15 | t18);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t12);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB22;

LAB19:    if (t22 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t10) = 1;

LAB22:    t26 = (t10 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB23;

LAB24:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t1 + 5320);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);

LAB25:    goto LAB18;

LAB14:    xsi_set_current_line(90, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t1 + 5320);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 3);
    goto LAB18;

LAB21:    t25 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(86, ng0);
    t32 = ((char*)((ng6)));
    t33 = (t1 + 5320);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 3);
    goto LAB25;

}

static void Always_38_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 6560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 7128);
    *((int *)t2) = 1;
    t3 = (t0 + 6592);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 3000U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    t11 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 8, t5, 8, t11, 8);
    memset(t14, 0, 8);
    t12 = (t4 + 4);
    t15 = (t13 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t13);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t12);
    t10 = *((unsigned int *)t15);
    t16 = (t9 ^ t10);
    t17 = (t8 | t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t15);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB14;

LAB11:    if (t20 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t14) = 1;

LAB14:    t24 = (t14 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t14);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(48, ng0);

LAB19:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 8, t4, 8, t5, 8);
    t11 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 8, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(39, ng0);

LAB9:    xsi_set_current_line(40, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t23 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(44, ng0);

LAB18:    xsi_set_current_line(45, ng0);
    t30 = ((char*)((ng1)));
    t31 = (t0 + 4840);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 8, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB17;

}

static void Always_98_1(char *t0)
{
    char t30[8];
    char t43[8];
    char t44[8];
    char t45[8];
    char t46[8];
    char t47[8];
    char t49[8];
    char t50[8];
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
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t48;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    t1 = (t0 + 6808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 7144);
    *((int *)t2) = 1;
    t3 = (t0 + 6840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 3000U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(110, ng0);

LAB14:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5160);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    t13 = (t0 + 6616);
    t14 = (t0 + 2208);
    t15 = xsi_create_subprogram_invocation(t13, 0, t0, t14, 0, 0);
    t16 = (t0 + 5480);
    xsi_vlogvar_assign_value(t16, t4, 0, 0, 3);
    t17 = (t0 + 5640);
    xsi_vlogvar_assign_value(t17, t12, 0, 0, 12);

LAB15:    t18 = (t0 + 6712);
    t19 = *((char **)t18);
    t20 = (t19 + 80U);
    t21 = *((char **)t20);
    t22 = (t21 + 272U);
    t23 = *((char **)t22);
    t24 = (t23 + 0U);
    t25 = *((char **)t24);
    t26 = ((int  (*)(char *, char *))t25)(t0, t19);
    if (t26 != 0)
        goto LAB17;

LAB16:    t19 = (t0 + 6712);
    t27 = *((char **)t19);
    t19 = (t0 + 5320);
    t28 = (t19 + 56U);
    t29 = *((char **)t28);
    memcpy(t30, t29, 8);
    t31 = (t0 + 2208);
    t32 = (t0 + 6616);
    t33 = 0;
    xsi_delete_subprogram_invocation(t31, t27, t0, t32, t33);
    t34 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t34, t30, 0, 0, 3, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 5000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB18:    t5 = ((char*)((ng1)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t26 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng2)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t26 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng3)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t26 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng4)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t26 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng5)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t26 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng6)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t26 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(143, ng0);

LAB52:    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB33:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(99, ng0);

LAB9:    xsi_set_current_line(100, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 12, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(105, ng0);

LAB13:    xsi_set_current_line(106, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 5000);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3320U);
    t3 = *((char **)t2);
    t2 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB17:    t18 = (t0 + 6808U);
    *((char **)t18) = &&LAB15;
    goto LAB1;

LAB19:    xsi_set_current_line(113, ng0);

LAB34:    xsi_set_current_line(114, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 4040);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB33;

LAB21:    xsi_set_current_line(119, ng0);

LAB35:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 472);
    t5 = *((char **)t3);
    t3 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t3, t5, 0, 0, 12, 0LL);
    goto LAB33;

LAB23:    xsi_set_current_line(122, ng0);

LAB36:    xsi_set_current_line(123, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB33;

LAB25:    xsi_set_current_line(125, ng0);

LAB37:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng2)));
    memset(t30, 0, 8);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB41;

LAB39:    if (*((unsigned int *)t5) == 0)
        goto LAB38;

LAB40:    t11 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t11) = 1;

LAB41:    t12 = (t30 + 4);
    t13 = (t3 + 4);
    t35 = *((unsigned int *)t3);
    t36 = (~(t35));
    *((unsigned int *)t30) = t36;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB43;

LAB42:    t41 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t41 & 1U);
    t42 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t42 & 1U);
    t14 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t14, t30, 0, 0, 1, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3880);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t30, 0, 8);
    t11 = (t30 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t30) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 7);
    t35 = (t10 & 1);
    *((unsigned int *)t11) = t35;
    t13 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t13, t30, 0, 0, 1, 0LL);
    goto LAB33;

LAB27:    xsi_set_current_line(129, ng0);

LAB44:    xsi_set_current_line(130, ng0);
    t3 = (t0 + 880);
    t5 = *((char **)t3);
    t3 = ((char*)((ng8)));
    memset(t30, 0, 8);
    xsi_vlog_signed_equal(t30, 32, t5, 32, t3, 32);
    t11 = (t30 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t30);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t30, 0, 8);
    xsi_vlog_signed_equal(t30, 32, t3, 32, t2, 32);
    t5 = (t30 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t30);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB48;

LAB49:
LAB50:
LAB47:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5160);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng2)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_minus(t30, 12, t5, 12, t11, 12);
    t12 = (t0 + 5160);
    xsi_vlogvar_wait_assign_value(t12, t30, 0, 0, 12, 0LL);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB33;

LAB29:    xsi_set_current_line(139, ng0);

LAB51:    xsi_set_current_line(140, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 4200);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB33;

LAB38:    *((unsigned int *)t30) = 1;
    goto LAB41;

LAB43:    t37 = *((unsigned int *)t30);
    t38 = *((unsigned int *)t13);
    *((unsigned int *)t30) = (t37 | t38);
    t39 = *((unsigned int *)t12);
    t40 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t39 | t40);
    goto LAB42;

LAB45:    xsi_set_current_line(131, ng0);
    t12 = (t0 + 3480U);
    t13 = *((char **)t12);
    t12 = (t0 + 3880);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memset(t44, 0, 8);
    t16 = (t44 + 4);
    t17 = (t15 + 4);
    t35 = *((unsigned int *)t15);
    t36 = (t35 >> 0);
    *((unsigned int *)t44) = t36;
    t37 = *((unsigned int *)t17);
    t38 = (t37 >> 0);
    *((unsigned int *)t16) = t38;
    t39 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t39 & 127U);
    t40 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t40 & 127U);
    xsi_vlogtype_concat(t43, 8, 8, 2U, t44, 7, t13, 1);
    t18 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t18, t43, 0, 0, 8, 0LL);
    goto LAB47;

LAB48:    xsi_set_current_line(133, ng0);
    t11 = (t0 + 3480U);
    t12 = *((char **)t11);
    memset(t44, 0, 8);
    t11 = (t44 + 4);
    t13 = (t12 + 4);
    t35 = *((unsigned int *)t12);
    t36 = (t35 >> 0);
    t37 = (t36 & 1);
    *((unsigned int *)t44) = t37;
    t38 = *((unsigned int *)t13);
    t39 = (t38 >> 0);
    t40 = (t39 & 1);
    *((unsigned int *)t11) = t40;
    t14 = (t0 + 3880);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t0 + 3880);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng10)));
    t21 = ((char*)((ng11)));
    xsi_vlog_get_indexed_partselect(t45, 7, t16, ((int*)(t19)), 2, t20, 32, 1, t21, 32, 1, 1);
    t22 = (t0 + 3480U);
    t23 = *((char **)t22);
    memset(t46, 0, 8);
    t22 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t22) = 1;
    t24 = (t0 + 3880);
    t25 = (t24 + 56U);
    t27 = *((char **)t25);
    t28 = (t0 + 3880);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = ((char*)((ng12)));
    t33 = ((char*)((ng11)));
    xsi_vlog_get_indexed_partselect(t47, 7, t27, ((int*)(t31)), 2, t32, 32, 1, t33, 32, 1, 1);
    t34 = (t0 + 3480U);
    t48 = *((char **)t34);
    memset(t49, 0, 8);
    t34 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t34) = 1;
    t51 = (t0 + 3880);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t0 + 3880);
    t55 = (t54 + 72U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng13)));
    t58 = ((char*)((ng11)));
    xsi_vlog_get_indexed_partselect(t50, 7, t53, ((int*)(t56)), 2, t57, 32, 1, t58, 32, 1, 1);
    xsi_vlogtype_concat(t43, 24, 24, 6U, t50, 7, t49, 1, t47, 7, t46, 1, t45, 7, t44, 1);
    t59 = (t0 + 3880);
    xsi_vlogvar_wait_assign_value(t59, t43, 0, 0, 8, 0LL);
    goto LAB50;

}


extern void work_m_00000000004224140689_3641150160_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Always_98_1};
	static char *se[] = {(void *)sp_next_state};
	xsi_register_didat("work_m_00000000004224140689_3641150160", "isim/SPI_isim_beh.exe.sim/work/m_00000000004224140689_3641150160.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
