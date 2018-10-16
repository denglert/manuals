# `unstr` style

## How to limited the number of authors displayed

**References:**
- https://tex.stackexchange.com/questions/26575/bibtex-how-can-i-automatically-reduce-long-author-lists-to-xxx-et-al  

1. Create a local copy of `unstr.bst`

2. Within the local copy change

~~~~
      nameptr #1 >
        { namesleft #1 >
~~~~

to

~~~~
      nameptr #1 >
         {
          nameptr #3
          #1 + =
          numnames #5
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
~~~~
