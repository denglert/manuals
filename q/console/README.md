# `q` console

**References:**
- https://code.kx.com/q/learn/startingkdb/language/#console-modes

-----------------------------------------------------------------------------------------

## Commands

Exit console:

~~~~
\\
~~~~


-----------------------------------------------------------------------------------------

## Console modes

**References:**
- https://code.kx.com/q/learn/startingkdb/language/#console-modes

**Console modes:**
- `q` console
    - Standard `q` console
    - Sub name space
    - Suspended function mode
        If a function is suspended, then the prompt has two or more `)`. In this case, enter a single `\`
        to remove one level of suspension, and repeat until the prompt becomes `q)`. 
- `k` console


If there is no suspension, then a single `\` will toggle between `q` and `k` modes.


~~~~
q)\d .h                     / change to .h namespace
q.h)\d .                    / change back to default namespace
q)
~~~~
