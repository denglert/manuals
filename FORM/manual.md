# Collection of useful FORM commands for bookkeeping

Taken from the reference:
https://www.nikhef.nl/~form/maindir/documentation/tutorial/online/online.html

## Simple example:

~~~~
Symbols a,b;
 Local [(a+b)^2] = (a+b)^2;
 Print;
 .end
~~~~

## Various

The `Bracket w` instruction forces the expression [uxv.w] to be printed as a polynomial in the
components of the vector `w`. 

## Taking the trace of a spin line with index i

# optmized for 4 dim
~~~~
trace4,i 
~~~~

# general n dim
~~~~
tracen,i
~~~~

## Gamma Matrices in `FORM`

Let us now look at the calculus of gamma matrices that is available in FORM. A
product of gamma matrices is denoted by `g_(i, mu, nu, ... )`. The index `i`
distinguishes between different spin lines. This extra label is necessary
because in high energy physics gamma matrices are associated with fermion lines
in a Feynman diagram, and if more than one such line occurs, then a different
set of gamma matrices (operating in independent spin spaces) is required to
represent each line. Gamma matrices associated with different spin lines
commute; gamma matrices from the same spin line are normally collected into one
`g_` function, but this is not obligatory on the input side. For example, you can
input ${\displaystyle\not{p}}\gamma^{\mu}{\displaystyle \not{p}}\gamma^{\nu}$ as
g_(1,p)*g_(1,mu)*g_(1,p)*g_(1,nu) and FORM will automatically display it as
g_(1,p,mu,p,nu). In FORM, almost all you can do with these expressions is taking
the trace of a string of gamma matrices. Taking the trace of a spin line with
index i is accomplished by the commands trace4,i and with tracen,i. In the first
case, FORM uses algorithms that are applicable in four dimensions only. For
example, it uses the Chisholm identity. See the reference guide for details
about the algorithms used. The second command does not assume dimension 4 and it
cannot handle properties of $\gamma^5$ (denoted by g5_(i) or g_(i, ..., 5_, ...
)). `FORM` shortens $1+\gamma^5$ and $1-\gamma^5$ to g6_(i) (or g_(i, ..., 6_, ...
)) and g7_(i) (or g_(i, ..., 7_, ... )), respectively. The identity matrix is
denoted by gi_(i). It is possible to alter the value of the trace of the
identity matrix: its default value is 4, but by using the statement unittrace
value it can be changed into value. In the following table we summarize the
notations for gamma matrices and the conventions that are used in FORM. Here,
the spin line is always denoted by the character $i$.

## Module instructions
This brings us to the very short description of how FORM operates; we will come back to this issue
in section 1.3. FORM consists of a preprocessor and a compiler. The preprocessor reads from the
input stream and prepares input for the compiler. The preprocessor prepares program blocks, also
called modules, which are translated by the compiler, and immediately executed. A command for the
preprocessor is called a preprocessor instruction. It always starts with the sharp symbol (#), it
does not have to end with a semicolon, and it is executed when it is encountered in the input
stream. A module is terminated by a statement that starts with a period. Such a statement is called
a module instruction. It marks the end of a module, it halts the compiler, and it initiates the
execution of the module. Like a preprocessor instruction, a module instructions does not have to end
with a semicolon, although it does no harm.  The module instructions and their meanings are listed
below. 

Instruction Meaning
  	         execute, sort, print, +
.sort 	   continue
.end 	      terminate
.clear 	   restart softly
.store 	   store globals, remove locals, continue
