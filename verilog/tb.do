vlib work

vlog base/bd.v
vlog base/mx2.v
vlog base/mxi2.v
vlog base/fd1q.v
vlog base/fd1e.v
vlog base/fd2q.v
vlog base/ldp1.v
vlog base/ldp1q.v
vlog base/ldp2.v
vlog base/ldp2q.v
vlog base/fjk2.v

vlog tom/and10.v
vlog tom/and11.v
vlog tom/and12.v
vlog tom/creg11.v
vlog tom/fjkr.v
vlog tom/fdr.v
vlog tom/dncnts.v
vlog tom/upcnts.v
vlog tom/slatchr.v
vlog tom/slatch.v

vlog tom/_graphics.v
vlog tom/iodec.v
vlog tom/vid.v

vlog tom/tom.v
vlog tb.v

vsim -t 1ns -lib work tb

