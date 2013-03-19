copy ..\tom\graphics_void.v ..\tom\graphics.v
rmdir /Q /S obj_dir
set VERILATOR_ROOT=C:/verilator-3.841
C:\verilator-3.841\verilator.exe ../tb.v -I.. -I../base -I../tom -cc -trace -top-module tb -exe main.cpp
cd obj_dir
make -f Vtb.mk
cd ..
