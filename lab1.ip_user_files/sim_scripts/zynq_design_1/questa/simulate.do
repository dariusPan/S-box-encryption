onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "C:/Xilinx/Vivado/2016.3/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib zynq_design_1_opt

do {wave.do}

view wave
view structure
view signals

do {zynq_design_1.udo}

run -all

quit -force
