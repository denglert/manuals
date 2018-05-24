# beamer manuals


## Revealing only parts of the slide, the `\pause` command

- https://www.sharelatex.com/blog/2013/08/20/beamer-series-pt4.html

~~~~
\begin{itemize}
	\pause
	\item Point A
	\pause
	\item Point B
	\begin{itemize}
		\pause
		\item part 1
		\pause
		\item part 2
	\end{itemize}
	\pause
	\item Point C
	\pause
	\item Point D
\end{itemize}
~~~~



## Links

### `href`

#### Settings

~~~~
\hypersetup{colorlinks,linkcolor=,urlcolor=blue}
~~~~

#### Reference withing the document

Create a link (source):

~~~~
\hyperlink{target_label}{\beamerbutton{References}
~~~~

and place the target with:

~~~~
\hypertarget<1>{target_label}{\beamerbutton{References}}
~~~~


## Figure placeholder


Using the `todonotes`:

~~~~
\documentclass{article}
\usepackage{todonotes}

\begin{document}

\missingfigure[figwidth=6cm]{Testing a long text string}

\end{document}
~~~~


## Cite using arXiv number

See the relevant section within [biblatex][biblatex].

[biblatex]: ../bibliography/biblatex.md
