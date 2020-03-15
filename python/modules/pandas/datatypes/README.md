# Datatypes in `pandas`

**All references:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.dtypes.html
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.astype.html
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.ftypes.html


In `pandas` data type is reffered to as `dtype`.


## Available datatypes

- http://pbpython.com/pandas_dtypes.html

|  Pandas dtype |    Python type    |                     NumPy type                                 |              Usage                |
| ------------- | ----------------- | -------------------------------------------------------------- | --------------------------------- |
|     object    | str               | string, unicode                                                |                  Text             |
|      int64    | int               | int, int8, int16, int32, int64, uint8, uint16, uint32, uint64  |          Integer numbers          |
|    float64    | float             | float, float16, float32, float64                               |        Floating point numbers     |
|       bool    | bool              | bool                                                           |          True/False values        |
| datetime64    | NA                | datetime64[ns]                                                 |          Date and time values     |
| timedelta[ns] | NA                | NA                                                             | Differences between two datetimes |
| category      | NA                | NA                                                             | Finite list of text values        |




### `<M8[ns]

- https://stackoverflow.com/questions/29206612/difference-between-data-type-datetime64ns-and-m8ns

-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------


## Inspection

### Check the `dtypes` of all columns within a pandas dataframe - `DataFrame.dtypes`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.dtypes.html
- https://stackoverflow.com/questions/40353079/pandas-how-to-check-dtype-for-all-columns-in-a-dataframe

Return the `dtypes` in the `DataFrame`.

This returns a `Series` with the data type of each column. The result’s index is
the original `DataFrame`’s columns. Columns with mixed types are stored with the
object `dtype`.

#### Example:

~~~~
>>> df.dtypes
float              float64
int                  int64
datetime    datetime64[ns]
string              object
dtype: object
~~~~


### `Series.dtype` - Check the `dtype` of a `pd.Series`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.Series.dtype.html
- https://stackoverflow.com/questions/22697773/how-to-check-the-dtype-of-a-column-in-python-pandas

Return the `dtype` object of the underlying data.

#### Example(s)

~~~~
>>> apple['Close'].dtype
dtype('float64')
~~~~

------------------------------------------------------

------------------------------------------------------

## Conversion


### `pandas.DataFrame.astype()` - Casting into a specified `dtype`

https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.astype.html

~~~~
df.astype(dtype, copy=True, errors='raise', **kwargs)
~~~~

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


#### Example(s)

##### Converting to `categorical` datatype:

- https://stackoverflow.com/questions/39092067/pandas-dataframe-convert-column-type-to-string-or-categorical

~~~~
df['zipcode'] = df.zipcode.astype('category')
~~~~



### `pd.to_datetime(`) - Converting to `datetime` 

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.to_datetime.html
- https://stackoverflow.com/questions/17134716/convert-dataframe-column-type-from-string-to-datetime
- https://stackoverflow.com/questions/40815238/python-pandas-convert-index-to-datetime


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

#### Example(s)


~~~~
>>> df = pd.DataFrame({'year': [2015, 2016],
                       'month': [2, 3],
                       'day': [4, 5]})
>>> pd.to_datetime(df)
0   2015-02-04
1   2016-03-05
dtype: datetime64[ns]
~~~~

-----------------------------------------------------------------

### Converting from `object` to a numerical type

~~~~
df = df.convert_objects(convert_numeric=True)
~~~~

-----------------------------------------------------------------


### Dealing with `nan` type

#### `DataFrame.fillna()`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.fillna.html

Fill NA/NaN values using the specified method

~~~~
DataFrame.fillna(value=None, method=None, axis=None, inplace=False, limit=None, downcast=None, **kwargs)
~~~~

Example:

Replace all `NaN` elements with 0s:
~~~~
df.fillna(0)
~~~~

#### Check if any value is `nan` in a `pd.DataFrame`

~~~~
df.isnull().values.any()
~~~~
