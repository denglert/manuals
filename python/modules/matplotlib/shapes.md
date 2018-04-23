# matplotlib shapes

**Associated notebook**
[shapes.ipynb](./notebooks/shapes.ipynb)


Required modules:

~~~~ 
import matplotlib.patches as mpatches
import matplotlib.lines as mlines
~~~~ 

## Usage

Create a shape object `shape_obj` (see examples below) and add it to the plot by:

~~~~
ax.add_artist(shape_obj)
~~~~

## Shapes

### Rectangle

~~~~
rectangle_pos =(0.1, 0.1)
rectangle_width = 0.4
rectangle_height = 0.2
rectangle = mpatches.Rectangle(rectangle_pos, rectangle_width, rectangle_height, edgecolor='k',
facecolor='blue', linewidth=1.0)
~~~~

### Circle

~~~~
circle_pos = (0.8, 0.8)
circle_radius = 0.1
circle = mpatches.Circle(circle_pos, circle_radius, facecolor='C1')
~~~~


### Ellipse

~~~~
ellipse_pos = (0.3, 0.8)
ellipse_width = 0.3
ellipse_height = 0.1
ellipse = mpatches.Ellipse(ellipse_pos, ellipse_width, ellipse_height, facecolor='C2')
~~~~


### Line

~~~~
line_x = [0.6, 0.9]
line_y = [0.1, 0.4]
line =  mlines.Line2D(line_x, line_y, linestyle="-", color='C3')
~~~~
