## Generating a new SSH key


## Options


- `-t <key type>`: Specified the type of key to create.
    Available types:
        -  dsa, ecdsa, ed25519, rsa, rsa1


## Usage


### RSA key gen

~~~~
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
~~~~


### Passwordless login with SSH key pairs

Steps:

1. Generate public- and private-key pairs 
2. Place the public key (.pub) in the `authorized_keys`
3. Set up correct permissions for the files (rwx------ / 700)
	`chmod 700 ~/.ssh/authorized_keys`
4. Add the ssh private key to the `ssh-agent`:
	`ssh-add ~/.ssh/id_rsa_custom`


### Regenerating passphrase

~~~~
ssh-keygen -p
~~~~

~~~~
ssh-keygen -R <host>
~~~~
