# Difference between shared and static libraries

## Comments

Shared libraries are .so (or in windows .dll, or in os x .dylib) files. all the
code relating to the library is in this file, and it is referenced by programs
using it at run-time. a program using a shared library only makes reference to
the code that it uses in the shared library.

static libraries are .a (or in windows .lib) files. all the code relating to
the library is in this file, and it is directly linked into the program at
compile time. a program using a static library takes copies of the code that it
uses from the static library and makes it part of the program. [windows also
has .lib files which are used to reference .dll files, but they act the same
way as the first one].

There are advantages and disadvantages in each method:

- shared libraries reduce the amount of code that is duplicated in each program
  that makes use of the library, keeping the binaries small. it also allows you
  to replace the shared object with one that is functionally equivalent, but may
  have added performance benefits without needing to recompile the program that
  makes use of it. shared libraries will, however have a small additional cost
  for the execution of the functions as well as a run-time loading cost as all
  the symbols in the library need to be connected to the things they use.
  additionally, shared libraries can be loaded into an application at run-time,
  which is the general mechanism for implementing binary plug-in systems.

- static libraries increase the overall size of the binary, but it means that you
  don't need to carry along a copy of the library that is being used. as the code
  is connected at compile time there are not any additional run-time loading
  costs. the code is simply there.

Personally, I prefer shared libraries, but use static libraries when needing to
ensure that the binary does not have many external dependencies that may be
difficult to meet, such as specific versions of the c++ standard library or
specific versions of the Boost C++ library.

## References

- https://stackoverflow.com/questions/2649334/difference-between-static-and-shared-libraries
