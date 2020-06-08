.intel_syntax noprefix

.text

.global suma_cifara

#unsigned suma_cifara(unsigned)
#eax					edi

suma_cifara:
enter 0,0

mov esi, 0
mov eax, edi
mov r8d, 10

petlja:
cmp eax, 0
je kraj

cdq
div r8d

add esi, edx
jmp petlja

kraj:
mov eax, esi
leave
ret
