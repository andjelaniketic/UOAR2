.intel_syntax noprefix

.text

.global suma

#int suma (int int)
# eax		edi esi

suma:
enter 0,0

add edi, esi
mov eax, edi

leave
ret
