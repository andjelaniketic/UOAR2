.intel_syntax noprefix
.text
.global faktorijel

#long faktorijel(long n)
#eax				edi

faktorijel:
enter 0,0

mov eax, 0
add eax, edi

petlja:
cmp edi, 1
jle kraj

dec edi

cdq
mul edi

jmp petlja

kraj:
leave
ret
