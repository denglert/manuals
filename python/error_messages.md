# `python` error messages


## `TypeError: got multiple values for argument`

See e.g.:
https://stackoverflow.com/questions/21764770/typeerror-got-multiple-values-for-argument

From user `Cilyan`:

> This happens when a keyword argument is specified that overwrites a positional argument. For
> example, let's imagine a function that draws a colored box. The function selects the color to be
> used and delegates the drawing of the box to another function, relaying all extra arguments.
>
> ~~~~
> def color_box(color, *args, **kwargs):
>     painter.select_color(color)
>     painter.draw_box(*args, **kwargs)
> ~~~~
>
> Then the call
> ~~~~
> color_box("blellow", color="green", height=20, width=30)
> ~~~~
