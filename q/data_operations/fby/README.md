# `fby` (filter by)

**References:**
- https://code.kx.com/q/ref/fby/
- https://kdbfaq.com/how-does-fby-work/
- https://stackoverflow.com/questions/66131575/kdb-q-compute-the-percentage-by-group

Apply an aggregate to groups.

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

## Syntax

~~~~
(aggr;data) fby group
~~~~

where:
- `aggr` is an aggregate function
- `data`, `group` conforming vectors

collects the items of data into sublists according to the corresponding items of `group`, applies `aggr`
to each sublist, and returns the results as a vector with the same count as data.


### `fby` in tables 

Grouping on multiple columns:

~~~~
fby ([]colname1; colname2; ...)
~~~~

Example:

~~~~
fby ([]date; uid)
~~~~

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

## Where `fby` is practical

`fby` is designed to collapse cascaded `select … from select … by … from t` expressions into a single
`select … by … from … where … fby …`.
Think of `fby` when you find yourself trying to apply a filter to the aggregated column of a table
produced by `select … by …`.


----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

## Examples

### Example 1

~~~~
dat: 0 1 2 3 4 5 6 7 8 9

grp: `a`b`a`b`c`d`c`d`d`a

(sum;dat) fby grp
~~~~

Collect the items of data into sublists according to the items of group.

~~~~
0 2 9  (`a)
1 3    (`b)
4 6    (`c)
5 7 8  (`d)
~~~~

Apply `aggr` to each sublist.

~~~~
sum 0 2 9 -> 11
sum 1 3   -> 4
sum 4 6   -> 10
sum 5 7 8 -> 20
~~~~

The result is created by replacing each item of group with the result of applying aggr to its
corresponding sublist. 


~~~~
(sum;dat) fby grp
11 4 11 4 10 20 10 20 20 11

(sum each dat group grp)grp
11 4 11 4 10 20 10 20 20 11
~~~~

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------


### Example: Vectors

~~~~
dat: 2 5 4 1 7
grp: "abbac" 
~~~~

Apply `sum` to the groups

~~~~
(sum; dat) fby grp
~~~~

Apply `first` to the groups

~~~~
(first;dat) fby grp
~~~~



----------------------------------------------------------------------------------------------------------

### Example 2: `select`

~~~~
~~~~

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

