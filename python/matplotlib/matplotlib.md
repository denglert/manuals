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

## Global style configuration

**Print available styles:**

~~~~
print(plt.style.available)
~~~~

E.g. select ggplot:

~~~~
plt.style.use('ggplot')
~~~~

You can also load in a style configurations file.

Contents of default.mplstyle:

~~~~
axes.titlesize : 24
axes.labelsize : 20
lines.linewidth : 3
lines.markersize : 10
xtick.labelsize : 16
ytick.labelsize : 16
~~~~

Load in style sheet:

~~~~
plt.style.use('default.mplstyle')
~~~~

**Reset to default:**

~~~~
import matplotlib as mpl
mpl.rcParams.update(mpl.rcParamsDefault)
~~~~

or for inline this might help too:

~~~~
inline_rc = dict(mpl.rcParams)
mpl.rcParams.update(inline_rc)
~~~~

## Heat map


### With `pcolor`

~~~~
cba = np.linspace(-1.0,  1.0, 100, endpoint=True)
tb  = np.linspace(0.0,  10.0, 100, endpoint=True)

X, Y = np.meshgrid(cba,tb)
K_HDD = k_hdd(X,Y)

f, a = plt.subplots()
c = a.pcolor(X, Y, K_HUU, cmap='RdBu_r', vmin=-2.0, vmax=2.0 )
~~~~

## Contour plot

Example for a simple contour plot:

~~~~
k_hdd = lambda cba, tb: np.sqrt(1.0-cba*cba) - cba * tb
cba   = np.linspace(-1.0, 1.0, 100, endpoint=True)
tb    = np.linspace(0.0, 30.0, 100, endpoint=True)
X, Y  = np.meshgrid(cba,tb)
Z     = k_hdd(X,Y)
c = plt.contourf(X,Y,Z, 10,  cmap='RdBu_r',  extend='both')
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

## Pixel plot

Make a grid pixel plot

~~~~
grid = np.array([
        [1,2,3],
        [4,5,6],
        [7,8,9]
        ])

plt.imshow(grid,  interpolation='nearest', cmap='gnuplot' )
~~~~


Make a grid pixel plot, with specifying extent (didn't really managed to make it work so far)

~~~~
plt.imshow(grid, extent=[-0.65, 0.65, 0, 20.5], interpolation='nearest', cmap='gnuplot' )
~~~~

## Subplots

**Make a 3x2 grid of subfplots:**

~~~~
fig, ax = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
plt.subplots_adjust(wspace=0.2, hspace=0.2)
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
