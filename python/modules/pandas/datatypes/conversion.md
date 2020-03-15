# Converting between different datatypes


**References:**
- 

**Functions:**
- `pd.DataFrame.astype()`
- `pd.DataFrame.to_string()`
- `pd.DataFrame.convert_objects()`
- `pd.to_numeric()`
- `pd.to_datetime()`


---------------------------------------------------------------

## `pd.DataFrame.astype()`


**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.astype.html


**Syntax:**
~~~~
df.astype(dtype, copy=True, errors='raise', **kwargs)
~~~~


where:
- `dtype` : data type, or dict of column name -> data type
    Use a `numpy.dtype` or Python type to cast entire pandas object to the same
    type.  Alternatively, use `{col: dtype, ...}`, where `col` is a column label and
    `dtype` is a `numpy.dtype` or Python type to cast one or more of the
    `DataFrame`’s columns to column-specific types.

- `copy` : bool, default True.
    Return a copy when `copy=True` (be very careful setting copy=False as changes
    to values then may propagate to other pandas objects).

- `errors` : `{'raise', 'ignore'}`, default `'raise'`.
    Control raising of exceptions on invalid data for provided dtype.

	- `'raise'`: allow exceptions to be raised
	- `'ignore'`: suppress exceptions. On error return original object

- `raise_on_error` : raise on invalid input
    Deprecated since version 0.20.0: Use errors instead

- `kwargs` : keyword arguments to pass on to the constructor



### Example(s)

#### Converting to `categorical` datatype:

**References:**
- https://stackoverflow.com/questions/39092067/pandas-dataframe-convert-column-type-to-string-or-categorical

~~~~
df['zipcode'] = df.zipcode.astype('category')
~~~~


---------------------------------------------------------------

## pd.DataFrame.convert_objects()


**References:**
- 


**Example(s):**

~~~~
df = df.convert_objects(convert_numeric=True)
~~~~

---------------------------------------------------------------


## pd.DataFrame.to_string()


**References:**
- https://stackoverflow.com/questions/24644656/how-to-print-pandas-dataframe-without-index


**Example(s):**

~~~~
https://stackoverflow.com/questions/24644656/how-to-print-pandas-dataframe-without-index
~~~~


---------------------------------------------------------------


## `pd.to_datetime()`


**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.to_datetime.html
- https://stackoverflow.com/questions/17134716/convert-dataframe-column-type-from-string-to-datetime
- https://stackoverflow.com/questions/40815238/python-pandas-convert-index-to-datetime


**Syntax:**
~~~~
pandas.to_datetime(arg,
				   errors='raise',
                   dayfirst=False,
                   yearfirst=False,
				   utc=None,
                   box=True,
                   format=None,
                   exact=True, unit=None,
                   infer_datetime_format=False,
                   origin='unix',
                   cache=False)
~~~~



**Example(s):**

~~~~
>>> df = pd.DataFrame({'year': [2015, 2016],
                       'month': [2, 3],
                       'day': [4, 5]})
>>> pd.to_datetime(df)
0   2015-02-04
1   2016-03-05
dtype: datetime64[ns]
~~~~



---------------------------------------------------------------


## `pd.to_numeric()`



**References:**
- 


**Example(s):**

~~~~
~~~~


