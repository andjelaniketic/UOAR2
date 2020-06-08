.intel_syntax noprefix

.text

.global prestupna

#unsigned prestupna(unsigned)
#eax				edi

prestupna:
enter 0,0

#prebacivacemo u eax jer ima vise provera
mov eax, edi
and eax, 3
jnz nije

#jeste deljiva s 4
#provera jel deljiva sa 100
mov eax, edi
cdq
mov esi, 100
div esi

#proveravamo ostatak
cmp edx, 0
jne jeste

#provera deljivosti sa 400
mov eax, edi
cdq
mov esi, 400

div esi
cmp edx, 0
jne nije

nije:
mov eax, 0
jmp kraj

jeste:
mov eax, 1
jmp kraj

kraj:
leave
ret
