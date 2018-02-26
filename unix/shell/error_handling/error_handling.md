# Error handling

## Throw an error

Exit with error code 1:

~~~~
exit 1
~~~~

~~~~
set -e 
~~~~

Return from a function:

~~~~
return 1
~~~~




## Error codes

| Code # |           Meaning          |
| ------ | -------------------------- |
|    1   | General errors             |
|    2   | Misuse of shell builtins   |
