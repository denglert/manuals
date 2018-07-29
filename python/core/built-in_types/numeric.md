# Numeric types in python

**References:**
- https://docs.python.org/3.7/library/stdtypes.html#numeric-types-int-float-complex

There are three distinct numeric types:
- `int`: integers
    - `bool`, subtype of integers
- `float`: floating point numbers
- `complex`: complex numbers
- `Fraction`: rational numbers
- `Decimal`: decimal that hold floating-point numbers with user-definable precision



Numbers are created by numeric literals or as the result of built-in functions and operators.
Unadorned integer literals (including hex, octal and binary numbers) yield integers. Numeric
literals containing a decimal point or an exponent sign yield floating point numbers. Appending 'j'
or 'J' to a numeric literal yields an imaginary number (a complex number with a zero real part)
which you can add to an integer or float to get a complex number with real and imaginary parts.

Python fully supports mixed arithmetic: when a binary arithmetic operator has operands of different
numeric types, the operand with the ''narrower'' type is widened to that of the other, where integer
is narrower than floating point, which is narrower than complex. Comparisons between numbers of
mixed type use the same rule. [2] The constructors `int()`, `float()`, and `complex()` can be used to
produce numbers of a specific type.

All numeric types (except `complex`) support the following operations, sorted by ascending priority
(all numeric operations have a higher priority than comparison operations):


| Operation | Result | Notes | Full documentation |
| --------- | ------ | ----- | ------------------ |
...


---------------------------------------------------------------------------------------------

## `int`

Integers have unlimited precision. 


### Bitwise operations on integer types

Bitwise operations only make sense for integers. The result of bitwise operations is calculated as
though carried out in two’s complement with an infinite number of sign bits.

The priorities of the binary bitwise operations are all lower than the numeric operations and higher
than the comparisons; the unary operation `~` has the same priority as the other unary numeric
operations (`+` and `-`).

This table lists the bitwise operations sorted in ascending priority:

| Operation | Result                                | Notes   |
| --------- | ------------------------------------- | -----   |
| `x  y`    | bitwise or of `x` and `y`             | (4)     |
| `x ^ y`   | bitwise exclusive or of `x`  and  `y` | (4)     |
| `x & y`   | bitwise and of `x` and `y`            | (4)     |
| `x << y`  | `x` shifted left by `n` bits          | (1) (2) |
| `x >> y`  | `x` shifted right by `n` bits         | (1) (3) |
| `~x~      | the bits of `x` inverted              |         |


Notes:
- (1): Negative shift counts are illegal and cause a `ValueError` to be raised.
- (2): A left shift by `n` bits is equivalent to multiplication by `pow(2, n)` without overflow check.
- (3): A right shift by `n` bits is equivalent to division by `pow(2, n)` without overflow check.
- (4): Performing these calculations with at least one extra sign extension bit in a finite two’s
  complement representation (a working bit-width of `1 + max(x.bit_length()`, y.bit_length()` or more)
  is sufficient to get the same result as if there were an infinite number of sign bits.



### Additional methods on `int` types


---------------------------------------------------------------------------------------------

## `float`

**References:**
- https://docs.python.org/3/tutorial/floatingpoint.html
- https://docs.python.org/3.7/library/stdtypes.html#additional-methods-on-float
- https://docs.python.org/3.7/library/functions.html#float

Floating point numbers are usually implemented using `double` in `C`; information about the
precision and internal representation of floating point numbers for the machine on which your
program is running is available in `sys.float_info`.


---------------------------------------------------------------------------------------------

## `complex`

Complex numbers have a real and imaginary part, which are each a floating point number. To extract
these parts from a complex number `z`, use `z.real` and `z.imag`.
