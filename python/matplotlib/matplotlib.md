# Matplotlib commands


## Basics

Import matplotlib

~~~~
import matplotlib.pyplot as plt
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

**Make a 3x2 grid of subfplots

~~~~
fig, ax = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
plt.subplots_adjust(wspace=0.2, hspace=0.2)
~~~~

