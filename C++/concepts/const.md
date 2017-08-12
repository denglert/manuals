# `const`

(to be filled up)

## Etc

X const& x is equivalent to const X& x, and X const* x is equivalent to const X*
x.

Some people prefer the const-on-the-right style, calling it “consistent
const.” Indeed the const-on-the-right style can be more consistent than the
alternative: the const-on-the-right style always puts the const on the right of
what it constifies, whereas the other style sometimes puts the const on the left
and sometimes on the right.

With the const-on-the-right style, a local variable that is const is defined
with the const on the right: int const a = 42;. Similarly a static variable that
is const is defined as static double const x = 3.14;. Basically every const ends
up on the right of the thing it constifies, including the const that is required
to be on the right: with a const member function.
