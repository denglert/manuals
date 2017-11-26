#!/bin/sh

# Flag = test or full
flag=$1

####################################################
### Batch submission parameters for PreProcessor ###
####################################################

#########################
### --- MAIN AREA --- ###
#########################
# ./submit_preproc_genlevel.sh full
# parameters

#workdir=MinBias_Etalon_2nd
inputlist="list_MC_vzhukova-EPOS_RECO_batch_HiForest"
workdir=Fiji_MC_vzhukova-EPOS_RECO_batch_GENE_1nw
PIDconfig=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/PIDUtils/config/config_default
nEvents=-1
queue=1nw

####################
### --- TEST --- ###
####################
# ./submitall.sh test
# parameteres
testworkdir=MC_comparison_test
testnEvents=5
testqueue=test

##########################################################
# script environment

sourcedir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/src
batchdir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/batch
tdir=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/preprocessed/

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
	rm -rf test
	mkdir test
	cp $inputlist ./test
	cp task_preproc_genlevel.sh ./test
   cd $tdir
	rm -rf $testworkdir
	mkdir $testworkdir
	cd $batchdir/test
	echo "TEST SUBMISSION"
	echo "Number of jobs: 2"
	echo -e "\nSending jobs..."
	# Send jobs
	for (( i = 1; i < 3; i++ )); do
		source=$(awk "NR == $i" $inputlist)
		echo $source 
		bsub -J PKP_MC_crosscheck_test_$i -q $testqueue task_preproc_genlevel.sh $testworkdir $source $i $PIDconfig $testnEvents 
	done
elif [ "$flag" == "full" ]; then
	# Remove previous workdir and create new one
	rm -rf $workdir
	mkdir $workdir
	cp $inputlist ./$workdir
	cp task_preproc_genlevel.sh ./$workdir
	cd $tdir
	rm -rf $workdir
	mkdir $workdir
	cd $batchdir/$workdir
	echo "FULL DATASET SUBMISSION"
	echo "WORKDIR: $workdir"
	echo "Number of jobs: $njobs"
	echo -e "\nSending jobs..."
	# Send jobs
	for (( i = 1; i < ($lim); i++ )); do
	source=$(awk "NR == $i" $inputlist)
	echo $source 
	echo "bsub -J PKP_MC_crosscheck_test_$i -q $queue task_MC_crosscheck.sh $workdir $source $i $nEvents"
	bsub -J ${workdir}_$i -q $queue task_preproc_genlevel.sh $workdir $source $i $PIDconfig $nEvents
	done
fi 

echo -e "\nAll jobs submitted."
echo -e "WORKDIR: $workdir\n"
echo "Checking job status with 'bjobs -u denglert'."
bjobs -u denglert
