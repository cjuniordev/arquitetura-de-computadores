.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

.macro subtrai(%numero1, %numero2)
	li $s0, %numero1
	li $s1, %numero2
	
	sub $s2, $s0, $s1
	
	la $a0, ($s2)
	li $v0, 1
	
	syscall
.end_macro

subtrai(100, 50)

encerra
