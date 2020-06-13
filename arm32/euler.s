.text
.align 2
.global euler

@int euler(int n)
@r0			r0
@trazi broj celih bojeva m, t.d. 1<=m<n, uzajamno prosti sa n

euler:
	stmfd sp!, {fp, lr}
	mov fp, sp
	
	@na stek idu registri koji se koriste
	stmfd sp!, {r4-r6}
	
	@u r6 cemo cuvati rezultat
	mov r6, #0
	@u r5 stoji n
	mov r5, r0
	@u r4 stoji trenutni broj m koji ispitujemo
	mov r4, #1
	
	@petlja prolazi po m, od 1 do n-1
petlja:
	@m==n, izlazi se iz petlje
	cmp r6, r5
	beq poslednji
	
	@poziva se NZD(n,m) fja
	mov r0, r4
	mv r1, r5
	bl nzd
	
	@ako je nzd(n,m)==1, brojac++
	cmp r0, #1
	addeq r6, r6, #1
	
	add r4, r4, #1
	b petlja

poslednji:
	mov r0, r6
	
	ldmfd sp!, {r4-r6}
	mov sp, fp
	ldmfd sp!, {fp, pc}
