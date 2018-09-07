.text
Main:
	li $a0, 6 		#m
	li $a1, 6		#n
	li $s0, 0 		#almacenara el resultado
	li $t1, 1	#temporal
	jal Potencia
	addi $s0, $t1, 0
	j Exit
Potencia:
	li $t2, 1
	slt $s0, $a1, $t2
	bne $s0,$t2,Calcula	#Si s1 es diferente de 1, salta a calcular
	jr $ra
Calcula:
	sub $a1,$a1,1		
	addi $sp, $sp, -4
	sw $ra, ($sp)
	mult $t1,$a0
	mflo $t1
	jal Potencia
	lw $ra, ($sp)
	addi $sp, $sp,4
	jr $ra
Exit:
	
