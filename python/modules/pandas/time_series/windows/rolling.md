# Rolling window calculations

**References:**


## `pd.DataFrame.rolling()`

**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.rolling.html


### Syntax


~~~~
pd.DataFrame.rolling(window,
                     min_periods=None,
                     center=False,
                     win_type=None,
                     on=None,
                     axis=0,
                     closed=None)
~~~~

**Parameters:**

- `window` : `int`, offset, or `BaseIndexer` subclass
	Size of the moving window. This is the number of observations used for
	calculating the statistic. Each window will be a fixed size.
	
	If its an offset then this will be the time period of each window. Each
	window will be a variable sized based on the observations included in the
	time-period. This is only valid for datetimelike indexes.
	
	If a BaseIndexer subclass is passed, calculates the window boundaries based on
	the defined get_window_bounds method. Additional rolling keyword arguments,
	namely min_periods, center, and closed will be passed to get_window_bounds.

- `min_periods` : `int`, default `None`
	Minimum number of observations in window required to have a value
	(otherwise result is `NA`).
	For a window that is specified by an offset, `min_periods` will default to `1`.
	Otherwise, `min_periods` will default to the size of the window.

- `center` : `bool`, default `False`
	Set the labels at the center of the window.

- `win_type` : `str`, default `None`
	Provide a window type. If `None`, all points are evenly weighted.
	See the notes below for further information.

- `on` : `str`, optional
	For a DataFrame, a datetime-like column or `MultiIndex` level on which to
	calculate the rolling window, rather than the `DataFrame`’s index. Provided
	integer column is ignored and excluded from result since an integer index is
	not used to calculate the rolling window.

- `axis` : `int` or `str`, default `0`

- `closed` : `str`, default `None`
	Make the interval closed on the ‘right’, ‘left’, ‘both’ or ‘neither’
	endpoints. For offset-based windows, it defaults to ‘right’. For fixed windows,
	defaults to ‘both’. Remaining cases not implemented for fixed windows.

**Returns:**
- a `Window` or `Rolling` sub-classed for the particular operation


### Window types


- boxcar
- triang
- blackman
- hamming
- bartlett
- parzen
- bohman
- blackmanharris
- nuttall
- barthann
- kaiser (needs beta)
- gaussian (needs std)
- general_gaussian (needs power, width)
- slepian (needs width)
- exponential (needs tau), center is set to None.


### Example(s)

~~~~
~~~~





