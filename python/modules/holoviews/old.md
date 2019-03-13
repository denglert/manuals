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


**Aliases**

~~~~
import holoviews as hv
al = hv.util.Aliases(name1='Long label', name2='Long label 2')
al.name1
~~~~


## Global

Output size: 

~~~~
%output size=150
~~~~

Renderer:

~~~~
hv.Store.renderers['bokeh'].webgl = True
~~~~

## Magic options

Set options globally:

~~~~
%opts Points [tools=['lasso_select', 'box_select']] (size=5 color='navy' nonselection_color='gray' alpha=0.2)
~~~~

Magic commands for the cell only:

~~~~
%%opts Points [color_index=3 scaling_factor=10]
~~~~


-------------------------------------------------------------------------------------------------------------

## Customization settings examples

### hv.Points`

~~~~
p1(style={'Points': dict(color='orange')}).relabel(label='95% CL upper limit from comb.')
~~~~


## Renaming labels

**Dataset:**

~~~~
ds = ds.redim(mH=('mH', 'mH [GeV]'))
~~~~

**Curve, points:**

~~~~
curve  = curve.redim.label(Hertz='Frequency (Hz)')
~~~~

(Sometimes) you can specify the labels with key-value pairs, e.g.:

~~~~
p2 = p1.map(lambda x: x.clone(kdims=[('mA', 'mA [GeV]'), ('xs_ggFH_br_H_hh', 'σ(pp->H->hh) [pb]')], vdims=[]), [hv.Points])
~~~~
