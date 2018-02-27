# Mathematica basics

## Algebra

`Simplfy` performs a sequence of algebraic and other transformations on expr and returns the
simplest form it finds.

~~~~
Simplify[expr]
~~~~


**Collecting together terms involving the same powers of objects matching x:**

~~~~
Collect[expr,x]
~~~~

**Replacing subparts of an expression:**

~~~~
expr/.rules 
~~~~

~~~~
ReplaceAll[rules]
~~~~

Example:

~~~~
{x, x^2, y, z} /. x -> 1
~~~~

or 

~~~~
MassMatrix = 
 ReplaceAll[{m^2 -> -(1/2) Subscript[\[Lambda], 1] v^2 - 
       1/2 Subscript[\[Lambda], 3]
               x^2, \[Mu]^2 -> -(1/2) Subscript[\[Lambda], 2] x^2 - 
                     1/2 Subscript[\[Lambda], 3] v^2}][MassMatrix]
~~~~

### Solving equations

#### Single equation

Solve an equation for x:

~~~~
Solve[lhs==rhs,x]
~~~~

#### Set of equations

Solve a set of simultaneous equations for x, y, ...:

~~~~
Solve[{lhs1==rhs1,lhs2==rhs2,…},{x,y,…}]
~~~~

### Complex numbers

- http://reference.wolfram.com/language/tutorial/ExpressionsInvolvingComplexVariables.html

> The Wolfram Language usually pays no attention to whether variables like x stand for real or complex
> numbers. Sometimes, however, you may want to make transformations which are appropriate only if
> particular variables are assumed to be either real or complex. 

Expanding `expr` assuming that all variables are real:
~~~~
ComplexExpand[expr] 
~~~~

Expandng `expr` assuming that the xi are complex:
~~~~
ComplexExpand[expr,{x1,x2,…}]
~~~~

## Matrices

Give a list of the eigenvalues of the square matrix m.
~~~~
Eigenvalues[m]
~~~~

## Calculus

### Differentiation

Partial derivative of `f`, with respect to `x`:
~~~~
D[f,x]
~~~~
