# Useful `top` commands

## Flags

**Also display threads**

~~~~
top -H 
~~~~

**Watch processes of a specific user:**

~~~~
top -u <user>
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

**Watch processes of a specific user:**

1. Press `u`
2. Type the username, then enter

## Older versions of top 

Versions: `procpc-ng version < 3.3.10 `

~~~~
top -c -p $(pgrep -d',' -f string_to_match_in_cmd_line)
~~~~

Example:

~~~~
top -c -p $(pgrep -d',' -f python)
~~~~
