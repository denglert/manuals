# `svn` manuals


## References

- http://svnbook.red-bean.com


## Basic

### Update working copy

`svn` update brings changes from the repository into your working copy. If no revision is given, it
brings your working copy up to date with the HEAD revision. Otherwise, it synchronizes the working
copy to the revision given by the --revision (-r) option. As part of the synchronization, svn update
also removes any stale locks (see the section called “Sometimes You Just Need to Clean Up”) found in
the working copy.

~~~~
svn update [PATH...]
~~~~


### Commit changes

Send changes from your working copy to the repository.

~~~~
svn commit [PATH...]
~~~~

~~~~
svn commit -m "commit message"
~~~~
