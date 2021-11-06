# `k`

**References:**
- https://en.wikipedia.org/wiki/K_(programming_language)
- http://www.math.bas.bg/bantchev/place/k.html
- http://web.archive.org/web/20041022042401/http://www.kx.com/technical/documents/kusrlite.pdf
- https://aplwiki.com/wiki/K
- https://code.kx.com/q/basics/errors/
- https://code.kx.com/q/kb/versions/
- https://code.kx.com/q/basics/exposed-infrastructure/


**Warning from kx:**
> The use of k expressions in kdb+ applications is unsupported and strongly discouraged.


## Console mode

You can execute `k` code by:
- prepending with `k)`
- switching to console to `k` by issuing `\` in the default `q` console.
   More on console modes can be found in the [console mode docs](../console/README.md).

---------------------------------------------------------------------------

## `k.q` file

The `k.q` file contains:
- core namespace function definitions, such as `show`, `sums`, `count`
- `.Q` namespace function definitions, such as `.Q.k`, `fmt`
Also see [q core docs](../core/README.md)



---------------------------------------------------------------------------

## Examples for `q` function definitions in `k`



|  **`q`**  | **`k`**   |                              **Meaning**                              |
| --------- | --------- | --------------------------------------------------------------------- |
| `type`    |    `@:`   | Type of the object                                                    |
| `count`   |    `#:`   | Length of the object                                                  |
| `iasc`    |    `<x `  | Indices of the composite object that would sort it in ascending order |
| `each`    |   `x'y `  | Apply `x` in each element of `y`                                      |
| ...       | ...       | ...                                                                   |
