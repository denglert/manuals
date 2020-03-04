# Temporal data in `q`

**References:**
- https://code.kx.com/q/basics/datatypes/#temporal
- https://www.youtube.com/watch?v=XITE1BbPQvY&list=PLypX5sYuDqvrwBD2EMWadIMiTqJZmVsqm



## Dates (`±14h`)


Dates in `q` are
- counted from 2000.01.01
- actually stored as 4 bytes ints (`i` or `-6h`) underneath.


~~~~
q) 2000.01.01 = 0
1b
~~~~

~~~~
q) 2000.01.02 = 1
1b
~~~~

~~~~
q) 1999.12.31 = -1
1b
~~~~



### Generating a list of dates


~~~~
2000.01.01 + til 31
~~~~



### Date shift


~~~~
q)2020.01.01 + 10
2020.01.11
~~~~


### Date delta/duration

~~~~
q)2000.01.03 - 2000.01.01
2i
~~~~

~~~~
q)2000.01.10 - 2000.01.01
9i
~~~~

------------------------------------------------------------------------------------------


## Months (`±13h`)

Months in `q` are
- counted from 2000.01m
- actually stored as 4 bytes ints (`i` or `-6h`) underneath.


~~~~
q)2000.01m = 0
1b
~~~~

~~~~
q)1999.12m = -1
1b
~~~~


### Comparing with dates


Date corresponding to the first day of the months is equal to the month

~~~~
q)2000.01.01 = 2000.01m
1b
~~~~

~~~~
q)2000.01.02 = 2000.01m
0b
~~~~

### Generating a list of motnhs


First three months of 2000

~~~~
q) 2000.01m + til 3
2000.01m 2000.02m 2000.03m
~~~~







------------------------------------------------------------------------------------------



