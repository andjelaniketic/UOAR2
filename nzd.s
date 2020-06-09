.intel_syntax  noprefix
.text
.global nzd

#unsigned nzd(unsigned, unsigned)
#eax			edi 	esi

nzd:
enter 0,0

petlja:
cmp esi, 0
je kraj

mov eax, edi
cdq
div esi
mov edi, esi
mov esi, edx
jmp petlja


kraj:
mov eax, edi
leave
ret
