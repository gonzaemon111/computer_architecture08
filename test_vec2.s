.file   1 "test_vec2.c"
.section .mdebug.abi32
.previous
.abicalls
.text
.align  2
.globl  veclen
.ent    veclen
.type   veclen, @function
veclen:
.frame  $sp,0,$31       # vars= 0, regs= 0/0, args= 0, gp= 0
.mask   0x00000000,0
.fmask  0x00000000,0
.set    noreorder
.set    nomacro

lw  $2,0($4)
j   $31
nop
.set    macro
.set    reorder
.end    veclen
.align  2
.globl  getvecel
.ent    getvecel
.type   getvecel, @function
getvecel:
.frame  $sp,0,$31       # vars= 0, regs= 0/0, args= 0, gp= 0
.mask   0x00000000,0
.fmask  0x00000000,0
.set    noreorder
.set    nomacro

sll $5,$5,2
addu    $5,$5,$4
lw  $2,4($5)
j   $31
nop
.set    macro
.set    reorder
.end    getvecel
.align  2
.globl  veccal
.ent    veccal
.type   veccal, @function
veccal:
.frame  $sp,48,$31      # vars= 0, regs= 6/0, args= 16, gp= 8
.mask   0x801f0000,-4
.fmask  0x00000000,0
.set    noreorder
.cpload $25
.set    nomacro

addiu   $sp,$sp,-48
sw  $31,44($sp)
sw  $20,40($sp)
sw  $19,36($sp)
sw  $18,32($sp)
sw  $17,28($sp)
sw  $16,24($sp)
.cprestore  16
lw  $25,%call16(veclen)($28)
move    $19,$5
jalr    $25
move    $20,$4
lw  $28,16($sp)
blez    $2,$L9
move    $18,$2
lw  $16,0($19)
move    $17,$0
$L8:
lw  $25,%call16(getvecel)($28)
move    $5,$17
jalr    $25
move    $4,$20
addu    $16,$16,$2
addiu   $17,$17,1
lw  $28,16($sp)
bne $17,$18,$L8
sw  $16,0($19)
$L9:
lw  $31,44($sp)
lw  $20,40($sp)
lw  $19,36($sp)
lw  $18,32($sp)
lw  $17,28($sp)
lw  $16,24($sp)
j   $31
addiu   $sp,$sp,48
.set    macro
.set    reorder
.end    veccal
.align  2
.globl  main
.ent    main
.type   main, @function
main:
.frame  $sp,40,$31      # vars= 8, regs= 1/0, args= 16, gp= 8
.mask   0x80000000,-8
.fmask  0x00000000,0
.set    noreorder
.cpload $25
.set    nomacro

addiu   $sp,$sp,-40
sw  $31,32($sp)
.cprestore  16
lw  $4,%got(v.1503)($28)
lw  $25,%call16(veccal)($28)
li  $2,500          # 0x1f4
sw  $2,%lo(v.1503)($4)
addiu   $5,$sp,24
jalr    $25
addiu   $4,$4,%lo(v.1503)
lw  $28,16($sp)
lw  $31,32($sp)
move    $2,$0
j   $31
addiu   $sp,$sp,40
.set    macro
.set    reorder
.end    main
.local  v.1503
.comm   v.1503,4004,4
.ident  "GCC: (GNU) 4.2.4"
