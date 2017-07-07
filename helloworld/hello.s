.data
_hello:
    .asciz "hello world %d\n"

.text
    .globl _main

_main:
    subq $8, %rsp

	pushq %rbp
	movq %rsp, %rbp

	leaq _hello(%rip), %rdi
	movb $1, %al
    movq $42, %rsi
	callq _printf
	movb $0, %al

    movq $0, %rdi
    callq _exit
