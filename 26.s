.intel_syntax noprefix
.text
.global najveci

#int najveci(int*, int)
#eax		rdi		esi

najveci:
enter 0,0

movsx rsi, esi

cmp esi, 0
jle prazan_niz

#current max je poslednji u nizu
dec esi
mov eax, [rdi+4*rsi]

petlja:
cmp esi, 0
jle kraj

dec esi

cmp eax, [rdi+4*rsi]
jge petlja

mov eax, [rdi+4*rsi]
jmp petlja

prazan_niz:
xor eax, eax

kraj:
leave
ret
