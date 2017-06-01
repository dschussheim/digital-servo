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
    unisims_ver_m_00000000004277362592_3698420777_init();
    unisims_ver_m_00000000001507368566_0182233958_init();
    unisims_ver_m_00000000001502444915_3985585492_init();
    unisims_ver_m_00000000003631541332_0720781561_init();
    unisims_ver_m_00000000004146189403_0118017337_init();
    work_m_00000000001162789491_3144048014_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001162789491_3144048014");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
