# Datatypes in `q`

**References:**
- [code.kx] Datatypes - basics][kx_datatypes]

Primitive datatypes are in the range `±1h` to `19h`:
- `<0h`: (negative-h) atom
- `0h`: (zero-h) general list 
- `>0h`: (positive-h) vector



n   c   name      sz  literal            null inf SQL       Java      .Net
----------------------------------------------------------------------------------
0   *   list                         
1   b   boolean   1   0b                                    Boolean   boolean
2   g   guid      16                     0Ng                UUID      GUID
4   x   byte      1   0x00                                  Byte      byte
5   h   short     2   0h                 0Nh  0Wh smallint  Short     int16
6   i   int       4   0i                 0Ni  0Wi int       Integer   int32
7   j   long      8   0j                 0Nj  0Wj bigint    Long      int64
                      0                  0N   0W   
8   e   real      4   0e                 0Ne  0We real      Float     single
9   f   float     8   0.0                0n   0w  float     Double    double
                      0f            
10  c   char      1   " "                " "                Character char
11  s   symbol    .   `                  `        varchar   String    string
12  p   timestamp 8   dateDtimespan      0Np  0Wp           Timestamp DateTime (RW)
13  m   month     4   2000.01m           0Nm              
14  d   date      4   2000.01.01         0Nd  0Wd date      Date    
15  z   datetime  8   dateTtime          0Nz  0wz timestamp Timestamp DateTime (RO)
16  n   timespan  8   00:00:00.000000000 0Nn  0Wn           Timespan  TimeSpan
17  u   minute    4   00:00              0Nu  0Wu         
18  v   second    4   00:00:00           0Nv  0Nv         
19  t   time      4   00:00:00.000       0Nt  0Wt time      Time    TimeSpan
20-76   enums                       
77      anymap          
78-96   77+t – mapped list of lists of type t           
97      nested sym enum         
98      table           
99      dictionary          
100     lambda          
101     unary primitive         
102     operator            
103     iterator            
104     projection          
105     composition         
106     f'          
107     f/          
108     f\          
109     f':         
110     f/:         
111     f\:         
112     dynamic load

- `n`: short int returned by type and used for casting, e.g. `9h$3`
- `c`: character used lower-case for casting and upper-case for Tok and Load CSV
- `sz:` size in bytes
- `inf`: infinity (no math on temporal types); `0Wh` is `32767h`
- `RO`: read only; `RW`: read-write


[kx_datatypes]: https://code.kx.com/q/basics/datatypes/
