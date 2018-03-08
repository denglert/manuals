# `Makefile` manuals

## References

- http://opensourceforu.com/2012/06/gnu-make-in-detail-for-beginners/
- https://www.gnu.org/software/make/manual/make.html
- http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/


## Variables

~~~~
variable1 = value1
variable2 = value2
~~~~

**Get the basename of a file:**

~~~~
${PIDconfigfile##*/}
~~~~


### Special variables

- `.VARIABLES`

- `VPATH`:
    This is where Makefile tries to look for src files.
    
    Example:
    ~~~~
    VPATH = ./src ./rambo ./DHELAS ./alpha_QCD ./CTEQ5
    ~~~~

VPATH = src:rambo:DHELAS:alpha_QCD:CTEQ5



### Automatic variables

[From the official manual][autovar1]:

- `$@`:
    The file name of the target of the rule. If the target is an archive member, then
    `$@` is the name of the archive file. In a pattern rule that has multiple targets (see
    Introduction to Pattern Rules), `$@` is the name of whichever target caused the rule’s
    recipe to be run.

- `$%`:
    The target member name, when the target is an archive member. See Archives. For
    example, if the target is foo.a(bar.o) then `$%` is bar.o and `$@` is foo.a. `$%` is empty
    when the target is not an archive member.

- `$<`:
    The name of the first prerequisite. If the target got its recipe from an implicit
    rule, this will be the first prerequisite added by the implicit rule (see Implicit Rules).

- `$?`:
    The names of all the prerequisites that are newer than the target, with spaces
    between them. For prerequisites which are archive members, only the named member is used.

- `$^`:
    The names of all the prerequisites, with spaces between them. For prerequisites
    which are archive members, only the named member is used. A target has only
    one prerequisite on each other file it depends on, no matter how many times each file is
    listed as a prerequisite. So if you list a prerequisite more than once for a target, the
    value of `$^` contains just one copy of the name. This list does not contain any of the
    order-only prerequisites; for those see the `$|` variable, below.

- `$+`:
    This is like `$^`, but prerequisites listed more than once are duplicated in the
    order they were listed in the makefile. This is primarily useful for use in linking
    commands where it is meaningful to repeat library file names in a particular order.

- `$|`:
    The names of all the order-only prerequisites, with spaces between them.

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

- `$@`: Full target name of the current target
- `$?`: Returns the dependencies that are newer than the current target
- `$*`: Returns the text that corresponds to % in the target
- `$<`: First item in the dependencies list
- `$^`: Name of all the dependencies with space as the delimiter


### Variable manipulation

#### Substitution refrences

For each word in 'name' replace 'string1' with 'string2'.

~~~~
$(var:pattern=replacement)
~~~~

**Example:**

Replace the suffix `.c` of all words in the macro `SRCS` with the `.o` suffix.

~~~~
OBJS = $(SRCS:.c=.o)
~~~~

## Rule syntax

~~~
targets : prerequisites
        recipe
        ...
~~~

## Functions

### Custom functions

~~~~
define generate_file
    sed 's/{NAME}/$(1)/' greetings.tmpl >$(2).txt
endef

all:
    $(call generate_file,John Doe,101)
    $(call generate_file,Peter Pan,102)
~~~~

### Functions for String Substitution and Analysis

#### `$(patsubst pattern,replacement,text)`


## Tricks


### Automatic dependency generation

See:
- http://make.mad-scientist.net/papers/advanced-auto-dependency-generation/

[Example makefile](./examples/auto_dependency_gen.make)


### Extract list of variables with starting with a specific string

**Example:**

~~~~
form_dat_job_tag = Hybrid_mH_eq_mHc_500_mA_150-400_8bins_pert_8pi
form_dat_out_tag = output_form_dat_mA_$(form_dat_mA)

VAR_FORM_DAT    := $(shell echo '$(.VARIABLES)' |  awk -v RS=' ' '/form_dat/')
EXPORT_FORM_DAT := $(foreach v,$(VAR_FORM_DAT),$(v)='$($(v))')

format_data : 
	@cd output/$(form_dat_job_tag); $(EXPORT_FORM_DAT) ../../awk/format_data.sh; echo $(EXPORT_FORM_DAT) | tr " " "\n" | awk 'NF > 0' | sort > $(form_dat_out_tag).config
~~~~


### Using wildcards

~~~~
srcs := $(wildcard src/*.tex)

%.pdf : %.tex $(srcs)
	pdflatex $(INTER) $<
	bibtex note
~~~~


[autovar1]: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html 
[autovar2]: http://opensourceforu.com/2012/06/gnu-make-in-detail-for-beginners/
