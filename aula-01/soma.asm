.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

.macro soma(%numero1, %numero2)
	li $s0, %numero1
	li $s1, %numero2
	
	add $s2, $s1, $s0
	
	la $a0, ($s2)
	li $v0, 1
	
	syscall
.end_macro

soma(10, 50)

encerra
