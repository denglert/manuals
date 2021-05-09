# Logging in `TorQ`

**References:**
- https://github.com/AquaQAnalytics/TorQ/blob/6cec4609ca7931983b527987202d9855df98ba87/torq.q#L179


**Relevant namespace:** `.lg`

**Functions:**
- `.lg.format`
- `.lg.publish`
- `.lg.l`
- `.lg.o`
- `.lg.err`


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## `.lg.l`

~~~~
// Log a message
l:{[loglevel;proctype;proc;id;message;dict]
    if[0 < redir:`int$(0w 1 `onelog in key .proc.params)&0^outmap[loglevel];
        neg[redir] .lg.format[loglevel;proctype;proc;id;message]];
    ext[loglevel;proctype;proc;id;message;dict];
    publish[loglevel;proctype;proc;id;message];    
    }
~~~~

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## `.lg.o`

This is a projection of `.lg.l`

~~~~
o:l[`INF;`torq;`$"_" sv string (.z.f;.z.i;system"p");;;()!()]
~~~~


**Syntax:**

~~~~
.lg.o[id; message]
~~~~
