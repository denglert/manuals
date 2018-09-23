# Installing and importing packages in R


- https://cran.r-project.org/
- https://stackoverflow.com/questions/34705917/conda-how-to-install-r-packages-that-are-not-available-in-r-essentials


## Within `conda`/`anaconda`

R package installation options within `conda`:
- `r-essentials` contains multiple core packages
- install through `conda-forge` channel:
    ~~~~
    conda install -c conda-forge pkgname
    ~~~~
- install through `r` channel:
    ~~~~
    conda install -c r pkgname
    ~~~~
- manual installation from R with
    ~~~~~
    install.packages("pkgname", lib="/path/to/library", )
    ~~~~~

    find more details below.


## Installing from `R`

~~~~
install.packages('pkgname', lib="/path/to/library", configure.args="--config_option=value", repos='http://cran.us.r-project.org')
~~~~

Note that you need to specify `lib`, which is the path of the library where `anaconda` keeps the `R`
packages.

### Examples:

~~~~
install.packages('udunits2', type='source', lib="/home/user/anaconda3/lib/R/library", repo='cran.rstudio.com', configure.args="--with-udunits2-lib=/usr/local/Cellar/udunits/2.2.20/lib/")
~~~~

If `R` still doesn't see the packages try within placing it within the environment specific folder corresponding to `envname`.

### Check if the package is installed

You can test if a package installed by

~~~~
require('pkgname')
~~~~
