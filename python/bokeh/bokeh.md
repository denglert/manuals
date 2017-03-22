# Bokeh

http://bokeh.pydata.org
https://github.com/bokeh/bokeh-notebooks

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

show(p)
~~~~

Marker types:

- asterisk
- circle
- circle cross
- circle_x
- cross
- diamond
- diamond_cross
- inverted_triangle
- square
- square_cross
- square_x
- triangle
- x

## ColumnDataSource

We've seen how Bokeh can work well with Python lists, NumPy arrays, Pandas series, etc. At lower
levels, these inputs are converted to a Bokeh `ColumnDataSource`. This data type is the central data
source object used throughout Bokeh. 

~~~~
from bokeh.models import ColumnDataSource

source = ColumnDataSource(data={
    'x' : [1, 2, 3, 4, 5],
    'y' : [3, 7, 8, 5, 1],
})

p = figure()
p.circle('x', 'y', size=20, source=source)
show(p)
~~~~


### Creating ColumnDataSource objects directly from pd.DataFrame

~~~~
import pandas as pd

df = pd.DataFrame( {'x':[0, 1], 'y':[2, 3]} )

source = ColumnDataSource(df)
~~~~

## Layout

~~~~
from bokeh.layouts import gridplot
from bokeh.plotting import figure

x = list(range(11))
y0, y1, y2 = x, [10-i for i in x], [abs(i-5) for i in x]

# create a new plot
s1 = figure(width=250, plot_height=250)
s1.circle(x, y0, size=10, color="navy", alpha=0.5)

# create another one
s2 = figure(width=250, height=250)
s2.triangle(x, y1, size=10, color="firebrick", alpha=0.5)

# create and another
s3 = figure(width=250, height=250)
s3.square(x, y2, size=10, color="olive", alpha=0.5)

# put all the plots in a gridplot
p = gridplot([[s1, s2, s3]], toolbar_location=None)

# show the results
show(p)
~~~~

## Interactions

### Linked panning

~~~~
plot_options = dict(width=250, plot_height=250, tools='pan,wheel_zoom')

# create a new plot

s1 = figure(**plot_options)
s1.circle(x, y0, size=10, color="navy")

# create a new plot and share both ranges

s2 = figure(x_range=s1.x_range, y_range=s1.y_range, **plot_options)
s2.triangle(x, y1, size=10, color="firebrick")

# create a new plot and share only one range
s3 = figure(x_range=s1.x_range, **plot_options)
s3.square(x, y2, size=10, color="olive")

p = gridplot([[s1, s2, s3]])

# show the results
show(p)
~~~~

### Linked brushing

~~~~
from bokeh.models import ColumnDataSource

x = list(range(-20, 21))
y0, y1 = [abs(xx) for xx in x], [xx**2 for xx in x]
~~~~

# create a column data source for the plots to share

~~~~
source = ColumnDataSource(data=dict(x=x, y0=y0, y1=y1))

TOOLS = "box_select,lasso_select,help"

# create a new plot and add a renderer
left = figure(tools=TOOLS, width=300, height=300)
left.circle('x', 'y0', source=source)

# create another new plot and add a renderer
right = figure(tools=TOOLS, width=300, height=300)
right.circle('x', 'y1', source=source)

p = gridplot([[left, right]])

show(p)
~~~~

### Widgets

~~~~
from bokeh.layouts import widgetbox
from bokeh.models.widgets import Slider

slider = Slider(start=0, end=10, value=1, step=.1, title="foo")

show(widgetbox(slider))
~~~~
