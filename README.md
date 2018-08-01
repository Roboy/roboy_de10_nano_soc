# roboy_de10_nano_soc
you can download the sd-card image with Ubuntu 16.04, xfce, kernel linux 4.9.78-ltsi from our servers:
```
wget -nv http://bot.roboy.org:8081/~roboy/DE10_nano_lxce_4.9.78-ltsi-altera.img
```
flash the image to a min 8GB sd-card:
```
sudo dd if=DE10_nano_lxce_4.9.78-ltsi-altera.img of=/dev/sdX bs=1M status=progress
```
# dependencies
(quartus 17.1)[http://dl.altera.com/17.1/?edition=lite]

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

# PINOUT
![de10_nano_soc_pinout](https://github.com/Roboy/roboy_de10_nano_soc/blob/master/images/de10_nano_soc_pinout.png?raw=true "de10 nano soc pinout")
