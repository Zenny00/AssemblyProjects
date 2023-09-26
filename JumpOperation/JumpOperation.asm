global _start ; Define the start entry point

section .data ; Define variables
	msg db "This is an example of the jump operation!", 0x0a ; 0x0a is the hex value for \n.
	len equ $ - msg ; Calculate the length of msg.

section .text
_start:
	mov eax, 4		; 4 is the integer index for the sys_write system call.
	mov ebx, 1		; 1 is the file descriptor for stdout.
	mov ecx, msg	; Move the msg into the ecx register.
	mov edx, len	; Move the length of the msg into the edx register.
	int 0x80			; Make the interrupt for the system call

	mov eax, 1 		; Place the exit system call into the eax register.
	mov ebx, 42 	; 42 exit status. We use MOV to store this in the ebx register.
	jmp skip			; jump to the "skip" label.
	mov ebx, 13 	; exit status is 13. If the jump operation runs the ebx register will have a value of 42.

skip:
	int 0x80			; Exit, should have status 42	
