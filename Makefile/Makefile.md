# `Makefile` manuals


## Variables

~~~~
variable1 = value1
variable2 = value2
~~~~

## Automatic variables

[From the official manual][autovar1]:

- `$@`: The file name of the target of the rule. If the target is an archive member, then
        `$@` is the name of the archive file. In a pattern rule that has multiple targets (see
        Introduction to Pattern Rules), `$@` is the name of whichever target caused the rule’s
        recipe to be run.

- `$%`: The target member name, when the target is an archive member. See Archives. For
        example, if the target is foo.a(bar.o) then `$%` is bar.o and `$@` is foo.a. `$%` is empty
        when the target is not an archive member.

- `$<`: The name of the first prerequisite. If the target got its recipe from an implicit
        rule, this will be the first prerequisite added by the implicit rule (see Implicit Rules).

- `$?`: The names of all the prerequisites that are newer than the target, with spaces
        between them. For prerequisites which are archive members, only the named member is used.

- `$^`: The names of all the prerequisites, with spaces between them. For prerequisites
        which are archive members, only the named member is used. A target has only
        one prerequisite on each other file it depends on, no matter how many times each file is
        listed as a prerequisite. So if you list a prerequisite more than once for a target, the
        value of `$^` contains just one copy of the name. This list does not contain any of the
        order-only prerequisites; for those see the `$|` variable, below.

- `$+`: This is like `$^`, but prerequisites listed more than once are duplicated in the
        order they were listed in the makefile. This is primarily useful for use in linking
        commands where it is meaningful to repeat library file names in a particular order.

- `$|`: The names of all the order-only prerequisites, with spaces between them.

- `$*`:
    The stem with which an implicit rule matches (see How Patterns Match). If the
    target is dir/a.foo.b and the target pattern is a.%.b then the stem is dir/foo. The stem
    is useful for constructing names of related files.

    In a static pattern rule, the stem is part of the file name that matched the `%` in the target pattern.
    
    In an explicit rule, there is no stem; so `$*` cannot be determined in that way.
    Instead, if the target name ends with a recognized suffix (see Old-Fashioned Suffix
    Rules), `$*` is set to the target name minus the suffix. For example, if the target name
    is ‘foo.c’, then `$*` is set to ‘foo’, since ‘.c’ is a suffix. GNU make does this bizarre
    thing only for compatibility with other implementations of make. You should generally
    avoid using `$*` except in implicit rules or static pattern rules.
    
    If the target name in an explicit rule does not end with a recognized suffix, `$*` is set to the empty string for that rule. 


[A more compact explanation][autovar2]:

- `$@`: full target name of the current target
- `$?`: returns the dependencies that are newer than the current target
- `$*`: returns the text that corresponds to % in the target
- `$<`: name of the first dependency
- `$^`: name of all the dependencies with space as the delimiter

## Rule syntax

~~~
targets : prerequisites
        recipe
        ...
~~~


## Tricks

### Run a shell command, and the pass the result to a Makefile variable:


~~~~
VAR_RUN = $(shell echo '$(.VARIABLES)' | awk -v RS=' ' '/run_/' | sed 's/run_//g' )
~~~~


## Pitfalls
 

### Symptom: `make` doesn't build all binaries.

Make sure `all` comes first, so it should be

~~~~
all :  ../bin/runFitCrossCheckForLimits ../bin/getCLsLimit

### --- Binary --- ###
../bin/runFitCrossCheckForLimits: $(OBJ_FitCrossCheckForLimits)
   $(CC) $^ $(CLFLAGS) -o $@

   ../bin/getCLsLimit: $(OBJ_getCLsLimit)
      $(CC) $^ $(CLFLAGS) -o $@

~~~~

NOT:

~~~~
### --- Binary --- ###
../bin/runFitCrossCheckForLimits: $(OBJ_FitCrossCheckForLimits)
   $(CC) $^ $(CLFLAGS) -o $@

../bin/getCLsLimit: $(OBJ_getCLsLimit)
    $(CC) $^ $(CLFLAGS) -o $@

all :  ../bin/runFitCrossCheckForLimits ../bin/getCLsLimit
~~~~

[autovar1]: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html 
[autovar2]: http://opensourceforu.com/2012/06/gnu-make-in-detail-for-beginners/
