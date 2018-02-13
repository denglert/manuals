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
~~~~
