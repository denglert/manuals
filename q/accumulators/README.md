# Accumulators in `q`

**References:**
- https://code.kx.com/q/ref/accumulators/

An accumulator is an iterator that takes an applicable value as argument and derives a function that
evaluates the value, first on its entire (first) argument, then on the results of successive
evaluations.

There are two accumulators:
- `\` Scan. Returns the result of each evaluation.
- `/` Over. Returns only the result of the last evaluation.

They have the same syntax and perform the same computation.  But where the Scan-derived functions
return the result of each evaluation, those of Over return only the last result.

Over resembles map reduce in some other programming languages.

## Tips

If puzzled by the result of using Over, replace it with Scan and examine the intermediate results.
They are usually illuminating.

While Scan and Over perform the same computation, in general, Over requires less memory, because it
does not store intermediate results.
