import matplotlib.pyplot as plt  # type: ignore
from matplotlib.widgets import CheckButtons  # type: ignore
import numpy as np

# Define the path to the directory
path = r"C:\Users\NITHIN P\OneDrive\Desktop\Chipathon\gmid_GF180MCUD\PMOS_06v0_DSS\PMOS_06v0_DSS\\"

# Initialize lists for storing results
num_files = 18
W = 3e-6  # SKY130 W
vgs = [[] for _ in range(num_files)]
gm_id = [[] for _ in range(num_files)]
gm_gds = [[] for _ in range(num_files)]
id_W = [[] for _ in range(num_files)]
ft = [[] for _ in range(num_files)]      # ft = gm / Cgg
cgd_cgg = [[] for _ in range(num_files)] # Cgd / Cgg
cgs_cgg = [[] for _ in range(num_files)] # Cgs / Cgg
Vov = [[] for _ in range(num_files)]     # Vov

# Read data from the text files
for i in range(num_files):
    filename = path + f"gmid_pmos_{i + 1}_pfet_06v0_dss_tb.txt"
    try:
        with open(filename, 'r') as fID:
            for line in fID:
                try:
                    temp = list(map(float, line.strip().split()))
                    if len(temp) >= 14:
                        Vgs_val = temp[0]
                        gm = temp[1]
                        id_val = temp[3]
                        Vth = temp[5]
                        gds = temp[7]
                        Cgg = temp[9]
                        Cgs = abs(temp[11])
                        Cgd = abs(temp[13])

                        # Skip invalid or zero denominators
                        if id_val == 0 or gds == 0 or Cgg == 0:
                            continue

                        vov_value = Vgs_val - Vth

                        # Apply Vov > 0 condition
                        if vov_value > 0:
                            vgs[i].append(Vgs_val)
                            Vov[i].append(vov_value)
                            gm_id[i].append(gm / id_val)
                            gm_gds[i].append(gm / gds)
                            id_W[i].append(id_val / W)
                            ft[i].append(gm / (2 * np.pi * Cgg))
                            cgd_cgg[i].append(Cgd / Cgg)
                            cgs_cgg[i].append(Cgs / Cgg)
                except Exception as e:
                    print(f"⚠️ Skipping line in file {filename} due to: {e}")
    except FileNotFoundError:
        print(f"❌ File not found: {filename}")
    except Exception as e:
        print(f"⚠️ Error reading file {filename}: {e}")

# Labels for different transistor lengths
labels = ['0.13u', '0.25u', '0.5u', '0.75u', '1u', '1.25u', '1.5u', '1.75u', '2u', '2.25u', '2.5u', '2.75u', '3u']

# Determine valid plot count (in case some files had no valid data)
min_length = min(len(labels), len(vgs), len(gm_id), len(gm_gds), len(id_W), len(ft), len(cgd_cgg), len(cgs_cgg), len(Vov))

# Function to auto-scale the axes based on visible lines and add margin
def autoscale_lines(ax, lines, margin=0.05):
    x_data, y_data = [], []
    for line in lines:
        if line.get_visible():
            x_data.extend(line.get_xdata())
            y_data.extend(line.get_ydata())
    if x_data and y_data:
        x_min, x_max = min(x_data), max(x_data)
        y_min, y_max = min(y_data), max(y_data)
        x_margin = (x_max - x_min) * margin
        y_margin = (y_max - y_min) * margin
        ax.set_xlim(x_min - x_margin, x_max + x_margin)
        ax.set_ylim(y_min - y_margin, y_max + y_margin)
    else:
        ax.set_xlim(0, 1)
        ax.set_ylim(0, 1)

