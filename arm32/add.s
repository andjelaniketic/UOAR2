.text
.align 2
.global add
	@int add(int x, int y)
	@		r0		r1
	
add:
	stmfd sp!, {fp, lr}
	mov fp, sp
	
	add r0, r0, r1
	
	mov sp, fp
	ldmfd sp!, {fp, pc}
