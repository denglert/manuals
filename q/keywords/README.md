# Keywords in `q`

**References:**
- https://code.kx.com/q/ref/abs/


**List of keywords:**
- [`count`](#count)
- [`deltas`](#deltas)
- [`enlist`](#enlist)
- [`sum`, `sums`, `msum`, `wsum`](#sum_all)
- [`til`](#til)
- [`type`](#type)


------------------------------------------------------------------

## `count`<a name="count"></a>


**Reference(s):**
- https://code.kx.com/q/ref/count/

**Syntax:**

~~~~
count x
count [x]
~~~~


Count the items of a list or dictionary.

**Example(s):**

~~~~
q) count 1 2 3
3
~~~~

~~~~
q)count (4;5;6;7)
4
~~~~

------------------------------------------------------------------

## `deltas`<a name="deltas"></a>


**Reference(s):**
- https://code.kx.com/q/ref/deltas/


Differences between list items.

**Syntax:**

~~~~
deltas y
deltas[y]
deltas[x:]
~~~~

Where

- `y` is a `numeric` or `temporal vector`
- `x` is a `numeric` or `temporal atom` of the same type as` y`

returns differences between consecutive pairs of items of `y`. Note deltas is
variadic: it can be applied as unary or binary.


### `deltas` as a binary function

~~~~
(-[y 0;x];-[y 1;y 0];-[y 2;y 1];…;-[y n-1;y n-2])
~~~~


~~~~
q)deltas[0N;1 4 9 16]
0N 3 5 7
~~~~


### `deltas` as a unary function

0 replaces the `x` in the binary application.

~~~~
q)deltas 1 4 9 16
1 3 5 7
~~~~




------------------------------------------------------------------


## `enlist`<a name="enlist"></a>


**Reference(s):**
- https://code.kx.com/q/ref/enlist/

**Syntax:**

~~~~
enlist n
enlist [n]
~~~~


Make a list.


**Example(s):**

~~~~
q)a:10
q)b:enlist a
q)c:enlist b
q)type each (a;b;c)
-7 7 0h
~~~~


------------------------------------------------------------------

## `sum`, `sums`, `msum`, `wsum`<a name="sum_all"></a>

**Reference(s):**
- https://code.kx.com/q/ref/sum/


### `sum`

**Reference(s):**
- https://code.kx.com/q/ref/sum/#sum



### `sums`

**Reference(s):**
- https://code.kx.com/q/ref/sum/#sums



### `msum`

**Reference(s):**
- https://code.kx.com/q/ref/sum/#msum



### `wsum`

**Reference(s):**
- https://code.kx.com/q/ref/sum/#wsum



------------------------------------------------------------------

## `til`<a name="til"></a>

**Reference(s):**
- https://code.kx.com/q/ref/til/

**Syntax:**

~~~~
til n
til [n]
~~~~

Returns the first `n` natural numbers.




**Example(s):**

~~~~
q) til 4
0 1 2 3
~~~~

------------------------------------------------------------------


## `type`<a name="type"></a>


**Reference(s):**
- https://code.kx.com/q/ref/type/



**Syntax:**

~~~~
type x
type [x]
~~~~


Datatype of an object.



**Example(s):**

~~~~
q)type 5                         / integer atom
-6h   
q)type 2 3 5                     / integer vector
6h   
q)type (2;3 5;"hello")           / mixed list
0h
~~~~

