# Datatypes in `q`

**References:**
- [code.kx Datatypes - basics][kx_datatypes]

**Data type:**
- [Temporal data types](temporal_data.md)
- [Boolean data type](boolean.md)
- [Strings](string.md)
- [Symbol](symbol.md)


Data types in `q` are indicated by short int number.


**Example:**

~~~~
q) type 12.0
-9h
~~~~

where `-9h` is a short integer, indicated by `h`.


The short integer indicator of the data type of short integer integers is itself `-5h`:

~~~~
q) type 1h
-5h
~~~~


## List of datatypes



| Range of short int type indicator | Short name   | Data type category |
| --------------------------------- | ------------ | ------------------ |
|          `<0h`                    |  negative-h  | atom               |
|          `0h`                     |  zero-h      | general list       |
|          `>0h`                    |  positive-h  | vector             |


Full list of datatypes:


|   n    |  c  |                 name                  |  bytes |       literal       | null | inf  |
| ------ | --- | ------------------------------------- | ------ | ------------------- | ---- | ---- |
| 0      |  *  | list                                  |        |                     |      |      |
| 1      |  b  | boolean                               |  1     |  0b                 |      |      |
| 2      |  g  | guid                                  |  16    |                     | 0Ng  |      |
| 4      |  x  | byte                                  |  1     |  0x00               |      |      |
| 5      |  h  | short                                 |  2     |  0h                 | 0Nh  | 0Wh  |
| 6      |  i  | int                                   |  4     |  0i                 | 0Ni  | 0Wi  |
| 7      |  j  | long                                  |  8     |  0j                 | 0Nj  | 0Wj  |
|        |     |                                       |        |  0                  | 0N   | 0W   |
| 8      |  e  | real                                  |  4     |  0e                 | 0Ne  | 0We  |
| 9      |  f  | float                                 |  8     |  0.0                | 0n   | 0w   |
|        |     |                                       |        |  0f                 |      |      |
| 10     |  c  | char                                  |  1     |  " "                | " "  |      |
| 11     |  s  | symbol                                |  .     |  `                  | `    |      |
| 12     |  p  | timestamp                             |  8     |  dateDtimespan      | 0Np  | 0Wp  |
| 13     |  m  | month                                 |  4     |  2000.01m           | 0Nm  |      |
| 14     |  d  | date                                  |  4     |  2000.01.01         | 0Nd  | 0Wd  |
| 15     |  z  | datetime                              |  8     |  dateTtime          | 0Nz  | 0wz  |
| 16     |  n  | timespan                              |  8     |  00:00:00.000000000 | 0Nn  | 0Wn  |
| 17     |  u  | minute                                |  4     |  00:00              | 0Nu  | 0Wu  |
| 18     |  v  | second                                |  4     |  00:00:00           | 0Nv  | 0Nv  |
| 19     |  t  | time                                  |  4     |  00:00:00.000       | 0Nt  | 0Wt  |
| 20-76  |     | enums                                 |        |                     |      |      |
| 77     |     | anymap                                |
| 78-96  |     | 77+t – mapped list of lists of type t |
| 97     |     | nested sym enum                       |
| 98     |     | table                                 |
| 99     |     | dictionary                            |
| 100    |     | lambda                                |
| 101    |     | unary primitive                       |
| 102    |     | operator                              |
| 103    |     | iterator                              |
| 104    |     | projection                            |
| 105    |     | composition                           |
| 106    |     | f'                                    |
| 107    |     | f/                                    |
| 108    |     | f\                                    |
| 109    |     | f':                                   |
| 110    |     | f/:                                   |
| 111    |     | f\:                                   |
| 112    |     |  dynamic load                         |

where:
- `n`: short int returned by type and used for casting, e.g. `9h$3`
- `c`: character used lower-case for casting and upper-case for Tok and Load CSV
- `sz:` size in bytes
- `inf`: infinity (no math on temporal types); `0Wh` is `32767h`
- `RO`: read only; `RW`: read-write


[kx_datatypes]: https://code.kx.com/q/basics/datatypes/
