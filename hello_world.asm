global _start ; Define the start entry point

section .data ; Define the variables used in the program
	msg db "Hello, World! This is x86 Assembly!", 0x0a ; 0x0a is the hex value for 10, the newline character
	len equ $ - msg ; Subtract the position of the end of the string from the location of the start of the string to get the length 

section .text
_start:
	mov eax, 4 		; We move the integer 4 to the eax register. This register will store the information for the next system call to be executed by the interrupt handler. The integer 4 is the index of the sys_write call.
	mov ebx, 1 		; We move 1, the file descriptor for stdout into the ebx register.
	mov ecx, msg 	; We move the bytes we want to be passed into the system call to the ecx register.
	mov edx, len 	; We move the number of bytes we are writing to the edx register.
	int 0x80			; Signal an interrupt for a system call.

	mov eax, 1		; We move the integer 1 into the eax register. This is the index of the exit system call.
	mov ebx, 0		; Exit code 0, successful execution.
	int 0x80			; Signal an interrupt for a system call.
