.data
	novaLinha: .asciiz "\n"
	bufferInt: .word
	numero1: .word
	numero2: .word
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

.macro println(%string)
	.data
		string: .asciiz %string
		
	.text
	
		la $a0, string
		li $v0, 4
		syscall 
	
		la $a0, novaLinha
		li $v0, 4
	
		syscall
.end_macro

.macro print(%string)
	.data
		string: .asciiz %string
		
	.text
		la $a0, string
		li $v0, 4
		syscall 
.end_macro

.macro leInteiro()
	li $v0, 5
	syscall
.end_macro 

print("Digite um numero: ")
leInteiro
move $t0, $v0

print("Digite outro numero: ")
leInteiro
move $t1, $v0

print("Digite mais um numero: ")
leInteiro
move $t2, $v0

beq $t0, $t1, L1
println("Pelo menos um dos números eh diferente")
encerra

L1 : 
beq $t1, $t2, L2
println("Pelo menos um dos números eh diferente")
encerra

L2 : println("Tudo igual")

encerra
