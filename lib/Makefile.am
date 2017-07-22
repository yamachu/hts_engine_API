
EXTRA_DIST = Makefile.mak

AM_CPPFLAGS = -I @top_srcdir@/include -I @top_srcdir@/World/src -I @top_srcdir@/SPTK/include
SUBDIRS = ../SPTK ../World
AUTOMAKE_OPTIONS = subdir-objects

lib_LIBRARIES = libHTSEngine.a

libHTSEngine_a_SOURCES = HTS_audio.c  HTS_engine.c  HTS_hidden.h  HTS_misc.c  \
                         HTS_pstream.c  HTS_sstream.c  HTS_model.c  HTS_vocoder.c \
                         HTS_gstream.c HTS_label.c WORLD_vocoder.c \
                         ../SPTK/bin/mgc2sp/_mgc2sp.c \
						../SPTK/bin/c2sp/_c2sp.c \
						../SPTK/bin/mgc2mgc/_mgc2mgc.c \
						../SPTK/bin/gc2gc/_gc2gc.c \
						../SPTK/bin/gnorm/_gnorm.c \
						../SPTK/bin/ignorm/_ignorm.c \
						../SPTK/bin/freqt/_freqt.c \
						../SPTK/bin/fftr/_fftr.c \
						../SPTK/bin/fft/_fft.c \
						../SPTK/lib/getmem.c \
						../SPTK/lib/movem.c \
						../SPTK/lib/fillz.c \
						../World/src/synthesis.cpp \
						../World/src/cheaptrick.cpp \
						../World/src/fft.cpp \
						../World/src/common.cpp \
						../World/src/matlabfunctions.cpp

DISTCLEANFILES = *.log *.out *~

MAINTAINERCLEANFILES = Makefile.in
