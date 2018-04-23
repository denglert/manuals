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
