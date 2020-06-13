.text
.align 2
.global max

@int max(int, int)
@r0		r0	  r1

max:
	stmfd sp!, {fp, lr}
	mov fp, sp
	
	cmp r0, r1
	bgt done
	@branch if greater than (0)
	mov r0, r1
	
done:
	mov sp, fp
	ldmfd sp!, {fp, pc}
