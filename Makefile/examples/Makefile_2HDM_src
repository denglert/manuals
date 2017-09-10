
OBJ_ParameterScan_Physical_MultiDim = ../lib/ParameterScan_Physical_MultiDim.cpp.o
OBJ_ParameterScan_Hybrid_MultiDim = ../lib/ParameterScan_Hybrid_MultiDim.cpp.o
OBJ_ParameterScan_RB = ../lib/ParameterScan_RB.f.o

CMN =

binaries : ../bin/ParameterScan_Hybrid_MultiDim ../bin/ParameterScan_Physical_MultiDim ../bin/ParameterScan_RB

#######

#LINKER = ifort
LINKER = g++

#../bin/ParameterScan: $(OBJ_ParameterScan)
#ifeq ($(LINKER),ifort)
#	$(FC) -o $@ $^ $(FLFLAGS) 
#endif
#ifeq ($(LINKER),g++)
#	$(CC) $^ $(CLFLAGS) -o $@  
#endif

../bin/ParameterScan_Hybrid_MultiDim: $(OBJ_ParameterScan_Hybrid_MultiDim)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $^ $(CLFLAGS) -o $@
endif

../bin/ParameterScan_Physical_MultiDim: $(OBJ_ParameterScan_Physical_MultiDim)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $^ $(CLFLAGS) -o $@
endif

../bin/ParameterScan_RB: $(OBJ_ParameterScan_RB)
	$(FC) -o $@ $^

####################
## -- Linking -- ###
####################

LIBDIRLINK = $(HOME)/lib/links/libs
INCDIRLINK = $(HOME)/lib/links/inc

####################
## -- Fortran -- ###
####################

#FC    = gfortran
FC     = ifort

FCFLAGS = -c

#FLFLAGS = -cxxlib -nofor_main -\#
FLFLAGS = -cxxlib -nofor_main $(ROOTLFLAGS)

../lib/%.f.o : %.f
	$(FC) $(FCFLAGS) $< -o $@ 

#################
### -- C++ -- ###
#################

CC     = g++
#CC     = icc

CCFLAGS = -I../inc/ -I$(INCDIRLINK) $(ROOTCFLAGS) $(2HDMCCFLAGS) -MMD -MF .depend_cpp
CLFLAGS = $(ROOTLFLAGS) $(2HDMCLFLAGS) $(HB_HS_LFLAGS)

# 2HDMC
2HDMCCFLAGS = -I/local/software/gsl/1.15/include -DHiggsBounds
2HDMCLFLAGS = -L$(LIBDIRLINK) -l2HDMC -L/local/software/gsl/1.15/lib -lgsl -lgslcblas -lgfortran

# HiggsBounds/HiggsSignals
HB_HS_LFLAGS = -L$(LIBDIRLINK) -lHB -lHS

# ROOT
ROOTCFLAGS = `root-config --cflags`
ROOTLFLAGS = -L/home/de3u14/lib/build/hep/root/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -lm -ldl


### General compilation rule for .cpp sources
../lib/%.cpp.o : %.cpp
	$(CC) $(CCFLAGS) -c $< -o $@

include .depend_cpp
