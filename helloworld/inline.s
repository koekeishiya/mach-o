.data
_hello:
    .asciz "hello world %d\n"

.text
    .globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp
    movb $1, %al
    movl $42, %esi
    movq _hello@GOTPCREL(%rip), %rdi
    callq _printf
    xorq %rax, %rax
    popq %rbp
    retq
