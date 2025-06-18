v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } 670 -2340 0 0 0.4 0.4 {font=Monospace}
N 680 -1950 680 -1900 {
lab=GND}
N 880 -1950 880 -1900 {
lab=GND}
N 680 -1900 880 -1900 {
lab=GND}
N 680 -2080 880 -2080 {
lab=VD}
N 590 -1980 640 -1980 {
lab=VG}
N 790 -1980 840 -1980 {
lab=VG}
N 980 -2460 980 -2400 {
lab=VG}
N 1070 -2460 1070 -2400 {
lab=VD}
N 980 -2340 980 -2280 {
lab=GND}
N 1070 -2340 1070 -2280 {
lab=GND}
N 990 -1980 1040 -1980 {
lab=VG}
N 1080 -1950 1080 -1900 {
lab=GND}
N 880 -1900 1080 -1900 {
lab=GND}
N 880 -2080 1080 -2080 {
lab=VD}
N 1170 -1980 1220 -1980 {
lab=VG}
N 1260 -1950 1260 -1900 {
lab=GND}
N 1080 -2080 1260 -2080 {
lab=VD}
N 1080 -1900 1260 -1900 {
lab=GND}
N 1340 -1980 1390 -1980 {
lab=VG}
N 1430 -1950 1430 -1900 {
lab=GND}
N 1260 -2080 1430 -2080 {
lab=VD}
N 1260 -1900 1430 -1900 {
lab=GND}
N 680 -2080 680 -2070 {
lab=VD}
N 880 -2080 880 -2070 {
lab=VD}
N 1080 -2080 1080 -2070 {
lab=VD}
N 1260 -2080 1260 -2070 {
lab=VD}
N 1430 -2080 1430 -2070 {
lab=VD}
N 1500 -1980 1550 -1980 {
lab=VG}
N 1590 -1950 1590 -1900 {
lab=GND}
N 1590 -2080 1590 -2070 {
lab=VD}
N 1690 -1980 1740 -1980 {
lab=VG}
N 1780 -1950 1780 -1900 {
lab=GND}
N 1780 -2080 1780 -2070 {
lab=VD}
N 1870 -1980 1920 -1980 {
lab=VG}
N 1960 -1950 1960 -1900 {
lab=GND}
N 1960 -2080 1960 -2070 {
lab=VD}
N 2070 -1980 2120 -1980 {
lab=VG}
N 2160 -1950 2160 -1900 {
lab=GND}
N 2160 -2080 2160 -2070 {
lab=VD}
N 2260 -1980 2310 -1980 {
lab=VG}
N 2350 -1950 2350 -1900 {
lab=GND}
N 2350 -2080 2350 -2070 {
lab=VD}
N 2460 -1980 2510 -1980 {
lab=VG}
N 2550 -1950 2550 -1900 {
lab=GND}
N 2550 -2080 2550 -2070 {
lab=VD}
N 2670 -1980 2720 -1980 {
lab=VG}
N 2760 -1950 2760 -1900 {
lab=GND}
N 2760 -2080 2760 -2070 {
lab=VD}
N 1430 -2080 1590 -2080 {lab=VD}
N 1590 -2080 1780 -2080 {lab=VD}
N 1780 -2080 1960 -2080 {lab=VD}
N 1960 -2080 2760 -2080 {lab=VD}
N 1430 -1900 2760 -1900 {lab=GND}
N 680 -1980 680 -1950 {lab=GND}
N 880 -1980 880 -1950 {lab=GND}
N 1080 -1980 1080 -1950 {lab=GND}
N 1260 -1980 1260 -1950 {lab=GND}
N 1430 -1980 1430 -1950 {lab=GND}
N 1590 -1980 1590 -1950 {lab=GND}
N 1780 -1980 1780 -1950 {lab=GND}
N 1960 -1980 1960 -1950 {lab=GND}
N 2160 -1980 2160 -1950 {lab=GND}
N 2350 -1980 2350 -1950 {lab=GND}
N 2550 -1980 2550 -1950 {lab=GND}
N 2760 -1980 2760 -1950 {lab=GND}
C {devices/lab_pin.sym} 590 -1980 0 0 {name=p1 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 790 -1980 0 0 {name=p2 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 680 -2080 0 0 {name=p3 sig_type=std_logic lab=VD}
C {devices/vsource.sym} 980 -2370 0 0 {name=VG value=1.65 .savecurrent=false}
C {devices/vsource.sym} 1070 -2370 0 0 {name=VD value=1.65 .savecurrent=false}
C {devices/lab_pin.sym} 980 -2460 0 0 {name=p4 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1070 -2460 0 0 {name=p5 sig_type=std_logic lab=VD}
C {devices/code_shown.sym} 30 -2290 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option .savecurrents
.control
save all
dc VG 0.05 3 0.1m 
** remove zero length vectors to prevent write errors
remzerovec
write /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_03v3_svt_tb.raw

plot @m.xm1.m0[gm]
plot @m.xm2.m0[gm]
plot @m.xm3.m0[gm]
plot @m.xm4.m0[gm]
plot @m.xm5.m0[gm]
plot @m.xm6.m0[gm]
plot @m.xm7.m0[gm]
plot @m.xm8.m0[gm]
plot @m.xm9.m0[gm]
plot @m.xm10.m0[gm]
plot @m.xm11.m0[gm]
plot @m.xm12.m0[gm]

wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_1_nfet_03v3_svt_tb.txt @m.xm1.m0[gm] i(VD1) @m.xm1.m0[vth] @m.xm1.m0[gds] @m.xm1.m0[cgg] @m.xm1.m0[cgs] @m.xm1.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_2_nfet_03v3_svt_tb.txt @m.xm2.m0[gm] i(VD2) @m.xm2.m0[vth] @m.xm2.m0[gds] @m.xm2.m0[cgg] @m.xm2.m0[cgs] @m.xm2.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_3_nfet_03v3_svt_tb.txt @m.xm3.m0[gm] i(VD3) @m.xm3.m0[vth] @m.xm3.m0[gds] @m.xm3.m0[cgg] @m.xm3.m0[cgs] @m.xm3.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_4_nfet_03v3_svt_tb.txt @m.xm4.m0[gm] i(VD4) @m.xm4.m0[vth] @m.xm4.m0[gds] @m.xm4.m0[cgg] @m.xm4.m0[cgs] @m.xm4.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_5_nfet_03v3_svt_tb.txt @m.xm5.m0[gm] i(VD5) @m.xm5.m0[vth] @m.xm5.m0[gds] @m.xm5.m0[cgg] @m.xm5.m0[cgs] @m.xm5.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_6_nfet_03v3_svt_tb.txt @m.xm6.m0[gm] i(VD6) @m.xm6.m0[vth] @m.xm6.m0[gds] @m.xm6.m0[cgg] @m.xm6.m0[cgs] @m.xm6.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_7_nfet_03v3_svt_tb.txt @m.xm7.m0[gm] i(VD7) @m.xm7.m0[vth] @m.xm7.m0[gds] @m.xm7.m0[cgg] @m.xm7.m0[cgs] @m.xm7.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_8_nfet_03v3_svt_tb.txt @m.xm8.m0[gm] i(VD8) @m.xm8.m0[vth] @m.xm8.m0[gds] @m.xm8.m0[cgg] @m.xm8.m0[cgs] @m.xm8.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_9_nfet_03v3_svt_tb.txt @m.xm9.m0[gm] i(VD9) @m.xm9.m0[vth] @m.xm9.m0[gds] @m.xm9.m0[cgg] @m.xm9.m0[cgs] @m.xm9.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_10_nfet_03v3_svt_tb.txt @m.xm10.m0[gm] i(VD10) @m.xm10.m0[vth] @m.xm10.m0[gds] @m.xm10.m0[cgg] @m.xm10.m0[cgs] @m.xm10.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_11_nfet_03v3_svt_tb.txt @m.xm11.m0[gm] i(VD11) @m.xm11.m0[vth] @m.xm11.m0[gds] @m.xm11.m0[cgg] @m.xm11.m0[cgs] @m.xm11.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_12_nfet_03v3_svt_tb.txt @m.xm12.m0[gm] i(VD12) @m.xm12.m0[vth] @m.xm12.m0[gds] @m.xm12.m0[cgg] @m.xm12.m0[cgs] @m.xm12.m0[cgd]
set appendwrite
op
remzerovec
write /foss/designs/PDK-CHAR/GF180-MCUD/NMOS_03v3_SVT/gmid_nmos_03v3_svt_tb.raw
**quit 0
.endc
"
}
C {devices/gnd.sym} 1590 -1900 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 980 -2280 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1070 -2280 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 990 -1980 0 0 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1170 -1980 0 0 {name=p7 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 1340 -1980 0 0 {name=p8 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 680 -2040 0 0 {name=VD1 .savecurrent=true}
C {devices/ammeter.sym} 880 -2040 0 0 {name=VD2 .savecurrent=true}
C {devices/ammeter.sym} 1080 -2040 0 0 {name=VD3 .savecurrent=true}
C {devices/ammeter.sym} 1260 -2040 0 0 {name=VD4 .savecurrent=true}
C {devices/ammeter.sym} 1430 -2040 0 0 {name=VD5 .savecurrent=true}
C {devices/lab_pin.sym} 1500 -1980 0 0 {name=p9 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1590 -2040 0 0 {name=VD6 .savecurrent=true}
C {devices/lab_pin.sym} 1690 -1980 0 0 {name=p10 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1780 -2040 0 0 {name=VD7 .savecurrent=true}
C {devices/lab_pin.sym} 1870 -1980 0 0 {name=p11 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 1960 -2040 0 0 {name=VD8 .savecurrent=true}
C {devices/lab_pin.sym} 2070 -1980 0 0 {name=p12 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 2160 -2040 0 0 {name=VD9 .savecurrent=true}
C {devices/lab_pin.sym} 2260 -1980 0 0 {name=p13 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 2350 -2040 0 0 {name=VD10 .savecurrent=true}
C {devices/lab_pin.sym} 2460 -1980 0 0 {name=p14 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 2550 -2040 0 0 {name=VD11 .savecurrent=true}
C {devices/lab_pin.sym} 2670 -1980 0 0 {name=p15 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 2760 -2040 0 0 {name=VD12 .savecurrent=true}
C {symbols/nfet_03v3.sym} 660 -1980 0 0 {name=M1
L=0.28u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 860 -1980 0 0 {name=M2
L=0.5u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1060 -1980 0 0 {name=M3
L=0.75u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1240 -1980 0 0 {name=M4
L=1u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1410 -1980 0 0 {name=M5
L=1.25u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1570 -1980 0 0 {name=M6
L=1.5u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1760 -1980 0 0 {name=M7
L=1.75u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1940 -1980 0 0 {name=M8
L=2u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 2140 -1980 0 0 {name=M9
L=2.25u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 2330 -1980 0 0 {name=M10
L=2.5u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 2530 -1980 0 0 {name=M11
L=2.75u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 2740 -1980 0 0 {name=M12
L=3u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/code.sym} 350 -2340 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
.save @m.xm1.m0[gm]
.save @m.xm1.m0[vth]
.save @m.xm1.m0[gds]
.save @m.xm1.m0[cgg]
.save @m.xm1.m0[cgs]
.save @m.xm1.m0[cgd]
.save @m.xm2.m0[gm]
.save @m.xm2.m0[vth]
.save @m.xm2.m0[gds]
.save @m.xm2.m0[cgg]
.save @m.xm2.m0[cgs]
.save @m.xm2.m0[cgd]
.save @m.xm3.m0[gm]
.save @m.xm3.m0[vth]
.save @m.xm3.m0[gds]
.save @m.xm3.m0[cgg]
.save @m.xm3.m0[cgs]
.save @m.xm3.m0[cgd]
.save @m.xm4.m0[gm]
.save @m.xm4.m0[vth]
.save @m.xm4.m0[gds]
.save @m.xm4.m0[cgg]
.save @m.xm4.m0[cgs]
.save @m.xm4.m0[cgd]
.save @m.xm5.m0[gm]
.save @m.xm5.m0[vth]
.save @m.xm5.m0[gds]
.save @m.xm5.m0[cgg]
.save @m.xm5.m0[cgs]
.save @m.xm5.m0[cgd]
.save @m.xm6.m0[gm]
.save @m.xm6.m0[vth]
.save @m.xm6.m0[gds]
.save @m.xm6.m0[cgg]
.save @m.xm6.m0[cgs]
.save @m.xm6.m0[cgd]
.save @m.xm7.m0[gm]
.save @m.xm7.m0[vth]
.save @m.xm7.m0[gds]
.save @m.xm7.m0[cgg]
.save @m.xm7.m0[cgs]
.save @m.xm7.m0[cgd]
.save @m.xm8.m0[gm]
.save @m.xm8.m0[vth]
.save @m.xm8.m0[gds]
.save @m.xm8.m0[cgg]
.save @m.xm8.m0[cgs]
.save @m.xm8.m0[cgd]
.save @m.xm9.m0[gm]
.save @m.xm9.m0[vth]
.save @m.xm9.m0[gds]
.save @m.xm9.m0[cgg]
.save @m.xm9.m0[cgs]
.save @m.xm9.m0[cgd]
.save @m.xm10.m0[gm]
.save @m.xm10.m0[vth]
.save @m.xm10.m0[gds]
.save @m.xm10.m0[cgg]
.save @m.xm10.m0[cgs]
.save @m.xm10.m0[cgd]
.save @m.xm11.m0[gm]
.save @m.xm11.m0[vth]
.save @m.xm11.m0[gds]
.save @m.xm11.m0[cgg]
.save @m.xm11.m0[cgs]
.save @m.xm11.m0[cgd]
.save @m.xm12.m0[gm]
.save @m.xm12.m0[vth]
.save @m.xm12.m0[gds]
.save @m.xm12.m0[cgg]
.save @m.xm12.m0[cgs]
.save @m.xm12.m0[cgd]
"}
C {devices/title.sym} 1020 -1560 0 0 {name=l4 author="Nithin Purushothama"}
C {devices/code.sym} 520 -2340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="

.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/design.ngspice 

*.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
