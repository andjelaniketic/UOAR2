.intel_syntax noprefix

.text

.global negacija

#nsigned negacija(unsigned)
#eax				edi

negacija:
enter 0,0

xor eax, eax
sub eax, edi

leave
ret
