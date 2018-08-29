# Time series



## Time series object

Time-Series Objects

~~~~
ts(data = NA, start = 1, end = numeric(), frequency = 1,
   deltat = 1, ts.eps = getOption("ts.eps"), class = , names = )
~~~~


------------------------------------------------------------------------------------------------

## Conversion

### `time-series` to `vector`

- https://stackoverflow.com/questions/2576876/converting-a-ts-time-series-object-to-a-vector-in-r

~~~~
array = unclass(time_series)
~~~~

or

~~~~
array = as.numeric(time_series)
~~~~

------------------------------------------------------------------------------------------------

## Inspection


- `head()`
- `tail()`
- `length()`

### Time

- `start()`
- `end()`
- `time`
- `deltat()`
- `frequency()`
- `cycle()`



------------------------------------------------------------------------------------------------


## Modifying data

Remove row `n`: 

~~~~
time_series[-n,]
~~~~

Remove column `n`: 

~~~~
time_series[,-n]
~~~~

------------------------------------------------------------------------------------------------


## Plotting


### `ts.plot()`

Plot Multiple Time Series

**Description**

Plot several time series on a common plot. Unlike `plot.ts` the series can have
a different time bases, but they should have the same frequency.

**Usage:**

~~~~
ts.plot(..., gpars = list())
~~~~


### `plot.ts()`


Plotting Time-Series Objects

**Description**

Plotting method for objects inheriting from class "ts".

**Usage:**


~~~~
plot(x, y = NULL, plot.type = c("multiple", "single"),
        xy.labels, xy.lines, panel = lines, nc, yax.flip = FALSE,
        mar.multi = c(0, 5.1, 0, if(yax.flip) 5.1 else 2.1),
        oma.multi = c(6, 0, 5, 0), axes = TRUE, ...)
~~~~

Arguments

- `x`, `y`: time series objects, usually inheriting from class "ts".

- `plot.type`: for multivariate time series, should the series by plotted
separately (with a common time axis) or on a single plot? Can be abbreviated.

- `xy.labels`: logical, indicating if text() labels should be used for an x-y
plot, or character, supplying a vector of labels to be used. The default is to
label for up to 150 points, and not for more.

- `xy.lines:` logical, indicating if lines should be drawn for an x-y plot.
Defaults to the value of xy.labels if that is logical, otherwise to TRUE.

- `panel`: a function(x, col, bg, pch, type, ...) which gives the action to be
carried out in each panel of the display for plot.type = "multiple". The
default is lines.

- `nc`: the number of columns to use when type = "multiple". Defaults to 1 for
up to 4 series, otherwise to 2.

- `yax.flip`: logical indicating if the y-axis (ticks and numbering) should
flip from side 2 (left) to 4 (right) from series to series when type =
"multiple".

- `mar.multi`, `oma.multi` the (default) par settings for plot.type =
"multiple". Modify with care!

- `axes`	logical indicating if x- and y- axes should be drawn.

...	
additional graphical arguments, `see plot`, `plot.default` and `par`.
