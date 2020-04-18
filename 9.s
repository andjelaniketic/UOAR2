.intel_syntax noprefix

.text

.global deljiv_4

deljiv_4:
enter 0,0

xor eax, eax

and edi, 3
jne kraj

mov eax, 1
jmp kraj

kraj:
leave
ret
