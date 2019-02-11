# Dangerous commands in `git`

## `reset --hard`

- https://git-scm.com/docs/git-reset
- https://stackoverflow.com/questions/1125968/how-do-i-force-git-pull-to-overwrite-local-files

Reset the master branch to `origin/master`.
The `--hard` option specifies that all the files in your working tree will be overwritten to match
the files in origin/master.

~~~~
git reset --hard origin/master
~~~~


## `push --force`

- https://stackoverflow.com/questions/5509543/how-do-i-properly-force-a-git-push


This will delete your previous commit(s) and push your current one:

~~~~
git push upstream master --force 
~~~~
