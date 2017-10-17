#!/usr/bin/env python

import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--value', '-v', dest='target_value', nargs='?', const=1, type=int)
args = parser.parse_args()

print(args)
