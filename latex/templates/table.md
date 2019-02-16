# Table templates 



## Simple table

~~~~
\begin{table}[!t]
\label{tab:label}
\begin{center}
\begin{tabular}{|c|p{3.3cm}|}
\hline
Col1 & Col2
\tabularnewline
\hline
11   & 12
\tabularnewline
\hline
21   & 22
\tabularnewline
\hline
\end{tabular}
\caption{\label{tab:table-name}Table caption}
\end{center}
\end{table}
~~~~


## Table with new column types


~~~~
\usepackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\begin{document}

\begin{tabular}{| c | L{3cm} | C{3cm} | R{3cm} |}
foo &
A cell with text that wraps around, is raggedright and allows \newline
    manual line breaks &
A cell with text that wraps around, is centered and allows \newline
    manual line breaks &
A cell with text that wraps around, is raggedleft and allows \newline
    manual line breaks \\
\end{tabular}

\end{document}
~~~~

