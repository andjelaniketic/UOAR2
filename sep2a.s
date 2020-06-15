.intel_syntax noprefix
.text
.global trougao

#int trougao(int a, int b, int c)
#eax		edi		esi		edx

trougao:
enter 0,0

cmp edi, 0
jle nemoze
cmp esi, 0
jle nemoze
cmp edx, 0
jle nemoze

mov r8d, edi
add r8d, esi #a+b

cmp r8d, edx
jle nemoze

sub r8d, esi
add r8d, edx #a+c

cmp r8d, esi
jle nemoze

sub r8d, edi
add r8d, edx #b+c

cmp r8d, edi
jle nemoze

mov eax, 1
jmp kraj

nemoze:
mov eax, 0

kraj:
leave
ret
