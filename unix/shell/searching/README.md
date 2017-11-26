# Unix search

## Search commands:

To search in files:

- `grep`

To search in the filesystem:

- `find`

## Displaying files

~~~~
ls -l
~~~~

## Some examples

**List recently modified files:**

~~~~
ls -lt
~~~~

**List all files in the subdirs with full path displayed:**

~~~~
find . -type f -printf "%p\n"
~~~~
