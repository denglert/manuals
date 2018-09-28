# `titlesec` package


**References:**
- https://ctan.org/pkg/titlesec
- http://mirrors.ctan.org/macros/latex/contrib/titlesec/titlesec.pdf
- https://en.wikibooks.org/wiki/LaTeX/Document_Structure
- https://tex.stackexchange.com/questions/42526/how-to-remove-page-break-after-part-in-report-book
- https://tex.stackexchange.com/questions/59726/change-size-of-section-subsection-subsubsection-paragraph-and-subparagraph-ti

## Description


A package providing an interface to sectioning commands for selection from various
title styles.
E.g., marginal titles and to change the font of all headings with a single command, also providing
simple one-step page styles. Also includes a package to change the page styles when there are floats
in a page. You may as­sign headers/footers to individual floats, too. 


## Bugs


### Loss of section numbering with the new update (2016/03/15)


See https://tex.stackexchange.com/questions/299969/titlesec-loss-of-section-numbering-with-the-new-update-2016-03-15

## Example

~~~~
\usepackage{titlesec}

\usepackage{etoolbox}

% - Bug fix
% -
https://tex.stackexchange.com/questions/299969/titlesec-loss-of-section-numbering-with-the-new-update-2016-03-15
\makeatletter
\patchcmd{\ttlh@hang}{\parindent\z@}{\parindent\z@\leavevmode}{}{}
\patchcmd{\ttlh@hang}{\noindent}{}{}{}
\makeatother

% - Part
\titleclass{\part}{top}
\titleformat{\part}[display]
{\normalfont\huge\bfseries}{\centering\partname\ \thepart}{20pt}{\Huge\centering}
\titlespacing*{\part}{0pt}{50pt}{40pt}

% - Chapter
\titleclass{\chapter}{straight}
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
  \titlespacing*{\chapter} {0pt}{50pt}{40pt}

% - Section
\titleformat*{\section}{\LARGE\bfseries}

% - Subection
\titleformat*{\subsection}{\Large\bfseries}

% - Subsubsection
\titleformat*{\subsubsection}{\large\bfseries}
~~~~
