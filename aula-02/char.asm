.data
	inicial: .byte 'C'
	codigo: .word 67
	inicial2: .byte
	msg1: .asciiz "Minha inicial maiscula: "
	msg2: .asciiz "\nMinha inicial minuscula: "
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

la $a0, msg1
li $v0, 4
syscall

lb $a0, inicial
li $v0, 11
syscall

la $a0, msg2
li $v0, 4
syscall

lb $t0, codigo
addi $t0, $t0, 32

sb $t0, inicial2

lb $a0, inicial2
li $v0, 11
syscall

encerra
