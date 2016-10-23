#!/bin/bash

# - Working directory of the script
WORKDIR=/home/de3u14/lib/manuals/iridis/job-submission

########################################################

cd ${WORKDIR}

# - Variables

VAR1=kutya
# - VAR2 is given as an external variables

# - Write the following lines to the 'output' file 
echo -e "VAR1: ${VAR1}"  > output
echo -e "VAR2: ${VAR2}" >> output
