
module soc_system (
	clk_clk,
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
	i2c_3_conduit_end_scl,
	i2c_3_conduit_end_sda,
	i2c_3_conduit_end_led,
	i2c_3_conduit_end_gpio,
	i2c_4_conduit_end_scl,
	i2c_4_conduit_end_sda,
	i2c_4_conduit_end_led,
	i2c_4_conduit_end_gpio,
	i2c_5_conduit_end_scl,
	i2c_5_conduit_end_sda,
	i2c_5_conduit_end_led,
	i2c_5_conduit_end_gpio,
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
	myocontrol_0_conduit_end_angle_miso,
	myocontrol_0_conduit_end_angle_mosi,
	myocontrol_0_conduit_end_angle_sck,
	myocontrol_0_conduit_end_angle_ss_n_o,
	myocontrol_0_conduit_end_gpio_n,
	myocontrol_0_conduit_end_mirrored_muscle_unit,
	myocontrol_0_conduit_end_miso,
	myocontrol_0_conduit_end_mosi,
	myocontrol_0_conduit_end_power_sense_n,
	myocontrol_0_conduit_end_ss_n_o,
	myocontrol_0_conduit_end_sck,
	myocontrol_1_conduit_end_angle_miso,
	myocontrol_1_conduit_end_angle_mosi,
	myocontrol_1_conduit_end_angle_sck,
	myocontrol_1_conduit_end_angle_ss_n_o,
	myocontrol_1_conduit_end_gpio_n,
	myocontrol_1_conduit_end_mirrored_muscle_unit,
	myocontrol_1_conduit_end_miso,
	myocontrol_1_conduit_end_mosi,
	myocontrol_1_conduit_end_power_sense_n,
	myocontrol_1_conduit_end_ss_n_o,
	myocontrol_1_conduit_end_sck,
	myocontrol_2_conduit_end_angle_miso,
	myocontrol_2_conduit_end_angle_mosi,
	myocontrol_2_conduit_end_angle_sck,
	myocontrol_2_conduit_end_angle_ss_n_o,
	myocontrol_2_conduit_end_gpio_n,
	myocontrol_2_conduit_end_mirrored_muscle_unit,
	myocontrol_2_conduit_end_miso,
	myocontrol_2_conduit_end_mosi,
	myocontrol_2_conduit_end_power_sense_n,
	myocontrol_2_conduit_end_ss_n_o,
	myocontrol_2_conduit_end_sck,
	myoquad_0_conduit_end_quad0_aneg,
	myoquad_0_conduit_end_quad0_apos,
	myoquad_0_conduit_end_quad0_bneg,
	myoquad_0_conduit_end_quad0_bpos,
	myoquad_0_conduit_end_quad1_aneg,
	myoquad_0_conduit_end_quad1_apos,
	myoquad_0_conduit_end_quad1_bneg,
	myoquad_0_conduit_end_quad1_bpos,
	neopixel_0_conduit_end_one_wire,
	pio_0_external_connection_export,
	pwm_0_conduit_end_pwm,
	reset_reset_n,
	switches_external_connection_export);	

	input		clk_clk;
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
	inout		i2c_3_conduit_end_scl;
	inout		i2c_3_conduit_end_sda;
	output	[6:0]	i2c_3_conduit_end_led;
	output	[2:0]	i2c_3_conduit_end_gpio;
	inout		i2c_4_conduit_end_scl;
	inout		i2c_4_conduit_end_sda;
	output	[6:0]	i2c_4_conduit_end_led;
	output	[2:0]	i2c_4_conduit_end_gpio;
	inout		i2c_5_conduit_end_scl;
	inout		i2c_5_conduit_end_sda;
	output	[6:0]	i2c_5_conduit_end_led;
	output	[2:0]	i2c_5_conduit_end_gpio;
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
	input		myocontrol_0_conduit_end_angle_miso;
	output		myocontrol_0_conduit_end_angle_mosi;
	output		myocontrol_0_conduit_end_angle_sck;
	output	[8:0]	myocontrol_0_conduit_end_angle_ss_n_o;
	output		myocontrol_0_conduit_end_gpio_n;
	input		myocontrol_0_conduit_end_mirrored_muscle_unit;
	input		myocontrol_0_conduit_end_miso;
	output		myocontrol_0_conduit_end_mosi;
	input		myocontrol_0_conduit_end_power_sense_n;
	output	[8:0]	myocontrol_0_conduit_end_ss_n_o;
	output		myocontrol_0_conduit_end_sck;
	input		myocontrol_1_conduit_end_angle_miso;
	output		myocontrol_1_conduit_end_angle_mosi;
	output		myocontrol_1_conduit_end_angle_sck;
	output	[5:0]	myocontrol_1_conduit_end_angle_ss_n_o;
	output		myocontrol_1_conduit_end_gpio_n;
	input		myocontrol_1_conduit_end_mirrored_muscle_unit;
	input		myocontrol_1_conduit_end_miso;
	output		myocontrol_1_conduit_end_mosi;
	input		myocontrol_1_conduit_end_power_sense_n;
	output	[5:0]	myocontrol_1_conduit_end_ss_n_o;
	output		myocontrol_1_conduit_end_sck;
	input		myocontrol_2_conduit_end_angle_miso;
	output		myocontrol_2_conduit_end_angle_mosi;
	output		myocontrol_2_conduit_end_angle_sck;
	output	[5:0]	myocontrol_2_conduit_end_angle_ss_n_o;
	output		myocontrol_2_conduit_end_gpio_n;
	input		myocontrol_2_conduit_end_mirrored_muscle_unit;
	input		myocontrol_2_conduit_end_miso;
	output		myocontrol_2_conduit_end_mosi;
	input		myocontrol_2_conduit_end_power_sense_n;
	output	[5:0]	myocontrol_2_conduit_end_ss_n_o;
	output		myocontrol_2_conduit_end_sck;
	input		myoquad_0_conduit_end_quad0_aneg;
	input		myoquad_0_conduit_end_quad0_apos;
	input		myoquad_0_conduit_end_quad0_bneg;
	input		myoquad_0_conduit_end_quad0_bpos;
	input		myoquad_0_conduit_end_quad1_aneg;
	input		myoquad_0_conduit_end_quad1_apos;
	input		myoquad_0_conduit_end_quad1_bneg;
	input		myoquad_0_conduit_end_quad1_bpos;
	output		neopixel_0_conduit_end_one_wire;
	output	[1:0]	pio_0_external_connection_export;
	output	[1:0]	pwm_0_conduit_end_pwm;
	input		reset_reset_n;
	input	[3:0]	switches_external_connection_export;
endmodule
