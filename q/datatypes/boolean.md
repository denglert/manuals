# Boolean data type in `q`


**References:**
- 

`True` boolean value in `q`:

~~~~
1b
~~~~

`False` boolean value in `q`:

~~~~
0b
~~~~


## List of booleans


`True`, `False`, `True`

~~~~
101b
~~~~


## Comparisons

Checking equality

~~~~
q) 42 = 6*7
1b
~~~~


When comparing lists, comparison is done at the element level, returning a list of booleans:

~~~~
q) 1 2 3 = 10 2 30
010b
~~~~

Comparing a list of different sizes returns a list of booleans

~~~~
q)1 2 3 = 10 2 30 40
'length
  [0]  1 2 3 = 10 2 30 40
             ^
~~~~

