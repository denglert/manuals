# Mathematica basics

## Differentiation


Partial derivative of `f`, with respect to `x`:
~~~~
D[f,x]
~~~~

## Complex numbers

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
