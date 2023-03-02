	.file	"p1.c"
	.text
.globl sum
	.type	sum, @function
sum:
	pushl	%ebp # Pushes the base Registar onto the stack
	movl	%esp, %ebp # Moves the data pointers from the stack pointer reg to the base registar for use
	movl	12(%ebp), %eax # Moves y into the accumulator
	addl	8(%ebp), %eax # Adds x to why in the accumulator
	popl	%ebp # Pops the base registar from the stack
	ret         # Returns the accumulator as t
	.size	sum, .-sum
.globl div
	.type	div, @function
div:
	pushl	%ebp # Pushes the base registar onto the stack
	movl	%esp, %ebp # Moves the data pointers from the stack pointer registar to the base registar for use
	movl	8(%ebp), %edx # Moves x from the base registar into the data registar
	movl	%edx, %eax # Moves x from the data registar to the accumulator
	sarl	$31, %edx # Performs an Arithmatic shift left to perform the division
	idivl	12(%ebp) # Performs the division y by the x value stored in the accumulator
	popl	%ebp # Pops the base registar from the stack
	ret         # Returns the accumulator as t
	.size	div, .-div
.globl multiply
	.type	multiply, @function
multiply:
	pushl	%ebp # Pushes the base registar onto the stack
	movl	%esp, %ebp #Moves the data pointers from the stack pointer registar to the base registar for use
	movl	12(%ebp), %eax # Moves y from the base registar into the accumulator
	imull	8(%ebp), %eax # Multiply x times the value stored in the accumulator
	popl	%ebp # Pops the base registar from the stack
	ret         # Returns the accumulator as t
	.size	multiply, .-multiply
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
