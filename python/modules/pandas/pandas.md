# List of useful pandas commands

## Conversion

~~~~
import pandas as pd
~~~~

Read in whitespace seperated datafile

~~~~
pd.read_csv( 'file.dat', delimiter_whitespace=True)
~~~~


Write to a whitspace seperated datafile

~~~~
pd.read_csv( 'file.dat', sep=' ', index=False, float_format='%.3e', index=False)
~~~~

## Manipulating data

**Rename columns:**

~~~~
df.rename(columns={'k_huu':'k_hdd', 'k_hdd':'k_huu'}, inplace=True)
~~~~

### Sort

~~~~
df_sorted = df.sort_values(by=['mHc'], ascending=[False])
~~~~

## Read in chunks

If you have limited memory, read the data in chunks:

~~~~
hdf_out = pd.HDFStore('out.h5f', 'w', complib='blosc', format='table')
reader  = pd.read_table('input.dat', delimiter=r"\s+", chunksize=10**6)
for i, df_chunk in enumerate(reader):
    hdf_out.append('data', df_chunk, index=False)

hdf_out.close()
~~~~


## Drop all duplicates

~~~~
df = df.drop_duplicates(subset=['mh2', 'sina'], keep=False)
~~~~

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

## Index

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

### Multi-index DataFrames

**References:**
- https://pandas.pydata.org/pandas-docs/stable/indexing.html#indexing
- https://www.datacamp.com/community/tutorials/pandas-multi-index

**Pitfalls:**
- https://github.com/pandas-dev/pandas/issues/10440
- https://github.com/pandas-dev/pandas/issues/18120

Set the `DataFrame` index (row labels) using existing columns.
Example:

~~~~
df.set_index(['ticker', 'Date'], inplace=True)
~~~~

#### Cross section

Return a cross-section (row(s) or column(s)) from the Series/DataFrame. Defaults to cross-section on
the rows (axis=0):
~~~~
DataFrame.xs(key, axis=0, level=None, drop_level=True)
~~~~

Example:

~~~~
df.xs('III.L', level='ticker')
~~~~

#### Assigning values

~~~~
df_main.loc['EZJ.L', 'RSI_SMA'] = a.values
~~~~
