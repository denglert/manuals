# Bokeh

http://bokeh.pydata.org

~~~~
from bokeh.io import output_notebook, show
from bokeh.plotting import figure
~~~~

In the Jupyter notebook call output_notebook() to show figures inline. We only need to call this
once, and all subsequent calls to show() will display inline in the notebook.

~~~~
output_notebook()
~~~~

## Basics

Use the `figure` function to create new plot objects to work with.

~~~~
p = figure(plot_width=400, plot_height=400)
~~~~

Add a circle renderer with a size, color, and alpha:

~~~~
p.circle([1, 2, 3, 4, 5], [6, 7, 2, 4, 5], size=15, line_color="navy", fill_color="orange", fill_alpha=0.5)
~~~~
