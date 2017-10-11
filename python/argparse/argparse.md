# `argparse` manual

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


