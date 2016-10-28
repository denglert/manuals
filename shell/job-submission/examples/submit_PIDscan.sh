#!/bin/sh

echo "Running submit_PIDscan.sh"

while read PIDconfigfile
do

# Flag = test or full
flag=$1

####################################################
### Batch submission parameters for PreProcessor ###
####################################################

#########################
### --- MAIN AREA --- ###
#########################
# ./submitall.sh full
# parameters

#workdir=MC_comparison_recolevel_2nw_fullEv_trkCorrOFF
#workdir=MinBias_withTrackCorrection_2nw_eta_0.8
#workdir=HighMult_PID_pi_def_K_3.2_p_3.4_trkCorr
#AnalysisBinning=AnalysisBinning_HIN15007_HighMult
#AnalysisBinning=AnalysisBinning_HIN15007_HighMult
AnalysisBinning=AnalysisBinning_HIN15007_MinBias_SingleBin
workdir=Omega_fix_PIDscan_MinBias_dEdxminsweep_full_${PIDconfigfile##*/}
#workdir=MinBias_PID_pi_a1_2.0_K_mdEdx_3.4_p_mdEdx_3.6_trkCorr
#workdir=MC_vzhukova-EPOS_RECO_batch_comparison_recolevel_2nd_chariot_proton_mindEdx_3.4_trkCorr
binary=preprocess
isMC=no
dotrkCorr=yes
workdir=${workdir}_trkCorr_${dotrkCorr}
trkCorrlabel=trkCorr_HIJING_PIDConfig_default_Fiji_PID_match
trkCorrFile=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/trkCorr/${trkCorrlabel}/trkCorrections_0.root
PIDconfig=${PIDconfigfile}
nEvents=-1
queue=2nd
inputlist="list_minbias"
#inputlist="list_highmult"
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
testtrkCorrlabel=batchjob_TrackCorrection_full_mtrkdedx_added_minptfixed
testtrkCorrFile=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/trkCorr/${trkCorrlabel}/trkCorrections_0.root
testnEvents=10
testqueue=test

njobs=`cat $inputlist | wc -l`

### Read in the list of sources
echo -e ""
echo "Inputfile: $inputlist" 
echo "Number of files in the filelist: $njobs" 

lim=`expr $njobs + 1`

### Submit jobs
## Test submission
if [ "$flag" == "test" ]; then
	cd $batchdir
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
	cd $batchdir
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
		bsub -g /${workdir} -J ${workdir}_$i -q $queue tasks.sh $relbinary $workdir $source $isMC $dotrkCorr $trkCorrFileit $PIDconfig $i $nEvents
	done
fi 

echo -e "\nAll jobs submitted."
echo -e "WORKDIR: $workdir\n"
echo "Checking job status with 'bjobs -u denglert'."


done < list_dEdxminsweep

bjobs -u denglert
