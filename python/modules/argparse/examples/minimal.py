#!/usr/bin/env python

import argparse

# - Create parser
parser = argparse.ArgumentParser(description='Some text describing the program')

# - Positional argument
parser.add_argument("input",  help="input file")

# - Flag
parser.add_argument('-f', '--flag', dest='flag', help="Flag storing same string")

# - Parse arguments
args = parser.parse_args()

# - Print message
print("Positional argument (input): {0}".format(args.input))
print("Flag: {0}".format(args.flag))
