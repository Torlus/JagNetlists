@rem copy ..\tom\blit_void.v ..\tom\blit.v
rmdir /Q /S obj_dir
set VERILATOR_ROOT=C:/verilator-3.841
C:\verilator-3.841\verilator.exe ../tb.v -I.. -I../base -I../tom -I../jerry -cc -O3 -Wno-fatal -top-module tb -exe main.cpp vga_out.cpp EasyBMP.cpp dram.cpp bios.cpp cart.cpp trace_68k.cpp
@if errorlevel 1 goto end
cd obj_dir
mingw32-make -f Vtb.mk
cd ..
:end
