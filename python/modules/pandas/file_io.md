# `pandas` file I/O

## Read

Read in whitespace seperated datafile:

~~~~
pd.read_csv( 'file.dat', delimiter_whitespace=True)
~~~~


--------------------------------------------------------------------------

## Write

### csv

Write to a whitspace seperated datafile

~~~~
df.to_csv( 'file.dat', sep=' ', index=False, float_format='%.3e', index=False)
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

