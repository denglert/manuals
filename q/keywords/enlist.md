# `enlist`

**References:**
- https://code.kx.com/q/ref/enlist/

## Syntax


~~~~
enlist x
~~~~

or

~~~~
enlist[x]
~~~~

or

~~~~
enlist[x; y; z; …]
~~~~

Returns a list x its argument/s as items.

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Examples

-------------------------------------------------------------------------------------------------------

### Creating a singleton

A singleton is a list containing a single item.


~~~~
l1: enlist 10;
l1
,10

type l1
7h
~~~~

-------------------------------------------------------------------------------------------------------

### Creating a simple list

~~~~
l2: enlist[-1.2f; 2.0f; 0.8f];
l2
-1.2 2 0.8

type l2
9h
~~~~

-------------------------------------------------------------------------------------------------------

### Creating a mixed list


~~~~
l3: enlist[til 5;`ibm`goog;"hello"];
l3
0 1 2 3 4
`ibm`goog
"hello"

type l3
0h
~~~~

-------------------------------------------------------------------------------------------------------

### Creating a single item table with `enlist` from a dictionary

~~~~
d: `a`b`c!(1; 2 3; 4);

d
a| 1
b| 2 3
c| 4

type d
99h

ld: enlist d;
ld
a b   c
-------
1 2 3 4

type ld
98h

ld `a
,1

ld`b
2 3
~~~~

-------------------------------------------------------------------------------------------------------

### Creating a list containing singletons

~~~~
l: 1 2 3 4;

lenlisted: {(),x} each l;
lenlisted
1
2
3
4

type lenlisted
0h

lenlisted[0]
,1
~~~~

-------------------------------------------------------------------------------------------------------

### Creating a singleton list with `,:`

~~~~
lc ,: 3;
lc
,3

type lc
7h
~~~~
