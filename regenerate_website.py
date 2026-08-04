"""
regenerate_website.py  (v3 — final clean version)
- PMOS 6V: only 15 L-curves (0.75u-4.25u); last 3 excluded (sim artifacts)
- PMOS 6V: median smoothing + monotone-trim from gm/ID peak (inversion side)
- All devices: guard id_val <= 0, gds <= 0, Cgg <= 0
"""
import os, json, base64, re
import numpy as np
from scipy.ndimage import median_filter

DATA_ROOT  = "/home/claude/new_scripts_repo/gmid Data"
HTML_IN    = "/home/claude/website_repo/index.html"
HTML_OUT   = "/home/claude/gmid_GF180MCUD_index.html"
N_DS = 300   # downsample target
W    = 3e-6

LABELS_3V3   = ['0.28u','0.5u','0.75u','1u','1.25u','1.5u',
                 '1.75u','2u','2.25u','2.5u','2.75u','3u']
LABELS_6V    = ['0.75u','1u','1.25u','1.5u','1.75u','2u',
                '2.25u','2.5u','2.75u','3u','3.25u','3.5u',
                '3.75u','4u','4.25u','4.5u','4.75u','5u']
LABELS_6V_15 = LABELS_6V[:15]   # 0.75u to 4.25u only for PMOS 6V

# (dir_rel, filename_tpl, type, labels, vov_thresh, smooth)
DEVICES = {
    'NMOS_03v3_SVT':('NMOS_03v3_SVT/NMOS_03v3_SVT','gmid_nmos_{i}_nfet_03v3_svt_tb.txt','NMOS',LABELS_3V3,  -0.325,False),
    'NMOS_03v3_DSS':('NMOS_03v3_DSS/NMOS_03v3_DSS','gmid_nmos_{i}_nfet_03v3_dss_tb.txt','NMOS',LABELS_3V3,  -0.275,False),
    'NMOS_05v0_SVT':('NMOS_05v0_SVT/NMOS_05v0_SVT','gmid_nmos_{i}_nfet_05v0_svt_tb.txt','NMOS',LABELS_6V,   -0.275,False),
    'NMOS_06v0_SVT':('NMOS_06v0_SVT/NMOS_06v0_SVT','gmid_nmos_{i}_nfet_06v0_svt_tb.txt','NMOS',LABELS_6V,   -0.275,False),
    'NMOS_06v0_DSS':('NMOS_06v0_DSS/NMOS_06v0_DSS','gmid_nmos_{i}_nfet_06v0_dss_tb.txt','NMOS',LABELS_6V,   -0.25, False),
    'PMOS_03v3_SVT':('PMOS_03v3_SVT/PMOS_03v3_SVT','gmid_pmos_{i}_pfet_03v3_svt_tb.txt','PMOS',LABELS_3V3,  -0.5,  False),
    'PMOS_03v3_DSS':('PMOS_03v3_DSS/PMOS_03v3_DSS','gmid_pmos_{i}_pfet_03v3_dss_tb.txt','PMOS',LABELS_3V3,  -0.5,  False),
    'PMOS_06v0_SVT':('PMOS_06v0_SVT/PMOS_06v0_SVT','gmid_pmos_{i}_pfet_06v0_svt_tb.txt','PMOS',LABELS_6V_15,-0.5,  True),
    'PMOS_06v0_DSS':('PMOS_06v0_DSS/PMOS_06v0_DSS','gmid_pmos_{i}_pfet_06v0_dss_tb.txt','PMOS',LABELS_6V_15,-0.5,  True),
}

AK = ['vgs','vov','gmid','gmgds','idW','ft','cgdcgg','cgscgg']

def ds(lst, n):
    if len(lst) <= n: return lst
    idx = np.round(np.linspace(0, len(lst)-1, n)).astype(int)
    return [lst[i] for i in idx]

def rl(lst, nd=6):
    return [round(v, nd) for v in lst]

