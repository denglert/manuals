# Dictionaries in python


**All references:**
- https://docs.python.org/3.6/tutorial/datastructures.html#dictionaries
- https://www.programiz.com/python-programming/methods/dictionary
- https://amir.rachum.com/blog/2013/01/02/python-the-dictionary-playbook/
- https://codereview.stackexchange.com/questions/25465/set-a-default-if-key-not-in-a-dictionary-or-value-is-none


## Basics


### Create a dictionary

~~~~
dict = {
        "key1" : "value2",
         123   : 456
       }
~~~~



### Query a key

Query if the dictionary has a key
(returns `True` if it does)

~~~~
dct.has_key(key)
~~~~

~~~~
if key in dict:
    print("Key is in dict.")
~~~~

Query if the dictionary hasn't got a key
(returns `True` if it doesn't)

~~~~
if key not in dict:
    print("Key is not in dict")
~~~~


### Dictionary comprehension

- https://www.python.org/dev/peps/pep-0274/


**Example(s):**

~~~~
>>> d = {n: n**2 for n in range(5)}
>>> d
{0: 0, 1: 1, 2: 4, 3: 9, 4: 16} 
~~~~


## Accessing values

### `dict[key]`

~~~~
val = dict[key]
~~~~

Throws keyerror if key is not in the dict.

### `dict.get(key)`

- docs.python.org/3/library/stdtypes.html#dict.get
- https://softwareengineering.stackexchange.com/questions/225238/python-if-foo-in-dict-vs-try-dictfoo


~~~~
val = dict.get(key)
~~~~

Return the value for key if key is in the dictionary, else default. If default is not given, it
defaults to None, so that this method never raises a `KeyError`.

Default value can be set with `setdefault()`


## Deleting an element of the dictionary

~~~~
del dict[key]
~~~~


## `dictionary` methods

- https://docs.python.org/3/library/stdtypes.html#dict
- https://www.programiz.com/python-programming/methods/dictionary

- `dict.keys()`
- `dict.values()`
- `dict.get(key)`
- `dict.setdefault()`
- `dict.clear()`
- `dict.copy()`
- `dict.items()`
- ...


### `update()`

The method `update()` adds dictionary dict2's key-values pairs in to dict. This function does not
return anything.

~~~~
dict`.update(dict2)
~~~~


## Some examples

### Adding two dictionaries together

- https://stackoverflow.com/questions/6005066/adding-dictionaries-together-python

~~~~
newdict = dict(dict1, **dict2)
~~~~

### Check if dictionary is empty

~~~~
bool(dictionary)
~~~~

if empty, it evaluates to `False`, otherwise `True`


