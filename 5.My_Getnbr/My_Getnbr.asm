global my_Getnbr

section .text

my_Getnbr:
    _start:
        xor r8, r8
        xor rax, rax
        xor rcx, rcx

    get_loop:
        movzx r8, byte[rdi + rcx]

        cmp r8, 0
        je end_get
        cmp r8, '0'
        jl end_get
        cmp r8, '9'
        jg end_get
        sub r8, '0'
        imul rax, rax, 10  ; rax *= 10
        add rax, r8
        inc rcx
        jmp get_loop

    end_get:
        ret