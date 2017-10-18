CC     = g++
CCFLAGS = -I../inc/ -I$(INCDIRLINK) $(ROOTCFLAGS) $(2HDMCCFLAGS) -MMD -MF .depend_cpp

# General compilation rule for .cpp sources
../lib/%.cpp.o : %.cpp
	$(CC) $(CCFLAGS) -c $< -o $@

include .depend_cpp
