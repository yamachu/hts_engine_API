
CC = cl

CFLAGS = /O2 /Ob2 /Oi /Ot /Oy /GT /GL /TC /I ..\include /I ..\World\src /I ..\SPTK\include
LFLAGS = /LTCG

CORES = HTS_audio.obj HTS_engine.obj HTS_gstream.obj HTS_label.obj HTS_misc.obj HTS_model.obj HTS_pstream.obj HTS_sstream.obj HTS_vocoder.obj WORLD_vocoder.obj
EXTENDS =	..\SPTK\bin\mgc2sp\_mgc2sp.obj \
			..\SPTK\bin\c2sp\_c2sp.obj \
			..\SPTK\bin\mgc2mgc\_mgc2mgc.obj \
			..\SPTK\bin\gc2gc\_gc2gc.obj \
			..\SPTK\bin\gnorm\_gnorm.obj \
			..\SPTK\bin\ignorm\_ignorm.obj \
			..\SPTK\bin\freqt\_freqt.obj \
			..\SPTK\bin\fftr\_fftr.obj \
			..\SPTK\bin\fft\_fft.obj \
			..\SPTK\lib\getmem.obj \
			..\SPTK\lib\movem.obj \
			..\SPTK\lib\fillz.obj \
			..\World\src\synthesis.obj \
			..\World\src\cheaptrick.obj \
			..\World\src\fft.obj \
			..\World\src\common.obj \
			..\World\src\matlabfunctions.obj

all: hts_engine_API.lib

hts_engine_API.lib: $(CORES) $(EXTENDS)
	lib $(LFLAGS) /OUT:$@ $(CORES) $(EXTENDS)

.c.obj:
	$(CC) $(CFLAGS) /c $<

clean:
	del *.lib
	del *.obj
