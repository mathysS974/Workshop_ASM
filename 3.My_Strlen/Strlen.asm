BITS 64
global my_Strlen
section .text

    my_Strlen:
        xor rax, rax
        jmp _loop

    _inc_loop:
        Inc rax

    _loop:
        cmp byte[rdi + rax], 0
        jne _inc_loop
        ret