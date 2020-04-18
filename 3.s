.intel_syntax noprefix

.text 

.global razlika

#int razlika(int, int)
#eax		edi 	esi

razlika:
enter 0,0

sub edi, esi
mov eax, edi

leave
ret
