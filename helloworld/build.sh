rm -f ./hello ./hello.o ./inline ./inline.o
as hello.s -o hello.o
ld hello.o -macosx_version_min 10.12 -lc -e _main -o hello

as inline.s -o inline.o
ld inline.o -macosx_version_min 10.12 -lc -e _main -o inline
