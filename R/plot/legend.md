# `legend()` 

**References:**
- https://www.r-graph-gallery.com/119-add-a-legend-to-a-plot/



Add Legends to Plots

**Description:**
This function can be used to add legends to plots. Note that a call to the
function locator(1) can be used in place of the x and y arguments.

**Usage:**

~~~~
legend(x, y = NULL, legend, fill = NULL, col = par("col"),
       border = "black", lty, lwd, pch,
       angle = 45, density = NULL, bty = "o", bg = par("bg"),
       box.lwd = par("lwd"), box.lty = par("lty"), box.col = par("fg"),
       pt.bg = NA, cex = 1, pt.cex = cex, pt.lwd = lwd,
       xjust = 0, yjust = 1, x.intersp = 1, y.intersp = 1,
       adj = c(0, 0.5), text.width = NULL, text.col = par("col"),
       text.font = NULL, merge = do.lines && has.pch, trace = FALSE,
       plot = TRUE, ncol = 1, horiz = FALSE, title = NULL,
       inset = 0, xpd, title.col = text.col, title.adj = 0.5,
       seg.len = 2)
~~~~

**Arguments:**
- `x`, `y`: the x and y co-ordinates to be used to position the legend. They
can be specified by keyword or in any way which is accepted by xy.coords: See
‘Details’.

- `legend`: a character or expression vector of length ≥1 to appear in the
	legend. Other objects will be coerced by as.graphicsAnnot.

- `fill`: if specified, this argument will cause boxes filled with the
	specified colors (or shaded in the specified colors) to appear beside the
	legend text.

- `col`: the color of points or lines appearing in the legend.

- `border`: the border color for the boxes (used only if fill is specified).

- `lty`, `lwd`: the line types and widths for lines appearing in the legend.
	One of these two must be specified for line drawing.

- `pch`: the plotting symbols appearing in the legend, as numeric vector or a
	vector of 1-character strings (see points). Unlike points, this can all be
	specified as a single multi-character string. Must be specified for symbol
	drawing.

- `angle`: angle of shading lines.

- `density`: the density of shading lines, if numeric and positive. If NULL or
	negative or NA color filling is assumed.

- `bty`: the type of box to be drawn around the legend. The allowed values are
	`"o"` (the default) and `"n"`.

bg	
the background color for the legend box. (Note that this is only used if bty != "n".)

box.lty, box.lwd, box.col	
the line type, width and color for the legend box (if bty = "o").

pt.bg	
the background color for the points, corresponding to its argument bg.

cex	
character expansion factor relative to current par("cex"). Used for text, and provides the default for pt.cex.

pt.cex	
expansion factor(s) for the points.

pt.lwd	
line width for the points, defaults to the one for lines, or if that is not set, to par("lwd").

xjust	
how the legend is to be justified relative to the legend x location. A value of 0 means left justified, 0.5 means centered and 1 means right justified.

yjust	
the same as xjust for the legend y location.

x.intersp	
character interspacing factor for horizontal (x) spacing.

y.intersp	
the same for vertical (y) line distances.

adj	
numeric of length 1 or 2; the string adjustment for legend text. Useful for y-adjustment when labels are plotmath expressions.

text.width	
the width of the legend text in x ("user") coordinates. (Should be a single positive number even for a reversed x axis.) Defaults to the proper value computed by strwidth(legend).

text.col	
the color used for the legend text.

text.font	
the font used for the legend text, see text.

merge	
logical; if TRUE, merge points and lines but not filled boxes. Defaults to TRUE if there are points and lines.

trace	
logical; if TRUE, shows how legend does all its magical computations.

plot	
logical. If FALSE, nothing is plotted but the sizes are returned.

ncol	
the number of columns in which to set the legend items (default is 1, a vertical legend).

horiz	
logical; if TRUE, set the legend horizontally rather than vertically (specifying horiz overrides the ncol specification).

title	
a character string or length-one expression giving a title to be placed at the top of the legend. Other objects will be coerced by as.graphicsAnnot.

inset	
inset distance(s) from the margins as a fraction of the plot region when legend is placed by keyword.

xpd	
if supplied, a value of the graphical parameter xpd to be used while the legend is being drawn.

title.col	
color for title.

title.adj	
horizontal adjustment for title: see the help for par("adj").

seg.len	
the length of lines drawn to illustrate lty and/or lwd (in units of character widths).

Details
Arguments x, y, legend are interpreted in a non-standard way to allow the coordinates to be specified via one or two arguments. If legend is missing and y is not numeric, it is assumed that the second argument is intended to be legend and that the first argument specifies the coordinates.

The coordinates can be specified in any way which is accepted by xy.coords. If this gives the coordinates of one point, it is used as the top-left coordinate of the rectangle containing the legend. If it gives the coordinates of two points, these specify opposite corners of the rectangle (either pair of corners, in any order).

The location may also be specified by setting x to a single keyword from the list "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center". This places the legend on the inside of the plot frame at the given location. Partial argument matching is used. The optional inset argument specifies how far the legend is inset from the plot margins. If a single value is given, it is used for both margins; if two values are given, the first is used for x- distance, the second for y-distance.

Attribute arguments such as col, pch, lty, etc, are recycled if necessary: merge is not. Set entries of lty to 0 or set entries of lwd to NA to suppress lines in corresponding legend entries; set pch values to NA to suppress points.

Points are drawn after lines in order that they can cover the line with their background color pt.bg, if applicable.

See the examples for how to right-justify labels.

Since they are not used for Unicode code points, values -31:-1 are silently omitted, as are NA and "" values.

**Value:**
A list with list components

- `rect` a list with components

	- `w`, `h`: positive numbers giving width and height of the legend's box.

	- `left`, `top`: `x` and `y` coordinates of upper left corner of the box.

- `text`: a list with components

	- `x`, `y`: numeric vectors of length length(legend), giving the x and y
	coordinates of the legend's text(s).

returned invisibly.

## Examples

~~~~
legend("topleft", legend=c("Inflation", "Fitted AR(1)"), col=c("black", "red"), lty=c(1,2))
~~~~
