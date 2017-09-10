# `Makefile`



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
