# Colorbar


**Get colorbar:**

~~~~
sc = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb = plt.colorbar(sc, ticks=tick_lock)
~~~~

**Colorbar axis label:**

~~~~
sc    = a.scatter(x,y, c=z, cmap='Blues', rasterized=True, s=3, vmin=-5.0, vmax=-1.0)
cb    = plt.colorbar(sc, ticks=tick_lock)
cb_ax = cb.ax
cb_ax.set_ylabel('colorbar label') 
~~~~

**Colorbar range:**

~~~~
cb.set_clim(c_min, c_max)
~~~~

**Logarithmic colorbar:**

~~~~
c = a.pcolor(X, Y, gHhh2, cmap='viridis', norm=colors.LogNorm(vmin=1e10, vmax=gHhh2.max()))
~~~~

Normalizations:
- `colors.LogNorm()`: logarithmic
- `colors.SymLogNorm()`: symmetric logarithmic
- `colors.PowerNorm()`: power-law
