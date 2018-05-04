# Matplotlib commands

## Basics

Import matplotlib

General:

~~~~
import matplotlib.pyplot as plt
~~~~

For contours:

~~~~
from matplitlib.mlab import griddata
import matplotlib.cm as cm
~~~~

Switch backend to pdf

~~~~
plt.switch_backend('PDF')
~~~~

Save figure

~~~~
plt.savefig( 'fig.pdf' )
~~~~

## Figure options

Create a figure with a specific size and dpi:

~~~~
plt.figure(figsize=(20,10), dpi=80)
~~~~


Get the figure handle of an already existing figure:

~~~~
f = plt.gcf()
~~~~

### Margins

Adjust margins:

~~~~
f.subplots_adjust(left=0.1, right=0.9, top=0.9, bottom=0.1)
~~~~

Tight layout:

~~~~
f.tight_layout()
~~~~

## Axis

Get the axis handle of an already existing axis:

~~~~
a = plt.gca()
~~~~


Delete an existing axis:

~~~~
fig.delaxes(ax)
~~~~

### Axis label

Setting labels:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$' )
ax.set_ylabel( r'$\sigma$ [pb]' )
~~~~

Align axis label to the right:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$', horizontalalignment='right', x=1.0)
~~~~

Color labels:

~~~~
ax.xaxis.label.set_color('red')
~~~~

### Setting axis ticks and labels

~~~~
fix, ax = plt.subplots(nrows=1, ncols=1, sharex=True )
ax.set_xticks(      np.linspace(0, 1, 5) )
ax.set_xticklabels( np.linspace(0, 1, 5) )
ax.set_yticks(      np.linspace(0, 1, 5) )
ax.set_yticklabels( np.linspace(0, 1, 5) )
~~~~

### Axis ranges

~~~~
ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)
~~~~

### Plots with two different scales

~~~~
fig, ax1 = plt.subplots()
ax1.plot(t, s1, 'b-')
ax2 = ax1.twinx()
ax2.plot(t, s2, 'r.')
~~~~

## Legend

Moved to [legend](./legend.md).

## Contour

Moved to [contoue](./contour.md)

## Subplots

**Make a 3x2 grid of subfplots:**

~~~~
fig, axes = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
~~~~


**Specify the height ratio of the subplots:**

~~~~
f,(a1,a2) = plt.subplots(nrows=2, gridspec_kw={'height_ratios':[2, 1]})
~~~~

## Spines

**Set color of spines:**

~~~~
a.spines['left'].set_color('C0')
~~~~

### Grid

~~~~
ax1 = plt.subplot2grid((6,1), (0,0), rowspan=5, colspan=1)
ax2 = plt.subplot2grid((6,1), (5,0), rowspan=1, colspan=1, sharex=ax1)
~~~~

### Adjusting subplot size and spacing between subplots

~~~~
f, a = plt.subplots(nrows=3, ncols=2)
f.tight_layout()
~~~~

or 

~~~~
f.subplots_adjust(wspace=0.2, hspace=0.2)
~~~~

## Colorbar


**Get colorbar:**

~~~~
sc = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb = plt.colorbar(sc, ticks=tick_lock)
~~~~

**Colorbar axis label:**

~~~~
sc    = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb    = plt.colorbar(sc, ticks=tick_lock)
cb_ax = cb.ax
cb_ax.set_ylabel('colorbar label') 
~~~~

**Colorbar range:**

~~~~
cb.set_clim(c_min, c_max)
~~~~

**Logarithmic colorbar:**

~~~~
c = a.pcolor(X, Y, gHhh2, cmap='viridis', norm=colors.LogNorm(vmin=1e10, vmax=gHhh2.max()))
~~~~

Normalizations:
- `colors.LogNorm()`: logarithmic
- `colors.SymLogNorm()`: symmetric logarithmic
- `colors.PowerNorm()`: power-law
