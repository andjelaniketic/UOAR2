.intel_syntax noprefix
.text
.global ojler

#unsigned ojler(unsigned)
#eax			edi

ojler:
enter 0,0

#r12d za rezultat
xor r12d, r12d
#esi je brojac
mov esi,1

petlja:
cmp esi, edi
jae kraj

#idu na stek registri koje ce koristiti nzd
#i to u 64bit velicini
push rsi
push rdi

call nzd

pop rdi
pop rsi

#proveravamo jel nzd vratio 1
cmp eax, 1
jnz dalje

inc r12d

dalje:
inc esi
jmp petlja

kraj:
mov eax, r12d
leave
ret
