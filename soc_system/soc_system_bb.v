
module soc_system (
	adc_ltc2308_0_conduit_end_CONVST,
	adc_ltc2308_0_conduit_end_SCK,
	adc_ltc2308_0_conduit_end_SDI,
	adc_ltc2308_0_conduit_end_SDO,
	clk_clk,
	darkroom_0_conduit_end_mosi_o,
	darkroom_0_conduit_end_sck_o,
	darkroom_0_conduit_end_ss_n_o,
	darkroom_0_conduit_end_trigger_me,
	darkroom_0_conduit_end_sync_o,
	darkroom_0_conduit_end_d_i,
	darkroom_0_conduit_end_e_i,
	hps_0_f2h_cold_reset_req_reset_n,
	hps_0_f2h_debug_reset_req_reset_n,
	hps_0_f2h_warm_reset_req_reset_n,
	hps_0_h2f_reset_reset_n,
	hps_0_hps_io_hps_io_emac1_inst_TX_CLK,
	hps_0_hps_io_hps_io_emac1_inst_TXD0,
	hps_0_hps_io_hps_io_emac1_inst_TXD1,
	hps_0_hps_io_hps_io_emac1_inst_TXD2,
	hps_0_hps_io_hps_io_emac1_inst_TXD3,
	hps_0_hps_io_hps_io_emac1_inst_RXD0,
	hps_0_hps_io_hps_io_emac1_inst_MDIO,
	hps_0_hps_io_hps_io_emac1_inst_MDC,
	hps_0_hps_io_hps_io_emac1_inst_RX_CTL,
	hps_0_hps_io_hps_io_emac1_inst_TX_CTL,
	hps_0_hps_io_hps_io_emac1_inst_RX_CLK,
	hps_0_hps_io_hps_io_emac1_inst_RXD1,
	hps_0_hps_io_hps_io_emac1_inst_RXD2,
	hps_0_hps_io_hps_io_emac1_inst_RXD3,
	hps_0_hps_io_hps_io_sdio_inst_CMD,
	hps_0_hps_io_hps_io_sdio_inst_D0,
	hps_0_hps_io_hps_io_sdio_inst_D1,
	hps_0_hps_io_hps_io_sdio_inst_CLK,
	hps_0_hps_io_hps_io_sdio_inst_D2,
	hps_0_hps_io_hps_io_sdio_inst_D3,
	hps_0_hps_io_hps_io_usb1_inst_D0,
	hps_0_hps_io_hps_io_usb1_inst_D1,
	hps_0_hps_io_hps_io_usb1_inst_D2,
	hps_0_hps_io_hps_io_usb1_inst_D3,
	hps_0_hps_io_hps_io_usb1_inst_D4,
	hps_0_hps_io_hps_io_usb1_inst_D5,
	hps_0_hps_io_hps_io_usb1_inst_D6,
	hps_0_hps_io_hps_io_usb1_inst_D7,
	hps_0_hps_io_hps_io_usb1_inst_CLK,
	hps_0_hps_io_hps_io_usb1_inst_STP,
	hps_0_hps_io_hps_io_usb1_inst_DIR,
	hps_0_hps_io_hps_io_usb1_inst_NXT,
	hps_0_hps_io_hps_io_spim1_inst_CLK,
	hps_0_hps_io_hps_io_spim1_inst_MOSI,
	hps_0_hps_io_hps_io_spim1_inst_MISO,
	hps_0_hps_io_hps_io_spim1_inst_SS0,
	hps_0_hps_io_hps_io_uart0_inst_RX,
	hps_0_hps_io_hps_io_uart0_inst_TX,
	hps_0_hps_io_hps_io_i2c0_inst_SDA,
	hps_0_hps_io_hps_io_i2c0_inst_SCL,
	hps_0_hps_io_hps_io_i2c1_inst_SDA,
	hps_0_hps_io_hps_io_i2c1_inst_SCL,
	hps_0_hps_io_hps_io_gpio_inst_GPIO09,
	hps_0_hps_io_hps_io_gpio_inst_GPIO35,
	hps_0_hps_io_hps_io_gpio_inst_GPIO40,
	hps_0_hps_io_hps_io_gpio_inst_GPIO53,
	hps_0_hps_io_hps_io_gpio_inst_GPIO54,
	hps_0_hps_io_hps_io_gpio_inst_GPIO61,
	i2c_0_conduit_end_scl,
	i2c_0_conduit_end_sda,
	i2c_0_conduit_end_led,
	i2c_0_conduit_end_gpio,
	i2c_1_conduit_end_scl,
	i2c_1_conduit_end_sda,
	i2c_1_conduit_end_led,
	i2c_1_conduit_end_gpio,
	i2c_2_conduit_end_scl,
	i2c_2_conduit_end_sda,
	i2c_2_conduit_end_led,
	i2c_2_conduit_end_gpio,
	i2c_4_conduit_end_scl,
	i2c_4_conduit_end_sda,
	i2c_4_conduit_end_led,
	i2c_4_conduit_end_gpio,
	led_external_connection_export,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	myocontrol_0_conduit_end_miso,
	myocontrol_0_conduit_end_mosi,
	myocontrol_0_conduit_end_sck,
	myocontrol_0_conduit_end_ss_n,
	myocontrol_0_conduit_end_mirrored_muscle_unit,
	myocontrol_0_conduit_end_power_sense_n,
	myocontrol_0_conduit_end_gpio_n,
	myocontrol_0_conduit_end_scl,
	myocontrol_0_conduit_end_sda,
	myocontrol_1_conduit_end_miso,
	myocontrol_1_conduit_end_mosi,
	myocontrol_1_conduit_end_sck,
	myocontrol_1_conduit_end_ss_n,
	myocontrol_1_conduit_end_mirrored_muscle_unit,
	myocontrol_1_conduit_end_power_sense_n,
	myocontrol_1_conduit_end_gpio_n,
	myocontrol_1_conduit_end_scl,
	myocontrol_1_conduit_end_sda,
	reset_reset_n,
	switches_external_connection_export);	

	output		adc_ltc2308_0_conduit_end_CONVST;
	output		adc_ltc2308_0_conduit_end_SCK;
	output		adc_ltc2308_0_conduit_end_SDI;
	input		adc_ltc2308_0_conduit_end_SDO;
	input		clk_clk;
	output		darkroom_0_conduit_end_mosi_o;
	output		darkroom_0_conduit_end_sck_o;
	output		darkroom_0_conduit_end_ss_n_o;
	input		darkroom_0_conduit_end_trigger_me;
	output	[0:0]	darkroom_0_conduit_end_sync_o;
	input	[0:0]	darkroom_0_conduit_end_d_i;
	input	[0:0]	darkroom_0_conduit_end_e_i;
	input		hps_0_f2h_cold_reset_req_reset_n;
	input		hps_0_f2h_debug_reset_req_reset_n;
	input		hps_0_f2h_warm_reset_req_reset_n;
	output		hps_0_h2f_reset_reset_n;
	output		hps_0_hps_io_hps_io_emac1_inst_TX_CLK;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD0;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD1;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD2;
	output		hps_0_hps_io_hps_io_emac1_inst_TXD3;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD0;
	inout		hps_0_hps_io_hps_io_emac1_inst_MDIO;
	output		hps_0_hps_io_hps_io_emac1_inst_MDC;
	input		hps_0_hps_io_hps_io_emac1_inst_RX_CTL;
	output		hps_0_hps_io_hps_io_emac1_inst_TX_CTL;
	input		hps_0_hps_io_hps_io_emac1_inst_RX_CLK;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD1;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD2;
	input		hps_0_hps_io_hps_io_emac1_inst_RXD3;
	inout		hps_0_hps_io_hps_io_sdio_inst_CMD;
	inout		hps_0_hps_io_hps_io_sdio_inst_D0;
	inout		hps_0_hps_io_hps_io_sdio_inst_D1;
	output		hps_0_hps_io_hps_io_sdio_inst_CLK;
	inout		hps_0_hps_io_hps_io_sdio_inst_D2;
	inout		hps_0_hps_io_hps_io_sdio_inst_D3;
	inout		hps_0_hps_io_hps_io_usb1_inst_D0;
	inout		hps_0_hps_io_hps_io_usb1_inst_D1;
	inout		hps_0_hps_io_hps_io_usb1_inst_D2;
	inout		hps_0_hps_io_hps_io_usb1_inst_D3;
	inout		hps_0_hps_io_hps_io_usb1_inst_D4;
	inout		hps_0_hps_io_hps_io_usb1_inst_D5;
	inout		hps_0_hps_io_hps_io_usb1_inst_D6;
	inout		hps_0_hps_io_hps_io_usb1_inst_D7;
	input		hps_0_hps_io_hps_io_usb1_inst_CLK;
	output		hps_0_hps_io_hps_io_usb1_inst_STP;
	input		hps_0_hps_io_hps_io_usb1_inst_DIR;
	input		hps_0_hps_io_hps_io_usb1_inst_NXT;
	output		hps_0_hps_io_hps_io_spim1_inst_CLK;
	output		hps_0_hps_io_hps_io_spim1_inst_MOSI;
	input		hps_0_hps_io_hps_io_spim1_inst_MISO;
	output		hps_0_hps_io_hps_io_spim1_inst_SS0;
	input		hps_0_hps_io_hps_io_uart0_inst_RX;
	output		hps_0_hps_io_hps_io_uart0_inst_TX;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SCL;
	inout		hps_0_hps_io_hps_io_i2c1_inst_SDA;
	inout		hps_0_hps_io_hps_io_i2c1_inst_SCL;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO09;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO35;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO40;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO53;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO54;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO61;
	inout		i2c_0_conduit_end_scl;
	inout		i2c_0_conduit_end_sda;
	output	[6:0]	i2c_0_conduit_end_led;
	output	[2:0]	i2c_0_conduit_end_gpio;
	inout		i2c_1_conduit_end_scl;
	inout		i2c_1_conduit_end_sda;
	output	[6:0]	i2c_1_conduit_end_led;
	output	[2:0]	i2c_1_conduit_end_gpio;
	inout		i2c_2_conduit_end_scl;
	inout		i2c_2_conduit_end_sda;
	output	[6:0]	i2c_2_conduit_end_led;
	output	[2:0]	i2c_2_conduit_end_gpio;
	inout		i2c_4_conduit_end_scl;
	inout		i2c_4_conduit_end_sda;
	output	[6:0]	i2c_4_conduit_end_led;
	output	[2:0]	i2c_4_conduit_end_gpio;
	output	[7:0]	led_external_connection_export;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		myocontrol_0_conduit_end_miso;
	output		myocontrol_0_conduit_end_mosi;
	output		myocontrol_0_conduit_end_sck;
	output	[6:0]	myocontrol_0_conduit_end_ss_n;
	input		myocontrol_0_conduit_end_mirrored_muscle_unit;
	input		myocontrol_0_conduit_end_power_sense_n;
	output		myocontrol_0_conduit_end_gpio_n;
	output		myocontrol_0_conduit_end_scl;
	inout		myocontrol_0_conduit_end_sda;
	input		myocontrol_1_conduit_end_miso;
	output		myocontrol_1_conduit_end_mosi;
	output		myocontrol_1_conduit_end_sck;
	output	[6:0]	myocontrol_1_conduit_end_ss_n;
	input		myocontrol_1_conduit_end_mirrored_muscle_unit;
	input		myocontrol_1_conduit_end_power_sense_n;
	output		myocontrol_1_conduit_end_gpio_n;
	output		myocontrol_1_conduit_end_scl;
	inout		myocontrol_1_conduit_end_sda;
	input		reset_reset_n;
	input	[3:0]	switches_external_connection_export;
endmodule
