.data 
	number1:	.float	3.14
	number2:	.float	2.71
.text
	main:
	
	lwc1	$f2,	number1
	lwc1	$f4,	number2
	
	#sum:  f2 + f4
	add.s	$f12,	$f2,	$f4
	
	#sub:  f2 - f4
	sub.s	$f11,	$f2,	$f4
	
	#mul :  f2 * f4
	mul.s	$f10,	$f2,	$f4	
	
	#div:	f2 / f4
	div.s	$f9,	$f2,	$f4
	
	#finish main program
	li	$v0,	10
	syscall