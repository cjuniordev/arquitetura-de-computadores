.data
	mensagemSeuNome: .asciiz "Digite seu nome: "
	mensagemBemVindo: .asciiz "\nSeja bem-vindo: "
	nome: .space 40
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

la $a0, mensagemSeuNome
li $v0, 4
syscall

la $a1, 40
la $a0, nome
li $v0, 8
syscall

la $a0, mensagemBemVindo
li $v0, 4
syscall

la $a0, nome
li $v0, 4
syscall

encerra
