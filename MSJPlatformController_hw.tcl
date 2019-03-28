# TCL File Generated by Component Editor 18.1
# Thu Mar 28 19:15:09 CET 2019
# DO NOT MODIFY


# 
# MSJPlatformController "MSJPlatformController" v1.0
# Simon Trendel 2019.03.28.19:15:09
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module MSJPlatformController
# 
set_module_property DESCRIPTION ""
set_module_property NAME MSJPlatformController
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Simon Trendel"
set_module_property DISPLAY_NAME MSJPlatformController
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL MSJPlatformControl
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file MSJPlatformControl.sv SYSTEM_VERILOG PATH ip/roboy_fpga_code/msj_platform/MSJPlatformControl.sv TOP_LEVEL_FILE
add_fileset_file A1339Control.sv SYSTEM_VERILOG PATH ip/roboy_fpga_code/a133x/A1339Control.sv
add_fileset_file A1339Interface.sv SYSTEM_VERILOG PATH ip/roboy_fpga_code/interfaces/A1339Interface.sv
add_fileset_file MSJPlatformPIDController.sv SYSTEM_VERILOG PATH ip/roboy_fpga_code/msj_platform/MSJPlatformPIDController.sv


# 
# parameters
# 
add_parameter NUMBER_OF_MOTORS INTEGER 6
set_parameter_property NUMBER_OF_MOTORS DEFAULT_VALUE 6
set_parameter_property NUMBER_OF_MOTORS DISPLAY_NAME NUMBER_OF_MOTORS
set_parameter_property NUMBER_OF_MOTORS TYPE INTEGER
set_parameter_property NUMBER_OF_MOTORS UNITS None
set_parameter_property NUMBER_OF_MOTORS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property NUMBER_OF_MOTORS HDL_PARAMETER true
add_parameter CLOCK_SPEED_HZ INTEGER 50000000
set_parameter_property CLOCK_SPEED_HZ DEFAULT_VALUE 50000000
set_parameter_property CLOCK_SPEED_HZ DISPLAY_NAME CLOCK_SPEED_HZ
set_parameter_property CLOCK_SPEED_HZ TYPE INTEGER
set_parameter_property CLOCK_SPEED_HZ UNITS None
set_parameter_property CLOCK_SPEED_HZ ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CLOCK_SPEED_HZ HDL_PARAMETER true
add_parameter SAMPLES_TO_AVERAGE INTEGER 256
set_parameter_property SAMPLES_TO_AVERAGE DEFAULT_VALUE 256
set_parameter_property SAMPLES_TO_AVERAGE DISPLAY_NAME SAMPLES_TO_AVERAGE
set_parameter_property SAMPLES_TO_AVERAGE TYPE INTEGER
set_parameter_property SAMPLES_TO_AVERAGE UNITS None
set_parameter_property SAMPLES_TO_AVERAGE ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SAMPLES_TO_AVERAGE HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock_sink
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 address address Input 16
add_interface_port avalon_slave_0 write write Input 1
add_interface_port avalon_slave_0 writedata writedata Input 32
add_interface_port avalon_slave_0 read read Input 1
add_interface_port avalon_slave_0 readdata readdata Output 32
add_interface_port avalon_slave_0 waitrequest waitrequest Output 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock clk Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_sink
set_interface_property conduit_end associatedReset reset
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end LED led Output 2
add_interface_port conduit_end PWM pwm Output NUMBER_OF_MOTORS
add_interface_port conduit_end emergency_off emergency_off Input 1
add_interface_port conduit_end pull_all_button pull_all_button Input 1
add_interface_port conduit_end pull_buttons pull_buttons Input NUMBER_OF_MOTORS
add_interface_port conduit_end angle_ss_n_o angle_ss_n_o Output NUMBER_OF_MOTORS
add_interface_port conduit_end release_all_button release_all_button Input 1
add_interface_port conduit_end release_buttons release_buttons Input NUMBER_OF_MOTORS
add_interface_port conduit_end zero_pose_button zero_pose_button Input 1
add_interface_port conduit_end angle_miso angle_miso Input 1
add_interface_port conduit_end angle_mosi angle_mosi Output 1
add_interface_port conduit_end angle_sck angle_sck Output 1

