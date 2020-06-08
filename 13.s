.intel_syntax noprefix

.text

.global broj_jedinica

#unsigned broj_jedinica(unsigned)
#eax					edi

broj_jedinica:
enter 0,0

xor eax, eax
mov esi, 1

petlja:
cmp edi, 0
je kraj

mov r8d, edi
shr edi, 1
and r8d, esi
jz petlja
#moze test edi, 1 umesto and
#test ne upisuje rezultat konjukcije
inc eax
jmp petlja

kraj:
leave
ret
