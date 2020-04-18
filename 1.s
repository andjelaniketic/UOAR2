.intel_syntax noprefix

.data
fmt: .asciz "Hello, world!\n"
.global main

main:

enter 0,0

lea rdi, fmt
call printf

leave
ret
