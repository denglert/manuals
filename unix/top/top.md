# Useful `top` commands

## Flags



**Also display threads**

~~~~
top -H 
~~~~

## Filtering

Note: You might need a recent version of `top` for this to work.

1. Press `o`
2. Create a new filter by typing:
   ~~~~
   COMMAND=python
   ~~~~

To clear all filters:
press `=`



**Only watch a certain user**

~~~~
top -u <user>
~~~~

or press `u` then type the username while running `top`
