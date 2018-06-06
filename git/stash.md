# `git stash`

Record the current state of the working directory and the index, but want to go back to a clean
working directory.
The command saves your local modifications away and reverts the working directory to match the
`HEAD` commit.

~~~~
git stash
~~~~

List stashes:

~~~~
git stash list
~~~~

Reapply previously stashed changes with `git stash pop`:

~~~~
git stash pop
~~~~

Reapply the changes to your working copy and keep them in your stash with `git stash apply`:

~~~~
git stash apply
~~~~
