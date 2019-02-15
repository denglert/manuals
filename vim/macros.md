# Macros in `vim`

Recording a macro on the fly by:
~~~~
:q{macroletter}
~~~~

Replay macro by:
~~~~
@{macroletter}
~~~~

Apply macro to lines 5 through 10:

~~~~
:5,10norm! @a
~~~~

