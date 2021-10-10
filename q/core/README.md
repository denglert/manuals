# `kdb+/q` core

**References:**
- https://code.kx.com/q/wp/parse-trees/#k4-q-and-qk


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------


## `q.k` file

**References:**
- https://code.kx.com/q/wp/parse-trees/#k4-q-and-qk
- https://code.kx.com/q/ref/dotq/

The `q.k` file is part of the standard installation of `q` and loads into each `q` session on startup.
It defines many of the `q` keywords in terms of `k`.

''Functions defined in q.k are loaded as part of the ‘bootstrap’ of kdb+. Some are exposed in the
default namespace as the q language. Others are documented here as utility functions in the .Q
namespace.''

**Remarks:**
- To get the `k` definition of a function use `parse`. 
    Example:
    ~~~~
    parse "asc"
    ~~~~


-------------------------------------------------------------------------------------------------------

### Examples


Below is some examples of functions defined in the `q.k` file.

~~~~
parse:{$["\\"=*x;(system;1_x);-5!x]}

sums:+\;prds:*\;mins:&\;maxs:|\;fills:^\;deltas:-':;ratios:%':;avgs:{(+\x)%+\~^x};differ:"b"$~~':;prev::':;next:{$[0h>@x;'`rank;1_x,,x 0N]};

asc:{$[99h=@x;(!x)[i]!`s#r i:<r:. x;`s=-2!x;x;0h>@x;'`rank;`s#x@<x]}
~~~~
