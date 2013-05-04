@rem copy ..\tom\blit_void.v ..\tom\blit.v
rmdir /Q /S obj_dir
set VERILATOR_ROOT=C:/verilator-3.841
C:\verilator-3.841\verilator.exe ../jag_s2.v -I.. -I../base -I../tom -I../jerry -cc -O3 -Wno-fatal -top-module jag_s2 -exe main.cpp vga_out.cpp EasyBMP.cpp bios.cpp ssram.cpp trace_68k.cpp
@if errorlevel 1 goto end
cd obj_dir
mingw32-make -f Vjag_s2.mk
cd ..
:end
