.intel_syntax noprefix
.text
.global prost

#unsigned prost(unsigned)
#eax			edi

prost:
enter 0,0

#delimo n sa brojevima od 2 do n/2
mov ecx, 2
#ecx ide od 2 do n/2
#esi je n/2
mov esi, edi
shr esi, 1

petlja:
cmp ecx, esi
ja jeste_prost

mov eax, edi
cdq
div ecx

cmp edx, 0
je nije_prost

inc ecx
jmp petlja

jeste_prost:
mov eax, 1
jmp kraj

nije_prost:
mov eax, 0

kraj:
leave
ret
