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
static const char *ng0 = "D:/Xilinx/period_cul/counterOutPut.vhd";



static void work_a_0609232260_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned char t61;
    unsigned char t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t19 = (t0 + 1192U);
    t20 = *((char **)t19);
    t21 = (1 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t26 = (t25 == (unsigned char)3);
    if (t26 != 0)
        goto LAB5;

LAB6:    t37 = (t0 + 1192U);
    t38 = *((char **)t37);
    t39 = (2 - 3);
    t40 = (t39 * -1);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t37 = (t38 + t42);
    t43 = *((unsigned char *)t37);
    t44 = (t43 == (unsigned char)3);
    if (t44 != 0)
        goto LAB7;

LAB8:    t55 = (t0 + 1192U);
    t56 = *((char **)t55);
    t57 = (3 - 3);
    t58 = (t57 * -1);
    t59 = (1U * t58);
    t60 = (0 + t59);
    t55 = (t56 + t60);
    t61 = *((unsigned char *)t55);
    t62 = (t61 == (unsigned char)3);
    if (t62 != 0)
        goto LAB9;

LAB10:
LAB11:    t73 = (t0 + 4528);
    t75 = (t0 + 2912);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memcpy(t79, t73, 8U);
    xsi_driver_first_trans_fast_port(t75);

LAB2:    t80 = (t0 + 2832);
    *((int *)t80) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (31 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t9 = (t10 + t13);
    t14 = (t0 + 2912);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t29 = (31 - 15);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t27 = (t28 + t31);
    t32 = (t0 + 2912);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t27, 8U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB7:    t45 = (t0 + 1032U);
    t46 = *((char **)t45);
    t47 = (31 - 23);
    t48 = (t47 * 1U);
    t49 = (0 + t48);
    t45 = (t46 + t49);
    t50 = (t0 + 2912);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t45, 8U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB2;

LAB9:    t63 = (t0 + 1032U);
    t64 = *((char **)t63);
    t65 = (31 - 31);
    t66 = (t65 * 1U);
    t67 = (0 + t66);
    t63 = (t64 + t67);
    t68 = (t0 + 2912);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    memcpy(t72, t63, 8U);
    xsi_driver_first_trans_fast_port(t68);
    goto LAB2;

LAB12:    goto LAB2;

}


extern void work_a_0609232260_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0609232260_3212880686_p_0};
	xsi_register_didat("work_a_0609232260_3212880686", "isim/topDesign_isim_beh.exe.sim/work/a_0609232260_3212880686.didat");
	xsi_register_executes(pe);
}
