# `pandas` file I/O

**All references:**
- http://pandas.pydata.org/pandas-docs/stable/io.html


## csv

### Read

Read in whitespace seperated datafile:

~~~~
pd.read_csv( 'file.dat', delimiter_whitespace=True)
~~~~


### csv

Write to a whitspace seperated datafile

~~~~
df.to_csv( 'file.dat', sep=' ', index=False, float_format='%.3e', index=False)
~~~~


## hdf

- http://pandas.pydata.org/pandas-docs/stable/io.html#io-hdf5

Hierarchical Data Format (HDF) is self-describing, allowing an application to
interpret the structure and contents of a file with no outside information. One
HDF file can hold a mix of related objects which can be accessed as a group or
as individual objects.


### Read - `pd.read_hdf()`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_hdf.html

Read from the store, close it if we opened it.

Retrieve pandas object stored in file, optionally based on where criteria

**Parameters:**

- `path_or_buf`: string, buffer or path object

    Path to the file to open, or an open pandas.HDFStore object. Supports any object implementing the __fspath__ protocol. This includes pathlib.Path and py._path.local.LocalPath objects.

    New in version 0.19.0: support for pathlib, py.path.

    New in version 0.21.0: support for __fspath__ proptocol.

- `key`: object, optional

    The group identifier in the store. Can be omitted if the HDF file contains a single pandas object.

- `mode`: {'r', 'r+', 'a'}, optional

    Mode to use when opening the file. Ignored if path_or_buf is a pandas.HDFStore. Default is 'r'.

- `where`: list, optional

    A list of Term (or convertible) objects.

- `start`: int, optional

    Row number to start selection.

- `stop`: int, optional

    Row number to stop selection.

- `columns`: list, optional

    A list of columns names to return.

- `iterator`: bool, optional

    Return an iterator object.

- `chunksize`: int, optional

    Number of rows to include in an iteration when using an iterator.

- `errors`: str, default 'strict'

    Specifies how encoding and decoding errors are to be handled. See the errors argument for open() for a full list of options.

**kwargs

    Additional keyword arguments passed to HDFStore.


#### Example(s)

~~~~
df = pd.read_hdf(path_to_hdf_file)
~~~~

### Write - `df.to_hdf()`

Write the contained data to an HDF5 file using HDFStore.
In order to add another `DataFrame` or `Series` to an existing HDF file please
use append mode and a different a key.


**Parameters:**

- `path_or_buf` : `str` or `pandas.HDFStore`

    File path or `HDFStore` object.

- `key` : str

    Identifier for the group in the store.

- `mode` : {`'a'`, `'w'`, `'r+'`}, default `'a'`

    Mode to open file:

        `'w'`: write, a new file is created (an existing file with the same name would be deleted).
        '`a'`: append, an existing file is opened for reading and writing, and if the file does not exist it is created.
        `'r+'`: similar to `'a'`, but the file must already exist.

- `format` : {'`fixed'`, `'table'`}, default `'fixed'`

    Possible values:

        `'fixed'`: Fixed format. Fast writing/reading. Not-appendable, nor searchable.
		`'table'`: Table format. Write as a PyTables Table structure which may
		perform worse but allow more flexible operations like searching / selecting
		subsets of the data.


- `append` : bool, default `False`

    For Table formats, append the input data to the existing.

- `data_columns` : list of columns or `True`, optional

    List of columns to create as indexed data columns for on-disk queries, or True to use all columns. By default only the axes of the object are indexed. See Query via Data Columns. Applicable only to format='table'.

- `complevel` : {`0`-`9`}, optional

    Specifies a compression level for data. A value of 0 disables compression.

- `complib` : {`'zlib'`, `'lzo'`, `'bzip2'`, `'blosc'`}, default `'zlib'`

    Specifies the compression library to be used. As of v0.20.2 these additional compressors for Blosc are supported (default if no compressor specified: 'blosc:blosclz'): {'blosc:blosclz', 'blosc:lz4', 'blosc:lz4hc', 'blosc:snappy', 'blosc:zlib', 'blosc:zstd'}. Specifying a compression library which is not available issues a ValueError.

- `fletcher32` : bool, default `False`

    If applying compression use the fletcher32 checksum.

- `dropna`: bool, default False

    If true, ALL nan rows will not be written to store.

- `errors`: str, default 'strict'

    Specifies how encoding and decoding errors are to be handled. See the errors argument for open() for a full list of options.


#### Example(s)

~~~~
df.to_hdf(output_hdf_path, key='THDM_type2_theory_allowed_chi2_ST_less_than_30', format='table', complib='blosc')
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

