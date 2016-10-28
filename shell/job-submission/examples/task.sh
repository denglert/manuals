#!/bin/bash

sdir=/afs/cern.ch/work/d/denglert/public/projects/PhiMesonCorrelation/CMSSW_5_3_8_HI_patch2/src/denglert/PreProcessor/batch/
tdir=/afs/cern.ch/work/d/denglert/public/projects/PhiMesonCorrelation/CMSSW_5_3_8_HI_patch2/src/denglert/PreProcessor/output/
#file=root://eoscms//eos/cms/store/group/phys_heavyions/denglert/pPb2013_minBiasForest_merged/HiForest_pPb2013_ReReco_run_210498-210658_0.root
file=root://eoscms//eos/cms/store/group/phys_heavyions/denglert/pPb2013_minBiasForest_unmerged/HIRun2013-ReReco-v1_run_210498-210658/pPb2013_minBias_HiForest_9_1_tKL.root
outdir=batchtest


cd $sdir
eval `scramv1 runtime -sh`
#cmsenv       ## doesn't work

../bin/preprocess $(file) $(outdir)

rfcp test $tdir/test
rm -rf test
