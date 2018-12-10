transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control/ArmControl.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/lighthouse_tracking {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/lighthouse_tracking/ts4231.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control/A1335Control.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/i2c {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/i2c/fifo.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/i2c {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/i2c/oneshot.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control/SpiControl.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control/PIDController.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/edge_detect {/hdd/embedded_linux/roboy_de10_nano_soc/ip/edge_detect/altera_edge_detector.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/debounce {/hdd/embedded_linux/roboy_de10_nano_soc/ip/debounce/debounce.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/ip/altsource_probe {/hdd/embedded_linux/roboy_de10_nano_soc/ip/altsource_probe/hps_reset.v}
vlog -vlog01compat -work work +incdir+/hdd/embedded_linux/roboy_de10_nano_soc {/hdd/embedded_linux/roboy_de10_nano_soc/DE10_NANO_SoC_GHRD.v}
vlib soc_system
vmap soc_system soc_system
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/soc_system.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_sysid_qsys.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_jtag_uart.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_hps_0.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_hps_0_hps_io.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_io_pads.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_clock_pair_generator.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_addr_cmd_pads.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_generic_ddio.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_acv_hard_memphy.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_acv_ldc.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_mem_if_hhp_qseq_synth_top.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0_altdqdqs.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_SWITCHES.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/MYOControl.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_LED.v}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/I2C_avalon_bridge.v}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_irq_mapper_001.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_irq_mapper.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_burst_adapter_13_1.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_address_alignment.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_002.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_axi_master_ni.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altdq_dqs2_acv_connect_to_hard_phy_cyclonev.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_pll.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_mem_if_hard_memory_controller_top_cyclonev.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_mem_if_oct_cyclonev.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/altera_mem_if_dll_cyclonev.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/hps_sdram_p0.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_hps_0_hps_io_border.sv}
vlog -sv -work soc_system +incdir+/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules {/hdd/embedded_linux/roboy_de10_nano_soc/soc_system/synthesis/submodules/soc_system_hps_0_fpga_interfaces.sv}
vcom -93 -work work {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/myo_control/spi_master_slave/trunk/rtl/spi_master_slave/spi_master.vhd}
vcom -93 -work work {/hdd/embedded_linux/roboy_de10_nano_soc/ip/roboy_fpga_code/i2c/i2c_master.vhd}

