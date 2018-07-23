# Annotate in matplotlib


**References**:
- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.annotate.html
- https://matplotlib.org/examples/pylab_examples/annotation_demo.html

~~~~
matplotlib.pyplot.annotate(*args, **kwargs)
~~~~

**Parameters:**
- `s`: (str) The text of the annotation.
- `xy`: (iterable) Length 2 sequence specifying the (x,y) point to annotate

Optional:
- `xytext`: (iterable)
    Length 2 sequence specifying the `(x,y)` to place the text at. If `None`, defaults to `xy`.
- `xycoords`: (str, Artist, Transform, callable or tuple)
    The coordinate system that xy is given in.
- `textcoords` :( str, Artist, Transform, callable or tuple)
    The coordinate system that `xytext` is given, which may be different than the coordinate system used for `xy`.
- `arrowprops`: (dict)

- `annotation_clip`: (bool)
	Controls the visibility of the annotation when it goes outside the axes area.
    If `True`, the annotation will only be drawn when the `xy` is inside the axes. If `False`, the annotation will always be drawn regardless of its position.
    The default is `None`, which behave as `True` only if `xycoords` is “data”.


