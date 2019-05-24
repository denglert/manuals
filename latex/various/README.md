# Various latex tips and tricks


## Bold Greek letters

Use the [`bm`][bm] package:

~~~~
$\bm{\beta}$
~~~~

## Don't break footnotes

- https://stackoverflow.com/questions/480685/is-there-a-way-to-prevent-latex-from-splitting-long-footnotes-across-multiple-co
- https://tex.stackexchange.com/questions/32208/footnote-runs-onto-second-page

~~~~
\interfootnotelinepenalty=10000
~~~~

## Standardised way to handle SI unit

Use the [`siunitx`][siunitx] packgae:

~~~~
$\si{m}^{-1}$
~~~~



[siunitx]: ./packages/siunitx/siunitx.md
[bm]: ./packages/bm/bm.md
