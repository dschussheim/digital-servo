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
    unisims_ver_m_00000000004277362592_1185017015_init();
    unisims_ver_m_00000000003631541332_3961313793_init();
    unisims_ver_m_00000000004146189403_0493220228_init();
    unisims_ver_m_00000000003003270080_0416939978_init();
    unisims_ver_m_00000000004091665089_0156168620_init();
    unisims_ver_m_00000000003084551676_0474780703_init();
    unisims_ver_m_00000000000213807600_4274735567_init();
    unisims_ver_m_00000000003003270080_2649278825_init();
    unisims_ver_m_00000000000888323161_2194184523_init();
    unisims_ver_m_00000000002340919856_3164421738_init();
    unisims_ver_m_00000000000888323161_2969500617_init();
    work_m_00000000004224140689_4233749516_init();
    work_m_00000000003988658921_3925655535_init();
    work_m_00000000003917797746_0253347215_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003917797746_0253347215");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
