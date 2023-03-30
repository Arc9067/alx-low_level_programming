section .data
    hello: db 'Hello, Holberton', 10 ; null-terminated string with line feed character
    len: equ $-hello                ; string length

section .text
    global _start

_start:
    ; write message to stdout
    mov eax, 1        ; system call number for write
    mov edi, 1        ; file descriptor for stdout
    mov esi, hello    ; pointer to message string
    mov edx, len      ; message length
    syscall           ; invoke kernel to perform system call

    ; exit program with status code 0
    xor eax, eax      ; system call number for exit
    xor edi, edi      ; exit status code
    syscall           ; invoke kernel to perform system call

