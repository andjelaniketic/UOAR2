.intel_syntax noprefix

.text

.global izraz
#(4a − b + 1)/2 + c/4
#int izraz(int, int, int)
#eax		edi esi edx

izraz:
enter 0,0

shl edi, 2
sub edi, esi

inc edi
shr edi, 1

shr edx, 2

add edi ,edx

mov eax, edi

leave
ret
