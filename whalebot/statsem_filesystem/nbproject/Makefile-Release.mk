#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Release
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/system.o \
	${OBJECTDIR}/extensions.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-Release.mk dist/Release/GNU-Linux-x86/libstatsem_filesystem.a

dist/Release/GNU-Linux-x86/libstatsem_filesystem.a: ${OBJECTFILES}
	${MKDIR} -p dist/Release/GNU-Linux-x86
	${RM} dist/Release/GNU-Linux-x86/libstatsem_filesystem.a
	${AR} rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libstatsem_filesystem.a ${OBJECTFILES} 
	$(RANLIB) dist/Release/GNU-Linux-x86/libstatsem_filesystem.a

${OBJECTDIR}/system.o: nbproject/Makefile-${CND_CONF}.mk system.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -I/usr/include/boost-1_39 -MMD -MP -MF $@.d -o ${OBJECTDIR}/system.o system.cpp

${OBJECTDIR}/extensions.o: nbproject/Makefile-${CND_CONF}.mk extensions.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -O2 -Wall -I/usr/include/boost-1_39 -MMD -MP -MF $@.d -o ${OBJECTDIR}/extensions.o extensions.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Release
	${RM} dist/Release/GNU-Linux-x86/libstatsem_filesystem.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
