# Resolving merge conflicts

**References:**
- http://genomewiki.ucsc.edu/index.php/Resolving_merge_conflicts_in_Git


## Get a list of conflicted files

- https://stackoverflow.com/questions/3065650/whats-the-simplest-way-to-get-a-list-of-conflicted-files

~~~~
git diff --name-only --diff-filter=U
~~~~
