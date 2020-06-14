.intel_syntax noprefix
.text
.global broj_nula

#unsigned broj_nula(unsigned x)
#eax				edi

broj_nula:
enter 0,0

#maska = 1
#radim x & maska i ako je 1, ide dalje u petlju
#ako je 0 uvecava se brojac brojac nula 
#ovako sve ok x != 0

#maska
mov r8d, 1
#brojac
mov r9d, 0

petlja:
cmp edi, 0
jle kraj

test edi, r8d
jz jeste

shr edi, 1
jmp petlja

jeste:
inc r9d
shr edi, 1
jmp petlja

kraj:
mov eax, r9d
leave
ret
