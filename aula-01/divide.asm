.data
	resultado: .asciiz "O resultado da divisão é: "
	resto: .asciiz "\nO resto é: "
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

.macro divide(%numero1, %numero2)
	li $s0, %numero1
	li $s1, %numero2
	
	div $s0, $s1
	
	mflo, $s2
	mfhi, $s3
	
	la $a0, resultado
	li $v0, 4
	syscall
	
	la $a0, ($s2)
	li $v0, 1
	syscall
	
	la $a0, resto
	li $v0, 4
	syscall
	
	la $a0, ($s3)
	li $v0, 1
	syscall
.end_macro

divide(5, 2)

encerra
