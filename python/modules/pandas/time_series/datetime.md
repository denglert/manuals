# Datetime in pandas 


**Relevant functions:**
- `pd.bdate_range()`


--------------------------------------------------------------------

## `pd.bdate_range()`

**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.bdate_range.html


**Syntax:**


~~~~
bdate_range(start=None,
            end=None,
            periods=None,
            freq='B',
            tz=None,
            normalize=True,
            name=None,
            weekmask=None,
            holidays=None,
            closed=None,
            **kwargs)
~~~~

**Example(s):**

~~~~
>>> pd.bdate_range(start='1/1/2018', end='1/08/2018')
DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
               '2018-01-05', '2018-01-08'],
                dtype='datetime64[ns]', freq='B')
~~~~


--------------------------------------------------------------------
--------------------------------------------------------------------
--------------------------------------------------------------------

**References:**
- https://docs.scipy.org/doc/numpy/reference/arrays.datetime.html



## `np.datetime64()`


### Examples

~~~~
> date = np.datetime64("2018-11-03")
> date
numpy.datetime64('2018-11-03')
~~~~



## `np.array` with `datetime64`


~~~~
np.array(['2018-11-02', '2018-10-02', '2015-11-03'], dtype='datetime64')
~~~~
