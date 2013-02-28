vlib work

vlog base/bd.v
vlog base/mx2.v
vlog base/mxi2.v
vlog base/mx4.v
vlog base/mx8.v
vlog base/fd1q.v
vlog base/fd1e.v
vlog base/fd2.v
vlog base/fd2q.v
vlog base/fd2e.v
vlog base/fd4q.v
vlog base/fd4e.v
vlog base/ldp1.v
vlog base/ldp1q.v
vlog base/ldp2.v
vlog base/ldp2q.v
vlog base/fjk2.v
vlog base/ha1.v
vlog base/fa1.v
vlog base/lsra.v
vlog base/lsrb.v
vlog base/mag4.v
vlog base/fa4r.v
vlog base/mp1010a.v
vlog base/ra8008a.v
vlog base/ra8008b.v
vlog base/ra8008c.v
vlog base/ab8016a.v
vlog base/ab8616a.v

vlog tom/and10.v
vlog tom/and11.v
vlog tom/and12.v
vlog tom/nand14.v
vlog tom/nd9.v
vlog tom/nd11.v
vlog tom/creg11.v
vlog tom/fjkr.v
vlog tom/fdr.v
vlog tom/dncnts.v
vlog tom/upcnts.v
vlog tom/slatchr.v
vlog tom/slatch.v
vlog tom/slatchc.v
vlog tom/slatchp.v
vlog tom/stlatch.v
vlog tom/up.v
vlog tom/down.v
vlog tom/dec38h.v
vlog tom/dec38gh.v
vlog tom/dncnt.v
vlog tom/upcnt.v
vlog tom/udcnt.v
vlog tom/upcnt1.v
vlog tom/udcnt1.v
vlog tom/mag11.v
vlog tom/mag12.v
vlog tom/add4.v
vlog tom/sadd4.v
vlog tom/sadd8.v
vlog tom/ha9.v
vlog tom/twoniv.v

vlog tom/_graphics.v
vlog tom/iodec.v
vlog tom/vid.v
vlog tom/cryrgb.v
vlog tom/pix.v
vlog tom/dbus.v
vlog tom/bank.v
vlog tom/abus.v
vlog tom/arb.v
vlog tom/memwidth.v
vlog tom/bus.v
vlog tom/cpu.v
vlog tom/rasgen.v
vlog tom/mem.v
vlog tom/ack_pipe.v
vlog tom/ob.v
vlog tom/wbk.v
vlog tom/obdata.v
vlog tom/lbuf.v
vlog tom/misc.v

vlog tom/tom.v

vlog j68.v

vlog tb.v

vsim -t 1ns -lib work tb

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/xpclk
add wave -noupdate -format Logic /tb/xvclk
# add wave -noupdate -format Logic /tb/xresetl
# add wave -noupdate -format Logic /tb/tom_inst/clk_inst/cfgw
# add wave -noupdate -format Logic /tb/cfgen

# add wave -noupdate -format Literal -radix hexadecimal /tb/xd_r
# add wave -noupdate -format Literal -radix hexadecimal /tb/xa_r
# add wave -noupdate -format Literal /tb/xma
# add wave -noupdate -format Logic /tb/xrasl(0)
# add wave -noupdate -format Logic /tb/xcasl(0)
# add wave -noupdate -format Literal /tb/xoel
# add wave -noupdate -format Literal /tb/xwel
# add wave -noupdate -format Literal /tb/xromcsl
# add wave -noupdate -format Logic /tb/xdreql
# add wave -noupdate -format Logic /tb/xdtackl
# add wave -noupdate -format Logic /tb/xbrl
# add wave -noupdate -format Logic /tb/xba
# add wave -noupdate -format Logic /tb/ba
add wave -noupdate -format Logic /tb/xintl
# add wave -noupdate -format Logic /tb/tom_inst/aen


# add wave -noupdate -format Logic /tb/j68_rst
# add wave -noupdate -format Logic /tb/j68_clk
# add wave -noupdate -format Literal -radix hexadecimal /tb/j68_address
# add wave -noupdate -format Logic /tb/j68_rd_ena
# add wave -noupdate -format Logic /tb/j68_wr_ena
# add wave -noupdate -format Literal -radix hexadecimal /tb/j68_rd_data
# add wave -noupdate -format Literal -radix hexadecimal /tb/j68_wr_data
# add wave -noupdate -format Literal /tb/j68_fc
# add wave -noupdate -format Literal -radix hexadecimal /tb/j68_inst/dbg_pc_reg
# add wave -noupdate -format Literal -radix hexadecimal /tb/j68_inst/r_pc_reg
# add wave -noupdate -format Literal -radix hexadecimal /tb/os_rom_inst/a
# add wave -noupdate -format Literal -radix hexadecimal /tb/os_rom_inst/q

add wave -noupdate -format Logic /tb/tom_inst/mem_inst/refreq
# add wave -noupdate -format Logic /tb/tom_inst/mem_inst/ack
add wave -noupdate -format Logic /tb/tom_inst/mem_inst/obbreq
# add wave -noupdate -format Logic /tb/tom_inst/start

# add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/obd_inst/aa
# add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/obd_inst/pda
# add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/obd_inst/ab
# add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/obd_inst/pdb
# add wave -noupdate -format Logic /tb/tom_inst/obd_inst/prw
# add wave -noupdate -format Logic /tb/tom_inst/obd_inst/csl

add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/lbufa
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/wral
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/wdil
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/lbrd_d

add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbai
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbadl
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbadh
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/cea_0
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/wea_0
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbbi
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbbdl
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/lbuf_inst/lbbdh
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/ceb_0
add wave -noupdate -format Logic /tb/tom_inst/lbuf_inst/web_0

add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/pix_inst/lbra
add wave -noupdate -format Logic /tb/tom_inst/pix_inst/nextpixb
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/pix_inst/lbrd_d
add wave -noupdate -format Literal -radix hexadecimal /tb/tom_inst/pix_inst/pd1_d

# add wave -noupdate -format Logic /tb/xintl
add wave -noupdate -format Logic /tb/xhs
add wave -noupdate -format Logic /tb/xvs
add wave -noupdate -format Literal -radix hexadecimal /tb/xr
add wave -noupdate -format Literal -radix hexadecimal /tb/xg
add wave -noupdate -format Literal -radix hexadecimal /tb/xb



TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2952 ns} 0}
configure wave -namecolwidth 189
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {2365 ns} {4991 ns}
