.intel_syntax noprefix

.text

.global suma_razlika

#int suma_razlika(int*, int)
#eax				rdi esi

suma_razlika:
enter 0,0

xor eax, eax

mov r8, 1
mov r9, 0
dec esi

petlja:
cmp r8d, esi
je kraj

mov r10d, [rdi+4*r9]
mov rdx, [rdi+4*r8]
sub edx, r10d

cmp rdx, 0
jl negativan

dalje:
add eax, edx
inc r8
inc r9
jmp petlja

negativan:
neg edx
jmp dalje

kraj:
leave
ret

