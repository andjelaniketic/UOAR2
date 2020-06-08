.intel_syntax noprefix

.text

.global min

#unsigned min(unsigned, unsigned, unsigned)
#eax			edi		esi			edx

min:
enter 0,0

mov eax, edi
cmp eax, esi
jge drugi

prvi:
cmp eax, edx
jge treci
jmp kraj

drugi:
mov eax, esi
cmp eax, edx
jge treci
jmp kraj

treci:
mov eax, edx

kraj:
leave
ret
