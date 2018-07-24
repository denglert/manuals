# `contourf` plot recipes

Reference:
- https://matplotlib.org/gallery/images_contours_and_fields/contourf_demo.html?highlight=contourf

## Basic `contourf` plot template

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

## `contourf` plot from `pandas.Dataframe`

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
