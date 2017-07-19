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
