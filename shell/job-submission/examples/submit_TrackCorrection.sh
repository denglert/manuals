# Lxbatch submission parameters
queue=1nd
#jobname=TrackCorrection_singleptbin_forfig
jobname=trkCorr_HIJING_all_final
taskscript=task_TrackCorrection.sh
environment=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/trkCorr/

### Script
binary=../../bin/TrackCorrection
# parameters
workdir=batchjob_${jobname}_${queue}
inputfileDATA=root://eoscms.cern.ch//store/group/phys_heavyions/denglert/pPb2013_HighMultiplicityForest_merged/HIRun2013-28Sep2013-v1_pPb_run_210498-210658/pPb2013_HM_28Sep2013_v1_HiForest_pPb_run_210498-210658_0.root
#inputfileMC=root://eoscms.cern.ch//store/group/phys_heavyions/denglert/pPb_MC_HIJING_MB_HiForest_dEdxcalib_on_500kMCEv_1.9m_mtrkdedx_added_minptfix/pPb_MC_HIJING_MB_mergedHiForest_1.9mEv.root
inputfileMC=root://eoscms.cern.ch//store/group/phys_heavyions/denglert/pPb_MC_HIJING_MB_HiForest_dEdxcalib_on_500kMCEv_1.9m_mtrkdedx_added_minptfix_trketafix/pPb_MC_mergedHiForest.root
sampleType=kPAMC
nEventsDATA=-1
nEventsMC=-1
PIDconfig=/afs/cern.ch/work/d/denglert/public/projects/PKPCorrelation_SLC6/CMSSW_5_3_20/src/denglert/PKPCorrelationAna/PIDUtils/config/default
jobid=0

echo "TrackCorrection table maker job submission"
echo "WORKDIR: $workdir"
echo "Number of jobs: $njobs"
echo -e "\nSending jobs..."

bsub -J $jobname -q $queue $taskscript $environment $binary $workdir ${inputfileDATA} ${inputfileMC} ${sampleType} ${jobid} ${nEventsDATA} ${nEventsMC} ${PIDconfig}

bjobs
