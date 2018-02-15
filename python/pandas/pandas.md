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

## Plotting

~~~~
df.plot(x, y, kind='scatter')
~~~~

or:

~~~~
df.plot.scatter(x, y)
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
