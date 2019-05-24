# Troubleshooting

## `LaTeX Error: Not in outer par mode` when inserting algorithm in `tcolorbox`

- https://tex.stackexchange.com/questions/192280/use-algorithm2e-inside-tcolorbox


**Solution:**

Add the `[H]` float specifier to the `algorithm` environment settings:

~~~~
\begin{tcolorbox}
  \begin{algorithm}[H]
    $a \leftarrow 1$
    \caption{My Algorithm}
  \end{algorithm}
\end{tcolorbox}
\end{document}
~~~~
