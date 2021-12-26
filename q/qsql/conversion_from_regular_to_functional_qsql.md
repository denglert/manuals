# Converting from regular to functional q-sql expression

**References:**
- https://code.kx.com/q/wp/parse-trees/


-------------------------------------------------------------------------------------------

## Using `parse`

**References:**
- https://code.kx.com/q/wp/parse-trees/#the-parse-keyword
- https://code.kx.com/q/ref/parse/


### Syntax

~~~~
parse x
~~~~

or 

~~~~
parse[x]
~~~~

where
- `x` is a `string` representing
	- a well-formed q expression in which case `parse` returns a `parse tree`
	- a function in which case `parse` returns the function


### Warning

In some (more complex) cases the output of `parse` cannot be directly used to create a functional `q-sql query`.

#### Examples

##### `exec` group by column

**References:**
- https://code.kx.com/q/basics/funsql/#exec
- https://code.kx.com/q/basics/funsql/#group-by-column


Sample `exec` group by column query:

~~~~
exec first val by group_id from table
~~~~

The output is a dictionary.

Passing the the q-sql string to `parse` gives:

~~~~
> parse "exec first val by group_id from table"
?
`table
()
,`group_id
,(*:; `val)
~~~~

Correspondance with the functional q-sql template:

~~~~
?[`table; c; b; a]
~~~~

~~~~
c: ();
b: enlist `group_id;
a: enlist (first; `val);
~~~~


However the correct functional q-sql form of the above query is

~~~~
?[`table; (); `group_id; (first; `val)]
~~~~


~~~~
c: ();
b: `group_id;
a: (first; `val);
~~~~



-------------------------------------------------------------------------------------------

## Using `buildQuery` utility function

**References:**
- https://code.kx.com/q/wp/parse-trees/#appendix

`buildQuery` function definition:

~~~~
tidy:{ssr/[;("\"~~";"~~\"");("";"")] $[","=first x;1_x;x]}
strBrk:{y,(";" sv x),z}

//replace k representation with equivalent q keyword
kreplace:{[x] $[`=qval:.q?x;x;"~~",string[qval],"~~"]}
funcK:{$[0=t:type x;.z.s each x;t<100h;x;kreplace x]}

//replace eg ,`FD`ABC`DEF with "enlist`FD`ABC`DEF"
ereplace:{"~~enlist",(.Q.s1 first x),"~~"}
ereptest:{(1=count x) and ((0=type x) and 11=type first x) or 11=type x}
funcEn:{$[ereptest x;ereplace x;0=type x;.z.s each x;x]}

basic:{tidy .Q.s1 funcK funcEn x}

addbraks:{"(",x,")"}

//Where clause needs to be a list of Where clauses, 
//so if only one Where clause, need to enlist.
stringify:{$[(0=type x) and 1=count x;"enlist ";""],basic x}

//if a dictionary, apply to both keys and values
ab:{
  $[(0=count x) or -1=type x; .Q.s1 x;
    99=type x; (addbraks stringify key x ),"!",stringify value x;
    stringify x] }

inner:{[x]
  idxs:2 3 4 5 6 inter ainds:til count x;
  x:@[x;idxs;'[ab;eval]];
  if[6 in idxs;x[6]:ssr/[;("hopen";"hclose");("iasc";"idesc")] x[6]]; 
  //for select statements within select statements
  x[1]:$[-11=type x 1;x 1;[idxs,:1;.z.s x 1]];
  x:@[x;ainds except idxs;string];
  x[0],strBrk[1_x;"[";"]"] }

buildQuery:{inner parse x}
~~~~
