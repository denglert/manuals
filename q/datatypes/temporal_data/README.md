# Temporal data in `q`

**References:**
- https://code.kx.com/q/basics/datatypes/#temporal
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#25-temporal-data
- https://www.youtube.com/watch?v=XITE1BbPQvY&list=PLypX5sYuDqvrwBD2EMWadIMiTqJZmVsqm


|   n    |  c  |                 name                  |  bytes |       literal       | null | inf  |
| ------ | --- | ------------------------------------- | ------ | ------------------- | ---- | ---- |
| 12     |  p  | timestamp                             |  8     |  dateDtimespan      | 0Np  | 0Wp  |
| 13     |  m  | month                                 |  4     |  2000.01m           | 0Nm  |      |
| 14     |  d  | date                                  |  4     |  2000.01.01         | 0Nd  | 0Wd  |
| 15     |  z  | datetime                              |  8     |  dateTtime          | 0Nz  | 0wz  |
| 16     |  n  | timespan                              |  8     |  00:00:00.000000000 | 0Nn  | 0Wn  |
| 17     |  u  | minute                                |  4     |  00:00              | 0Nu  | 0Wu  |
| 18     |  v  | second                                |  4     |  00:00:00           | 0Nv  | 0Nv  |
| 19     |  t  | time                                  |  4     |  00:00:00.000       | 0Nt  | 0Wt  |


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Timestamp (`±12`)

**References:**
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#252-time-types
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#25-temporal-data

The preferred type is `timestamp`, which is the lexical combination of a date and
a timespan, separated by D. The underlying timestamp value is a long
representing the count of nanoseconds since the millennium. Post-millennium is
positive and pre- is negative.

~~~~
timestamp: 2014.11.22D17:43:40.123456789
type timestamp
-12h
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Month (`±13h`)

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

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Date (`±14h`)




**Remarks:**
Dates in `q` are
- counted from 2000.01.01
- actually stored as 4 bytes ints (`i` or `-6h`) underneath.
- The valid date range for parsing is 1709.01.01 to 2290.12.31.
- Date arithmetic is not checked, so you can go out of this range


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




------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Datetime (`±15h`) (deprecated)

**References:**
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#252-time-types
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#25-temporal-data

A `datetime` (deprecated) is the lexical combination of a `date` and a `time`,
separated by T as in the ISO standard format.
A datetime value stores in a float the fractional day count from midnight Jan
1, 2000.

~~~~
datetime: 2014.11.22T17:43:40.123
type datetime
~~~~


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Timespan (`±16h`)


~~~~
timespan: 12:34:56.123456789
type timespan
-16h
~~~~


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Minute (`±17h`)


~~~~
minute: 15:07
type minute
-17h
~~~~


------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Second (`±18h`)


~~~~
second: 23:59:59
type second
-18h
~~~~



------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Time (`±19`)

**References:**
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#252-time-types


~~~~
time: 09:01:02.042
type time
-19h
~~~~

