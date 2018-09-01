# Installing and importing packages in R


- https://cran.r-project.org/
- https://stackoverflow.com/questions/34705917/conda-how-to-install-r-packages-that-are-not-available-in-r-essentials


## General

~~~~
install.packages('pkgname', repos='http://cran.us.r-project.org')
~~~~


## Within `conda`/`anaconda`

You can install packages from CRAN not present in `r-essentials`, by the `install.packages()`
function from within `R`.
Note that you need to specify the path of the library where `anaconda` keeps the `R` packages.


Try:

~~~~
install.packages("pkgname", "/home/user/anaconda3/lib/R/library")
~~~~


You can test if a package installed by

~~~~
require('pkgname')
~~~~

If `R` still doesn't see the packages try within placing it within the environment specific folder corresponding to `envname`:

~~~~
install.packages("pkgname", "/home/user/anaconda3/envs/envname/lib/R/library")
~~~~
