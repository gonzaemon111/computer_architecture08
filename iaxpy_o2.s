	.file	1 "iaxpy.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.text
	.align	2
	.globl	main
	.ent	main
	.type	main, @function
main:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro

	lw	$6,%got(x)($28)
	lw	$5,%got(y)($28)
	addiu	$7,$6,400
$L2:
	lw	$4,0($6)
	lw	$3,0($5)
	sll	$2,$4,1
	addu	$2,$2,$4
	addu	$3,$3,$2
	addiu	$6,$6,4
	sw	$3,0($5)
	bne	$6,$7,$L2
	addiu	$5,$5,4

	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	main

	.comm	x,400,4

	.comm	y,400,4
	.ident	"GCC: (GNU) 4.2.4"
