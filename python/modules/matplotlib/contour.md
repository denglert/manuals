# `matplotlib` contours

**References:**
- https://matplotlib.org/examples/pylab_examples/contour_label_demo.html
- https://matplotlib.org/api/_as_gen/matplotlib.axes.Axes.contour.html

**Associated notebook(s):**
- [contours.ipynb](./notebooks/contours.ipynb)


## Usage

~~~~
f,a = plt.subplots(figsize=(8.0,8.0))
CS = a.contour(X,Y,Z, levels=[-10.0, 0.0, 10.0])
a.clabel(CS, inline=True)
~~~~


## Contour label (`clabel`)

**References:**
- https://matplotlib.org/examples/pylab_examples/contour_label_demo.html

~~~~
plt.clabel(CS, CS.levels, inline=True, fmt=fmt, fontsize=10)
~~~~

For contours:

~~~~
from matplitlib.mlab import griddata
import matplotlib.cm as cm
~~~~

