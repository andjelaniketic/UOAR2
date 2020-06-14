.intel_syntax noprefix
.text
.global skalarni_proizvod

#int skalarni_proizvod(int *a, int *b, int n)
#eax					rdi		rsi		edx

skalarni_proizvod:
enter 0,0

#suma je u r8d
mov r8d, 0
mov r9d, edx

petlja:
cmp r9d, 0
jle kraj

dec r9d

mov r10, [rsi+4*r9]
mov eax, [rdi+4*r9]
cdq
mul r10d

add r8d, eax
jmp petlja

kraj:
mov eax, r8d
leave
ret
