#!/usr/bin/env python

import argparse
import sys
import pandas_utils as pdu

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Convert ASCII to HDF5.')

    # - Positional arguments
    parser.add_argument("input",  help="input file")
    parser.add_argument("output", help="output file")
    parser.add_argument("key",    help="key")

    # - Flags
    parser.add_argument('-c', '--complib', dest='complib', help="Compression library used")
    parser.add_argument('-f', '--format',  dest='format',   help="Format pytables: table or fixed.")

    # - Default 
    #parser.set_defaults(tabular=False)

    args = parser.parse_args()
    #args = vars(parser.parse_args())

    print('Input  file: {}'.format( args.input )  )
    print('Output file: {}'.format( args.output ) )
    print('Key:         {}'.format( args.key ) )

    if args.format:
        format = args.format
    else:
        # - Default
        format = 'table'

    if args.complib:
        complib = args.complib
    else:
        # - Default
        complib = 'blosc'

    print('complib: {}'.format(complib))
    print('format: {}'.format(format))

    # - Call
    pdu.ascii_to_hdf5(args.input, args.output, args.key, format, complib)
