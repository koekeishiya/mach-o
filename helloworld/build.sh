rm -f ./hello ./hello.o
as hello.s -o hello.o
ld hello.o -macosx_version_min 10.12 -lc -e _main -o hello
