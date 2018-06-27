# Scatter plots


**References:**
- https://matplotlib.org/api/_as_gen/matplotlib.axes.Axes.scatter.html


~~~~
Axes.scatter(x, y, s=None, c=None, marker=None, cmap=None, norm=None, vmin=None, vmax=None,
alpha=None, linewidths=None, verts=None, edgecolors=None, *, data=None, **kwargs)
~~~~


**Parameters:**

x, y : array_like, shape (n, )

    The data positions.
s : scalar or array_like, shape (n, ), optional

    The marker size in points**2. Default is rcParams['lines.markersize'] ** 2.
c : color, sequence, or sequence of color, optional, default: ‘b’

    The marker color. Possible values:

        A single color format string.
        A sequence of color specifications of length n.
        A sequence of n numbers to be mapped to colors using cmap and norm.
        A 2-D array in which the rows are RGB or RGBA.

    Note that c should not be a single numeric RGB or RGBA sequence because that is indistinguishable from an array of values to be colormapped. If you want to specify the same RGB or RGBA value for all points, use a 2-D array with a single row.
marker : MarkerStyle, optional, default: ‘o’

    The marker style. marker can be either an instance of the class or the text shorthand for a particular marker. See markers for more information marker styles.
cmap : Colormap, optional, default: None

    A Colormap instance or registered colormap name. cmap is only used if c is an array of floats. If None, defaults to rc image.cmap.
norm : Normalize, optional, default: None

    A Normalize instance is used to scale luminance data to 0, 1. norm is only used if c is an array of floats. If None, use the default colors.Normalize.
vmin, vmax : scalar, optional, default: None

    vmin and vmax are used in conjunction with norm to normalize luminance data. If None, the respective min and max of the color array is used. vmin and vmax are ignored if you pass a norm instance.
alpha : scalar, optional, default: None

    The alpha blending value, between 0 (transparent) and 1 (opaque).
linewidths : scalar or array_like, optional, default: None

    The linewidth of the marker edges. Note: The default edgecolors is ‘face’. You may want to change this as well. If None, defaults to rcParams lines.linewidth.
verts : sequence of (x, y), optional

    If marker is None, these vertices will be used to construct the marker. The center of the marker is located at (0, 0) in normalized units. The overall marker is rescaled by s.
edgecolors : color or sequence of color, optional, default: ‘face’

    The edge color of the marker. Possible values:

        ‘face’: The edge color will always be the same as the face color.
        ‘none’: No patch boundary will be drawn.
        A matplotib color.

    For non-filled markers, the edgecolors kwarg is ignored and forced to ‘face’ internally.
