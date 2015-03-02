TITLE	DisplayName (DisplayName.asm)	
	
	
; This program asks and display a name	

INCLUDE	Irvine32.inc			

.data			
			
names	byte	 20 dup(0),0	
input	byte	'Type you name ',0	
output	byte	'The name typed is ',0	
	
.code		
			
main	PROC		
	mov	edx,offset input	
	call	writestring	
	mov 	ecx,20	
	mov	edx,offset names	
	call	readstring	
	mov	edx,offset output
	call 	writestring	
	mov	edx,offset names	
	call	writestring	
	exit		
main	ENDP				
	END	main	
