# Extracing general information on `pd.DataFrame`


## `df.describe(percentiles=None, include=None, exclude=None)`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.describe.html

Generates descriptive statistics that summarize the central tendency, dispersion and shape of a
dataset’s distribution, excluding NaN values.

Analyzes both numeric and object series, as well as DataFrame column sets of mixed data types. The
output will vary depending on what is provided. Refer to the notes below for more detail.

**Parameters:**

- `percentiles` : list-like of numbers, optional

    The percentiles to include in the output. All should fall between 0 and 1. The default is [.25, .5, .75], which returns the 25th, 50th, and 75th percentiles.

- `include` : ‘all’, list-like of dtypes or None (default), optional

    A white list of data types to include in the result. Ignored for Series. Here are the options:

        `‘all’` : All columns of the input will be included in the output.
        A list-like of dtypes : Limits the results to the provided data types. To limit the result to numeric types submit numpy.number. To limit it instead to object columns submit the numpy.object data type. Strings can also be used in the style of select_dtypes (e.g. df.describe(include=['O'])). To select pandas categorical columns, use 'category'
        `None` (default) : The result will include all numeric columns.

- `exclude` : list-like of dtypes or None (default), optional,

    A black list of data types to omit from the result. Ignored for Series. Here are the options:

        A list-like of dtypes : Excludes the provided data types from the result. To exclude numeric types submit numpy.number. To exclude object columns submit the data type numpy.object. Strings can also be used in the style of select_dtypes (e.g. df.describe(include=['O'])). To exclude pandas categorical columns, use 'category'
        `None` (default) : The result will exclude nothing.




## `sr.unique()`

Return unique values of Series object.

Uniques are returned in order of appearance. Hash table-based unique, therefore does NOT sort.
