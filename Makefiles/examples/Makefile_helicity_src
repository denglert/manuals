#####################################################
## -- Objects/libraries needed for main programs-- ##
#####################################################

OBJ_rh_tautau = $(CMN) ../lib/test_rh_tautau.cpp.o ../lib/HelicityTools.cpp.o ../lib/rh_tautau.f.o ../lib/rambo.f.o ../lib/ranmar.f.o ../lib/vegas.f.o 
OBJ_rh_6f_k0_1001     = $(CMN) ../lib/HelicityTools.cpp.o ../lib/FortranUtils.f.o ../lib/test_rh_6f_k0_1001.cpp.o     ../lib/rh_6f_k0_1001.f.o
OBJ_rh_6f_k0_physical = $(CMN) ../lib/HelicityTools.cpp.o ../lib/FortranUtils.f.o ../lib/test_rh_6f_k0_physical.cpp.o ../lib/rh_6f_k0_physical.f.o

OBJ_test = $(CMN) ../lib/HelicityTools.cpp.o ../lib/main_test.cpp.o ../lib/rh_tautau.f.o ../lib/rambo.f.o ../lib/ranmar.f.o ../lib/vegas.f.o ../lib/rh_6f_k0_1001.f.o

OBJ_CUBA = $(CMN) ../lib/test_cuba.cpp.o ../lib/vegas.f.o

OBJ_test_HelicityTools = $(CMN) ../lib/test_HelicityTools.cpp.o ../lib/HelicityTools.cpp.o ../lib/rh_tautau.f.o

OBJ_test_FortranUtils = ../lib/TestFortranUtils.f.o ../lib/FortranUtils.f.o

OBJ_test_PhaseSpaceTools = $(CMN) ../lib/test_PhaseSpaceTools.cpp.o ../lib/PhaseSpaceTools.cpp.o ../lib/UtilFunctions.cpp.o

OBJ_test_PhaseSpaceIntegration = $(CMN) ../lib/test_PhaseSpaceIntegration.cpp.o ../lib/PhaseSpaceTools.cpp.o
OBJ_test_PhaseSpaceIntegration2 = $(CMN) ../lib/test_PhaseSpaceIntegration2.cpp.o ../lib/PhaseSpaceTools.cpp.o
OBJ_test_PhaseSpaceIntegration3 = $(CMN) ../lib/test_PhaseSpaceIntegration3.cpp.o ../lib/PhaseSpaceTools.cpp.o

OBJ_LifeTime_Muon_Polarized = $(CMN) ../lib/LifeTime_Muon_Polarized.cpp.o ../lib/PhaseSpaceTools.cpp.o

CMN = ../lib/UtilFunctions.cpp.o 

#########################
## -- Main programs -- ##
#########################
## Linking
LINKER = ifort

binaries : ../bin/test_rh_tautau ../bin/test_rh_6f_k0_1001 ../bin/test_rh_6f_k0_physical ../bin/test_cuba ../bin/main_test ../bin/test_HelicityTools ../bin/test_FortranUtils ../bin/test_PhaseSpaceTools ../bin/test_PhaseSpaceIntegration ../bin/test_PhaseSpaceIntegration2 ../bin/test_PhaseSpaceIntegration3 ../bin/LifeTime_Muon_Polarized

../bin/test_rh_tautau : $(OBJ_rh_tautau)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/test_rh_6f_k0_physical : $(OBJ_rh_6f_k0_physical)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/test_rh_6f_k0_1001 : $(OBJ_rh_6f_k0_1001)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/test_HelicityTools: $(OBJ_test_HelicityTools)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/test_PhaseSpaceTools: $(OBJ_test_PhaseSpaceTools)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/LifeTime_Muon_Polarized: $(OBJ_LifeTime_Muon_Polarized)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) $(CUBALFLAGS)
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) $(CUBALFLAGS) -o $@ $^
endif

../bin/test_PhaseSpaceIntegration: $(OBJ_test_PhaseSpaceIntegration)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) $(CUBALFLAGS)
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) $(CUBALFLAGS) -o $@ $^
endif

../bin/test_PhaseSpaceIntegration2: $(OBJ_test_PhaseSpaceIntegration2)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) $(CUBALFLAGS)
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) $(CUBALFLAGS) -o $@ $^
endif

../bin/test_PhaseSpaceIntegration3: $(OBJ_test_PhaseSpaceIntegration3)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) $(CUBALFLAGS)
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) $(CUBALFLAGS) -o $@ $^
endif

../bin/test_FortranUtils: $(OBJ_test_FortranUtils)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/main_test : $(OBJ_test)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) 
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) -o $@ $^
endif

../bin/test_cuba : $(OBJ_CUBA)
ifeq ($(LINKER),ifort)
	$(FC) -o $@ $^ $(FLFLAGS) $(CUBALFLAGS)
endif
ifeq ($(LINKER),g++)
	$(CC) $(CLFLAGS) $(CUBALFLAGS) -o $@ $^
endif

#########################################################

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

#########################################################

#################
### -- C++ -- ###
#################

CC     = g++
#CC     = icc

CCFLAGS = -I../inc/ -MMD -MF .depend_cpp
CLFLAGS = $(ROOTLFLAGS)

# ROOT flags can also be set to environment variables
ROOTCFLAGS = `root-config --cflags`
ROOTLFLAGS = -L/home/de3u14/lib/build/hep/root/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -limf -lm -ldl

# CUBAFLAGS flags can also be set to environment variables
CUBACFLAGS = -I/home/de3u14/lib/build/hep/Cuba/Cuba-4.2
CUBALFLAGS = -L/home/de3u14/lib/build/hep/Cuba/Cuba-4.2 -lcuba

#####################
### Compilation rule for specific .cpp sources

../lib/test_cuba.cpp.o : test_cuba.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) $(CUBACFLAGS) -c $< -o $@

../lib/test_PhaseSpaceIntegration.cpp.o : test_PhaseSpaceIntegration.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) $(CUBACFLAGS) -c $< -o $@

../lib/test_PhaseSpaceIntegration2.cpp.o : test_PhaseSpaceIntegration2.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) $(CUBACFLAGS) -c $< -o $@

../lib/test_PhaseSpaceIntegration3.cpp.o : test_PhaseSpaceIntegration3.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) $(CUBACFLAGS) -c $< -o $@

../lib/LifeTime_Muon_Polarized.cpp.o : LifeTime_Muon_Polarized.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) $(CUBACFLAGS) -c $< -o $@

### General compilation rule for .cpp sources
../lib/%.cpp.o : %.cpp
	$(CC) $(ROOTCFLAGS) $(CCFLAGS) -c $< -o $@

include .depend_cpp
