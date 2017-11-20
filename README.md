# roboy_de10_nano_soc
golden hardware reference design

# dependencies
(quartus 17.0)[http://dl.altera.com/17.0/?edition=lite]

# build it
* Open quartus and load the .qpf project.
* Open Qsys and load soc_system.qsys. 
* Generate the qsys system
* When this is finished double-click Assembler (generate programming files) in quartus

# run it
* in a terminal execute the folowing commands:
```
#!/bin/bash
sudo ~/intelFPGA/17.0/quartus/bin/jtagd  # this is the jtag server and should only be started once!!
sudo ~/intelFPGA/17.0/quartus/bin/jtagconfig 
1) DE-SoC [3-2.1.1]
  4BA00477   SOCVHPS
  02D020DD   5CSEBA6(.|ES)/5CSEMA6/..
```
* open the programmer in quartus
* select your usb ( in the example output above that would be [3-2.1.1] )
* change the programming file to soc_system.sof ( this will flash the fpga temporarily )
* ![sof_programmer](https://github.com/Roboy/roboy_de10_nano_soc/blob/master/images/programmer_sof.png?raw=true "sof programmer")
* if you want to program it permanently use the conversion file to_jic.cof

# more details
* open the quartus project:
* ![quartus_project](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/quartus_project.png?raw=true "quartus_project")
* make sure you add the IP search path under: Tools->Options...->IP Catalog Search Locations
* you can add it either to the project specific or the global search path:
* ![ip_search_path](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/darkroom_ip.png?raw=true "ip_search_path")
* open qsys design
* ![qsys_design](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/open_qsys_design.png?raw=true "qsys_design")
* add the DarkRoom IP and specify the number of sensors you are planning to use:
* ![darkroom_number_of_sensors](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/darkroom_number_of_sensors.png?raw=true "darkroom_number_of_sensors")
* wire up the clock and reset signals, make sure you export the conduit. Then generate qsys
* ![darkroom_wire_up](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/darkroom_wire_up.png?raw=true "darkroom_wire_up")
* The IP depends on a couple of verilog and vhdl sources, so make sure you add those and the generated soc_system.qip:
* ![darkroom_dependencies](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/darkroom_dependencies.png?raw=true "darkroom_dependencies")
* Then you are ready to compile.
* ![darkroom_build](https://github.com/Roboy/roboy_de10_nano_soc/blob/darkroom/images/darkroom_build.png?raw=true "darkroom_build")
