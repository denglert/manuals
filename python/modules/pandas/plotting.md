# `pandas` plotting

~~~~
a = df.plot(x, y, kind='scatter')
~~~~

or:

~~~~
a = df.plot.scatter(x, y)
~~~~

## Legends

~~~~
a = df.plot(label='price', legend=True)
~~~~

### Markers not showing on legend

Occasionally pandas and/or matplotlib might not behave as expected and the markers might now show on
the legends, c.f.: https://github.com/matplotlib/matplotlib/issues/7653/

**Solution:**

Append your plotting code with:

~~~~
plt.legends()
~~~~

or 

~~~~
ax.legends()
~~~~

## Axis labels

Rotate axis labels

~~~~
a = df.plot(rot=45)
~~~~

## Markers

Hollow marker with `markerfacecolor='none'`:

~~~~
df.plot(ax=a,  style='o', markersize=10,  c='firebrick',  markerfacecolor='none', label='D', legend=True)
~~~~


## `pandas.Series`

Create scatter-like plots with:

~~~~
df.plot(style='o')
~~~~


## Contour plot

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.pivot.html
- https://stackoverflow.com/questions/45596959/how-can-i-do-a-contour-plot-with-date-and-time-in-the-x-y-axis
- https://stackoverflow.com/questions/24032282/create-contour-plot-from-pandas-groupby-dataframe

Using `DataFrame.pivot()`

~~~~
dfmesh = df.pivot(x_col, y_col, z_col)
X = df.index.values
Y = df.columns.values
Z = df.values
plt.contour(X,Y,Z)
~~~~
