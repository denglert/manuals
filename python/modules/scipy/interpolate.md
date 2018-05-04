# `scipy.interpolate`

**All references:**
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.griddata.html
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.interp1d.html
- https://stackoverflow.com/questions/37872171/how-can-i-perform-two-dimensional-interpolation-using-scipy
- Comprehensive overview of different interpolation methods: https://github.com/scipy/scipy/blob/master/scipy/interpolate/tests/test_interpnd.py

Error debugging:
- https://stackoverflow.com/questions/9656489/griddata-scipy-interpolation-not-working-giving-nan
- https://stackoverflow.com/questions/34583784/scipy-interp2d-warning-and-large-errors-off-the-grid

## `interp1d`

**References:**
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.interp1d.html

~~~~
from scipy.interpolate import interp1d
func = interp1d(x, y)
~~~~

## `interp2d`

- https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.interp2d.html

~~~~
from scipy import interpolate
x = np.arange(-5.01, 5.01, 0.25)
y = np.arange(-5.01, 5.01, 0.25)
xx, yy = np.meshgrid(x, y)
z = np.sin(xx**2+yy**2)
f = interpolate.interp2d(x, y, z, kind='cubic')
~~~~

## `griddata`

**References:**
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.interpolate.griddata.html

Having a `d` dimensional space, we can interpolate using `scipy.interpolate.griddata` by:

~~~~
from scipy.interpolate import griddata
zi = griddata(points, values, xi, method=method)
~~~~

where:
- `points`: a (n, d) shaped list/array of tuples containig the original points, `n` being the number of original points.
- `values`: the corresponding data values
- `xi`: the points at which we wish to interpolate the data
- `method`: the interpolation method which can be the following:
	- `nearest`
	- `linear`
	- `cubic`
		- 1d:
		- 2d: [CloughTocher2DInterpolator][CloughTocher2DInterpolator] 


**Beware:**

If there is a `NaN` value in the input array somewhere then the `cubic` method gives `NaN` everywhere.
You should replace the `NaN` values with e.g. 0s.

### Example:

#### Original set of points

**Creating an artifical dataset:**

~~~~
x = np.linspace(-10.0, 10.0, 10)
y = np.linspace(-10.0, 10.0, 10)
~~~~

`x,y` meshgrid:

~~~~
X,Y = np.meshgrid(x,y)
~~~~

`x,y` flattened:

~~~~
X_flat, Y_flat = X.flatten(), Y.flatten()
~~~~

`z` values:

~~~~
def saddle(x,y):
    return x**2 - y**2
~~~~

~~~~
Z = saddle(X,Y)
Z_flat = Z.flatten()
~~~~

**Formatting the original input so that we can pass them to `griddata`:**

~~~~
import itertools
points = np.array(list(itertools.product(*[x,y])))
values = saddle(points[:,0], points[:,1])
xi = (Xi,Yi)
~~~~

**We wish to interpolate at the following points:**

~~~~
x_num, xmin, xmax = 100, X.min(), X.max()
y_num, ymin, ymax = 100, Y.min(), Y.max()
~~~~

~~~~
xi = np.linspace( xmin,  xmax, x_num, endpoint=True )
yi = np.linspace( ymin,  ymax, y_num, endpoint=True )
Xi,Yi = np.meshgrid(xi,yi)
~~~~

**Finally the interpolation itself:**

~~~~
zi_cubic = scipy_griddata(points, values, xi, method='cubic')
~~~~


[CloughTocher2DInterpolator]: https://docs.scipy.org/doc/scipy-0.18.1/reference/generated/scipy.interpolate.CloughTocher2DInterpolator.html#scipy.interpolate.CloughTocher2DInterpolator
