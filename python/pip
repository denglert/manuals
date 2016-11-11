# - Get general help
pip help

# - Get help for a specific command
pip help <command>

# - Search for a package
pip search <pkgname>

#####################

# - Install a pacakge
pip install <pkgname>

# - Uninstall a pacakge
pip uninstall <pkgname>

# - Update a package
pip install -U <pkgname>

#####################

# - List installed packages
pip list

# - List outdated packages
pip list --outdated


######################

# - Output installed packages in requirements format.
pip freeze

# - Save the list of installed packages to a file.
pip freeze > <reqfile>

# - Install the list of packages provided by a requirements file 
pip install -r <reqfile>

# - Updated all of the outdated packages
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
