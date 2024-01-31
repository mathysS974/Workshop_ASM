BITS 64
global _start
section .data
    msg db  'Hello, world!',0xa
    len equ $ - msg 

section .text

_start:
    mov rdx, len
    mov rsi, msg
    mov rdi, 1
    mov rax, 1
    syscall

    mov rdi, 0
    mov rax, 60
    syscall