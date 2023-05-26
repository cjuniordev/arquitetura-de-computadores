.data
msg1: .asciiz "Digite o primeiro numero: "
msg2: .asciiz "Digite o segundo numero: "
msg3: .asciiz "O resultado da multiplicação eh: "

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

# move $v0 para $s0
move $s0, $v0

# imprime mensagem 1
la $a0, msg2
li $v0, 4
syscall

# le inteiro do teclado
li $v0, 5
syscall

# move $v0 para $s1
move $s1, $v0

# multiplica
mul $s2, $s0, $s1
syscall 

# imprime mensagem 3
la $a0, msg3
li $v0, 4
syscall

# copia $s2 para $a0
move $a0, $s2

# imprime
li $v0, 1
syscall 
	
encerra
