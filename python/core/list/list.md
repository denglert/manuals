# Lists in python

**All references:**
- https://docs.python.org/3.6/tutorial/datastructures.html#more-on-lists
- http://www.secnetix.de/olli/Python/list_comprehensions.hawk


## List functions

### `insert()`

Prepend an element to the list

~~~~
list = [2,3,4]
list.insert(0, 1)
~~~~

### `append()`

Append an element to the list:

~~~~
list = [1,2,3]
list.append(4)
~~~~

### `count()`

~~~~
>>> alist =  [123, 'xyz', 'zara', 'abc', 123]
>>> alist.count(123)
2
~~~~

## Concatenating lists

~~~~
>>> list_one = [1,2,3]
>>> list_two = [4,5,6]
>>> list_merged = list_one_list_two
>>> list_merged
[1,2,3,4,5,6]
~~~~

## List comprehensions

~~~~
S = [x**2 for x in range(10)]
V = [2**i for i in range(13)]
M = [x for x in S if x % 2 == 0]
~~~~


## Double iteration in list comprehension

- https://stackoverflow.com/questions/1198777/double-iteration-in-list-comprehension

~~~~
a = [[1, 2], [3, 4]]
~~~~

~~~~
>>> [x for x in b for b in a]
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  NameError: name 'b' is not defined
~~~~

~~~~
>>> [x for b in a for x in b]
[1, 2, 3, 4]
~~~~

~~~~
>>> [x for x in b for b in a]
[3, 3, 4, 4]
~~~~

~~~~
[word for sentence in text for word in sentence]
~~~~
