# Contour plot

Reference:
- https://matplotlib.org/examples/pylab_examples/contour_demo.html

## `z=f(x,y)` function

Example for a simple contour plot:

~~~~
k_hdd = lambda cba, tb: np.sqrt(1.0-cba*cba) - cba * tb
cba   = np.linspace(-1.0, 1.0, 100, endpoint=True)
tb    = np.linspace(0.0, 30.0, 100, endpoint=True)
X, Y  = np.meshgrid(cba,tb)
Z     = k_hdd(X,Y)
c = plt.contourf(X,Y,Z, 10,  cmap='RdBu_r',  extend='both')
~~~~

## From a `pandas.DataFrame()`

### `matplotlib.mlab.griddata()` 

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


