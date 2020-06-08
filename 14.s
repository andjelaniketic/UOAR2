.intel_syntax noprefix

.text

.global deljiv_16

#int deljiv_16(int)
#eax			edi

deljiv_16:
enter 0,0

mov esi, 15

and edi, esi
jz jeste

nije:
mov eax, 0
jmp kraj

jeste:
mov eax, 1
jmp kraj

kraj:
leave
ret
