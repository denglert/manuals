# Contour plot

Reference:
- https://matplotlib.org/examples/pylab_examples/contour_demo.html

# `contour` plot recipes

## Basic `contour` plot template

~~~~
f,a = plt.subplots()
func  = lambda x, y: x**2 - y**2
x     = np.linspace(-1.0, 1.0, 100, endpoint=True)
y     = np.linspace(-1.0, 1.0, 100, endpoint=True)
X, Y  = np.meshgrid(x,y)
Z     = func(X,Y)
cs    = a.contour(X,Y,Z)
~~~~

## `contour` plot from `pandas.Dataframe`

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


## Using `matplotlib.mlab.griddata()` 

Reference:
- https://matplotlib.org/examples/pylab_examples/griddata_demo.html
- https://stackoverflow.com/questions/20456961/contour-plot-in-python-importing-txt-table-file

~~~~
import matplotlib.pyplot as plt
from matplotlib.mlab import griddata

x, y, z = df[x_col], df[y_col], df[z_col]
xmin, xmax = x.min(), x.max()
ymin, ymax = y.min(), y.max()

xi = np.linspace( xmin,  xmax, x_num, endpoint=True )
yi = np.linspace( ymin,  ymax, y_num, endpoint=True )

if gaussian_filter_sigma is not None:
    z = gaussian_filter(z, gaussian_filter_sigma)

zi = griddata(x, y, z, xi, yi, interp='linear')
cs = plt.contour(xi, yi, zi)
~~~~


