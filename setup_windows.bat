cd /d %~dp0

git clone https://github.com/yamachu/World.git
git clone https://github.com/yamachu/SPTK.git

if %ARCH% == x86 (
    call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86
) else (
    call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64
)

nmake /f Makefile.mak hts_lib