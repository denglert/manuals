# `ROOT` tips and tricks


## Iterate over objects in `TFile`


~~~~
TFile *f1 = TFile::Open("hsimple.root");
TIter next(f1->GetListOfKeys());
TKey *key;
while ((key = (TKey*)next()))
{
    TClass *cl = gROOT->GetClass(key->GetClassName());
    if (!cl->InheritsFrom("TH1")) continue;
    print(cl->GetName());
}
~~~~
