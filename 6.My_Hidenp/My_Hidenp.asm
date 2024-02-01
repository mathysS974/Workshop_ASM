BITS 64
global My_Hidenp

section .text
My_Hidenp:
    _start:
        xor rax, rax
        xor r8, r8
        xor r9, r9

    _loop:
        cmp byte[rdi + r8], 0
        je _sucess
        ;inc r8
        cmp byte[rsi + r9], 0
        je _failure
        ;inc r9
        cmp [rdi + r8], [rsi + r9]
        je _equal
        jmp _not_equal

    _equal:
        inc r8
        inc r9
        jmp _loop

    _not_equal:
        inc r9
        jmp _loop

    _sucess:
        mov rax, 1
        ret

    _failure:
        mov rax, 0
        ret