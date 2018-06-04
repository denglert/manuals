# `argparse` manual


**All references**

- https://docs.python.org/3/library/argparse.html
- https://stackoverflow.com/questions/11154946/require-either-of-two-arguments-using-argparse
- https://stackoverflow.com/questions/7336181/python-pass-arguments-to-different-methods-from-argparse


## Examples

- [minimal.py](./examples/minimal.py)
- [pd_ascii_hdf5.py](./examples/pd_ascii_hdf5.py)
- [default_if_not_specified](./examples/default_if_not_specified.py)


## Basic


Create a parser:

~~~~
import argparse
parser = argparse.ArgumentParser(description='Some text describing the program')
~~~~

Parse arguments

~~~~
args = parser.parse_args()
~~~~




## Argument types


### Positional arguments

~~~~
parser.add_argument("input",  help="input file")
parser.add_argument("output", help="output file")
parser.add_argument("key",    help="key")
~~~~

### Optional arguments

~~~~
parser.add_argument('-c', '--complib', dest='complib', help="Compression library used")
parser.add_argument('-f', '--format',  dest='format',   help="Format pytables: table or fixed.")
~~~~


### Mutually exclusive group of arguments

Reference:
- https://stackoverflow.com/questions/11154946/require-either-of-two-arguments-using-argparse

~~~~
group = parser.add_mutually_exclusive_group(required=True)
group.add_argument('--foo', action='store_true')
group.add_argument('--bar', action='store_true')
~~~~


## `action`s

**References:**
- https://docs.python.org/3/library/argparse.html#action

**Default value:** '`store`'


**Options:**
- `'store': default, store the argument's value
- `'store_const'`:  stores the value specified by the const keyword argument
- `'store_true'`: special case of 'store_const' used for storing the values `True`
- `'store_false'`: special case of 'store_const' used for storing the values `False`
- `'append'`: stores a list, and appends each argument value to the list. Useful when allowing an
  option to be specified multiple times
- `'append_const'`: stores a list, and appends the value specified by the const keyword argument to
  the list
- `'count'`: counts the number of times a keyword argument occurs
- `'help'`: prints a complete help message for all the options in the current parser and then exits
- `'version'`: expects a version= keyword argument in the `add_argument()` call, prints version
  information and exists
- custom action call


## Various


### Default value if not specified

Example: [default_if_not_specified.py](examples/default_if_not_specified.py)

Reference:
- https://docs.python.org/3/library/argparse.html#nargs



### Options string is present but not followed by a command-line arguments (`const`)

~~~~
parser.add_argument('--value', '-v', dest='target_value', nargs='?', const=1, type=int)
~~~~

where the options:
- `nargs='?'` means 0 or 1 argument.
- `const=1` default value if not specified.
- `type=int` converts the argument to int.




### No command-line argument is present, the value from default will be taken. (`default`)

~~~~
parser.add_argument("-p", "--port", dest="port", default=500, type=int, help="specify port")
~~~~


### Passing the arguments to a function

- https://stackoverflow.com/questions/7336181/python-pass-arguments-to-different-methods-from-argparse

~~~~
args = parser.parse_args()
some_other_function(**vars(args))
~~~~
