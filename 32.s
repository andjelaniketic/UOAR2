.intel_syntax noprefix
.text
.global najveci_3

#int najveci 3(int ∗ A, int n)
#eax			rdi		esi

najveci_3:
enter 0,0

movsx rsi, esi
cmp esi, 0
jle nema

#trojka za deljenje
mov r8d, 3

#ubacujemo poslednji clan kao najveci ako izspunjava uslob
petlja1:
cmp esi, 0
jle nema

dec esi

mov eax, [rdi +4*rsi]
cdq
div r8d

cmp edx, 0
jnz petlja1
#ako nije ostatak nula, idi na sl korak petlje
#inace upisi u r9 trenutni el niza
mov r9d, [rdi+4*rsi]

petlja2:
cmp esi, 0
jle kraj

dec esi

mov eax, [rdi+4*rsi]
cdq
div r8d

cmp edx, 0
jnz petlja2
#poredimo trenutni sa prethodno dobijenim max
cmp r9d, [rdi+4*rsi]
jae petlja2

mov r9d, [rdi + 4*rsi]
jmp petlja2

nema:
mov eax, 0

kraj:
mov eax, r9d
leave
ret
