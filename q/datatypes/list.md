# List datatype in `q`



## Constructing a list

~~~~
list1:(2;3)
~~~~


## Combining lists


**References:**
- https://code.kx.com/q4m3/3_Lists/#35-combining-lists


### Joining with `,`


**Example(s):**

~~~~
q) 1 2 3,4 5
1 2 3 4 5
q) 1,2 3 4
1 2 3 4
q) 1 2 3,4
1 2 3 4
~~~~

-----------------------------------------------


## Operators on lists


### `/` over operator


**Example:**

Sum accross the elements of the list

~~~~
q) 0 +/ 10 20 30 40 50
150
~~~~

or

~~~~
q) (+/) 10 20 30 40 50
150
~~~~



-------------------------------------------------------
