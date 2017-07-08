rm -f ./input ./input.o
as input.s -o input.o
ld input.o -macosx_version_min 10.12 -lc -e _main -o input
