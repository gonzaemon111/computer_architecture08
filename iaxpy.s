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
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	
	addiu	$sp,$sp,-24
	sw	$fp,16($sp)
	move	$fp,$sp
	sw	$0,8($fp)
	b	$L2
	nop

$L3:
	lw	$5,8($fp)
	lw	$2,8($fp)
	lw	$3,%got(x)($28)
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$3,0($2)
	nop
	move	$2,$3
	sll	$2,$2,1
	addu	$4,$2,$3
	lw	$2,8($fp)
	lw	$3,%got(y)($28)
	sll	$2,$2,2
	addu	$2,$2,$3
	lw	$2,0($2)
	nop
	addu	$4,$4,$2
	lw	$3,%got(y)($28)
	sll	$2,$5,2
	addu	$2,$2,$3
	sw	$4,0($2)
	lw	$2,8($fp)
	nop
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$2,8($fp)
	nop
	slt	$2,$2,100
	bne	$2,$0,$L3
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main

	.comm	x,400,4

	.comm	y,400,4
	.ident	"GCC: (GNU) 4.2.4"
