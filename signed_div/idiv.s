.cstring
    _fmt_num:
        .asciz "%d %d"
    _enter_num:
        .asciz "enter two numbers to divide (dividend divisor): "
    _str:
        .asciz "%d / %d is %d.\n"

.text
    .globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    leaq _enter_num(%rip), %rdi
    callq _printf
    xorl %eax, %eax
    leaq _fmt_num(%rip), %rdi
    leaq -4(%rbp), %rsi
    leaq -8(%rbp), %rdx
    callq _scanf
    xorl %eax, %eax

    movl -4(%rbp), %esi
    movl -8(%rbp), %ecx
    movl %esi, %eax
    cltd
    idivl %ecx
    movl %ecx, %edx
    movl %eax, %ecx
    xorl %eax, %eax
    leaq _str(%rip), %rdi
    callq _printf
    xorl %eax, %eax

    movq %rbp, %rsp
    popq %rbp
    retq
