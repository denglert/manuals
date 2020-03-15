# Constructing `pd.Dataframe`s and `pd.Series`



-------------------------------------------------------------

## `pd.DataFrame` construction methods

**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.html
- https://pbpython.com/pandas-list-dict.html


### Main constructor

~~~~
pd.DataFrame(data=None,
			 index: Optional[Collection] = None,
			 columns: Optional[Collection] = None,
			 dtype: Union[str, numpy.dtype, ExtensionDtype, None] = None,
			 copy: bool = False)
~~~~


#### Construction from a dictionary


**Example(s):**

~~~~
d = {'col1': [1, 2], 'col2': [3, 4]}
df = pd.DataFrame(data=d)
~~~~


#### Construction from a `np.array`

**Example(s):**

~~~~
arr = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
df = pd.DataFrame(arr, columns=['a', 'b', 'c'])
~~~~


------------------------------------------------------

### Explicit constructor classmethods

#### `pd.DataFrame.from_records`

**References:**
https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.from_records.html#pandas.DataFrame.from_records

**Syntax:**
~~~~
pd.DataFrame.from_records(data,
						  index=None,
                          exclude=None,
						  columns=None,
                          coerce_float=False,
						  nrows=None)
~~~~


**Example(s):**

~~~~
data = [('Jones LLC', 150, 200, 50),
        ('Alpha Co', 200, 210, 90),
        ('Blue Inc', 140, 215, 95)]
cols = ['account', 'Jan', 'Feb', 'Mar']
df = pd.DataFrame.from_records(sales, columns=cols)
~~~~

#### `pd.DataFrame.from_dict`

**References:**
- https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.from_dict.html#pandas.DataFrame.from_dict


**Syntax:**
~~~~
DataFrame.from_dict(data,
                    orient='columns',
                    dtype=None,
					columns=None) 
~~~~




**Example(s):**

~~~~
sales = {'account': ['Jones LLC', 'Alpha Co', 'Blue Inc'],
         'Jan': [150, 200, 50],
         'Feb': [200, 210, 90],
         'Mar': [140, 215, 95]}
df = pd.DataFrame.from_dict(sales)
~~~~

-------------------------------------------------------------

## `pd.Series` construction methods


