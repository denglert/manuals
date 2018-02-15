# Customizing holoviews plots

## Reference

- http://holoviews.org/getting_started/Customization.html
- http://holoviews.org/user_guide/Customizing_Plots.html

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

## Customization settings examples

### hv.Points`

~~~~
p1(style={'Points': dict(color='orange')}).relabel(label='95% CL upper limit from comb.')
~~~~


## Renaming labels

~~~~
curve  = curve.redim.label(Hertz='Frequency (Hz)')
~~~~

(Sometimes) you can specify the labels with key-value pairs, e.g.:

~~~~
p2 = p1.map(lambda x: x.clone(kdims=[('mA', 'mA [GeV]'), ('xs_ggFH_br_H_hh', 'σ(pp->H->hh) [pb]')], vdims=[]), [hv.Points])
~~~~
