.data
	novaLinha: .asciiz "\n"
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

li $t0, 1
li $t1, 2


bne $t0, $t1, L1

println("Os numeros sao iguais")
encerra

L1 : println("Os numeros sao diferentes")

encerra