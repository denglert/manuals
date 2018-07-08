# `collections` module

Container datatypes.


**References:**
- https://stackoverflow.com/questions/14535730/what-do-you-mean-by-hashable-in-python


| Container          | Description                                                          |
| ------------------ | -------------------------------------------------------------------  |
| namedtuple()       | factory function for creating tuple subclasses with named fields     |
| deque              | list-like container with fast appends and pops on either end         |
| ChainMap           | dict-like class for creating a single view of multiple mappings      |
| [Counter][counter] | dict subclass for counting hashable objects                          |
| OrderedDict        | dict subclass that remembers the order entries were added            |
| defaultdict        | dict subclass that calls a factory function to supply missing values |
| UserDict           | wrapper around dictionary objects for easier dict subclassing        |
| UserList           | wrapper around list objects for easier list subclassing              |
| UserString         | wrapper around string objects for easier string subclassing          |

[counter]: ./counter.md
