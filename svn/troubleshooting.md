# `svn` troubleshooting

## `svnlook: Property 'svn:mime-type' not found on path`

**Error:**

~~~~
Adding         SupportNote/src/app_singlet.tex
Transmitting file data .....................svn: Commit failed (details follow):
svn: Commit blocked by pre-commit hook (exit code 1) with output:
svnlook pg /var/svn/reps/atlasphys-hsg6 svn:externals -t 245321-5am7
Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/
svnlook: Property 'svn:externals' not found on path
'Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote' in transaction 245321-5am7
svnlook pg /var/svn/reps/atlasphys-hsg6 svn:externals -t 245321-5am7
Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/
svnlook: Property 'svn:externals' not found on path
'Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures' in transaction
245321-5am7
svnlook pg /var/svn/reps/atlasphys-hsg6 svn:externals -t 245321-5am7
Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation/
svnlook: Property 'svn:externals' not found on path
'Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation' in
transaction 245321-5am7
svnlook pg /var/svn/reps/atlasphys-hsg6 svn:externals -t 245321-5am7
Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation/singlet/
svnlook: Property 'svn:externals' not found on path
'Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation/singlet'
in transaction 245321-5am7
svnlook pg /var/svn/reps/atlasphys-hsg6 svn:externals -t 245321-5am7
Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/src/
svnlook: Property 'svn:externals' not found on path
'Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/src' in transaction 245321-5am7
sudo: no tty present and no askpass program specified
sudo: no tty present and no askpass program specified
/afs/cern.ch/project/svn/reps/atlasphys-hsg6/usr-hooks/svn-hooks/reject-known-sha1-collisions.sh:
line 40: /usr/bin/grep: No such fileor directory
svnlook: Write error: Broken pipe
svnlook: Property 'svn:mime-type' not found on path
'/Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation/singlet/Gamma_H_over_mH_300.pdf'
in transaction 245321-5am7
ERROR:
/Physics/Higgs/HSG6/notes/Winter2017/DiHiggsCombination/SupportNote/figures/model_interpretation/singlet/Gamma_H_over_mH_300.pdf
is a binary file but the property svn:mime-type=application/octet-stream is not set.
       Please set it manually before commit: svn ps svn:mime-type application/octet-stream
       Gamma_H_over_mH_300.pdf
~~~~

**Solution:**

As proposed in the error message:

~~~~
svn ps svn:mime-type application/octet-stream Gamma_H_over_mH_300.pdf
~~~~
