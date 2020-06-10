.intel_syntax noprefix

.text

.global zbir_apsolutnih

#int zbir_apsolutnih(int*, int)
#eax				rdi		esi

zbir_apsolutnih:
enter 0,0

xor eax, eax

petlja:
cmp esi, 0
je kraj

dec esi

mov r8d, [rdi+4*rsi]
cmp r8d, 0
jl negativan

add eax, r8d
jmp petlja

negativan:
neg r8d
add eax, r8d
jmp petlja

kraj:
leave
ret
