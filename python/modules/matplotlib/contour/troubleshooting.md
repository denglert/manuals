# Troubleshooting


## Cannot set limits on colorbar


**Solution:**
Pass the colorbar levels via the `levels` kwarg in `contourf`

~~~~
cs = plt.contourf(xi, yi, zi, vmin=0.0, vmax=1.0, levels=np.linspace(0.0, 1.0, 11))
cb = plt.colorbar(cs, ax=ax, boundaries=(0.0, 1.0))
~~~~
