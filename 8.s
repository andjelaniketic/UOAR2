.intel_syntax noprefix

.text

.global min

min:
enter 0,0

cmp edi, esi
jle prvi

mov eax, esi
jmp kraj

prvi:
mov eax, edi
jmp kraj

kraj:
leave
ret
