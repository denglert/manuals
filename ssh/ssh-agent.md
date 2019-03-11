# `ssh-agent`

**References:**
- https://www.ssh.com/ssh/agent
- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/


The `ssh-agent` is a helper program that keeps track of user's identity keys
and their passphrases.


manual description:
`ssh-agent` is a program to hold private keys used for public key authentication
(RSA, DSA, ECDSA, Ed25519). `ssh-agent` is usually started in the beginning of
an X-session or a login session, and all other windows or programs are started
as clients to the ssh-agent program. Through use of environment variables the
agent can be located and automatically used for authentication when logging
in to other machines using ssh(1).

The agent initially does not have any private keys.  Keys are added using
ssh(1) (see AddKeysToAgent in ssh_config(5) for details) or ssh-add(1).
Multiple identities may be stored in ssh-agent concurrently and ssh(1) will
automatically use them if present.  ssh-add(1) is also used to remove keys from
ssh-agent and to query the keys that are held in one.


## Start agent


Note the difference between `ssh-agent` and `eval $(ssh-agent -s)`:

`ssh-agent`:

~~~~
> ssh-agent
SSH_AUTH_SOCK=/tmp/ssh-6jCUgYshegEY/agent.5725; export SSH_AUTH_SOCK;
SSH_AGENT_PID=5726; export SSH_AGENT_PID;
echo Agent pid 5726;
~~~~

whereas with `eval $(ssh-agent -s)`:

~~~~
eval $(ssh-agent -s)
Agent pid 5726
~~~~




## Options

- `-s`: Generate Bourne shell commands on stdout. This is the default if `SHELL` does not look like it's a csh style of shell
- ...


## List private keys currently accessible to the agent

~~~~
ssh-add -l
~~~~

## Related environment variables


- `SSH_AUTH_SOCK`
- `SSH_AGENT_PID`
