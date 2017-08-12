# `static` global varible

`static` can also be used as a global variable inside a file of code. In this case, the use of
static indicates that source code in other files that are part of the project cannot access the
variable. only code inside the single file can see the variable. (it's scope -- or visibility -- is
limited to the file.). This technique can be used to simulate object oriented code because it limits
visibility of a variable and thus helps avoid naming conflicts. This use of static is a holdover
from `C`.
