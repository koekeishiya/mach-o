.cstring
    _str_true:
        .asciz "condition was true.\n"
    _str_false:
        .asciz "condition was false!!!\n"

.text
    .globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp
    movq $5, %rdi
    cmpq $0, %rdi
    je _br_false
    leaq _str_true(%rip), %rdi
    callq _printf
    jmp _br_end
_br_false:
    leaq _str_false(%rip), %rdi
    callq _printf
_br_end:
    xorq %rax, %rax
    popq %rbp
    retq
