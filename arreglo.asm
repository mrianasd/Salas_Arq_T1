.data
Arreglo: .word 0 3 6 9

.text
Main:	
	la $t1, Arreglo		#Guardamos la direccion del arreglo
	li $s0, 0		#suma
	li $s2, 4		#tamaño del arreglo
	li $t0, 0		#comparador
	jal Inicio		
	j Exit
Inicio:
	bne $s2,$t0,Suma	#Hasta que t0 sea igual al tamaño del arreglo
	jr $ra
Suma:
	addi $t1,$t1,4		#Movemos la direccion del arreglo, permite desplazarse
	lw $s1, -4($t1)		#Nos pasamos a la direccion anterior y obtenemos lo almacenado
	add $s0,$s0,$s1		#lo añadimos a s0
	addi $sp,$sp,0		#guardamos direccion de retorno
	sw $ra,0($sp)
	addi $t0,$t0,1		#añadimos 1 al contador del tamaño
	jr $ra
Exit:
	
