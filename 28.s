.intel_syntax noprefix

.text

.global fibonaci

#void fibonaci(int, int*)
#				edi rsi

fibonaci:
enter 0,0

cmp edi, 0
jle kraj

mov eax, 1
mov [rsi], eax
cmp edi, 1
je kraj

mov [rsi+4], eax

mov rcx, 2  #i
mov r8, 1	#i-1
mov r9, 0	#i-2

sub edi, 2

petlja:
cmp edi, 0
je kraj

dec edi

mov r10d, [rsi+4*r8]  #a[i-1]
add r10d, [rsi+4*r9]  #a[i-2]
mov [rsi+4*rcx], r10d #a[i] = a[i-1]+a[i-2]

inc ecx
inc r8d
inc r9d
jmp petlja

kraj:
leave
ret
