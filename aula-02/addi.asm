.text

# soma 5, 10 e 20

.macro	encerra
	li $v0, 10
	syscall
.end_macro


addi $s0, $zero, 5
addi $s1, $s0, 10
addi $s2, $s1, 20

# imprime idade
la $a0, ($s2)
li $v0, 1
syscall

encerra