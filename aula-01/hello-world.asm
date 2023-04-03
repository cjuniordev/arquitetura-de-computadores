.macro	encerra
	li $v0, 10
	syscall
.end_macro

.macro	printf(%string)
	la $a0, %string
	li $v0, 4
	syscall
.end_macro

.data

 msg: .asciiz "Olá, mundo!"
 
.text

printf(msg)

encerra
