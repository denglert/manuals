# Shell exit traps

## References
http://redsymbol.net/articles/bash-exit-traps/

## Example


`EXIT`: pseudo exit signal provided by bash

You place any code that you want to be certain to run in this "finish" function. A good common
example: creating a temporary scratch directory, then deleting it after.

~~~~
scratch=$(mktemp -d -t tmp.XXXXXXXXXX)
function finish {
  rm -rf "$scratch"
}
trap finish EXIT


....
do stuff
...

return 0
~~~~


Even if something goes wrong in the `...do stuff...` block the temporary directory will get deleted.
