# Sorting strings

## Alphabetically

### In order

~~~~
>>> str = 'ecbhfgad'
>>> sorted(str)
['a', 'b', 'c', 'd', 'e', 'f', 'g', 'g', 'h']
~~~~


### In reverse order 


#### With advanced slicing

~~~~
>>> str = 'ecbhfgad'
>>> sorted(str)[::-1]
['h', 'g', 'g', 'f', 'e', 'd', 'c', 'b', 'a']
~~~~


## Other

### Reverse the original order

### With `reversed()`:

~~~~
>>> str = 'ecbhfgad'
>>> list(reversed(str))
['d', 'a', 'g', 'f', 'h', 'b', 'g', 'c', 'e']
~~~~


### With advanced slicing

~~~~
>>> str = 'ecbhfgad'
>>> str[::-1]
'dagfhbgce'
~~~~
