v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {set ngbehavior=hsa
set ng_nomodcheck } -3530 -1160 0 0 0.4 0.4 {font=Monospace}
T {set ngbehavior=hsa
set ng_nomodcheck } -3830 -720 0 0 0.4 0.4 {font=Monospace}
N -3470 -720 -3470 -670 {
lab=GND}
N -3270 -720 -3270 -670 {
lab=GND}
N -3470 -670 -3270 -670 {
lab=GND}
N -3470 -850 -3270 -850 {
lab=VDD}
N -3560 -750 -3510 -750 {
lab=VG}
N -3360 -750 -3310 -750 {
lab=VG}
N -3260 -1100 -3260 -1040 {
lab=VDD}
N -3170 -1100 -3170 -1040 {
lab=VDD}
N -3260 -980 -3260 -920 {
lab=VG}
N -3170 -980 -3170 -920 {
lab=GND}
N -3160 -750 -3110 -750 {
lab=VG}
N -3070 -720 -3070 -670 {
lab=GND}
N -3270 -670 -3070 -670 {
lab=GND}
N -3270 -850 -3070 -850 {
lab=VDD}
N -2980 -750 -2930 -750 {
lab=VG}
N -2890 -720 -2890 -670 {
lab=GND}
N -3070 -850 -2890 -850 {
lab=VDD}
N -3070 -670 -2890 -670 {
lab=GND}
N -2810 -750 -2760 -750 {
lab=VG}
N -2720 -720 -2720 -670 {
lab=GND}
N -2890 -850 -2720 -850 {
lab=VDD}
N -2890 -670 -2720 -670 {
lab=GND}
N -3470 -850 -3470 -840 {
lab=VDD}
N -3270 -850 -3270 -840 {
lab=VDD}
N -3070 -850 -3070 -840 {
lab=VDD}
N -2890 -850 -2890 -840 {
lab=VDD}
N -2720 -850 -2720 -840 {
lab=VDD}
N -2650 -750 -2600 -750 {
lab=VG}
N -2560 -720 -2560 -670 {
lab=GND}
N -2560 -850 -2560 -840 {
lab=VDD}
N -2460 -750 -2410 -750 {
lab=VG}
N -2370 -720 -2370 -670 {
lab=GND}
N -2370 -850 -2370 -840 {
lab=VDD}
N -2280 -750 -2230 -750 {
lab=VG}
N -2190 -720 -2190 -670 {
lab=GND}
N -2190 -850 -2190 -840 {
lab=VDD}
N -2080 -750 -2030 -750 {
lab=VG}
N -1990 -720 -1990 -670 {
lab=GND}
N -1990 -850 -1990 -840 {
lab=VDD}
N -1890 -750 -1840 -750 {
lab=VG}
N -1800 -720 -1800 -670 {
lab=GND}
N -1800 -850 -1800 -840 {
lab=VDD}
N -1690 -750 -1640 -750 {
lab=VG}
N -1600 -720 -1600 -670 {
lab=GND}
N -1600 -850 -1600 -840 {
lab=VDD}
N -1480 -750 -1430 -750 {
lab=VG}
N -1390 -720 -1390 -670 {
lab=GND}
N -1390 -850 -1390 -840 {
lab=VDD}
N -2720 -850 -2560 -850 {lab=VDD}
N -2560 -850 -2370 -850 {lab=VDD}
N -2370 -850 -2190 -850 {lab=VDD}
N -2190 -850 -1390 -850 {lab=VDD}
N -2720 -670 -1390 -670 {lab=GND}
N -3470 -750 -3430 -750 {lab=VDD}
N -3430 -850 -3430 -750 {lab=VDD}
N -3270 -750 -3230 -750 {lab=VDD}
N -3230 -850 -3230 -750 {lab=VDD}
N -3070 -750 -3030 -750 {lab=VDD}
N -3030 -850 -3030 -750 {lab=VDD}
N -2890 -750 -2850 -750 {lab=VDD}
N -2850 -850 -2850 -750 {lab=VDD}
N -2720 -750 -2680 -750 {lab=VDD}
N -2680 -850 -2680 -750 {lab=VDD}
N -2560 -750 -2530 -750 {lab=VDD}
N -2530 -850 -2530 -750 {lab=VDD}
N -2370 -750 -2340 -750 {lab=VDD}
N -2340 -850 -2340 -750 {lab=VDD}
N -2190 -750 -2160 -750 {lab=VDD}
N -2160 -850 -2160 -750 {lab=VDD}
N -1990 -750 -1960 -750 {lab=VDD}
N -1960 -850 -1960 -750 {lab=VDD}
N -1800 -750 -1770 -750 {lab=VDD}
N -1770 -850 -1770 -750 {lab=VDD}
N -1600 -750 -1570 -750 {lab=VDD}
N -1570 -850 -1570 -750 {lab=VDD}
N -1390 -750 -1360 -750 {lab=VDD}
N -1360 -850 -1360 -750 {lab=VDD}
N -1390 -850 -1360 -850 {lab=VDD}
C {devices/lab_pin.sym} -3560 -750 0 0 {name=p1 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} -3360 -750 0 0 {name=p2 sig_type=std_logic lab=VG}
C {devices/vsource.sym} -3260 -1010 0 0 {name=VGS value=1.65 savecurrent=false}
C {devices/vsource.sym} -3170 -1010 0 0 {name=VD value=1.65 savecurrent=false}
C {devices/gnd.sym} -3070 -670 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -3170 -920 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -3160 -750 0 0 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} -2980 -750 0 0 {name=p7 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} -2810 -750 0 0 {name=p8 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -3470 -810 0 0 {name=VD1 savecurrent=true}
C {devices/ammeter.sym} -3270 -810 0 0 {name=VD2 savecurrent=true}
C {devices/ammeter.sym} -3070 -810 0 0 {name=VD3 savecurrent=true}
C {devices/ammeter.sym} -2890 -810 0 0 {name=VD4 savecurrent=true}
C {devices/ammeter.sym} -2720 -810 0 0 {name=VD5 savecurrent=true}
C {devices/lab_pin.sym} -2650 -750 0 0 {name=p9 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -2560 -810 0 0 {name=VD6 savecurrent=true}
C {devices/lab_pin.sym} -2460 -750 0 0 {name=p10 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -2370 -810 0 0 {name=VD7 savecurrent=true}
C {devices/lab_pin.sym} -2280 -750 0 0 {name=p11 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -2190 -810 0 0 {name=VD8 savecurrent=true}
C {devices/lab_pin.sym} -2080 -750 0 0 {name=p12 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -1990 -810 0 0 {name=VD9 savecurrent=true}
C {devices/lab_pin.sym} -1890 -750 0 0 {name=p13 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -1800 -810 0 0 {name=VD10 savecurrent=true}
C {devices/lab_pin.sym} -1690 -750 0 0 {name=p14 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -1600 -810 0 0 {name=VD11 savecurrent=true}
C {devices/lab_pin.sym} -1480 -750 0 0 {name=p15 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -1390 -810 0 0 {name=VD12 savecurrent=true}
C {devices/lab_pin.sym} -3260 -920 0 0 {name=p3 sig_type=std_logic lab=VG}
C {devices/vdd.sym} -2560 -850 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} -3170 -1100 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} -3260 -1100 0 0 {name=l5 lab=VDD}
C {devices/code.sym} -4150 -720 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
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
C {devices/code.sym} -3980 -720 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="

.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/design.ngspice 

*.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {devices/code_shown.sym} -4410 -930 0 0 {name=NGSPICE
only_toplevel=true
value="
* ngspice commands
.option wnflag=1 
.option .savecurrents
.control
save all
dc VGS 0.05 3 0.1m 
** remove zero length vectors to prevent write errors
remzerovec
write /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_PMOS_03v3_DSS_tb.raw

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

wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_1_pfet_03v3_dss_tb.txt @m.xm1.m0[gm] i(VD1) @m.xm1.m0[vth] @m.xm1.m0[gds] @m.xm1.m0[cgg] @m.xm1.m0[cgs] @m.xm1.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_2_pfet_03v3_dss_tb.txt @m.xm2.m0[gm] i(VD2) @m.xm2.m0[vth] @m.xm2.m0[gds] @m.xm2.m0[cgg] @m.xm2.m0[cgs] @m.xm2.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_3_pfet_03v3_dss_tb.txt @m.xm3.m0[gm] i(VD3) @m.xm3.m0[vth] @m.xm3.m0[gds] @m.xm3.m0[cgg] @m.xm3.m0[cgs] @m.xm3.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_4_pfet_03v3_dss_tb.txt @m.xm4.m0[gm] i(VD4) @m.xm4.m0[vth] @m.xm4.m0[gds] @m.xm4.m0[cgg] @m.xm4.m0[cgs] @m.xm4.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_5_pfet_03v3_dss_tb.txt @m.xm5.m0[gm] i(VD5) @m.xm5.m0[vth] @m.xm5.m0[gds] @m.xm5.m0[cgg] @m.xm5.m0[cgs] @m.xm5.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_6_pfet_03v3_dss_tb.txt @m.xm6.m0[gm] i(VD6) @m.xm6.m0[vth] @m.xm6.m0[gds] @m.xm6.m0[cgg] @m.xm6.m0[cgs] @m.xm6.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_7_pfet_03v3_dss_tb.txt @m.xm7.m0[gm] i(VD7) @m.xm7.m0[vth] @m.xm7.m0[gds] @m.xm7.m0[cgg] @m.xm7.m0[cgs] @m.xm7.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_8_pfet_03v3_dss_tb.txt @m.xm8.m0[gm] i(VD8) @m.xm8.m0[vth] @m.xm8.m0[gds] @m.xm8.m0[cgg] @m.xm8.m0[cgs] @m.xm8.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_9_pfet_03v3_dss_tb.txt @m.xm9.m0[gm] i(VD9) @m.xm9.m0[vth] @m.xm9.m0[gds] @m.xm9.m0[cgg] @m.xm9.m0[cgs] @m.xm9.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_10_pfet_03v3_dss_tb.txt @m.xm10.m0[gm] i(VD10) @m.xm10.m0[vth] @m.xm10.m0[gds] @m.xm10.m0[cgg] @m.xm10.m0[cgs] @m.xm10.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_11_pfet_03v3_dss_tb.txt @m.xm11.m0[gm] i(VD11) @m.xm11.m0[vth] @m.xm11.m0[gds] @m.xm11.m0[cgg] @m.xm11.m0[cgs] @m.xm11.m0[cgd]
wrdata /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_pmos_12_pfet_03v3_dss_tb.txt @m.xm12.m0[gm] i(VD12) @m.xm12.m0[vth] @m.xm12.m0[gds] @m.xm12.m0[cgg] @m.xm12.m0[cgs] @m.xm12.m0[cgd]
set appendwrite
op
remzerovec
write /foss/designs/PDK-CHAR/GF180-MCUD/PMOS_03v3_DSS/gmid_PMOS_03v3_DSS_tb.raw
**quit 0
.endc
"
}
C {devices/title.sym} -3440 -580 0 0 {name=l6 author="Nithin Purushothama"}
C {symbols/pfet_03v3_dss.sym} -3490 -750 0 0 {name=M1
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -3290 -750 0 0 {name=M2
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -3090 -750 0 0 {name=M3
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2910 -750 0 0 {name=M4
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2740 -750 0 0 {name=M5
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2580 -750 0 0 {name=M6
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2390 -750 0 0 {name=M7
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2210 -750 0 0 {name=M8
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -2010 -750 0 0 {name=M9
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -1820 -750 0 0 {name=M10
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -1620 -750 0 0 {name=M11
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
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} -1410 -750 0 0 {name=M12
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
model=pfet_03v3_dss
spiceprefix=X
}
