#!/bin/bash

### Read in input arguments
environment=$1
binary=$2
workdir=$3
inputfileDATA=$4
inputfileMC=$5
sampleType=$6
jobid=$7
nEventsDATA=$8
nEventsMC=$9
PIDconfig=$10

# workdir is tdir/arg2
cd $environment

# Task
rm -rf $workdir; mkdir $workdir;
cd $workdir; $binary $inputfileDATA $inputfileMC $sampleType $jobid $nEventsDATA $nEventsMC $PIDconfig;
