# Iterators (formerly known as adverbs) in `q`


**References:**
- https://code.kx.com/q/ref/iterators/




-----------------------------------------------

## Accumulators

An accumulator is an iterator that takes an applicable value as argument and derives a function that
evaluates the value, first on its entire (first) argument, then on the results of successive
evaluations.

There are two accumulators:
- `Scan` and
- `Over`.

They have the same syntax and perform the same computation.
But where the `Scan`-derived functions return the result of each evaluation, those of `Over` return only
the last result.

`Over` resembles map reduce in some other programming languages.


-------------------------------------------------------------


### Over `/`


**Properties:**
- While Scan and Over perform the same computation, in general, Over requires less memory, because
   it does not store intermediate results.



**Example(s):**

~~~~
q)(+/) 1 2 3
6
~~~~

~~~~
q)(+/)2 3 4    / Over
9
~~~~


~~~~
q)+/ [1 2 3]
6
~~~~

~~~~
q)*/ [1 2 5]
10
~~~~


10!

~~~~
q)(*/) 1+til 10
3628800
~~~~



-------------------------------------------------------------

### Scan `\`


**Example(s):**

~~~~
q)(+\)2 3 4    / Scan
2 5 9
~~~~


**Properties:**
- Scan requires more memory compared to Over, because it stores the intermediate results
