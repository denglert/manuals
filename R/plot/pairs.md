# `pairs()` - scatterplot matrices

Scatterplot Matrices

**Description**
A matrix of scatterplots is produced.

**Usage:**

~~~~
pairs(x, ...)


## S3 method for class 'formula'
pairs(formula, data = NULL, ..., subset,
      na.action = stats::na.pass)

## Default S3 method:
pairs(x, labels, panel = points, ...,
      horInd = 1:nc, verInd = 1:nc,
      lower.panel = panel, upper.panel = panel,
      diag.panel = NULL, text.panel = textPanel,
      label.pos = 0.5 + has.diag/3, line.main = 3,
      cex.labels = NULL, font.labels = 1,
      row1attop = TRUE, gap = 1, log = "")
~~~~


**Arguments:**

- `x`: the coordinates of points given as numeric columns of a matrix or data frame. Logical and
factor columns are converted to numeric in the same way that data.matrix does.

- `formula`: a formula, such as ~ x + y + z. Each term will give a separate variable in the pairs
plot, so terms should be numeric vectors. (A response will be interpreted as another variable, but
not treated specially, so it is confusing to use one.)

- `data`: a data.frame (or list) from which the variables in formula should be taken.

- `subset`: an optional vector specifying a subset of observations to be used for plotting.

- `na.action`: a function which indicates what should happen when the data contain NAs. The default
is to pass missing values on to the panel functions, but na.action = na.omit will cause cases with
missing values in any of the variables to be omitted entirely.

- `labels`: the names of the variables.

- `panel`: function(x, y, ...) which is used to plot the contents of each panel of the display.

- `...`: arguments to be passed to or from methods.

Also, graphical parameters can be given as can arguments to plot such as main. `par("oma")` will be set appropriately unless specified.

- `horInd`, `verInd`
The (numerical) indices of the variables to be plotted on the horizontal and vertical axes respectively.

- `lower.panel`, `upper.panel`
separate panel functions (or NULL) to be used below and above the diagonal respectively.

- `diag.panel`: optional function(x, ...) to be applied on the diagonals.

- `text.panel`: optional function(x, y, labels, cex, font, ...) to be applied on the diagonals.

- `label.pos`: y position of labels in the text panel.

- `line.main`: if main is specified, line.main gives the line argument to mtext() which draws the
title. You may want to specify oma when changing line.main.

- `cex.labels`, `font.labels`: graphics parameters for the text panel.

- `row1attop`: logical. Should the layout be matrix-like with row 1 at the top, or graph-like with row 1 at the bottom?

- `gap`: distance between subplots, in margin lines.

- `log`: a character string indicating if logarithmic axes are to be used: see plot.default.  log =
    "xy" specifies logarithmic axes for all variables.
