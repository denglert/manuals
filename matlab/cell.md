# `cell`

**References:**
- https://uk.mathworks.com/help/matlab/ref/cell.html

## Basic

When you have data to put into a cell array, create the array using the cell
array construction operator, {}:

~~~~
C = {1,2,3;
     'text',rand(5,10,2),{11; 22; 33}}
~~~~

~~~~
C = cell(n)
~~~~




## Find the index of a cell containing a specific string in an array of cells (lookup string)

- https://uk.mathworks.com/matlabcentral/answers/2015-find-index-of-cells-containing-my-string

~~~~
idx = find(strcmp([C{:}], str))
~~~~

or

~~~~
idx = find(strcmp([C(:)], str))
~~~~
