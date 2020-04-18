.intel_syntax noprefix

.text

.global max

max:
enter 0,0

cmp edi, esi
jge prvi
jmp drugi


prvi:
mov eax, edi
jmp kraj

drugi:
mov eax, esi
jmp kraj

kraj:
leave
ret
