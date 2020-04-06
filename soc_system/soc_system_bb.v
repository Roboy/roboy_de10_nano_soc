
module soc_system (
	auxilliary_i2c_0_conduit_end_scl,
	auxilliary_i2c_0_conduit_end_sda,
	auxilliary_i2c_1_conduit_end_scl,
	auxilliary_i2c_1_conduit_end_sda,
	auxilliary_i2c_2_conduit_end_scl,
	auxilliary_i2c_2_conduit_end_sda,
	auxilliary_i2c_3_conduit_end_scl,
	auxilliary_i2c_3_conduit_end_sda,
	balljoint_0_conduit_end_scl,
	balljoint_0_conduit_end_sda,
	balljoint_1_conduit_end_scl,
	balljoint_1_conduit_end_sda,
	balljoint_2_conduit_end_scl,
	balljoint_2_conduit_end_sda,
	balljoint_3_conduit_end_scl,
	balljoint_3_conduit_end_sda,
	balljoint_4_conduit_end_scl,
	balljoint_4_conduit_end_sda,
	balljoint_5_conduit_end_scl,
	balljoint_5_conduit_end_sda,
	balljoint_6_conduit_end_scl,
	balljoint_6_conduit_end_sda,
	clk_clk,
	fancontrol_0_conduit_end_current_average,
	fancontrol_0_conduit_end_pwm,
	fancontrol_1_conduit_end_current_average,
	fancontrol_1_conduit_end_pwm,
	fancontrol_2_conduit_end_current_average,
	fancontrol_2_conduit_end_pwm,
	fancontrol_3_conduit_end_current_average,
	fancontrol_3_conduit_end_pwm,
	fancontrol_4_conduit_end_current_average,
	fancontrol_4_conduit_end_pwm,
	fancontrol_5_conduit_end_current_average,
	fancontrol_5_conduit_end_pwm,
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
	icebuscontrol_0_conduit_end_rx,
	icebuscontrol_0_conduit_end_tx,
	icebuscontrol_0_conduit_end_current_average,
	icebuscontrol_1_conduit_end_rx,
	icebuscontrol_1_conduit_end_tx,
	icebuscontrol_1_conduit_end_current_average,
	icebuscontrol_2_conduit_end_rx,
	icebuscontrol_2_conduit_end_tx,
	icebuscontrol_2_conduit_end_current_average,
	icebuscontrol_3_conduit_end_rx,
	icebuscontrol_3_conduit_end_tx,
	icebuscontrol_3_conduit_end_current_average,
	icebuscontrol_4_conduit_end_rx,
	icebuscontrol_4_conduit_end_tx,
	icebuscontrol_4_conduit_end_current_average,
	icebuscontrol_5_conduit_end_rx,
	icebuscontrol_5_conduit_end_tx,
	icebuscontrol_5_conduit_end_current_average,
	icebuscontrol_6_conduit_end_rx,
	icebuscontrol_6_conduit_end_tx,
	icebuscontrol_6_conduit_end_current_average,
	icebuscontrol_7_conduit_end_rx,
	icebuscontrol_7_conduit_end_tx,
	icebuscontrol_7_conduit_end_current_average,
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
	power_control_0_external_connection_export,
	reset_reset_n,
	switches_0_external_connection_export,
	power_sense_0_external_connection_export);	

	inout		auxilliary_i2c_0_conduit_end_scl;
	inout		auxilliary_i2c_0_conduit_end_sda;
	inout		auxilliary_i2c_1_conduit_end_scl;
	inout		auxilliary_i2c_1_conduit_end_sda;
	inout		auxilliary_i2c_2_conduit_end_scl;
	inout		auxilliary_i2c_2_conduit_end_sda;
	inout		auxilliary_i2c_3_conduit_end_scl;
	inout		auxilliary_i2c_3_conduit_end_sda;
	inout		balljoint_0_conduit_end_scl;
	output		balljoint_0_conduit_end_sda;
	inout		balljoint_1_conduit_end_scl;
	output		balljoint_1_conduit_end_sda;
	inout		balljoint_2_conduit_end_scl;
	output		balljoint_2_conduit_end_sda;
	inout		balljoint_3_conduit_end_scl;
	output		balljoint_3_conduit_end_sda;
	inout		balljoint_4_conduit_end_scl;
	output		balljoint_4_conduit_end_sda;
	inout		balljoint_5_conduit_end_scl;
	output		balljoint_5_conduit_end_sda;
	inout		balljoint_6_conduit_end_scl;
	output		balljoint_6_conduit_end_sda;
	input		clk_clk;
	input	[31:0]	fancontrol_0_conduit_end_current_average;
	output		fancontrol_0_conduit_end_pwm;
	input	[31:0]	fancontrol_1_conduit_end_current_average;
	output		fancontrol_1_conduit_end_pwm;
	input	[31:0]	fancontrol_2_conduit_end_current_average;
	output		fancontrol_2_conduit_end_pwm;
	input	[31:0]	fancontrol_3_conduit_end_current_average;
	output		fancontrol_3_conduit_end_pwm;
	input	[31:0]	fancontrol_4_conduit_end_current_average;
	output		fancontrol_4_conduit_end_pwm;
	input	[31:0]	fancontrol_5_conduit_end_current_average;
	output		fancontrol_5_conduit_end_pwm;
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
	input		icebuscontrol_0_conduit_end_rx;
	output		icebuscontrol_0_conduit_end_tx;
	output	[31:0]	icebuscontrol_0_conduit_end_current_average;
	input		icebuscontrol_1_conduit_end_rx;
	output		icebuscontrol_1_conduit_end_tx;
	output	[31:0]	icebuscontrol_1_conduit_end_current_average;
	input		icebuscontrol_2_conduit_end_rx;
	output		icebuscontrol_2_conduit_end_tx;
	output	[31:0]	icebuscontrol_2_conduit_end_current_average;
	input		icebuscontrol_3_conduit_end_rx;
	output		icebuscontrol_3_conduit_end_tx;
	output	[31:0]	icebuscontrol_3_conduit_end_current_average;
	input		icebuscontrol_4_conduit_end_rx;
	output		icebuscontrol_4_conduit_end_tx;
	output	[31:0]	icebuscontrol_4_conduit_end_current_average;
	input		icebuscontrol_5_conduit_end_rx;
	output		icebuscontrol_5_conduit_end_tx;
	output	[31:0]	icebuscontrol_5_conduit_end_current_average;
	input		icebuscontrol_6_conduit_end_rx;
	output		icebuscontrol_6_conduit_end_tx;
	output	[31:0]	icebuscontrol_6_conduit_end_current_average;
	input		icebuscontrol_7_conduit_end_rx;
	output		icebuscontrol_7_conduit_end_tx;
	output	[31:0]	icebuscontrol_7_conduit_end_current_average;
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
	output	[1:0]	power_control_0_external_connection_export;
	input		reset_reset_n;
	input	[3:0]	switches_0_external_connection_export;
	input	[5:0]	power_sense_0_external_connection_export;
endmodule
