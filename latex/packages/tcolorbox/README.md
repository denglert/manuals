# `tcolorbox` docs

**References:**
- Official documentation
    - https://ctan.org/pkg/tcolorbox
    - http://mirrors.ctan.org/macros/latex/contrib/tcolorbox/tcolorbox.pdf
- https://tex.stackexchange.com/questions/369430/theorems-and-definitions-boxes-numbering-should-be-chapter-wise/369739
- https://tex.stackexchange.com/questions/36278/box-around-theorem-statement

--------------------------------------------------------------------------

## Setup

~~~~
\usepackage{tcolorbox}
\tcbuselibrary{theorems}
~~~~

--------------------------------------------------------------------------

## Environments

### Definition

~~~~
\newtcbtheorem[number within=section]{Definition}{Definition}%
{colback=blue!5,colframe=blue!35!black,fonttitle=\bfseries}{def}
~~~~

--------------------------------------------------------------------------

## Usage


~~~~
\begin{Definition}{Overlapping subproblems.}{overlapping_subproblems}
    A problem has overlapping subproblems, if the subproblem recur many times, and solutions can be
    cached and reused.
\end{Definition}
~~~~
