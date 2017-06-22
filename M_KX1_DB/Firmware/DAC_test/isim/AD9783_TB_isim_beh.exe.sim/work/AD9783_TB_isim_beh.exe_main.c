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
    unisims_ver_m_00000000004277362592_3905290901_init();
    unisims_ver_m_00000000001507368566_1535673873_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    unisims_ver_m_00000000003631541332_1504530521_init();
    unisims_ver_m_00000000003631541332_1336192191_init();
    unisims_ver_m_00000000004146189403_1062942637_init();
    unisims_ver_m_00000000004146189403_0493220228_init();
    work_m_00000000004224140689_3905138632_init();
    work_m_00000000003625984217_3144048014_init();
    work_m_00000000004182219459_3191066613_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004182219459_3191066613");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
