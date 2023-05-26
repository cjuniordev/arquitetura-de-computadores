.data
	idade: .word 0
	msg1: .asciiz "Digite sua idade: "
	msg2: .asciiz "Sua idade e: "
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

# imprime mensagem 1
la $a0, msg1
li $v0, 4
syscall

# le inteiro do teclado
li $v0, 5
syscall

# move o registrado para a variavel
sw $v0, idade

# imprime mensagem 2
la $a0, msg2
li $v0, 4
syscall

# imprime idade
lw $a0, idade
li $v0, 1
syscall

encerra