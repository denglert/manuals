# I/O in `q`

**References:**
- https://code.kx.com/q4m3/11_IO/
- https://code.kx.com/wiki/Cookbook/LoadingFromLargeFiles
- https://www.youtube.com/watch?v=JueB0Kosmgo


## Binary


### Read

**Example:**

~~~~
t:get `:table.dat
~~~~

### Write

**Example:**

~~~~
`:table.csv 0: csv 0: t
~~~~

----------------------------------------------------------------------------

----------------------------------------------------------------------------

## Text


### csv


#### Read 

**Example:**

~~~~
t:("DTSFF"; enlist ",") 0: `table.csv
~~~~

#### Write

**Example:**

~~~~
`:table.dat set t
~~~~
