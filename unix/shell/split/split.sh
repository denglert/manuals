#!/bin/sh

# - To try out:
# ./split.sh example splitted_

inputfile=$1
outputbase=$2

nSuffixLength=1
# Headers
StartLine=2
nSplitLines=2

#split -a $nSuffixLength -d -l $nSplitLines $inputfile $outputbase
#cat $inputfile | split -a $nSuffixLength -d -l $nSplitLines - $outputbase
tail -n +$StartLine $inputfile | split -a $nSuffixLength -d -l $nSplitLines - $outputbase

# -a suffix length
# -d numeric suffix
# -l number of lines
# See 'split --help'
