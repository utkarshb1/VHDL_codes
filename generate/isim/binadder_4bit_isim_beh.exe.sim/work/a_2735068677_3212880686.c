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
static const char *ng0 = "C:/Users/Utkarsh/Documents/ISE/generate/half_adder.vhd";



static void work_a_2735068677_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 684U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = (t3 ^ t5);
    t1 = (t0 + 1860);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    if (t5 == 1)
        goto LAB2;

LAB3:    t3 = (unsigned char)0;

LAB4:    t1 = (t0 + 1896);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 1816);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t1 = (t0 + 684U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t3 = t6;
    goto LAB4;

}


extern void work_a_2735068677_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2735068677_3212880686_p_0};
	xsi_register_didat("work_a_2735068677_3212880686", "isim/binadder_4bit_isim_beh.exe.sim/work/a_2735068677_3212880686.didat");
	xsi_register_executes(pe);
}
