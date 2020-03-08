# Operators in `q`

**References:**
- https://code.kx.com/q/ref/greater/


**General remarks:**

- All operators have the same precendence.
- Everything is executed from right to left.


**List of operators:**
- [Greater, or (`|`)](#greater)
- [Join (`,`)](#join)
- [Lesser, and (`&`)](#lesser)
- [Take (`#`)](#take)


-----------------------------------------------


## Greater, or (`|`)<a name="greater"></a>


**Example(s):**

~~~~
q) 2 | 3
3
~~~~


~~~~
q) 10 | 2
10
~~~~

------------------------------------------------

## Join (`,`) <a name="join"></a>

Join atoms, lists, dictionaries or tables

**Syntax:**

~~~~
x,y
,[x;y]
~~~~

Where `x` and `y` are `atoms`, `lists`, `dictionaries` or `tables`.
Returns `x` joined to `y`.

**Example(s):**

~~~~
q) 1 2 3,4
1 2 3 4
q) 1 2,3 4
1 2 3 4
q) (0;1 2.5;01b),(`a;"abc")
(0;1.00 2.50;01b;`a;"abc")
~~~~

------------------------------------------------

## Lesser, and (`&`)<a name="lesser"></a>

**Example(s):**

~~~~
q) 2 | 3
3
~~~~


~~~~
q) 10 | 2
10
~~~~

-----------------------------------------------


## Take<a name="take"></a>

Select leading or trailing items from a list or dictionary, named entries from
a dictionary, or named columns from a table.

**Syntax:**

~~~~
x#y
#[x;y]
~~~~

Where

- `x` is an `int atom` or `vector`, or a `table`
- `y` is an `atom`, `list`, `dictionary`, `table`, or `keyed table`

Returns `y` as a `list`, `dictionary` or `table` described or selected by `x`.



### Atom or list

Where `x` is an `int atom`, and `y` is an `atom` or `list`, returns a list of length `x`
filled from `y`, starting
- at the front if `x` is positive and
- at the end if negative.


~~~~
q)5#0 1 2 3 4 5 6 7 8      /take the first 5 items
0 1 2 3 4
q)-5#0 1 2 3 4 5 6 7 8     /take the last 5 items
4 5 6 7 8
~~~~

