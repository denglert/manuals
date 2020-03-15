# Datatypes in `pandas`

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.dtypes.html
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.ftypes.html

**Subtopics:**
- [Conversion/casting][conversion]


## Available datatypes

- http://pbpython.com/pandas_dtypes.html

|  Pandas dtype |    Python type    |                     NumPy type                                 |              Usage                |
| ------------- | ----------------- | -------------------------------------------------------------- | --------------------------------- |
|     object    | str               | string, unicode                                                |                  Text             |
|      int64    | int               | int, int8, int16, int32, int64, uint8, uint16, uint32, uint64  |          Integer numbers          |
|    float64    | float             | float, float16, float32, float64                               |        Floating point numbers     |
|       bool    | bool              | bool                                                           |          True/False values        |
| datetime64    | NA                | datetime64[ns]                                                 |          Date and time values     |
| timedelta[ns] | NA                | NA                                                             | Differences between two datetimes |
| category      | NA                | NA                                                             | Finite list of text values        |



-----------------------------------------------------------------------------------------------------------------------------------------

### `<M8[ns]

- https://stackoverflow.com/questions/29206612/difference-between-data-type-datetime64ns-and-m8ns



[conversion]: conversion.md
