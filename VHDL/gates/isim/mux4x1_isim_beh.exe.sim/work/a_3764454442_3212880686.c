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
static const char *ng0 = "C:/Users/utkar/Documents/ISE/VHDL/gates/mux_4x1_case.vhd";



static void work_a_3764454442_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1316U);
    t4 = *((char **)t1);
    t5 = (0 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t4 + t8);
    *((unsigned char *)t1) = t3;
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1316U);
    t4 = *((char **)t1);
    t5 = (1 - 1);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t4 + t8);
    *((unsigned char *)t1) = t3;
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1316U);
    t2 = *((char **)t1);
    t1 = (t0 + 3745);
    t5 = xsi_mem_cmp(t1, t2, 2U);
    if (t5 == 1)
        goto LAB3;

LAB7:    t9 = (t0 + 3747);
    t11 = xsi_mem_cmp(t9, t2, 2U);
    if (t11 == 1)
        goto LAB4;

LAB8:    t12 = (t0 + 3749);
    t14 = xsi_mem_cmp(t12, t2, 2U);
    if (t14 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1384U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t3;

LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1384U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2180);
    t4 = (t1 + 32U);
    t9 = *((char **)t4);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2136);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(49, ng0);
    t15 = (t0 + 592U);
    t16 = *((char **)t15);
    t3 = *((unsigned char *)t16);
    t15 = (t0 + 1384U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    *((unsigned char *)t15) = t3;
    goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1384U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t3;
    goto LAB2;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1384U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t3;
    goto LAB2;

LAB10:;
}


extern void work_a_3764454442_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3764454442_3212880686_p_0};
	xsi_register_didat("work_a_3764454442_3212880686", "isim/mux4x1_isim_beh.exe.sim/work/a_3764454442_3212880686.didat");
	xsi_register_executes(pe);
}
