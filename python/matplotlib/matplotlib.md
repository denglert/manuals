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

## Axis options

**Axis labels:**

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$' )
ax.set_ylabel( r'$\sigma$ [pb]' )
~~~~

**Setting axis ticks and labels:**

~~~~
fix, ax = plt.subplots(nrows=1, ncols=1, sharex=True )
ax.set_xticks(      np.linspace(0, 1, 5) )
ax.set_xticklabels( np.linspace(0, 1, 5) )
ax.set_yticks(      np.linspace(0, 1, 5) )
ax.set_yticklabels( np.linspace(0, 1, 5) )
~~~~

**Axis ranges:**

~~~~
ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)
~~~~

## Legend

Sometimes the legend doesn't appear within the `jupyter` environment.
Try the following so that it is displayed:

~~~~
f,a = plt.subplots()
a.plot(x,y, label='y')
handles, labels = a.get_legend_handles_labels()
a.legend(handles, labels)
~~~~

If you wish to place the legend outside the plot, call with this options:

~~~~
plt.legend(bbox_to_anchor=(1, 1), loc='upper left', ncol=1)
~~~~

## Subplots

**Make a 3x2 grid of subfplots:**

~~~~
fig, ax = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
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
