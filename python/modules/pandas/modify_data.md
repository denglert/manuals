# Modifying data in `pd.DataFrame`s and `pd.Series`


## Rename columns

### Custom

~~~~
df.rename(columns={'k_huu':'k_hdd', 'k_hdd':'k_huu'}, inplace=True)
~~~~

### Rename columns while iterating over them


~~~~
for col_name in df.columns.values:
    df.rename(columns={col_name: new_col_name}, inplace=True)
~~~~


Example:

Prepend the column names with a prefix:

~~~~
for col_name in df.columns.values:
    df.rename(columns={col_name: prefix+col_name}, inplace=True)
~~~~

## Replace data

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.replace.html
- https://stackoverflow.com/questions/27060098/replacing-few-values-in-a-pandas-dataframe-column-with-another-value
- https://stackoverflow.com/questions/31888871/pandas-replacing-column-values


Example:

~~~~
df['tanb'].replace(1, 1.01, inplace=True)
~~~~

## Drop data

### Drop columns

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.drop.html

~~~~
df.drop(columns=['col1'], inplace=True)
~~~~


### Drop rows


#### Drop row while iterating

- https://stackoverflow.com/questions/28876243/how-to-delete-the-current-row-in-pandas-dataframe-during-df-iterrows

~~~~
for index, row in df.iterrows():
    if row['a'] > 0:
        df.drop(index, inplace=True)
~~~~

### Drop all duplicates

~~~~
df = df.drop_duplicates(subset=['mh2', 'sina'], keep=False)
~~~~


## Sort

~~~~
df_sorted = df.sort_values(by=['mHc'], ascending=[False])
~~~~
