# beamer manuals

**All references:**
- Official:
    - http://mirrors.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf
- https://www.texdev.net/2014/01/17/the-beamer-slide-overlay-concept/
- https://www.sharelatex.com/blog/2013/08/20/beamer-series-pt4.html



## Overlays

**References:**
- https://www.texdev.net/2014/01/17/the-beamer-slide-overlay-concept/
- https://www.sharelatex.com/blog/2013/08/20/beamer-series-pt4.html


### Basics

~~~~
\begin{frame}
  \begin{itemize}
    \item<1> This is on the first only
    \item<-3> This is on the first three slides
    \item<2-4,6> This is on the second to fourth slides and the sixth slide
  \end{itemize}
\end{frame}
~~~~

Auto-incrementing:

~~~~
\begin{frame}
  \begin{itemize}
    \item<+-> This is on the first and all following slides
    \item<+-> This is on the second and all following slides
    \item<+-> This is on the third and all following slides
    ...
  \end{itemize}
\end{frame}
~~~~

### Pause

Revealing only parts of the slide with the `\pause` command:

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



### Only

~~~~
\begin{frame}
	\only<1>{This line is inserted only on slide 1.}
	\only<2>{This line is inserted only on slide 2.}
\end{frame}
~~~~

-----------------------------------------------------------

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

-----------------------------------------------------------

## Figure placeholder


Using the `todonotes`:

~~~~
\documentclass{article}
\usepackage{todonotes}

\begin{document}

\missingfigure[figwidth=6cm]{Testing a long text string}

\end{document}
~~~~

-----------------------------------------------------------

## Bibliography continuing on multiple slides

~~~~
\begin{frame}[allowframebreaks]
\frametitle{Bibliography}

\renewcommand*{\bibfont}{\scriptsize}
{
    \scriptsize
    \printbibliography
}

\end{frame}
~~~~

-----------------------------------------------------------

## Cite using arXiv number

See the relevant section within [biblatex][biblatex].

[biblatex]: ../bibliography/biblatex.md
