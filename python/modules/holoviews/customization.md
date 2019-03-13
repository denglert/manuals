# Customizing holoviews plots

**References:**

- http://holoviews.org/getting_started/Customization.html
- http://holoviews.org/user_guide/Customizing_Plots.html
- http://holoviews.org/user_guide/Styling_Plots.html



## Axis

## Axis labels

> hv.Dataset accepts kdims and vdims. By default it automatically makes all dimensions into
kdims, if you supply either kdims or vdims it will infer the other, or you can specify both. If you
want to provide labels just for specific dimensions you can also use the redim method, e.g.:

~~~~
renamed = all_ds.redim(mH=('mH', r'$m_{H}$ [GeV]'), mHc=('mHc', r'$m_{H^\pm}$ [GeV]'))
~~~~

### Axis ranges 

> You can set a range on the Dimension. You can either declare a dimension directly, e.g.
`hv.Curve(range(10), vdims=[hv.Dimension('y', range=(0, 10))])` or you can use the redim method to
`hv.Curve(range(10)).redim(y=dict(range=(0,10)))` which will let you do the same thing on an existing
element.


--------------------------------------
