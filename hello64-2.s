.intel_syntax noprefix

.global _start

.text
_start:
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, offset message
    mov     rdx, 13
    syscall

    mov     rax, 60
    mov     rdi, 0
    syscall

.section .rodata
message: .asciz "Hello, world\n"
