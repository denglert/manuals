# Datetime and Timedeltas in `numpy`


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
