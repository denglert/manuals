# Floating point datatypes

**References:**
- https://code.kx.com/q/basics/datatypes/
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#22-floating-point-data

|   n    |  c  |                 name                  |  bytes |       literal       | null | inf  |
| ------ | --- | ------------------------------------- | ------ | ------------------- | ---- | ---- |
| 8      |  e  | real                                  |  4     |  0e                 | 0Ne  | 0We  |
| 9      |  f  | float                                 |  8     |  0.0                | 0n   | 0w   |
|   -    |  -  | -                                     |  -     |  0f                 | -    | -    |


## `e` - `real` floating point number (4 bytes)


### Examples

~~~~
a: 1.03e
type a
-8h
~~~~


~~~~
b: 4.3e9e
type b
-8h
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## `f` - `float` floating point number (8 bytes)

The `float` type represents an IEEE standard eight-byte floating-point number,
often called "double" in traditional languages. A float can hold (at least) 15
decimal digits of precision.

### Examples

~~~~
c: 1.30f
type c
-9h
~~~~

~~~~
d: 7.3e-5f
type d
-9h
~~~~
