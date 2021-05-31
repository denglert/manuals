# Symbols in `q`


**References:**
- https://code.kx.com/q/basics/datatypes/#symbols
- https://code.kx.com/q4m3/2_Basic_Data_Types_Atoms/#242-symbol

A symbol is an atom holding text.
It is denoted by a leading back-quote, read "back tick" in q-speak.


|   n    |  c  |                 name                  |  bytes |       literal       | null | inf  |
| ------ | --- | ------------------------------------- | ------ | ------------------- | ---- | ---- |
| 11     |  s  | symbol                                |  .     |  `                  | `    |      |


~~~~
a: `GOOGL
type a
-11h
~~~~

~~~~
b: `42
type b
-11h
~~~~
