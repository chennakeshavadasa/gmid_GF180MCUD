# GF180MCU gm/ID Explorer

An interactive, browser-based gm/ID characterisation tool for the **GlobalFoundries GF180MCU** open-source 0.18µm CMOS PDK.

🔗 **Live demo:** [https://chennakeshavadasa.github.io/gmid_GF180MCUD/](https://chennakeshavadasa.github.io/gmid_GF180MCUD/)

---

## What is this?

This tool lets you visually explore the gm/ID characteristics of all 9 MOSFET variants in the GF180MCU PDK directly in your browser — no Python, no MATLAB, no local install required.

It is derived from the simulation data in the [Low-Power-Circuits-IoT-Systems-Group/gmid_GF180MCUD](https://github.com/Low-Power-Circuits-IoT-Systems-Group/gmid_GF180MCUD) repository, converted into an interactive Plotly-based dashboard with a full PDK reference panel.

---

## Features

### 📋 PDK Reference Panel
- Full explanation of all 9 MOSFET flavours (nfet_03v3, pfet_03v3, DSS/SAB variants, 5V/6V devices)
- Official EP electrical specifications from [gf180mcu-pdk.rtfd.io](https://gf180mcu-pdk.rtfd.io): Vth₀, Idsat, Ioff, SubVt slope, BVDSS — slow/typical/fast corners
- Explanation of what DSS (Drain-Side Silicide Block / SAB) is and when to use it
- Process corner guide (TT/FF/SS/FS/SF) and what each means for analog design
- Instance parameter limits (Wmin, Wmax, Lmin, Lmax) for every device
- Designer's quick-reference cheatsheet

### 📈 gm/ID Explorer
- **9 device variants:** NMOS/PMOS, 3.3V/5V/6V, SVT/DSS
- **7 interactive plots:**
  - gm/ID vs Vgs
  - gm/ID vs Vov (= Vgs − Vth)
  - gm/gds vs gm/ID (intrinsic gain)
  - ID/W vs gm/ID (normalised current density)
  - fT vs gm/ID (transit frequency)
  - Cgd/Cgg vs gm/ID
  - Cgs/Cgg vs gm/ID
- **Overview mode** — 6-panel simultaneous view
- **Channel length filter** — toggle individual L values or quick-select All / Short / Long
- **Log scale** toggle for both axes
- **PNG export** of any plot

---

## Device Summary

| Model | Type | Vdd | Lmin | Vth₀ typ | Idsat typ | Notes |
|-------|------|-----|------|-----------|-----------|-------|
| nfet_03v3 | NMOS | 3.3V | 0.28µm | 0.63V | 510 µA/µm | Standard workhorse LV NMOS |
| pfet_03v3 | PMOS | 3.3V | 0.28µm | −0.73V | −250 µA/µm | Complementary LV PMOS |
| nfet_03v3_dss | NMOS | 3.3V | 0.28µm | 0.63V | 505 µA/µm | Drain silicide block, low hot-carrier |
| pfet_03v3_dss | PMOS | 3.3V | 0.28µm | −0.72V | −245 µA/µm | Drain silicide block |
| nfet_06v0 | NMOS | 5/6V | 0.60µm | 0.73V | 570 µA/µm | Thick-oxide MV NMOS |
| pfet_06v0 | PMOS | 5/6V | 0.55µm | −0.85V | −290 µA/µm | Thick-oxide MV PMOS |
| nfet_06v0_dss | NMOS | 5/6V | 0.60µm | 0.72V | 498 µA/µm | MV drain silicide block |
| pfet_06v0_dss | PMOS | 5/6V | 0.55µm | −0.84V | −233 µA/µm | MV drain silicide block |
| nfet_05v0_svt | NMOS | 5V | 0.75µm | 0.70V | 500 µA/µm | nfet_06v0 at 5V bias |

All Vth₀ values use max-Gm extraction at Vd = 0.05V, T = 25°C.

---

## Data Source

Simulation data from:  
**[Low-Power-Circuits-IoT-Systems-Group/gmid_GF180MCUD](https://github.com/Low-Power-Circuits-IoT-Systems-Group/gmid_GF180MCUD)**  
GF180MCU gm/ID characterisation — ngspice DC sweep results across 9 device variants and up to 18 channel lengths per variant.

PDK electrical specifications from:  
**[gf180mcu-pdk.readthedocs.io](https://gf180mcu-pdk.readthedocs.io)**  
Apache 2.0 licensed. © GlobalFoundries PDK Authors.

---

## Technical Notes

- Data is downsampled to 300 points per curve (from ~30k–60k raw simulation points) using uniform decimation — visually lossless for these monotonic characteristics
- Plotting engine: [Plotly.js](https://plotly.com/javascript/) v2.27.0 (loaded from CDN)
- No frameworks, no build step — plain HTML/CSS/JS

---

## License

The tool code and layout are released under **MIT License**.  
Simulation data: see [original repo license](https://github.com/Low-Power-Circuits-IoT-Systems-Group/gmid_GF180MCUD).  
PDK specs: Apache 2.0 © GlobalFoundries PDK Authors.
 
---

## Contributing

PRs welcome for:
- Adding the native 6V NMOS (`nfet_06v0_nvt`) dataset
- Temperature sweep data (−40°C / 27°C / 125°C)
- gm/ID design helper tool (target gm/ID → W/L lookup)
- Monte Carlo mismatch overlay

---

*Built for the open-source silicon community. If you find it useful, ⭐ the repo.*
