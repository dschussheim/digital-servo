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
    unisims_ver_m_00000000004091665089_2469549981_init();
    unisims_ver_m_00000000003084551676_2660214416_init();
    unisims_ver_m_00000000000213807600_1383990979_init();
    unisims_ver_m_00000000001459908677_0020010334_init();
    unisims_ver_m_00000000001459908677_1975031847_init();
    unisims_ver_m_00000000000888323161_0935439893_init();
    unisims_ver_m_00000000004146189403_0493220228_init();
    unisims_ver_m_00000000000888323161_0786079572_init();
    work_m_00000000004224140689_4233749516_init();
    work_m_00000000001381533820_3144048014_init();
    work_m_00000000004182219459_4097224032_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004182219459_4097224032");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
