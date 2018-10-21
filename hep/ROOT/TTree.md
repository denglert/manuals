# `TTree`s in `ROOT`


**References:**
- https://www.hep.wisc.edu/~jnb/cdfsoftdoc/root_readtree_1.html
- https://root.cern.ch/how/how-read-tree



## Example(s)


### Initializing branches and iterating through the `TTree`

~~~~
TTree *EventTree = (TTree*) inputTFile->Get("name_of_TTree_in_file");

std::vector<TBranch*> branches;
std::vector<Float_t> variables;

std::vector<TString> treeVariables = {"treevar1", "treevar2", "treevar3"};
int nTreeVars = treeVariables.size();

for(int iv=0; iv<nTreeVars; iv++)
{   
   TBranch *branch = EventTree->GetBranch(treeVariables.at(iv));
   branches.push_back(branch);
   EventTree->SetBranchAddress(treeVariables.at(iv), &variables.at(iv));
}   

for (int i=0; i< nEvents; i++)
{   
   EventTree->GetEvent(i);

   for (int iv=0; iv < nTreeVars; iv++)
   {   
      std::cout << variables.at(iv) << " "; 
   }   
}
~~~~
