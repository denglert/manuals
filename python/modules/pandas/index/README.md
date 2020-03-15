# `pandas` index

Get index names:

~~~~
df.index.names
~~~~

Set the DataFrame index (row labels) using one or more existing columns. By default yields a new
object.:

~~~~
DataFrame.set_index(keys, drop=True, append=False, inplace=False, verify_integrity=False)
~~~~

Get index values:

~~~~
df.index.levels
~~~~


## Multi-index DataFrames

**References:**
- https://pandas.pydata.org/pandas-docs/stable/indexing.html#indexing
- https://pandas.pydata.org/pandas-docs/stable/advanced.html#
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.MultiIndex.html
- https://www.datacamp.com/community/tutorials/pandas-multi-index

**Pitfalls:**
- https://github.com/pandas-dev/pandas/issues/10440
- https://github.com/pandas-dev/pandas/issues/18120

Set the `DataFrame` index (row labels) using existing columns.
Example:

~~~~
df.set_index(['ticker', 'Date'], inplace=True)
~~~~

### Cross section

Return a cross-section (row(s) or column(s)) from the Series/DataFrame. Defaults to cross-section on
the rows (axis=0):
~~~~
DataFrame.xs(key, axis=0, level=None, drop_level=True)
~~~~

Example:

~~~~
df.xs('III.L', level='ticker')
~~~~

### Assigning values

~~~~
df_main.loc['EZJ.L', 'RSI_SMA'] = a.values
~~~~
