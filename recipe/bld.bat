CD src

copy Makefile.inc.i686_pc_mingw32 Makefile.inc

nmake esmumps
nmake check

CD ..

if not exist "%PREFIX%\lib\" mkdir %PREFIX%\lib\
if not exist "%PREFIX%\bin\" mkdir %PREFIX%\bin\
if not exist "%PREFIX%\include\" mkdir %PREFIX%\include\

copy lib\* %PREFIX%\lib\
copy bin\* %PREFIX%\bin\
copy include\* %PREFIX%\include\
