#!/usr/bin/env bash

workdir=Enigma_HighMult_Full_PIDConfig_default_trkCorr_no
listfile=list_failedjobs_$workdir

rm $listfile
cd $workdir

FILES=$(find . -name \* -print)

rm $listfile
touch $listfile

for f in $FILES
do
  if grep -q 'Segmentation' $f; then
  grep -o "\<root://.*.root\>" $f >> $listfile
  fi
done

mv $listfile ../$listfile
