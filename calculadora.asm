#Author: Mariana Salas
#Date: Sep 05, 2018

.text
Main:
	li $s0, 0 			#Selector
	li $s1, 5 			#a
	li $s2, 3 			#b
	li $s3, 0 			#c
	li $t1, 1 			#representa el case 1
	beq $s0, $t1, Suma 		#compara si el case es 1 y salta a Suma
	li $t1, 2 			#case 2
	beq, $s0, $t1, Resta		#compara si el case es 2 y salta a Resta
	li $t1, 3			#case 3
	beq, $s0, $t1, Multiplica	#compara si el case es 3 y salta a Multiplica
	j AndBitwise			#default
	
Suma:
	add $s3, $s1, $s2 #c = suma(a,b)
	j Exit
Resta: 
	sub $s3, $s1, $s2 #c = resta(a,b)
	j Exit
Multiplica:
	mult $s1, $s2 	#a*b
	mflo $s3	#C = a*b 
	j Exit
AndBitwise:
	and $s3, $s1, $s2
	j Exit
Exit:
	


