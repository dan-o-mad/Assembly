
	; Example 2:
    
    ; a program to add three numbers accessed using a single label

[org 0x0100]

			mov	ax, [num1]	    ; load first number in ax
		    mov	bx, [num1+2]	; load second number in bx
			add	ax, bx      	; accumulate sum in ax
			mov	bx, [num1+4]	; load third number in bx
			add	ax, bx       	; accumulate sum in ax
			mov	[num1+6], ax	; store sum at num1+6
			mov	ax, 0x4c00	    ; terminate program
				
int	0x21	

num1:	dw	5	
					
	    dw	10	
		dw	15	
		dw	0	
