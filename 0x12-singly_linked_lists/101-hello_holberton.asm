section .data
    fmt: db 'Hello, Holberton\n', 0 ; format string with line feed character

section .text
    global main

    extern printf

main:
    ; call printf function to print message
    mov rdi, fmt      ; first argument: format string
    xor eax, eax      ; clear EAX register
    call printf       ; call printf function

    ; return 0 to indicate successful execution
    xor eax, eax      ; clear EAX register
    ret               ; return to the calling function

