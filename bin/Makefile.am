
EXTRA_DIST = Makefile.mak

AM_CPPFLAGS = -I @top_srcdir@/include -I @top_srcdir@/WORLD/src -I @top_srcdir@/SPTK/include

bin_PROGRAMS = hts_engine

hts_engine_SOURCES = hts_engine.c 

hts_engine_LDADD = ../lib/libHTSEngine.a ../WORLD/build/libworld.a ../SPTK/lib/libSPTK.a

DISTCLEANFILES = *.log *.out *~

MAINTAINERCLEANFILES = Makefile.in

CCLD = g++
