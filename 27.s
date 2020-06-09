.intel_syntax noprefix

.text

.global obrni

#void obrni(long*, int)
#			rdi		esi

obrni:
enter 0,0

#dva pokazivaca na kraj i na pocetak niza
mov r8, 0
movsx r9, esi
dec r9 #n-1

#idemo do n/2
shr esi, 1

petlja:
cmp esi, 0
jle kraj

dec esi
mov r10, [rdi+8*r8]
mov r11, [rdi+8*r9]
mov [rdi+8*r8], r11
mov [rdi+8*r9], r10

inc r8
dec r9
jmp petlja

kraj:
leave
ret
