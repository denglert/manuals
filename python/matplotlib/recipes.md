# `matplotlib` plot recipes

## Scatter plot

~~~~
N = 50
x = np.random.rand(N)
y = np.random.rand(N)
colors = np.random.rand(N)
area = np.pi * (15 * np.random.rand(N))**2  # 0 to 15 point radii

plt.scatter(x, y, s=area, c=colors, alpha=0.5)
plt.show()
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

Reference:
- https://matplotlib.org/examples/pylab_examples/contour_demo.html

### `z=f(x,y)` function

Example for a simple contour plot:

~~~~
k_hdd = lambda cba, tb: np.sqrt(1.0-cba*cba) - cba * tb
cba   = np.linspace(-1.0, 1.0, 100, endpoint=True)
tb    = np.linspace(0.0, 30.0, 100, endpoint=True)
X, Y  = np.meshgrid(cba,tb)
Z     = k_hdd(X,Y)
c = plt.contourf(X,Y,Z, 10,  cmap='RdBu_r',  extend='both')
~~~~

### From a `pandas.DataFrame()`


#### `matplotlib.mlab.griddata()` 

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


## Contourf plot

Reference:
- https://matplotlib.org/gallery/images_contours_and_fields/contourf_demo.html?highlight=contourf

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

