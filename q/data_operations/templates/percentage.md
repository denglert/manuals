# Calculate percentages

**References:**
- https://stackoverflow.com/questions/66131575/kdb-q-compute-the-percentage-by-group

~~~~
table:flip`day`week`item!(`mon`tue`wed`mon`tue`wed;1 1 1 2 2 2;2 7 1 1 2 1)
update proportion:item % (sum;item) fby week from table
~~~~
