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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000001946988858_2297623829_init();
    unisims_ver_m_00000000003631541332_0720781561_init();
    unisims_ver_m_00000000004146189403_1223964246_init();
    work_m_00000000002549101731_3144048014_init();
    work_m_00000000000841017988_1193821531_init();
    work_m_00000000001658040732_0807546009_init();
    work_m_00000000004189314824_4003844812_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004189314824_4003844812");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
