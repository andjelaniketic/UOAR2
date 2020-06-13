.text
.align 2
.global binsearch

@int binsearch(int *niz, int n, int x)
@				r0			r1	r2

binsearch:
	stmfd sp!, {fp, lr}
	mov fp, sp
	
	stmfd sp!, {r4, r5}
	
	mov r4, #0		@l=0
	sub r5, r1, #1	@d=n-1
	
loop:
	@dok je l<=d
	cmp r4, r5
	bgt not_found
	
	@srednji s=(l+d)/2
	add r1, r4, r5
	mov r1, r1, asr #1   @deljenje dvojkom i prebacivanje u r1
	
	ldr r3, [r0, r1, asl #2]  @uciavanje elementa a[s]
	
	cmp r2, r3
	beq found
	@pomeranje srednjeg u zavisnosti od rez prethodnog poredjenja
	addgt r4, r1, #1
	sublt r5, r1, #1
	
	b loop
	
found:
	mov r0, r1
	b done

not_found:
	mov r0, #-1

done:
	ldmfd sp!, {r4, r5}
	mov sp, fp
	ldmfd sp!, {fp, pc}
