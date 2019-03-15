# Colormap

## Scalar to color

~~~~
import matplotlib as mpl
import matplotlib.cm as cm

cmap = cm.bwr
norm = mpl.colors.Normalize(vmin=vmin, vmax=vmax)
cmapper = cm.ScalarMappable(norm=norm, cmap=cmap)

color = cmapper.to_rgba(scalar)
~~~~
