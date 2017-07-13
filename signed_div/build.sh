rm -f ./idiv ./idiv.o
as idiv.s -o idiv.o
ld idiv.o -macosx_version_min 10.12 -lc -e _main -o idiv
