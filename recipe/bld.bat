CD src

copy Make.inc\Makefile.inc.i686_pc_mingw32 Makefile.inc

CC=clang AR=llvm-ar RANLIB=llvm-ranlib nmake esmumps
CC=clang AR=llvm-ar RANLIB=llvm-ranlib nmake check

CD ..

if not exist "%PREFIX%\lib\" mkdir %PREFIX%\lib\
if not exist "%PREFIX%\bin\" mkdir %PREFIX%\bin\
if not exist "%PREFIX%\include\" mkdir %PREFIX%\include\

copy lib\* %PREFIX%\lib\
copy bin\* %PREFIX%\bin\
copy include\* %PREFIX%\include\
