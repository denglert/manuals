# How to set up ssh key-pairs for a specific user on git (gitlab/github)

**Instructions:**


1. Create a private and public key pair:
    
    ~~~~
    ssh-keygen -t ed25519 -C "your_email@example.com"
    ~~~~

	Key types (`-t`):
	- rsa
	- dsa
	- ed25519 (favoured)
        
    A prompt will appear asking for:
    - the path where the key pair fill be saved
    - a passphrase

2. Add the host-user pair as an alias within `./ssh/config`:

	~~~~
	Host <hostalias-userid>
	    Hostname <hostname>
	    User git
	    IdentityFile <path_to_ssh_id>
	~~~~
	
	
	**Example:**
	
	~~~~
	Host gitlab.com-foo
	   Hostname gitlab.com
	   User git
	   IdentityFile ~/.ssh/id_rsa_gitlab_foo
	~~~~

3. Start/restart `ssh-agent` and add the `id`

    ~~~~
    eval $(ssh-agent -s)
    ssh-add <path_to_ssh_id>
    ~~~~

	Example:

    ~~~~
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_rsa_gitlab_foo
    ~~~~

4. Add the address of your remote git repository to your local git repo:

	~~~~
	git remote add origin git@<hostalias-userid>:<gitusername>/<repo name>.git
	~~~~

	**Example:**

	~~~~
	git remote add origin git@gitlab.com-foo:foo/bar_repo.git
	~~~~
