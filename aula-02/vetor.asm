.data
	vetor: .space 12 # 3 inteiros
	novaLinha: .asciiz "\n"
.text

.macro	encerra
	li $v0, 10
	syscall
.end_macro

li $s0, 5
li $s1, 10
li $s2, 15

move $t0, $zero # inicia $t0 com zero

sw $s0, vetor($t0) # store word
addi $t0, $t0, 4 # t += 4;
sw $s1, vetor($t0)
addi $t0, $t0, 4
sw $s2, vetor($t0)

move $t0, $zero

lw $a0, vetor($t0) # load word
li $v0, 1
syscall

la $a0, novaLinha
li $v0, 4
syscall 

addi $t0, $t0, 4
lw $a0, vetor($t0)
li $v0, 1
syscall

encerra
