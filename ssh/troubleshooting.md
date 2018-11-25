# Troubleshooting `ssh`

## Received disconnect from <host>: Too many authentication failures for <user>

**References:**
- https://stuff-things.net/2016/07/06/ssh-too-many-authentication-failures/


### Symptom

~~~~
Received disconnect from <host>: Too many authentication failures for <user>
~~~~

### Solution


#### Manual

Manually specify that you don't want pubkey authentication:

~~~~
ssh -o PubkeyAuthentication=no  user@host
~~~~

or prompt for a password by specifying an empty password:

~~~~
ssh user:@host
~~~~

#### Permanent (`ssh_config`)

In ssh config set `IdentitiesOnly` to `yes` below the hosts.

`IdentitiesOnly` specifies that ssh should only use the authentication identity and certificate
files explicitly configured in the `ssh_config` files or passed on the `ssh` command-line, even if
`ssh-agent` or a `PKCS11Provider` offers more identities. 

~~~~
Host secure.example.com
  IdentitiesOnly yes
  IdentityFile ~/.ssh/secure_rsa
~~~~


