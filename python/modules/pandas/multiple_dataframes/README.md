# Working with multiple dataframes

Here we show some useful operations and functions when working with multiple `DataFrame`s.


## Merge, join and concatenate

**References:**
- https://pandas.pydata.org/pandas-docs/stable/merging.html

### Concatenation

~~~~
dfiles = glob.glob(  './data/*.dat' )
df_list = []

for f in dfiles:
    df_temp = pd.read_csv(f, delim_whitespace=True)
    df_list.append( df_temp )

df = pd.concat(df_list)
~~~~

### Merge

Syntax:

~~~~
pd.merge(left, right, how='inner', on=None, left_on=None, right_on=None,
         left_index=False, right_index=False, sort=True,
         suffixes=('_x', '_y'), copy=True, indicator=False,
         validate=None)
~~~~


`how`:

| Merge method | SQL Join Name    |           Description                       |
| ------------ | ---------------- | ------------------------------------------- | 
|     left     | LEFT OUTER JOIN  | Use keys from left frame only               |
|     right    | RIGHT OUTER JOIN | Use keys from right frame only              |
|     outer    | FULL OUTER JOIN  | Use union of keys from both frames          |
|     inner    | INNER JOIN       | Use intersection of keys from both frames   |

#### How to merge a list of dataframes

~~~~
import functools
df = functools.reduce(lambda left,right: pd.merge(left,right,on=['shat', 'f', 'k_hzz', 'k_hqq'], how='inner'), dfs)
~~~~


--------------------------------------------------------------------------------------------

## Diff of dataframes

**References:**
- https://stackoverflow.com/questions/36891977/pandas-diff-of-two-dataframes

Example:

~~~~
merged = df1.merge(df2, indicator=True, how='outer')
merged[merged['_merge'] == 'right_only']
~~~~


--------------------------------------------------------------------------------------------

## Copy a dataframe

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.copy.html

~~~~
dfcopy = df.copy()
~~~~

--------------------------------------------------------------------------------------------

## Functions to check out

- `combine_first()`: https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.combine_first.html
- `update()`: https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.update.html
