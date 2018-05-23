# Biblatex manuals

CTAN package page: 
- https://ctan.org/pkg/biblatex

Nutshell intro:
- https://tex.stackexchange.com/questions/13509/biblatex-in-a-nutshell-for-beginners


## Minimal setup

~~~~
\documentclass{article}

\usepackage[style=numeric-comp]{biblatex}

\bibliography{<database>} % or
% \addbibresource{<database>.<extension>}

\begin{document}
\cite{<some-ref>}
\printbibliography
\end{document}
~~~~

Then run:

1. LaTex
2. Biber
3. LaTex

## Custom citation styles


### Show arXiv number

**Reference:**
- https://tex.stackexchange.com/questions/299757/arxiv-citation-function

~~~~
\makeatletter
\DeclareFieldFormat{eprint:cite:arxiv}{%
  arXiv\addcolon\space
  \ifhyperref
    {\href{http://arxiv.org/\abx@arxivpath/#1}{%
       \nolinkurl{#1}}}
    {\nolinkurl{#1}}}
\makeatother

\newbibmacro*{cite:eprint}{%
  \iffieldundef{eprinttype}
    {\printfield{eprint}}
    {\printfield[eprint:cite:\strfield{eprinttype}]{eprint}}}

\DeclareCiteCommand{\arxivcite}
  {}
  {\printtext[labelnumberwidth]{%
     \usebibmacro{prenote}%
     \usebibmacro{citeindex}%
     \printtext[bibhyperref]{%
       \printfield{labelprefix}%
       \printfield{labelnumber}}%
     \usebibmacro{postnote}}%
   \printtext[brackets]{\usebibmacro{cite:eprint}}}
  {\multicitedelim}
  {}
~~~~
