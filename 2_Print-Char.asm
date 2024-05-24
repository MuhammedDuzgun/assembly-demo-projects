.data

	char:	.byte	'M'

.text
	
	li 	$v0,	4
	la	$a0,	char
	syscall