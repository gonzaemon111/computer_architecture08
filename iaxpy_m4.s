  .file 1 "iaxpy.c"
  .section .mdebug.abi32
  .previous
  .abicalls
  .text
  .align  2
  .globl  main
  .ent  main
  .type main, @function
main:
  .frame  $fp,24,$31    # vars= 8, regs= 1/0, args= 0, gp= 8
  .mask 0x40000000,-8
  .fmask  0x00000000,0
  .set  noreorder
  .cpload $25
  .set  nomacro
  addiu $sp,$sp,-24
  sw  $fp,16($sp)
  move  $fp,$sp
  sw  $0,8($fp)
  move $6,$zero
  lw  $8,%got(x)($28)
  lw  $9,%got(y)($28)
  b $L2
  nop
$L3:
  lw  $7,0($8)
  nop #2
  sll $2,$7,1
  addu  $4,$2,$7
  lw  $2,0($9)
  nop #1
  addu  $4,$4,$2
  sw  $4,0($9)
  addiu $6,$6,1
  addiu $8,$8,4 #1
  addiu $9,$9,4 #2
$L2:
  slt $2,$6,100
  bne $2,$0,$L3
  nop
  move  $2,$0
  move  $sp,$fp
  lw  $fp,16($sp)
  addiu $sp,$sp,24
  j $31
  nop
  .set  macro
  .set  reorder
  .end  main
  .comm x,400,4
  .comm y,400,4
  .ident  "GCC: (GNU) 4.2.4"
