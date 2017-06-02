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
static const char *ng0 = "C:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/DAC_test/Sweep.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {0U, 0U, 0U, 0U};



static void Always_39_0(char *t0)
{
    char t15[8];
    char t42[16];
    char t43[16];
    char t44[8];
    char t45[16];
    char t46[16];
    char t47[8];
    char t51[8];
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
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4216);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1616U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);

LAB25:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 34, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2976);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 34, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2816);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 16);
    *((unsigned int *)t15) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 16);
    *((unsigned int *)t5) = t9;
    t12 = (t4 + 8);
    t13 = (t4 + 12);
    t10 = *((unsigned int *)t12);
    t18 = (t10 << 16);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t19 | t18);
    t20 = *((unsigned int *)t13);
    t21 = (t20 << 16);
    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 | t21);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t23 & 262143U);
    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 262143U);
    t14 = (t0 + 2496);
    xsi_vlogvar_wait_assign_value(t14, t15, 0, 0, 16, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);

LAB9:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 2656);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t16 = (t13 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t13);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB13;

LAB10:    if (t27 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t15) = 1;

LAB13:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2096U);
    t11 = *((char **)t5);
    xsi_vlog_unsigned_minus(t42, 34, t4, 34, t11, 32);
    t5 = (t0 + 2976);
    xsi_vlogvar_wait_assign_value(t5, t42, 0, 0, 34, 0LL);

LAB16:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    t11 = (t0 + 1936U);
    t12 = *((char **)t11);
    t11 = (t0 + 1936U);
    t13 = *((char **)t11);
    memset(t15, 0, 8);
    t11 = (t15 + 4);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t13);
    t7 = (t6 >> 15);
    t8 = (t7 & 1);
    *((unsigned int *)t15) = t8;
    t9 = *((unsigned int *)t14);
    t10 = (t9 >> 15);
    t18 = (t10 & 1);
    *((unsigned int *)t11) = t18;
    t16 = (t0 + 1936U);
    t17 = *((char **)t16);
    memset(t44, 0, 8);
    t16 = (t44 + 4);
    t30 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t44) = t21;
    t22 = *((unsigned int *)t30);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t16) = t24;
    xsi_vlogtype_concat(t43, 34, 34, 4U, t44, 1, t15, 1, t12, 16, t5, 16);
    xsi_vlog_signed_greater(t45, 34, t4, 34, t43, 34);
    t31 = (t45 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t45);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    t11 = (t0 + 1776U);
    t12 = *((char **)t11);
    t11 = (t0 + 1776U);
    t13 = *((char **)t11);
    memset(t15, 0, 8);
    t11 = (t15 + 4);
    t14 = (t13 + 4);
    t6 = *((unsigned int *)t13);
    t7 = (t6 >> 15);
    t8 = (t7 & 1);
    *((unsigned int *)t15) = t8;
    t9 = *((unsigned int *)t14);
    t10 = (t9 >> 15);
    t18 = (t10 & 1);
    *((unsigned int *)t11) = t18;
    t16 = (t0 + 1776U);
    t17 = *((char **)t16);
    memset(t44, 0, 8);
    t16 = (t44 + 4);
    t30 = (t17 + 4);
    t19 = *((unsigned int *)t17);
    t20 = (t19 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t44) = t21;
    t22 = *((unsigned int *)t30);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t16) = t24;
    xsi_vlogtype_concat(t43, 34, 34, 4U, t44, 1, t15, 1, t12, 16, t5, 16);
    xsi_vlog_signed_less(t45, 34, t4, 34, t43, 34);
    t31 = (t45 + 4);
    t25 = *((unsigned int *)t31);
    t26 = (~(t25));
    t27 = *((unsigned int *)t45);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 34, 0LL);

LAB23:
LAB19:    goto LAB8;

LAB12:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(42, ng0);
    t37 = (t0 + 2976);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t0 + 2096U);
    t41 = *((char **)t40);
    xsi_vlog_unsigned_add(t42, 34, t39, 34, t41, 32);
    t40 = (t0 + 2976);
    xsi_vlogvar_wait_assign_value(t40, t42, 0, 0, 34, 0LL);
    goto LAB16;

LAB17:    xsi_set_current_line(46, ng0);

LAB20:    xsi_set_current_line(47, ng0);
    t37 = ((char*)((ng1)));
    t38 = (t0 + 1936U);
    t39 = *((char **)t38);
    t38 = (t0 + 1936U);
    t40 = *((char **)t38);
    memset(t47, 0, 8);
    t38 = (t47 + 4);
    t41 = (t40 + 4);
    t32 = *((unsigned int *)t40);
    t33 = (t32 >> 15);
    t34 = (t33 & 1);
    *((unsigned int *)t47) = t34;
    t35 = *((unsigned int *)t41);
    t36 = (t35 >> 15);
    t48 = (t36 & 1);
    *((unsigned int *)t38) = t48;
    t49 = (t0 + 1936U);
    t50 = *((char **)t49);
    memset(t51, 0, 8);
    t49 = (t51 + 4);
    t52 = (t50 + 4);
    t53 = *((unsigned int *)t50);
    t54 = (t53 >> 15);
    t55 = (t54 & 1);
    *((unsigned int *)t51) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 >> 15);
    t58 = (t57 & 1);
    *((unsigned int *)t49) = t58;
    xsi_vlogtype_concat(t46, 34, 34, 4U, t51, 1, t47, 1, t39, 16, t37, 16);
    t59 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t59, t46, 0, 0, 34, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB19;

LAB21:    xsi_set_current_line(49, ng0);

LAB24:    xsi_set_current_line(50, ng0);
    t37 = ((char*)((ng1)));
    t38 = (t0 + 1776U);
    t39 = *((char **)t38);
    t38 = (t0 + 1776U);
    t40 = *((char **)t38);
    memset(t47, 0, 8);
    t38 = (t47 + 4);
    t41 = (t40 + 4);
    t32 = *((unsigned int *)t40);
    t33 = (t32 >> 15);
    t34 = (t33 & 1);
    *((unsigned int *)t47) = t34;
    t35 = *((unsigned int *)t41);
    t36 = (t35 >> 15);
    t48 = (t36 & 1);
    *((unsigned int *)t38) = t48;
    t49 = (t0 + 1776U);
    t50 = *((char **)t49);
    memset(t51, 0, 8);
    t49 = (t51 + 4);
    t52 = (t50 + 4);
    t53 = *((unsigned int *)t50);
    t54 = (t53 >> 15);
    t55 = (t54 & 1);
    *((unsigned int *)t51) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 >> 15);
    t58 = (t57 & 1);
    *((unsigned int *)t49) = t58;
    xsi_vlogtype_concat(t46, 34, 34, 4U, t51, 1, t47, 1, t39, 16, t37, 16);
    t59 = (t0 + 2816);
    xsi_vlogvar_wait_assign_value(t59, t46, 0, 0, 34, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB23;

}


extern void work_m_00000000000841017988_1193821531_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000000841017988_1193821531", "isim/Sweep_Test_isim_beh.exe.sim/work/m_00000000000841017988_1193821531.didat");
	xsi_register_executes(pe);
}
