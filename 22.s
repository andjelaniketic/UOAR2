.intel_syntax noprefix
.text
.global zameni

#void zameni(int*, int*)
#			 rdi	rsi

zameni:
enter 0,0

mov eax, [rdi]
mov ecx, [rsi]

mov [rdi], ecx
mov [rsi], eax

leave
ret
