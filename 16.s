.intel_syntax noprefix

.text

.global najveca_cifra

#unsigned najveca_cifra(unsigned)
#eax					edi

najveca_cifra:
enter 0,0

mov esi, 10
mov eax, edi
cdq
div esi
mov r8d, edx

petlja:
cmp eax, 0
jz kraj

cdq
div esi
#eax = eax/esi
#edx = eax%esi
cmp r8d, edx
jge petlja

mov r8d, edx
jmp petlja


kraj:
mov eax, r8d
leave
ret
