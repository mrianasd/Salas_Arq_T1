.text
Main:
	li $t1, 1			#auxiliar comparacion
	li $t3, 0			#auxiliar que guarda el numero de veces que se resta = resultado
	li $s0, 0			#Resultado
	jal Division
	addi $s0, $t3, 0		#pasar el resultado temp a final
	j Exit			
Division:
	slt $s0, $a1, $a2		#si b<a s0=1, si a<b s0=0
	beq $s0, $t1,Divide		#Si s0 es 1 entonces entra a la funcion
	jr $ra				#En caso contrario devuelve el ra actual para terminar recursividad
Divide:
	sub $a2,$a2,$a1		#a = a-b
	addi $sp, $sp, -4	#Movemos sp
	sw $ra, ($sp)		#Obtenemos valor de la direccion de sp
	jal Division		#Inicia recursividad
	lw $ra, ($sp)		#obtenemos el valor de sp para el ra
	addi $sp, $sp, 4	#Nos movemos al siguiente posicion de sp
	addi $t3,$t3,1		
	jr $ra
Exit:
