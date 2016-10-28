#!/bin/sh
echo "Running submitall.sh"

# Flag = test or full
flag=$1

##################################
### Batch submission checklist ###
##################################

# 1, Check AnalysisBinning.cpp
# 2, Check the parameters here (workdir, isMC, dotrkCorr, etc...) one-by-one.
# 3, Check if there is enoguh disk space:
# fs lq

#########################
### --- MAIN AREA --- ###
#########################
# ./submitall.sh full
# parameters

#workdir=MC_comparison_recolevel_2nw_fullEv_trkCorrOFF
#workdir=MinBias_withTrackCorrection_2nw_eta_0.8
#workdir=HighMult_PID_pi_def_K_3.2_p_3.4_trkCorr
#workdir=HighMult_PID_pi_def_K_3.4_p_3.6_trkCorr_debug
#workdir=Enigma_MC_vzhukova-EPOS_RECO_batch_RECO_PIDconfig_default_trkCorr
#workdir=Enigma_MC_vzhukova-EPOS_RECO_batch_RECO_PIDconfig_default_nomaxtrkCorrcut_trkCorr
#workdir=Enigma_HighMult_Full_PIDConfig_default_trkCorr
#workdir=Enigma_HighMult_failedjobs1_PIDConfig_default_trkCorr
#workdir=Enigma_MinBias_remaining_PIDConfig_default_trkCorr
#workdir=Enigma_MinBias_Full_PIDConfig_default_trkCorr
#workdir=Enigma_HighMult_failedjobs1_PIDConfig_default_trkCorr
#workdir=Fiji_MinBias_Full_ALICE_comparison_ptbin_identical_eta_2.4_PIDConfig_default_trkCorr_
#workdir=Fiji_MC_vzhukova-EPOS_RECO_batch_RECO_PIDconfig_default_trkCorr

#workdir=Crosscheck_HIN14002_comparison
#workdir=Crosscheck_charge_comparison_negative
#workdir=Crosscheck_charge_comparison_negative
#workdir=Helios_MinBias_Full_PIDConfig_default_trkCorr
#workdir=Fiji_MinBias_Full_2MultBins_PIDConfig_default_trkCorr
#workdir=Fiji_HighMult_Full_PIDConfig_default_trkCorr

#workdir=Omega_MinBias_Full_PIDConfig_default_trkCorr_2nd
workdir=Dipstudy_HighMult_Full_PIDConfig_default_trkCorr_1nd_temp

binary=preprocess
#workdir=PIDscan_MinBias_config_strict_1
#isMC=no
isMC=no
#AnalysisBinning=AnalysisBinning_HIN14002_HighMult
AnalysisBinning=AnalysisBinning_HIN15007_HighMult
#AnalysisBinning=AnalysisBinning_HIN15007_MinBias
inputlist="list_highmult"
#inputlist="list_minbias"
dotrkCorr=yes
workdir=${workdir}_${dotrkCorr}
trkCorrlabel=trkCorr_HIJING_PIDConfig_default_Fiji_PID_match
trkCorrFile=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/trkCorr/${trkCorrlabel}/trkCorrections_0.root
PIDconfig=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/PIDUtils/config/config_default
nEvents=-1
queue=1nd
#inputlist="list_minbias"
#inputlist="list_minbias_temp"
#inputlist="list_highmult_pPb"
#inputlist="list_highmult_Pbp"
#inputlist="list_failedjobs_Enigma_HighMult_Full_PIDConfig_default_trkCorr_no"
#inputlist=list_failedjobsr1_Enigma_HighMult_Full_PIDConfig_default_trkCorr_yes
#inputlist="list_MC_vzhukova-EPOS_RECO_batch_HiForest"

##########################################################
# script environment

projectdir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/
sourcedir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/src
batchdir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/batch
tdir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/preprocessed/
trkFilebase=trkCorr
##########################################################

# Forcing recompile
echo "Forcing recompile."
cd $projectdir
make touch
make build_preproc AnalysisBinning=${AnalysisBinning}

cd ./bin

current_time=$(date "+%Y_%m_%d_%H_%M_%S")
echo "Submission Time : $current_time"
 
binary_stamped=$binary.$workdir.$current_time
echo "Workdir & time stamping the binary: " "$binary_stamped"
 
cp $binary $binary_stamped
echo "Binary should be stamped now."

relbinary=../../bin/${binary_stamped}

echo -e "Relative stamped binary name: $relbinary"

cd $batchdir

####################
### --- TEST --- ###
####################
# ./submitall.sh test
# parameteres

testworkdir=testsubmission
testdotrkCorr=no
testisMC=no
#testtrkCorrlabel=batchjob_TrackCorrection_full_mtrkdedx_added_minptfixed
testtrkCorrlabel=trkCorr_HIJING_PIDConfig_default_celes_i
testtrkCorrFile=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/trkCorr/${testtrkCorrlabel}/trkCorrections_0.root
testnEvents=10
testqueue=test

#########################################################

njobs=`cat $inputlist | wc -l`

### Read in the list of sources
echo -e ""
echo "Inputfile: $inputlist" 
echo "Number of files in the filelist: $njobs" 

lim=`expr $njobs + 1`

### Submit jobs
## Test submission
if [ "$flag" == "test" ]; then
	rm -rf $testworkdir
	mkdir $testworkdir
	cp $inputlist ./$testworkdir
	cp tasks.sh ./$testworkdir
   cd $tdir
	rm -rf $testworkdir
	mkdir $testworkdir
	cd $batchdir/$testworkdir
	echo "TEST SUBMISSION"
	echo "Number of jobs: 2"
	echo -e "\nSending jobs..."
	# Send jobs
	for (( i = 1; i < 3; i++ )); do
		testtrkCorrFileit=$batchdir/$testworkdir/${trkFilebase}_${i}.root
		cp $testtrkCorrFile ${testtrkCorrFileit}
		source=$(awk "NR == $i" $inputlist)
		echo $source 
		bsub -J PreProcess_PKP_test_$i -q $testqueue tasks.sh $relbinary $testworkdir $source $testisMC $testdotrkCorr $testtrkCorrFileit $PIDconfig $i $testnEvents 
	done
elif [ "$flag" == "full" ]; then
	# Remove previous workdir and create new one
	rm -rf $workdir
	mkdir $workdir
	cp $inputlist ./$workdir
	cp tasks.sh ./$workdir
	cd $tdir
	rm -rf $workdir
	mkdir $workdir
	cd $batchdir/$workdir
	echo -e "trkCorrlabel: $trkCorrlabel\ntrkCorrFile: $trkCorrFile" > trkCorrInfo
	echo "FULL DATASET SUBMISSION"
	echo "WORKDIR: $workdir"
	echo "Number of jobs: $njobs"
	echo -e "\nSending jobs..."
	# Send jobs
	for (( i = 1; i < ($lim); i++ )); do
		trkCorrFileit=$batchdir/$workdir/${trkFilebase}_${i}.root
		cp $trkCorrFile ${trkCorrFileit}
		source=$(awk "NR == $i" $inputlist)
		echo $source
		bsub -J ${workdir}_$i -q $queue tasks.sh $relbinary $workdir $source $isMC $dotrkCorr $trkCorrFileit $PIDconfig $i $nEvents
	done
fi 

echo -e "\nAll jobs submitted."
echo -e "WORKDIR: $workdir\n"
echo "Checking job status with 'bjobs -u denglert'."
bjobs -u denglert
