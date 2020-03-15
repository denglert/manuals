# Dealing with `nan` datatype



-------------------------------------

## `DataFrame.fillna()`

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

-------------------------------------

## Check if any value is `nan` in a `pd.DataFrame`

~~~~
df.isnull().values.any()
~~~~
