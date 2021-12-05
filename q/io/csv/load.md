# Load csv files

**References:**
- https://code.kx.com/q/ref/file-text/#load-csv
- https://vector.org.uk/powerful-csv-processing-with-kdb/
- [`csvutil`](https://github.com/KxSystems/kdb/blob/master/utils/csvutil.q)
- [`csvguess`](https://github.com/KxSystems/kdb/blob/master/utils/csvguess.q)


**Relevant objects and commands:**
- `0:` the file text operator
- `read0`


-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------


## Native load CSV



### Syntax

~~~~
(types;delimiter     ) 0: y
(types;delimiter;flag) 0: y
~~~~

or

~~~~
0:[(types;delimiter);y]
0:[(types;delimiter;flag);y]
~~~~

where:
- `types` is a string of column type codes in upper case, see [Column type codes](#column_type_codes)
- `delimiter` is a char atom or 1-item list
    - If `delimiter` is enlisted, the first row of the content of `y` is read as column names and the
    result is a table;
    - otherwise the result is a list of values for each column.
- `flag` is a long atom indicating whether line-returns may be embedded in strings: 0 or 1
- `0:` is the file text operator
- `y` is a file descriptor, string, or a list of strings

### Example(s)


#### Load csv into a table variable called `t` with column headers

~~~~
t : ("DTSFF"; enlist ",") 0: `/path/to/file/data.csv
~~~~

where
- `t`: is the table variable to be defined
- `DTSFF` is the column type codes of the csv file corresponding to: `date`, `time`, `symbol`, `float`,
    `float`
- `enlist ","` is the delimiter specification
- `0:` is the file text operator
- `/path/to/file/data.csv` is the path to the csv file


#### Load csv into a table variable called `t` without column headers

~~~~
t : ("DTSFF"; ",") 0: `/path/to/file/data.csv
~~~~

where
- `t`: is the table variable to be defined
- `DTSFF` is the column type codes of the csv file corresponding to: `date`, `time`, `symbol`, `float`,
    `float`
- `","` is the delimiter specification
- `0:` is the file text operator
- `/path/to/file/data.csv` is the path to the csv file


-----------------------------------------------------------------------------------------------------------------

### Column type codes<a id="column_type_codes"></a>

~~~~
B        boolean     /[01tfyn]/i
G        guid        /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/i
X        byte      
H        short       [0-9][0-9]
I        int    
J        long   
E        real   
F        float  
C        char   
S        symbol     
P        timestamp   date?timespan
M        month       [yy]yy[?]mm
D        date        [yy]yy[?]mm[?]dd or [m]m/[d]d/[yy]yy
Z        datetime    date?time
N        timespan    hh[:]mm[:]ss[[.]ddddddddd]
U        minute      hh[:]mm
V        second      hh[:]mm[:]ss
T        time        hh[:]mm[:]ss[[.]ddd]
(blank)  skip           
*                    literal chars
~~~~

-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

