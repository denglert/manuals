# `svn` setup

If your local username differs from your the svn host username, you might want
to add the following to the svn config file at `~/.subversion/server`.

~~~~
[groups]
<group-name> = <host-address>

[group-name]
username = <yourusername>
~~~~

Example:

~~~~
[groups]
cern_svn = svn.cern.ch

[cern_svn]
username = user1234
~~~~

To specify your username on a one-off basis:

~~~~
svn co --username=<yourusername> ...
~~~~

Reference:

- http://stackoverflow.com/questions/405690/in-subversion-can-i-be-a-user-other-than-my-login-name
