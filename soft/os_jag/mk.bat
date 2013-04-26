PATH=..\..\..\Genesis_misc\soft\GenesisDev04\bin;C:\strawberry\perl\bin
..\..\..\Genesis_misc\soft\GenesisDev04\bin\gcc -Wa,-a=os.lst -m68000 -Wall -O1 -fomit-frame-pointer -c os.s
..\..\..\Genesis_misc\soft\GenesisDev04\bin\gcc -T md.ld -nostdlib os.o -o os.out
..\..\..\Genesis_misc\soft\GenesisDev04\bin\objcopy -O binary os.out os.bin
perl ..\bin2txt8.pl os.bin > ..\..\verilog\os.mem
copy os.bin ..\..\verilog\os.bin
perl ..\bin2mif16Kx8.pl os.bin > ..\..\verilog\os.mif
pause
