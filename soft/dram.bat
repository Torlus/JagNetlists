@rem gcc.exe -o draminit.exe draminit.c
draminit.exe %1 > ..\verilog\dram.mem
copy %1 ..\verilog\dram.bin
