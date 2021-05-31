# `\S`

**References:**
- https://code.kx.com/q/basics/syscmds/#s-random-seed


## Syntax

~~~~
\S [n]
~~~~

where `n` could be

- omitted: display the last value to which the random seed was initialized
- `0N`: display the current value of the random seed (since V3.6)
- non-zero integer: re-initialize the seed to `n`

Note that `\S` displays the last value to which the seed was initialized: it is not updated as the
random-number generator (rng) is used.

