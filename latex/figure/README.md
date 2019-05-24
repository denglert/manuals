# Figure in LaTeX


## Placement

- https://www.sharelatex.com/learn/Positioning_of_Figures


~~~~
\begin{figure}[''placement specifier'']
... figure contents ...
\end{figure}
~~~~

| Specifier | Permission |
| --------- | ---------- |
|     h     | Place the float here, i.e., approximately at the same point it occurs in the source text (however, not exactly at the spot) |
|     t     | Position at the top of the page. |
|     b     | Position at the bottom of the page. |
|     p     | Put on a special page for floats only. |
|     !     | Override internal parameters LaTeX uses for determining "good" float positions. |
|     H     | Places the float at precisely the location in the LaTeX code. Requires the float package (`\usepackage{float}`). This is somewhat equivalent to h!.  |
