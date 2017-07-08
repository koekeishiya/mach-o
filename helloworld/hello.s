.data
_hello:
    .asciz "hello world %d\n"

.text
    .globl _main

_phello:
    pushq %rbp
    movq %rsp, %rbp
    movb $1, %al
    movl $42, %esi
    movq _hello@GOTPCREL(%rip), %rdi
    callq _printf
    popq %rbp
    retq

_main:
    subq $8, %rsp
    callq _phello
    movq $0x2000001, %rax
    xorq %rdi, %rdi
    syscall
