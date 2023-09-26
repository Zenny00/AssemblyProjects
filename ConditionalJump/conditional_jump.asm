global _start ; Define the start label for the entry point.

section .data
	msg_1 db "The value in ecx is less than 100.", 0x0a ; 0x0a is hex for ten, the newline character.
	len_1 equ $ - msg_1 ; The length of msg_1.
	msg_2 db "The value in ecx is greater than or equal to 100.", 0x0a
	len_2 equ $ - msg_2

section .text
_start:
	mov ecx, 99			; Set the comparing value to 99.
	cmp	ecx, 100		; Compare the value in ecx, 99, to 100.
	jl msg1					; Jump to msg1 if ecx is less than 100.
	jge	msg2				; Otherwise jump to msg2 

msg1:
	mov eax, 4 			; Write system call index.
	mov ebx, 1 			; stdout file descriptor.
	mov ecx, msg_1	; The message to be printed to the console.
	mov edx, len_1	; The length of the message.
	int 0x80				; Hex code for the system call interrupt handler.

	mov eax, 1			; sys_exit system call.
	mov ebx, 0			; Exit status 0.
	int 0x80				; Interrupt handler.

msg2:
	mov eax, 4 			; Write system call index.
	mov ebx, 1 			; stdout file descriptor.
	mov ecx, msg_2	; The message to be printed to the console.
	mov edx, len_2	; The length of the message.
	int 0x80				; Hex code for the system call interrupt handler.

	mov eax, 1			; sys_exit system call.
	mov ebx, 0			; Exit status 0.
	int 0x80				; Interrupt handler.
