# Selection in `pandas`


## `.loc`

From https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.loc.html:

Purely label-location based indexer for selection by label.

`DataFrame.loc`

`.loc[]` is primarily label based, but may also be used with a boolean array.

Allowed inputs are:

- A single label, e.g. 5 or 'a', (note that 5 is interpreted as a label of the index, and never as an integer position along the index).
- A list or array of labels, e.g. ['a', 'b', 'c'].
- A slice object with labels, e.g. 'a':'f' (note that contrary to usual python slices, both the start and the stop are included!).
- A boolean array.
- A callable function with one argument (the calling Series, DataFrame or Panel) and that returns valid output for indexing (one of the above)

.loc will raise a KeyError when the items are not found.


### Example(s)


Accessing first appearing value in column:

~~~~
df.loc[df.index[0], colname]
~~~~


## Selection based on a condition requiring that an element is within a set containing multiple values

**Reference:**
- https://pandas.pydata.org/pandas-docs/version/0.22/generated/pandas.DataFrame.isin.html
- https://pandas.pydata.org/pandas-docs/version/0.22/generated/pandas.Series.isin.html

Using `df[col].isin(values)` which returns a boolean `Series` showing whether each element in the
`Series` is contained in values.

### Example(s)

~~~~
mA_grid = [100.0, 150.0, 200.0]
df_downsampled = df[df['mA'].isin(mA_grid)]
~~~~

## argmax/min - `idmax()`/`idmin()`

Find a row where the value of a column is maximual/minimal:

~~~~
df['A'].idxmax()
~~~~



## Selecting by substring within a column

- https://stackoverflow.com/questions/11350770/pandas-dataframe-select-by-partial-string

~~~~
df[df['A'].str.contains("hello")]
~~~~
