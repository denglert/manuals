# Derived classes in python

**References:**
- https://stackoverflow.com/questions/1892269/how-do-derived-class-constructors-work-in-python
- https://stackoverflow.com/questions/39887422/more-arguments-in-derived-class-init-than-base-class-init


~~~~
class Shape:
    def __init__(self, shapename, **kwds):
        self.shapename = shapename
        super().__init__(**kwds)        

class ColoredShape(Shape):
    def __init__(self, color, **kwds):
        self.color = color
        super().__init__(**kwds)

cs = ColoredShape(color='red', shapename='circle')
~~~~
