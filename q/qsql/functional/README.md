# Functional `qSQL`

**References:**
- https://code.kx.com/q/basics/funsql/

The functional forms of `delete`, `exec`, `select` and `update` are particularly useful for
programmatically-generated queries, such as when column names are dynamically produced. 


**Functional forms:**

~~~~
![t;c;b;a]              /update and delete

?[t;i;p]                /simple exec

?[t;c;b;a]              /select or exec
?[t;c;b;a;n]            /select up to n records
?[t;c;b;a;n;(g;cn)]     /select up to n records sorted by g on cn
~~~~

where:

- `t` is a table, or the name of a table as a symbol atom. 
- `c` is the `Where` phrase, a list of constraints. 
	Every item in `c` is a triple consisting of a `boolean-` or `int-` valued binary
	function together with its arguments, each an expression containing column
	names and other variables. The function is applied to the two arguments,
	producing a boolean vector. The resulting boolean vector selects the rows that
	yield non-zero results. The selection is performed in the order of the items in
	`c`, from left to right.
- `b` is the `By` phrase, one of:
	- the general empty list `()`
	- `boolean` atom: `0b` for no grouping; `1b` for distinct
	- a symbol atom or list naming table column/s
	- a `dictionary` of group-by specifications

	The domain of dictionary b is a list of symbols that are the key names for
	the grouping. Its range is a list of column expressions (parse trees) whose
	results are used to construct the groups. The grouping is ordered by the domain
	items, from major to minor.

- `a` is the `Select` phrase, one of:
	- the general empty list `()`
	- a symbol atom: the name of a table column
	- a parse tree
	- a dictionary of select specifications (aggregations)

	The domain of dictionary a is a list of symbols containing the names of the
	produced columns. (QSQL query templates assign default column names in the
	result, but here each result column must be named explicitly.)

	Each item of its range is an evaluation list consisting of a function and
	its argument/s, each of which is a column name or another such result list. For
	each evaluation list, the function is applied to the specified value/s for each
	row and the result is returned. The evaluation lists are resolved recursively
	when operations are nested.

- `i` is a list of indexes
- `p` is a parse tree
- `n` is a non-negative integer or infinity, indicating the maximum number of records to be returned
- `g` is a unary grade function 


------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------

## `select` (`?`)

**Template:**

~~~~
?[t; c; b; a]
~~~~

-------------------------------------------------------------------------------------------

### Examples


#### Example 1

Creating a dummy table:
~~~~
t:([] c1:`a`b`a`c`a`b`c; c2:10*1+til 7; c3:1.1*1+til 7)
~~~~


Plain q-sql code:
~~~~
select from t where c2>35,c1 in `b`c
~~~~

Functional q-sql code:
~~~~
?[t;  ((>;`c2;35);(in;`c1;enlist[`b`c]));  0b; ()]
~~~~

#### Example 2

Creating a dummy table:

~~~~
t:([]n:`x`y`x`z`z`y;p:0 15 12 20 25 14)
~~~~

Plain q-sql code:
~~~~
select m:max p,s:sum p by name:n from t where p>0,n in `x`y
~~~~

Functional q-sql code:
~~~~
c: ((>;`p;0);(in;`n;enlist `x`y)) /  
b: (enlist `name)!enlist `n       /
a: `m`s!((max;`p);(sum;`p))       /

?[t; c; b; a]
~~~~

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------

## `update` (`!`)

**Template:**

~~~~
![t; c; b; a]
~~~~

-------------------------------------------------------------------------------------------

### Examples

#### Example 1

Creating a dummy table:

~~~~
t:([]n:`x`y`x`z`z`y;p:0 15 12 20 25 14)
~~~~

Plain q-sql code:

~~~~
update p:max p by n from t where p>0
~~~~


Functional q-sql code:

~~~~
c: enlist (>;`p;0)
b: (enlist `n)!enlist `n
a: (enlist `p)!enlist (max;`p)

![t; c; b; a]
~~~~

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------

## `delete` (`!`)

**Template:**

~~~~
![t;c;0b;a]
~~~~

-------------------------------------------------------------------------------------------

### Examples

#### Example 1

Creating a dummy table:

~~~~
t:([]c1:`a`b`c;c2:`x`y`z)
~~~~

~~~~
![t;();0b;enlist `c2]
~~~~


-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


