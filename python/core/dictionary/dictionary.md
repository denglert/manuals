# Dictionaries in python


**All references:**
- https://docs.python.org/3.6/tutorial/datastructures.html#dictionaries
- https://codereview.stackexchange.com/questions/25465/set-a-default-if-key-not-in-a-dictionary-or-value-is-none


~~~~
dict = {
        "key1" : "value2",
         123   : 456
       }
~~~~


## Adding two dictionaries together

- https://stackoverflow.com/questions/6005066/adding-dictionaries-together-python

~~~~
newdict = dict(dict1, **dict2)
~~~~

## Check if dictionary is empty

~~~~
bool(dictionary)
~~~~

if empty, it evaluates to `False`, otherwise `True`

## Accessing values

**Retrieve value:**

~~~~
val = dict[key]
~~~~

Throws keyerror if key is not in the dict.

~~~~
val = dict.get(key)
~~~~


Returns `None` if key is not in the dict.


## Dictionary functions

- `dict.keys()`
- `dict.values()`
