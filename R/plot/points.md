# `points()`


Add Points to a Plot

**Description:**
`points` is a generic function to draw a sequence of points at the specified
coordinates. The specified character(s) are plotted, centered at the
coordinates.

**Usage:**

~~~~
points(x, ...)
~~~~

~~~~
## Default S3 method:
points(x, y = NULL, type = "p", ...)
~~~~

**Arguments:**

- `x`, `y`: coordinate vectors of points to plot.

- `type`: character indicating the type of plotting; actually any of the types
	as in plot.default.

- `...`: Further graphical parameters may also be supplied as arguments. See ‘Details’.


**Details:**

The coordinates can be passed in a plotting structure (a list with `x` and `y`
components), a two-column matrix, a time series, .... See `xy.coords`. If
supplied separately, they must be of the same length.

Graphical parameters commonly used are:

- `pch`: plotting ‘character’, i.e., symbol to use. This can either be a single
	character or an integer code for one of a set of graphics symbols. The full set
	of S symbols is available with `pch = 0:18`, see the examples below. (NB: R uses
	circles instead of the octagons used in S.)

	Value `pch = "."` (equivalently pch = 46) is handled specially. It is a rectangle
	of side 0.01 inch (scaled by cex). In addition, if cex = 1 (the default), each
	side is at least one pixel (1/72 inch on the pdf, postscript and xfig devices).
	
	For other text symbols, cex = 1 corresponds to the default fontsize of the
	device, often specified by an argument pointsize. For pch in 0:25 the default
	size is about 75% of the character height (see par("cin")).

- `col` color code or name, see par.

- `bg`: background (fill) color for the open plot symbols given by pch = 21:25.

- `cex` character (or symbol) expansion: a numerical vector. This works as a multiple of par("cex").

- `lwd` line width for drawing symbols see par.

Others less commonly used are lty and lwd for types such as "b" and "l".

The graphical parameters `pch`, `col`, `bg`, `cex` and `lwd` can be vectors (which will
be recycled as needed) giving a value for each point plotted. If lines are to
be plotted (e.g., for `type = "b"`) the first element of lwd is used.

Points whose `x`, `y`, `pch`, `col` or `cex` value is `NA` are omitted from the plot.


### `'pch'` values

Values of `pch` are stored internally as integers. The interpretation is

- `NA_integer_`: no symbol.

- `0:18`: S-compatible vector symbols.

- `19:25`: further R vector symbols.

- `26:31`: unused (and ignored).

- `32:127`: ASCII characters.

- `128:255`: native characters only in a single-byte locale and for the symbol
	font. (128:159 are only used on Windows.)

- `32 ...` Unicode code point (where supported).

Note that unlike S (which uses octagons), symbols 1, 10, 13 and 16 use circles.
The filled shapes 15:18 do not include a border.

Illustration of `pch = 0:25`

The following `R` plotting symbols are can be obtained with `pch = 19:25`: those
with 21:25 can be colored and filled with different colors: col gives the
border color and bg the background color (which is "grey" in the figure)

- `pch = 19`: solid circle,

- `pch = 20`: bullet (smaller solid circle, 2/3 the size of 19),

- `pch = 21`: filled circle,

- `pch = 22`: filled square,

- `pch = 23`: filled diamond,

- `pch = 24`: filled triangle point-up,

- `pch = 25`: filled triangle point down.

Note that all of these both fill the shape and draw a border. Some care in
interpretation is needed when semi-transparent colours are used for both fill
and border (and the result might be device-specific and even viewer-specific
for pdf).

The difference between `pch = 16` and `pch = 19` is that the latter uses a border
and so is perceptibly larger when `lwd` is large relative to `cex`.

Values pch = 26:31 are currently unused and `pch = 32:127` give the ASCII
characters. In a single-byte locale `pch = 128:255` give the corresponding
character (if any) in the locale's character set. Where supported by the OS,
negative values specify a Unicode code point, so e.g. -0x2642L is a ‘male sign’
and -0x20ACL is the Euro.

A character string consisting of a single character is converted to an integer:
32:127 for ASCII characters, and usually to the Unicode code point otherwise.
(In non-Latin-1 single-byte locales, 128:255 will be used for 8-bit
characters.)

If pch supplied is a logical, integer or character NA or an empty character
string the point is omitted from the plot.

If `pch` is `NULL` or otherwise of length 0, par("pch") is used.

If the symbol font `(par(font = 5))` is used, numerical values should be used for
pch: the range is `c(32:126, 160:254)` in all locales (but 240 is not defined
(used for ‘apple’ on macOS) and 160, Euro, may not be present).

**Note**

A single-byte encoding may include the characters in `pch = 128:255`, and if it
does, a font may not include all (or even any) of them.

Not all negative numbers are valid as Unicode code points, and no check is
done. A display device is likely to use a rectangle for (or omit) Unicode code
points which are invalid or for which it does not have a glyph in the font
used.

What happens for very small or zero values of cex is device-dependent: symbols
or characters may become invisible or they may be plotted at a fixed minimum
size. Circles of zero radius will not be plotted.
