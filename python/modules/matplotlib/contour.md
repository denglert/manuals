# `matplotlib` contours

**References:**
- https://matplotlib.org/api/_as_gen/matplotlib.axes.Axes.contour.html
- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.contourf.html
- https://matplotlib.org/examples/pylab_examples/contour_demo.html
- https://matplotlib.org/gallery/images_contours_and_fields/contourf_demo.html?highlight=contourf
- https://matplotlib.org/examples/pylab_examples/contour_label_demo.html

**Associated notebook(s):**
- [contour.ipynb](./notebooks/contour.ipynb)
- [contourf.ipynb](./notebooks/contourf.ipynb)

**More recipes:**
- [contour](./recipes/contour.md)
- [contourf](./recipes/contourf.md)


Two main types of contour plots:
- `.contour(*args, **kwargs)`: contour lines
- `.contourf(*args, **kwargs)`: filled contours

For the majority of things, the function signatures and return values are the same for both versions.


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

## `contour`

**References:**
- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.contour.html
- https://matplotlib.org/examples/pylab_examples/contour_label_demo.html
- https://matplotlib.org/gallery/images_contours_and_fields/contour_demo.html#sphx-glr-gallery-images-contours-and-fields-contour-demo-py



### Example(s)

#### `contour` plot template

~~~~
f,a = plt.subplots()
func  = lambda x, y: x**2 - y**2
x     = np.linspace(-1.0, 1.0, 100, endpoint=True)
y     = np.linspace(-1.0, 1.0, 100, endpoint=True)
X, Y  = np.meshgrid(x,y)
Z     = func(X,Y)
cs    = a.contour(X,Y,Z)
~~~~

#### `contour` plot from `pandas.Dataframe`

**Note:**
`DataFrame.pivot()` works provided `df` only contains the 2D grid that you wish
to plot the contours for. In case you have an extra dimension(s), you will receive
the following error message:
~~~~
ValueError: Index contains duplicate entries, cannot reshape
~~~~

~~~~
dfmesh  = df.pivot(x_col, y_col, z_col)
X, Y, Z = dfmesh.index.values, dfmesh.columns.values, dfmesh.values.T

f,a     = plt.subplots()
cs      = a.contour(X,Y,Z)
~~~~

### Contour label (`clabel`)

**References:**
- https://matplotlib.org/examples/pylab_examples/contour_label_demo.html

~~~~
plt.clabel(CS, CS.levels, inline=True, fmt=fmt, fontsize=10)
~~~~

For contours:

~~~~
from matplitlib.mlab import griddata
import matplotlib.cm as cm
~~~~


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------


## `contourf`

**References:**
- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.contourf.html
- https://matplotlib.org/examples/pylab_examples/contourf_demo.html

### Example(s)

#### `contourf` plot template

~~~~
f,a = plt.subplots()
func  = lambda x, y: x**2 - y**2
x     = np.linspace(-1.0, 1.0, 100, endpoint=True)
y     = np.linspace(-1.0, 1.0, 100, endpoint=True)
X, Y  = np.meshgrid(x,y)
Z     = func(X,Y)
cs = a.contourf(X,Y,Z)
cb = f.colorbar(cs, ax=a)
~~~~

#### `contourf` plot from `pandas.Dataframe`

**Note:**
`DataFrame.pivot()` works provided `df` only contains the 2D grid that you wish
to plot the contours for. In case you have an extra dimension(s), you will receive
the following error message:

~~~~
ValueError: Index contains duplicate entries, cannot reshape
~~~~

~~~~
dfmesh  = df.pivot(x_col, y_col, z_col)
X, Y, Z = dfmesh.index.values, dfmesh.columns.values, dfmesh.values.T

f,a     = plt.subplots()
cs      = a.contourf(X,Y,Z)
cb      = f.colorbar(cs, ax=a)
~~~~
