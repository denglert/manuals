# Operations on temporal data


## Generating a list of dates


~~~~
2000.01.01 + til 31
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## Date shift


~~~~
q)2020.01.01 + 10
2020.01.11
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## Date delta/duration

~~~~
q)2000.01.03 - 2000.01.01
2i
~~~~

~~~~
q)2000.01.10 - 2000.01.01
9i
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## Comparing with dates


Date corresponding to the first day of the months is equal to the month

~~~~
q)2000.01.01 = 2000.01m
1b
~~~~

~~~~
q)2000.01.02 = 2000.01m
0b
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## Generating a list of months


First three months of 2000

~~~~
q) 2000.01m + til 3
2000.01m 2000.02m 2000.03m
~~~~
