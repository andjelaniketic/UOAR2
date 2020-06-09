.intel_syntax noprefix
.text
.global kolicnik

#void kolicnik(unsigned a, unsigned b, unsigned ∗ k, unsigned ∗ o)
#				edi			esi			rdx				rcx

kolicnik:
enter 0,0

#premesta se jer ce se rdx iskoristiti za div
mov r12, rdx

mov eax, edi
cdq
div esi

mov [r12], eax
mov [rcx], edx

leave
ret