def monotone_from_peak(gmid_list):
    """Trim to peak, then enforce running-minimum."""
    if not gmid_list: return gmid_list
    # Cap unphysical values before searching peak
    GMID_CAP = 40.0
    capped = [min(v, GMID_CAP) for v in gmid_list]
    peak_idx = capped.index(max(capped))
    trimmed = gmid_list[peak_idx:]
    running_min = trimmed[0]
    result = []
    for v in trimmed:
        running_min = min(running_min, v)
        result.append(running_min)
    return result, peak_idx

def process_device(key, d_rel, tpl, dtype, labels, vov_thr, smooth):
    nL   = len(labels)
    ddir = os.path.join(DATA_ROOT, d_rel)
    raw  = {k: [[] for _ in range(nL)] for k in AK}
    skipped = 0

    for i in range(nL):
        fname = os.path.join(ddir, tpl.format(i=i+1))
        if not os.path.exists(fname):
            print(f"  ⚠ Missing: {fname}")
            continue
        with open(fname) as f:
            for line in f:
                try:
                    t = list(map(float, line.strip().split()))
                    if len(t) < 14: continue
                    Vgs=t[0]; gm=t[1]; id_v=t[3]; Vth=t[5]
                    gds=t[7]; Cgg=t[9]; Cgs=abs(t[11]); Cgd=abs(t[13])
                    if id_v <= 0 or gds <= 0 or Cgg <= 0 or gm <= 0:
                        skipped += 1; continue
                    vov = Vgs - Vth
                    if vov <= vov_thr: continue
                    raw['vgs'][i].append(Vgs)
                    raw['vov'][i].append(vov)
                    raw['gmid'][i].append(gm / id_v)
                    raw['gmgds'][i].append(gm / gds)
                    raw['idW'][i].append(id_v / W)
                    raw['ft'][i].append(gm / (2*np.pi*Cgg))
                    raw['cgdcgg'][i].append(Cgd / Cgg)
                    raw['cgscgg'][i].append(Cgs / Cgg)
                except Exception:
                    pass

        if smooth and len(raw['gmid'][i]) > 20:
            win = max(3, len(raw['gmid'][i]) // 150)
            arr = np.array(raw['gmid'][i])
            raw['gmid'][i] = median_filter(arr, size=win, mode='nearest').tolist()

    # Downsample
    out = {'labels': labels, 'type': dtype}
    for k in AK:
        out[k] = [rl(ds(raw[k][i], N_DS)) for i in range(nL)]

    # PMOS 6V: trim to inversion side (from gm/ID peak onward)
    if smooth:
        for i in range(nL):
            if not out['gmid'][i]: continue
            trimmed_gmid, peak_idx = monotone_from_peak(out['gmid'][i])
            for k in AK:
                out[k][i] = out[k][i][peak_idx:]
            out['gmid'][i] = trimmed_gmid

    print(f"  {key}: {nL} curves, skipped {skipped} bad rows")
    return out

print("="*60)
all_data = {}
for key,(d_rel,tpl,dtype,labels,vov_thr,smooth) in DEVICES.items():
    print(f"[{key}]")
    all_data[key] = process_device(key,d_rel,tpl,dtype,labels,vov_thr,smooth)

print("\nSummary:")
for key,d in all_data.items():
    pts = [len(c) for c in d['gmid'] if c]
    gmids = [max(c) for c in d['gmid'] if c]
    gmide = [c[-1] for c in d['gmid'] if c]
    mono  = sum(1 for c in d['gmid'] if c and all(c[j]>=c[j+1] for j in range(len(c)-1)))
    print(f"  {key}: L={len(d['labels'])} pts=[{min(pts)},{max(pts)}] "
          f"gmid_max=[{min(gmids):.1f},{max(gmids):.1f}] "
          f"gmid_end=[{min(gmide):.3f},{max(gmide):.3f}] "
          f"monotone={mono}/{len(pts)}")

b64 = base64.b64encode(json.dumps(all_data,separators=(',',':')).encode()).decode()
html= open(HTML_IN).read()
old = re.search(r'const B64 = "([^"]+)"', html).group(1)
new = html.replace(f'const B64 = "{old}"', f'const B64 = "{b64}"')
assert new != html
open(HTML_OUT,'w').write(new)
print(f"\n✅ {HTML_OUT}  ({os.path.getsize(HTML_OUT):,} bytes)  B64={len(b64):,}")
