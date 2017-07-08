.cstring
_in_format:
    .asciz "%d"
_in_msg:
    .asciz "enter a number: "
_out_msg:
    .asciz "you entered: %d\n"

.text
    .globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp

    subq $16, %rsp

    movb $0, %al
    leaq _in_msg(%rip), %rdi
    callq _printf

    movb $0, %al
    leaq _in_format(%rip), %rdi
    leaq -4(%rbp), %rsi
    callq _scanf

    movb $0, %al
    leaq _out_msg(%rip), %rdi
    movq -4(%rbp), %rsi
    callq _printf
    xorq %rax, %rax

    addq $16, %rsp

    popq %rbp
    retq
