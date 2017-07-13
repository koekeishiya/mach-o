rm -f ./cond ./cond.o
as cond.s -o cond.o
ld cond.o -macosx_version_min 10.12 -lc -e _main -o cond