# Function to plot with checkboxes for toggling visibility
def plot_with_checkboxes(x_data, y_data, x_label, y_label, title):
    fig, ax = plt.subplots()
    plt.subplots_adjust(left=0.2, right=0.8)
    colormap = plt.get_cmap('tab20')
    lines = []
    for i in range(min_length):
        if len(x_data[i]) == len(y_data[i]):
            line, = ax.plot(x_data[i], y_data[i], linestyle='-', color=colormap(i), linewidth=2.5, label=f"L={labels[i]}")
            lines.append(line)
        else:
            print(f"⚠️ Skipping L={labels[i]} due to data mismatch: x={len(x_data[i])}, y={len(y_data[i])}")
    ax.set_xlabel(x_label)
    ax.set_ylabel(y_label)
    ax.set_title(title)
    ax.grid(True)
    ax.legend()
    rax = plt.axes([0.82, 0.4, 0.1, 0.4])
    visibility = [True] * len(lines)
    check = CheckButtons(rax, [f"L={labels[i]}" for i in range(min_length) if len(x_data[i]) == len(y_data[i])], visibility)
    def toggle_lines(label):
        index = [f"L={labels[i]}" for i in range(min_length) if len(x_data[i]) == len(y_data[i])].index(label)
        lines[index].set_visible(not lines[index].get_visible())
        autoscale_lines(ax, lines)
        plt.draw()
    check.on_clicked(toggle_lines)
    autoscale_lines(ax, lines)
    plt.show()

# Plot gm/id versus Vgs
plot_with_checkboxes(vgs, gm_id, 'Vgs', 'gm/id', 'PMOS 6V DSS  gm/id vs Vgs')

# Plot gm/id versus Vov
plot_with_checkboxes(Vov, gm_id, 'Vov', 'gm/id', 'PMOS 6V DSS  gm/id vs Vov')

# Plot gm/gds versus gm/id
plot_with_checkboxes(gm_id, gm_gds, 'gm/id', 'gm/gds', 'PMOS 6V DSS  gm/gds vs gm/id')

# Plot id/W versus gm/id
plot_with_checkboxes(gm_id, id_W, 'gm/id', 'id/W', 'PMOS 6V DSS  id/W vs gm/id')

# Plot ft = gm / Cgg versus gm/id
plot_with_checkboxes(gm_id, ft, 'gm/id', 'ft (Hz)', 'PMOS 6V DSS  ft vs gm/id')

# Plot Cgd / Cgg versus gm/id
plot_with_checkboxes(gm_id, cgd_cgg, 'gm/id', 'Cgd / Cgg', 'PMOS 6V DSS  Cgd/Cgg vs gm/id')

# Plot Cgs / Cgg versus gm/id
plot_with_checkboxes(gm_id, cgs_cgg, 'gm/id', 'Cgs / Cgg', 'PMOS 6V DSS  Cgs/Cgg vs gm/id')

# Combined Plot
def plot_all_together():
    fig, axs = plt.subplots(3, 3, figsize=(15, 10))
    fig.suptitle("PMOS 6V DSS gm/id plots", fontsize=16, fontweight='bold')  # Title added
    plot_data = [
        (vgs, gm_id, 'Vgs', 'gm/id'),
        (Vov, gm_id, 'Vov', 'gm/id'),
        (gm_id, gm_gds, 'gm/id', 'gm/gds'),
        (gm_id, id_W, 'gm/id', 'id/W'),
        (gm_id, ft, 'gm/id', 'ft (Hz)'),
        (gm_id, cgd_cgg, 'gm/id', 'Cgd / Cgg'),
        (gm_id, cgs_cgg, 'gm/id', 'Cgs / Cgg')
    ]

    for idx, ax in enumerate(axs.flat):
        if idx < len(plot_data):  # Only plot if data exists
            x, y, x_label, y_label = plot_data[idx]
            for i in range(min_length):
                ax.plot(x[i], y[i], label=f"L={labels[i]}")
            ax.set_xlabel(x_label)
            ax.set_ylabel(y_label)
            ax.grid(True)
        else:
            ax.axis('off')  # Hide unused subplots

    # Unified legend at the bottom
    fig.legend([f"L={label}" for label in labels], loc='lower center', ncol=5, fontsize=10)
    plt.tight_layout(rect=[0, 0.05, 1, 0.93])  # Adjust layout to fit the title and legend
    plt.show()

plot_all_together()
