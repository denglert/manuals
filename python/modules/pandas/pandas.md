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


## Iterating over rows

~~~~
for index, row in df.iterrows():
    print row['c1'], row['c2']
~~~~


## Copy a dataframe

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.copy.html

~~~~
dfcopy = df.copy()
~~~~


## `pivot()`


~~~~
DataFrame.pivot(index=None, columns=None, values=None)[source]
~~~~

Reshape data (produce a ''pivot'' table) based on column values. Uses unique values from index / columns to form axes of the resulting DataFrame.

**Parameters:	**

- `index` : string or object, optional

    Column name to use to make new frame’s index. If None, uses existing index.

- `columns` : string or object

    Column name to use to make new frame’s columns

- `values` : string or object, optional

    Column name to use for populating new frame’s values. If not specified, all remaining columns will be used and the result will have hierarchically indexed columns

**Returns:**

- `pivoted` : DataFrame
