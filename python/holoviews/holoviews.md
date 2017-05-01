# HoloViews tricks and tips

Links:
- http://holoviews.org/
- http://dev.holoviews.org/
- https://github.com/ioam/holoviews
- https://gitter.im/ioam/holoviews

**Install dev branch with conda**

~~~~
conda install -c ioam/label/dev holoviews
~~~~

**Overlay + groupby example:**

~~~~
a  = all_ds.to(hv.Points, kdims=['cba', 'tb'], vdims=[], groupby=['k_hdd_type',
'mA']).overlay('k_hdd_type').groupby('mA')
b = a.map(lambda x: x.clone(kdims=['br_A_bb', 'br_A_Zh'], vdims=[] ), hv.Points)
c = a.map(lambda x: x.clone(kdims=['br_A_tt', 'br_A_ZH'], vdims=[]), hv.Points)
d = a.map(lambda x: x.clone(kdims=['br_A_tautau', 'br_A_Zh'], vdims=[]), hv.Points)
(a + b + c + d).cols(2)
~~~~

**Suppress warnings:**

~~~~
import warnings
warnings.filterwarnings("ignore", message="ColumnDataSource's columns must be of the same length")
~~~~


**Make selections**

`ds.select(mH=(None, 600))`

or

`ds[ds['mH'] <600]`

**Choose WebGL as renderer:**

hv.Store.renderers['bokeh'].webgl = True

**Log axes**

~~~~
a  = all_ds.to(hv.Points, kdims=['cba', 'tb'], vdims=[], mdims=['mA_bin'])
options = {'logx': True}
a( plot={'Points': options} )
~~~~

**Renaming axis labels**

> hv.Dataset accepts kdims and vdims. By default it automatically makes all dimensions into
kdims, if you supply either kdims or vdims it will infer the other, or you can specify both. If you
want to provide labels just for specific dimensions you can also use the redim method, e.g.:

~~~~
renamed = all_ds.redim(mH=('mH', r'$m_{H}$ [GeV]'), mHc=('mHc', r'$m_{H^\pm}$ [GeV]'))
~~~~

**Specifying axis ranges (untested)**

> You can set a range on the Dimension. You can either declare a dimension directly, e.g.
`hv.Curve(range(10), vdims=[hv.Dimension('y', range=(0, 10))])` or you can use the redim method to
`hv.Curve(range(10)).redim(y=dict(range=(0,10)))` which will let you do the same thing on an existing
element.


**Aliases**

~~~~
import holoviews as hv
al = hv.util.Aliases(name1='Long label', name2='Long label 2')
al.name1
~~~~
