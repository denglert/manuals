# Pivot tables




## `pd.pivot_table()`



## `DataFrame.pivot()`

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



