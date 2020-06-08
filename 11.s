.intel_syntax noprefix

.text

.global suma_n

#unsigned suma_n(int)
#eax		edi

suma_n:
enter 0,0

#suma = 0
xor eax, eax

petlja:
#edi umanjujemo do 0
cmp edi, 0
je kraj

add eax, edi
dec edi
jmp petlja

kraj:
leave
ret
