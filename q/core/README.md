# `kdb+/q` core

**References:**
- https://code.kx.com/q/wp/parse-trees/#k4-q-and-qk


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------


## `q.k` file

**References:**
- https://code.kx.com/q/wp/parse-trees/#k4-q-and-qk

The `q.k` file is part of the standard installation of `q` and loads into each `q` session on startup.
It defines many of the `q` keywords in terms of `k`.


-------------------------------------------------------------------------------------------------------

### Examples

~~~~
sums:+\;prds:*\;mins:&\;maxs:|\;fills:^\;deltas:-':;ratios:%':;avgs:{(+\x)%+\~^x};differ:"b"$~~':;prev::':;next:{$[0h>@x;'`rank;1_x,,x 0N]};
~~~~
