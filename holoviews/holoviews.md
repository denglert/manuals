# HoloViews tricks and tips

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
