.intel_syntax noprefix

.text

.global izdvoj_proste

#int izdvoj_proste(int*, int, int*)
#eax				rdi  esi  rdx

izdvoj_proste:
enter 0,0

mov r8, 0 #i, tekuci u A
mov r9, 0 #j, tekuci u B

petlja:
cmp esi, 0
jle kraj

dec esi

push rdi
push rsi
push rdx
push r8
push r9

mov edi, [rdi+4*r8]
call prost

pop r9
pop r8
pop rdx
pop rsi
pop rdi

cmp eax, 0
je dalje

mov r10d, [rdi+4*r8]
mov [rdx+4*r9], r10d
inc r9d

dalje:
inc r8d
jmp petlja

kraj:
mov eax, r9d
leave
ret
