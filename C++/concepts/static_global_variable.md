# `static` global varible

The last use of static is as a global variable inside a file of code. in this
case, the use of static indicates that source code in other files that are part
of the project cannot access the variable. only code inside the single file can
see the variable. (it's scope -- or visibility -- is limited to the file.) this
technique can be used to simulate object oriented code because it limits
visibility of a variable and thus helps avoid naming conflicts. this use of
static is a holdover from c.
