# Selecting terms


Say we have a term called Quadraticterm<sub>h2</sub>:

~~~~
Subscript[Quadraticterm, Subscript[h, 2]] = 
\[Mu]^2/2 + Subscript[\[Lambda], 2]/4 + (
 v^2 Subscript[\[Lambda], 3])/4 + (\[Eta]^2 Subscript[\[Lambda], 
   3])/4 + 1/2 v Subscript[h, 1] Subscript[\[Lambda], 3] + 1/4 
   \!\(\*SubsuperscriptBox[\(h\), \(1\), \(2\)]\) Subscript[\[Lambda], 
     3] + 1/2 Subscript[\[Lambda], 3] 
     \!\(\*SubsuperscriptBox[\(\[Phi]\), \(c\), \(2\)]\)
~~~~

We can select terms that are free of h<sub>2</sub>, &eta; and &Phi;<sub>c</sub>, using `Select` and
`FreeQ` in this way:

~~~~
Subscript[QuadraticMassTerm, Subscript[h, 2]] = 
  Select[Subscript[Quadraticterm, Subscript[h, 2]], 
     FreeQ[#, Subscript[h, 2]] && FreeQ[#, \[Eta]] && 
          FreeQ[#, Subscript[\[Phi], c]] &];
~~~~
