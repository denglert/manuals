#!/usr/bin/env python

import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--alpha', '-a', dest='alpha', nargs='?', const=3, type=int)
parser.add_argument('--beta', '-b', dest='beta', nargs='?', default=-10, type=int)
args = parser.parse_args()

print(args)

# -- Example outputs --- #
#
# 1. python default_if_not_specified.py
# Namespace(alph=aNone, beta=-10)
#
# 2.
# python default_if_not_specified.py -a
# Namespace(alpha=3, beta=-10)
