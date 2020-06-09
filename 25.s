.intel_syntax noprefix
.text
.global suma_niza

#int suma_niza(int*, int)
#eax			rdi	 esi

suma_niza:
enter 0,0

xor eax, eax
#prosirivanje na 64b
movsx rsi, esi

petlja:
cmp esi, 0
jle kraj

dec esi
add eax, [rdi+4*rsi]
jmp petlja

kraj:
leave
ret
