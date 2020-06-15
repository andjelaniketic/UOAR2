.intel_syntax noprefix
.text
.global stranice

#int stranice(int* int* int* int)
#eax		rdi		rsi  rdx  ecx
#vraca broj trouglova

stranice:
enter 0,0

mov r8d, 0
mov r9, rdi
mov r10, rsi
mov r11, rdx

petlja:
cmp ecx, 0
jle kraj

dec ecx

mov edi, [r9+4*rcx]
mov esi, [r10+4*rcx]
mov edx, [r11+4*rcx]

push rdi
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11

call trougao

pop r11
pop r10
pop r9
pop r8
pop rcx
pop rdx
pop rsi
pop rdi

cmp eax, 0
jz petlja

inc r8d
jmp petlja

kraj:
mov eax, r8d
leave
ret
