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




### Regenerating passphrase

~~~~
ssh-keygen -p
~~~~

~~~~
ssh-keygen -R <host>
~~~~
