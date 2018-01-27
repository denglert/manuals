# Useful `top` commands

## Flags



**Also display threads**

~~~~
top -H 
~~~~

## Filtering

## Newer versions of top 

Versions: `procpc-ng version >= 3.3.10 `

Live filtering:

1. Press `o`
2. Create a new filter by typing:
   ~~~~
   COMMAND=python
   ~~~~

To clear all filters:
press `=`

~~~~
top -u <user>
~~~~

or press `u` then type the username while running `top`

## Older versions of top 

Versions: `procpc-ng version < 3.3.10 `

~~~~
top -c -p $(pgrep -d',' -f string_to_match_in_cmd_line)
~~~~

Example:

~~~~
top -c -p $(pgrep -d',' -f python)
~~~~
