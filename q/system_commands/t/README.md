# `\t` (timer)


**References:**
- https://code.kx.com/q/basics/syscmds/#t-timer
- https://code.kx.com/q/ref/dotz/#zts-timer

This command has two different uses, according to the parameter.
If the parameter is omitted, it shows the number of milliseconds between timer ticks: 0 means the timer is off.

## Syntax

~~~~
\t [ [N|[:n ]e] ]
~~~~


where
- `N` (integer)

    Set the number of milliseconds between timer ticks. If 0, the timer is disabled, otherwise the
    timer is enabled and the first tick given. On each tick, the function assigned to `.z.ts` is
    executed.

    This usage corresponds to the -t command-line option


- `[:n] e` (expression)

    A q expression `e` (other than a single integer) is executed and the execution time shown in milliseconds.
    Since V3.0 2011.11.22, if `n` is specified, `e` is executed `n` times.

