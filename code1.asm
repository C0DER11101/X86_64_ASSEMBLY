section .data
	text db "What is your name? "
	output db "Hello "
	
section .bss
	input resb 16

section .text
	global _start

	
_start:

	call _prompt
	call _TakeInput
	call _printText
	call _printName

	mov rax, 60
	mov rdi, 0
	syscall

_prompt:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 19
	syscall

	ret

_printText:

	mov rax, 1
	mov rdi, 1
	mov rsi, output
	mov rdx, 6
	syscall

	ret

_printName:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, input
	mov rdx, 16
	syscall

	ret

_TakeInput:
	
	mov rax, 0
	mov rdi, 0
	mov rsi, input
	mov rdx, 16
	syscall

	ret
