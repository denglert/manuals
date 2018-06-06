# Troubleshooting


## `git: Not currently on any branch` problem

https://stackoverflow.com/questions/4735556/git-not-currently-on-any-branch-is-there-an-easy-way-to-get-back-on-a-branch

If no commit was made (untested):

~~~~
git stash
git checkout some-branch
git stash pop
~~~~

If you've already made a commit on a HEADLESS state, you should check the hash of the commit,
checkout the branch where you'd want to merge that commit to and then proceed with the merge:

~~~~
git log --oneline -n1
git checkout <branch-name>
git merge <commit hash>
~~~~
