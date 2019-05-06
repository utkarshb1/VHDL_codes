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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/utkar/Documents/ISE/VERILOG/basic_gates/b_gates.v";



static void Always_27_0(char *t0)
{
    char t10[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
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
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1824);
    *((int *)t2) = 1;
    t3 = (t0 + 1656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 1012);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1104);
    t8 = (t7 + 36U);
    t9 = *((char **)t8);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t9);
    t13 = (t11 ^ t12);
    *((unsigned int *)t10) = t13;
    t14 = (t6 + 4);
    t15 = (t9 + 4);
    t16 = (t10 + 4);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t15);
    t19 = (t17 | t18);
    *((unsigned int *)t16) = t19;
    t20 = *((unsigned int *)t16);
    t21 = (t20 != 0);
    if (t21 == 1)
        goto LAB6;

LAB7:
LAB8:    t24 = (t0 + 1104);
    xsi_vlogvar_assign_value(t24, t10, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t4 = *((char **)t2);
    t11 = *((unsigned int *)t3);
    t12 = *((unsigned int *)t4);
    t13 = (t11 & t12);
    *((unsigned int *)t25) = t13;
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = (t25 + 4);
    t17 = *((unsigned int *)t2);
    t18 = *((unsigned int *)t5);
    t19 = (t17 | t18);
    *((unsigned int *)t6) = t19;
    t20 = *((unsigned int *)t6);
    t21 = (t20 != 0);
    if (t21 == 1)
        goto LAB9;

LAB10:
LAB11:    memset(t10, 0, 8);
    t9 = (t25 + 4);
    t42 = *((unsigned int *)t9);
    t43 = (~(t42));
    t44 = *((unsigned int *)t25);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB15;

LAB13:    if (*((unsigned int *)t9) == 0)
        goto LAB12;

LAB14:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB15:    t15 = (t10 + 4);
    t16 = (t25 + 4);
    t47 = *((unsigned int *)t25);
    t48 = (~(t47));
    *((unsigned int *)t10) = t48;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB17;

LAB16:    t53 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t53 & 1U);
    t54 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t54 & 1U);
    t24 = (t0 + 1012);
    xsi_vlogvar_assign_value(t24, t10, 0, 0, 1);
    goto LAB2;

LAB6:    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t10) = (t22 | t23);
    goto LAB8;

LAB9:    t22 = *((unsigned int *)t25);
    t23 = *((unsigned int *)t6);
    *((unsigned int *)t25) = (t22 | t23);
    t7 = (t3 + 4);
    t8 = (t4 + 4);
    t26 = *((unsigned int *)t3);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t29 = (~(t28));
    t30 = *((unsigned int *)t4);
    t31 = (~(t30));
    t32 = *((unsigned int *)t8);
    t33 = (~(t32));
    t34 = (t27 & t29);
    t35 = (t31 & t33);
    t36 = (~(t34));
    t37 = (~(t35));
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t36);
    t39 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t39 & t37);
    t40 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t40 & t36);
    t41 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t41 & t37);
    goto LAB11;

LAB12:    *((unsigned int *)t10) = 1;
    goto LAB15;

LAB17:    t49 = *((unsigned int *)t10);
    t50 = *((unsigned int *)t16);
    *((unsigned int *)t10) = (t49 | t50);
    t51 = *((unsigned int *)t15);
    t52 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t51 | t52);
    goto LAB16;

}


extern void work_m_00000000004008313852_0245407155_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000004008313852_0245407155", "isim/b_gates_isim_beh.exe.sim/work/m_00000000004008313852_0245407155.didat");
	xsi_register_executes(pe);
}
