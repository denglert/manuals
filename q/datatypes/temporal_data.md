# Temporal data in `q`

**References:**
- https://code.kx.com/q/basics/datatypes/#temporal
- https://www.youtube.com/watch?v=XITE1BbPQvY&list=PLypX5sYuDqvrwBD2EMWadIMiTqJZmVsqm


Dates in `q` are counted from 2000.01.01 and are actually stored as


~~~~
q) 2000.01.01 = 0
1b
q) 2000.01.02 = 1
1b
~~~~


## Generating a list of dates


2000.01.01 + til 31




## Time delta/duration

~~~~
q)2000.01.03 - 2000.01.01
2i
~~~~

