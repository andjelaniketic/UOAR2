.intel_syntax noprefix

.text

.global faktorijel

#unsigned faktorijel(unsigned)
#eax					edi

faktorijel:
enter 0,0

mov eax, edi
dec edi

petlja:
cmp edi, 0
jz kraj

cdq
mul edi

dec edi
jmp petlja

kraj:
leave
ret
