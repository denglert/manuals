# `git submodule`


## Downloading a repository including its submodules

~~~~
git clone --recursive <url>
~~~~

If you already cloned the repo but forgot `--recursive`, you can still fetch the submodules after
the fact with:

~~~~
git submodule update --init
~~~~

## Add a specific version of a package to your repo

1. Add the submodule to your repo:

~~~~
git submodule add <url>
~~~~

2. Check out the tag/commit that you want to work on

~~~~
cd <pkg>
git checkout <tag>/<commit>
~~~~

3. Add to the staging area and then commit the changes

~~~~
cd ..
git add <pkg> .gitmodules
git commit -m "Added `<pkg>` with tag/commit."
~~~~


## Update a submodule to the version of the latest commit

Source:
https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin

~~~~
cd <submodule>
git pull origin master
cd ..
git add <submodule>
git commit -m "Updated <submodule>."
~~~~


## Remove a submodule

**References:**
- https://git-scm.com/docs/gitsubmodules
- https://stackoverflow.com/questions/29850029/what-is-the-current-way-to-remove-a-git-submodule
- https://gist.github.com/myusuf3/7f645819ded92bda6677

~~~~
git deinit <submodule-path>
git rm <submodule-path> && git commit
~~~~
