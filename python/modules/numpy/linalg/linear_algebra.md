# `numpy` linear algebra


**All references:**


### Mapping

Example: Boolean map of a matrix

`False`: not equal to 2
`True`: equal to 2

~~~~
labels = np.array([2,3,3,4,5,6,7,7,1,2,2,2,1])
boolean_map = (labels == 2)
~~~~

The boolean map can be converted to integers:

~~~~
y = boolean_map.astype(int)
~~~~



## Insert

**Example:**

Insert a vector of `1`s  in front of a matrix:

~~~~
M_new = np.insert(M, 0, 1, axis=1)
~~~~
