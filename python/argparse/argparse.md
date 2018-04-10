# `argparse` manual

## References

- https://docs.python.org/3/library/argparse.html

## Examples

- [minimal.py](./examples/minimal.py)
- [pd_ascii_hdf5.py](./examples/pd_ascii_hdf5.py)

## Create a parser

~~~~
import argparse
parser = argparse.ArgumentParser(description='Some text describing the program')
~~~~

## Parse arguments

~~~~
args = parser.parse_args()
~~~~

## Positional arguments

~~~~
parser.add_argument("input",  help="input file")
parser.add_argument("output", help="output file")
parser.add_argument("key",    help="key")
~~~~

## Optional flags

~~~~
parser.add_argument('-c', '--complib', dest='complib', help="Compression library used")
parser.add_argument('-f', '--format',  dest='format',   help="Format pytables: table or fixed.")
~~~~

## Default value if not specified

Example: [default_if_not_specified.py](examples/default_if_not_specified.py)

Reference:
- https://docs.python.org/3/library/argparse.html#nargs


## Options string is present but not followed by a command-line arguments (`const`)

~~~~
parser.add_argument('--value', '-v', dest='target_value', nargs='?', const=1, type=int)
~~~~

where the options:
- `nargs='?'` means 0 or 1 argument.
- `const=1` default value if not specified.
- `type=int` converts the argument to int.

## No command-line argument is present, the value from default will be produced. (`default`)

~~~~
parser.add_argument("-p", "--port", dest="port", default=500, type=int, help="specify port")
~~~~
