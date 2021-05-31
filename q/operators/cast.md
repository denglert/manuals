# `$` cast operator

**References:**
- https://code.kx.com/q/ref/cast/


Convert to another datatype

---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------


## Syntax

~~~~
x$y 
~~~~

or 

~~~~
$[x; y]
~~~~


where
- `x` could be
	- one of	
	    - a positive short
	    - lower-case letter
	    - symbol from the following table

	| Short int | String |   Symbol    |
	| --------- | ------ | ----------- |
	|   1h      |  "b"   | `boolean    |
	|   2h      |  "g"   | `guid       |
	|   4h      |  "x"   | `byte       |
	|   5h      |  "h"   | `short      |
	|   6h      |  "i"   | `int        |
	|   7h      |  "j"   | `long       |
	|   8h      |  "e"   | `real       |
	|   9h      |  "f"   | `float      |
	|   10h     |  "c"   | `char       |
	|   12h     |  "p"   | `timestamp  |
	|   13h     |  "m"   | `month      |
	|   14h     |  "d"   | `date       |
	|   15h     |  "z"   | `datetime   |
	|   16h     |  "n"   | `timespan   |
	|   17h     |  "u"   | `minute     |
	|   18h     |  "v"   | `second     |
	|   19h     |  "t"   | `time       |

	Returns:
	`y` cast according to `x`

	- **Temporal casting**
	a symbol from the list `year`dd`mm`hh`uu`ss and `y` is a temporal type

	Returns:
	the year, day, month, hour, minute, or seconds value from `y`

	| datatype  | year | month |  mm | week |  dd | hh | uu | ss |
	| --------- | ---- | ----- | --- | ---- | ----|--- |--- |--- |
	| timestamp |  x   |   x   |  x  |  x   | x   | x  | x  | x  |
	| month     |  x   |   x   |  x  |      |     |    |    |    |
	| date      |  x   |   x   |  x  |  x   | x   |    |    |    |
	| datetime  |  x   |   x   |  x  |  x   | x   | x  | x  | x  |
	| timespan  |      |       |     |      |     | x  | x  | x  |
	| minute    |      |       |     |      |     | x  | x  | x  |
	| second    |      |       |     |      |     | x  | x  | x  |
	| time      |      |       |     |      |     | x  | x  | x  |


	- `0h` or `"*"`, and `y` is not a string, returns `y`
	- an upper-case letter or a negative short int, see

---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------



## Temporal casting

| datatype  | year | month |  mm | week |  dd | hh | uu | ss |
| --------- | ---- | ----- | --- | ---- | ----|--- |--- |--- |
| timestamp |  x   |   x   |  x  |  x   | x   | x  | x  | x  |
| month     |  x   |   x   |  x  |      |     |    |    |    |
| date      |  x   |   x   |  x  |  x   | x   |    |    |    |
| datetime  |  x   |   x   |  x  |  x   | x   | x  | x  | x  |
| timespan  |      |       |     |      |     | x  | x  | x  |
| minute    |      |       |     |      |     | x  | x  | x  |
| second    |      |       |     |      |     | x  | x  | x  |
| time      |      |       |     |      |     | x  | x  | x  |

### Examples
