# Registers in `vim`

Registers in Vim let you run actions or commands on text stored within them. To access a register,
you type `"a` before a command, where `a` is the name of a register. If you want to copy the current
line into register `k`, you can type:

~~~~
"kyy
~~~~

or you can append to a register by using a capital letter:

~~~~
"Kyy
~~~~

You can then move through the document and paste it elsewhere using:

~~~~
"kp
~~~~

To paste from system clipboard on Linux:
~~~~
"+p
~~~~

To paste from system clipboard on Windows (or from "mouse highlight" clipboard on Linux):
~~~~
"*p
~~~~

To access all currently defined registers type:
~~~~
:reg
~~~~


Register types:
- `"` register = default register, populated with yanked and deleted text
- `0` register = only populated with yanked text
- `1` register = holds the last delete or change

If you yank text without assigning it to a particular register, then it will be
assigned to the 0 register and the " register.

The difference between the 0 and " registers is that 0 is only populated with
yanked text, whereas the default register is also populated with text deleted
using d/D/x/X/c/C/s/S commands.

I find this useful when I want to copy some text, delete something and replace
it with the copied text. The following steps illustrate an example:

Yank the text you want to copy with (this text is saved in " and 0 registers):
~~~~
y[motion]
~~~~

Delete the text you want to replace with:
(this text is saved in the `"` register)
~~~~
d[motion]
~~~~

Paste the yanked text with
~~~~
"0p
~~~~

where `"` is the command to use a register for the next command.

On the final step, if you were to paste from the default register (with `p`), it would use the text
that you had just deleted (probably not what you intended).

Note that `p` or `P` pastes from the default register. The longhand equivalent would be `""p` (or
`""P`) and `"0` holds the last yank, `"1` holds the last delete or change.

