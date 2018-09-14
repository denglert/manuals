# Datatypes in `pandas`

**All references:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.astype.html


## Dealing with `nan` type

### `DataFrame.fillna()`

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

### Check if any value is `nan` in a `pd.DataFrame`

~~~~
df.isnull().values.any()
~~~~

## Converting from `object` to a numerical type

~~~~
df = df.convert_objects(convert_numeric=True)
~~~~

## Casting into a specified dtype - `pandas.DataFrame.astype`

https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.astype.html

~~~~
df.astype(dtype, copy=True, errors='raise', **kwargs)
~~~~

- `dtype` : data type, or dict of column name -> data type

    Use a numpy.dtype or Python type to cast entire pandas object to the same type. Alternatively, use {col: dtype, ...}, where col is a column label and dtype is a numpy.dtype or Python type to cast one or more of the DataFrame’s columns to column-specific types.

- `copy` : bool, default True.

    Return a copy when copy=True (be very careful setting copy=False as changes to values then may propagate to other pandas objects).

- `errors` : {‘raise’, ‘ignore’}, default ‘raise’.

    Control raising of exceptions on invalid data for provided dtype.

        raise : allow exceptions to be raised
        ignore : suppress exceptions. On error return original object

    New in version 0.20.0.

- `raise_on_error` : raise on invalid input

    Deprecated since version 0.20.0: Use errors instead

- `kwargs` : keyword arguments to pass on to the constructor

## Manual convert

(haven't tried it yet)

~~~~
df['purchase'].astype(str).astype(int)
~~~~
