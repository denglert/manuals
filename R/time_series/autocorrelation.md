# `acf()` - Autocorrelation


Auto- and Cross- Covariance and -Correlation Function Estimation

**Description**
The function acf computes (and by default plots) estimates of the autocovariance or autocorrelation
function. Function pacf is the function used for the partial autocorrelations. Function ccf computes
the cross-correlation or cross-covariance of two univariate series.

**Usage:**

~~~~
acf(x, lag.max = NULL,
    type = c("correlation", "covariance", "partial"),
    plot = TRUE, na.action = na.fail, demean = TRUE, ...)

pacf(x, lag.max, plot, na.action, ...)

## Default S3 method:
pacf(x, lag.max = NULL, plot = TRUE, na.action = na.fail,
    ...)

ccf(x, y, lag.max = NULL, type = c("correlation", "covariance"),
    plot = TRUE, na.action = na.fail, ...)

## S3 method for class 'acf'
x[i, j]
~~~~


**Arguments:**

- `x`, `y`: a univariate or multivariate (not ccf) numeric time series object or a numeric vector or matrix, or an "acf" object.

- `lag.max`: maximum lag at which to calculate the acf. Default is 10∗log10(N/m) where N is the
number of observations and m the number of series. Will be automatically limited to one less than
the number of observations in the series.

- `type`: character string giving the type of acf to be computed. Allowed values are "correlation"
(the default), "covariance" or "partial". Will be partially matched.

- `plot`: logical. If TRUE (the default) the acf is plotted.

- `na.action`: function to be called to handle missing values. na.pass can be used.

- `demean`: logical. Should the covariances be about the sample means?

- `...`: further arguments to be passed to plot.acf.

- `i`: a set of lags (time differences) to retain.

- `j`: a set of series (names or numbers) to retain.

**Details:**

For type = "correlation" and "covariance", the estimates are based on the sample covariance. (The
lag 0 autocorrelation is fixed at 1 by convention.)

By default, no missing values are allowed. If the na.action function passes through missing values
(as na.pass does), the covariances are computed from the complete cases. This means that the
estimate computed may well not be a valid autocorrelation sequence, and may contain missing values.
Missing values are not allowed when computing the PACF of a multivariate time series.

The partial correlation coefficient is estimated by fitting autoregressive models of successively
higher orders up to `lag.max`.

The generic function plot has a method for objects of class `"acf"`.

The lag is returned and plotted in units of time, and not numbers of observations.

There are print and subsetting methods for objects of class "acf".

**Value:**

An object of class "acf", which is a list with the following elements:

- `lag`: A three dimensional array containing the lags at which the acf is estimated.

- `acf`: An array with the same dimensions as lag containing the estimated acf.

- `type`: The type of correlation (same as the type argument).

- `n.used`: The number of observations in the time series.

- `series`: The name of the series x.

- `snames`: The series names for a multivariate time series.

The lag `k` value returned by `ccf(x, y)` estimates the correlation between `x[t+k]` and `y[t]`.

The result is returned invisibly if `plot` is `TRUE`.

---------------------------

Getting autocorrelation through `cor()`:

~~~~
cor(array[], array[-1])
~~~~

`acf()` and `cor()` depend by a normalization factor:

~~~~
acf(x) = cor(x[-1], x[-n]) * (n-1)/n
~~~~
