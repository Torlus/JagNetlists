@rem copy ..\tom\blit_void.v ..\tom\blit.v
rmdir /Q /S obj_dir
set VERILATOR_ROOT=C:/verilator-3.841
@rem C:\verilator-3.841\verilator.exe ../tb.v -I.. -I../base -I../tom -cc -O3 -Wno-fatal -trace -top-module tb -exe main.cpp vga_out.cpp EasyBMP.cpp
C:\verilator-3.841\verilator.exe ../tb.v -I.. -I../base -I../tom -cc -O3 -Wno-fatal -top-module tb -exe main.cpp vga_out.cpp EasyBMP.cpp
@if errorlevel 1 goto end
cd obj_dir
make -f Vtb.mk
cd ..
:end
