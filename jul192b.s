.intel_syntax noprefix
.text
.global skalarni_provera

#int skalarni_provera(int *a, int n, int *b, int m, int *rez)
#eax					rdi		esi		rdx		ecx		r8

skalarni_provera:
enter 0,0

cmp esi, ecx
jz jednake

mov eax, 0
jmp kraj

jednake:
#pozivamo skalarni_proizvod
#znaci premestamo na stek sve sto se moze koristiti

mov r9d, esi
mov rsi, rdx
mov edx, r9d

push rdi
push rsi
push rdx
push rcx
push r8

call skalarni_proizvod

pop r8
pop rcx
pop rdx
pop rsi
pop rdi

mov [r8], eax
mov eax, 1

kraj:
leave
ret
