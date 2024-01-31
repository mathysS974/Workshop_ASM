BITS 64
global my_Revstr
section .text

my_Revstr:
    init_rev:
        xor r8, r8
        xor rcx, rcx
        xor rax, rax

    rev_loop_push:
        mov r8b, [rdi + rcx]
        cmp r8b, 0
        jne rev_loop_push_continue
        jmp rev_loop_pop

    rev_loop_push_continue:
        push r8
        inc rcx
        jmp rev_loop_push

    rev_loop_pop:
        pop r8
        mov [rdi + rax], r8
        inc rax
        dec rcx
        cmp rcx, 0
        jne rev_loop_pop
        ret