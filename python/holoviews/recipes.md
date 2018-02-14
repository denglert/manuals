# HoloViews recipes


## `hv.HeatMap`

~~~~
%%opts HeatMap [tools=['hover'] invert_xaxis=True colorbar=True width=325 toolbar='above' xrotation=90]
hv.HeatMap(df, ['mA','tanb'], 'xs_ggFH', label=r'hMSSM, pp -> H')
~~~~

## `hv.Image`

~~~~
x, y, z = df['mA'], df['tanb'], df['xs_ggFH_br_H_hh']
xi,yi = np.meshgrid(np.linspace(180,600,101), np.linspace(1,4,101))
z = griddata(x, y[::-1], z, xi, yi, interp='linear')
img = hv.Image(z, label="hMSSM, pp->H->hh", bounds=(180,1,500,4))

posx = hv.streams.PointerX()
posy = hv.streams.PointerY()
vline = hv.DynamicMap(lambda x: hv.VLine(x or -100), streams=[posx])
hline = hv.DynamicMap(lambda y: hv.HLine(y or -100), streams=[posy])

crosssection_v = hv.DynamicMap(lambda x: img.sample(x=x if x else 0), streams=[posx])
crosssection_h = hv.DynamicMap(lambda y: img.sample(y=y if y else 0), streams=[posy])

%%opts Image [tools=['hover'] invert_yaxis=False colorbar=True width=325 toolbar='above' xrotation=90]
layout = ((img * vline * hline) << crosssection_v.redim(z=dict(range=(0,5))) <<  crosssection_h.redim(z=dict(range=(0,5))))
~~~~

## `hv.Dataset`

~~~~
ds = hv.Dataset(df)


p1 = all_ds.to(hv.Points, kdims=['cba', 'tb'], vdims=[], groupby=['mH_bin'])
p2 = p1.map(lambda x: x.clone(kdims=['mH', 'mHc'], vdims=[]), [hv.Points])
p3 = p1.map(lambda x: x.clone(kdims=['mH', 'Gamma_H'], vdims=[]), [hv.Points])
br1 = p1.map(lambda x: x.clone(kdims=['br_H_tt', 'br_H_bb'], vdims=[]), [hv.Points])
br2 = p1.map(lambda x: x.clone(kdims=['br_H_ZA', 'br_H_tautau'], vdims=[]), [hv.Points])
br3 = p1.map(lambda x: x.clone(kdims=['br_H_ZA', 'br_H_AA'], vdims=[]), [hv.Points])

(p1 + p2 + p3 + br1 + br2 + br3).cols(2)
~~~~
