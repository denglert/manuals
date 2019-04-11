# Figure options

Create a figure with a specific size, dpi and an equal aspect ratio:

~~~~
plt.figure(figsize=(20,10), dpi=80, subplot_kw={'aspect':'equal'})
~~~~


Get the figure handle of an already existing figure:

~~~~
f = plt.gcf()
~~~~


## Size

~~~~
fig.set_size_inches(10,10)
~~~~

## Margins

Adjust margins:

~~~~
f.subplots_adjust(left=0.1, right=0.9, top=0.9, bottom=0.1)
~~~~

Tight layout:

~~~~
f.tight_layout()
~~~~

Adjusting subplot size and spacing between subplots:

~~~~
f, a = plt.subplots(nrows=3, ncols=2)
f.tight_layout()
~~~~

or 

~~~~
f.subplots_adjust(wspace=0.2, hspace=0.2)
~~~~


## Subplots

### `plt.subplots()`

~~~~
plt.subplots(nrows=1, ncols=1, sharex=False, sharey=False, squeeze=True, subplot_kw=None, gridspec_kw=None, **fig_kw)
~~~~

Create a figure and a set of subplots

This utility wrapper makes it convenient to create common layouts of
subplots, including the enclosing figure object, in a single call.

**Arguments:**

- `rows`, `ncols` : `int`, optional, default: 1
    Number of rows/columns of the subplot grid.

- `sharex`, `sharey` : `bool`or `{'none', 'all', 'row', 'col'}`, default: `False`
    Controls sharing of properties among x (`sharex`) or y (`sharey`)
    axes:

        - True or 'all': x- or y-axis will be shared among all
          subplots.
        - False or 'none': each subplot x- or y-axis will be
          independent.
        - 'row': each subplot row will share an x- or y-axis.
        - 'col': each subplot column will share an x- or y-axis.

    When subplots have a shared x-axis along a column, only the x tick
    labels of the bottom subplot are visible.  Similarly, when subplots
    have a shared y-axis along a row, only the y tick labels of the first
    column subplot are visible.

- `squeeze`: bool, optional, default: True
    - If `True`, extra dimensions are squeezed out from the returned Axes
      object:

        - if only one subplot is constructed (nrows=ncols=1), the
          resulting single Axes object is returned as a scalar.
        - for Nx1 or 1xN subplots, the returned object is a 1D numpy
          object array of Axes objects are returned as numpy 1D arrays.
        - for NxM, subplots with N>1 and M>1 are returned as a 2D arrays.

    - If `False`, no squeezing at all is done: the returned Axes object is
      always a 2D array containing Axes instances, even if it ends up
      being 1x1.

- `subplot_kw`: `dict`, optional
    Dict with keywords passed to the
    :meth:`~matplotlib.figure.Figure.add_subplot` call used to create each
    subplot.

- `gridspec_kw`: `dict`, optional
    Dict with keywords passed to the
    :class:`~matplotlib.gridspec.GridSpec` constructor used to create the
    grid the subplots are placed on.

- `**fig_kw` :
    All additional keyword arguments are passed to the :func:`figure` call.


**Examples:**

Make a 3x2 grid of subfplots:

~~~~
fig, axes = plt.subplots(ncols=3, nrows=2, figsize=(10,10))
~~~~


Specify the height ratio of the subplots:

~~~~
f,(a1,a2) = plt.subplots(nrows=2, gridspec_kw={'height_ratios':[2, 1]})
~~~~


### `plt.subplot2grid()`

~~~~
plt.subplot2grid(shape, loc, rowspan=1, colspan=1, fig=None, **kwargs)
~~~~

**Arguments:**

- `shape`: sequence of 2 ints
  Shape of grid in which to place axis.
  First entry is number of rows, second entry is number of columns.


- `loc`: sequence of 2 ints
    Location to place axis within grid.
    First entry is row number, second entry is column number.

- `rowspan`: `int`
    Number of rows for the axis to span to the right.

- `colspan`: `int`
    Number of columns for the axis to span downwards.

- `fig`: `Figure`, optional
	Figure to place axis in. Defaults to current figure.

- `**kwargs`
    Additional keyword arguments are handed to `add_subplot`.


**Example:**

~~~~
ax1 = plt.subplot2grid((2,2), (0,1), rowspan=5, colspan=1)
ax2 = plt.subplot2grid((2,2), (0,0), rowspan=1, colspan=1, sharex=ax1)
~~~~
