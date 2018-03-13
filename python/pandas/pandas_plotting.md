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
