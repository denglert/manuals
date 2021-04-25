# Tables in `q`

**References:**
- https://code.kx.com/q4m3/8_Tables/

A `q` table is essentially a collection of named columns implemented as a
dictionary. Consequently, `q` tables are column-oriented, in contrast to the
row-oriented tables in relational databases. Moreover, since lists are ordered,
so are columns, in contrast to SQL where the order of rows is undefined. The
fact that `q` tables comprise ordered column lists makes `kdb+` very efficient at
storing, retrieving and manipulating sequential data. One important example is
time-series data.


**Relevant commands:**
- Columns:
	- `cols`
	- `xcol`
	- `xcols`
- Joins:
	- Keyed:
		- `lj`, `ljf`
		- `ij`, `ijf`
		- `uj`, `ujf`
		- `ej`
	- As of:
		- `aj`, `aj0`
		- `ajf`, `afj0`
		- `asof`


--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

## Table creation 

Creating a table:

~~~~
table: ([]
        date  : 2021.01.01, 2021.01.01, 2021.01.02;
        qty   : 123, 25, -12;
        price : 0.3, 0.1, 0.9 
       )
~~~~

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------


## Table attributes

- `c`: column name
- `t`: data type
- `f`: foreign key
- `a`: attribute

~~~~
meta table
~~~~

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------


## Keyed tables

**References:**
- https://code.kx.com/q4m3/8_Tables/#84-primary-keys-and-keyed-tables

**Relevant commands:**
- `xkey`


### Examples:


Make `eid` the key of the table:

~~~~
t:([] eid:1001 1002 1003; name:`Dent`Beeblebrox`Prefect; iq:98 42 126)
eid xkey t
~~~~


Converting a keyed table to a regular table:o

~~~~
kt:([eid:1001 1002 1003] name:`Dent`Beeblebrox`Prefect; iq:98 42 126)
() xkey kt
~~~~
