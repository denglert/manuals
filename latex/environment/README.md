# Environments in `LaTeX`

- https://www.sharelatex.com/learn/Environments



~~~~
\newenvironment{environmentname}
    { todo before}
    { todo after}
~~~~

## Example(s)

Create a new figure environment with a predefined positioning:

~~~~
\newenvironment{figstd}
    {
    \begin{figure}[htp]
    \begin{center}
    }
    {
    \end{center}
    \end{figure}
    }
~~~~

