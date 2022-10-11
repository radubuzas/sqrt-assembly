; running process:
;
; in terminal, type:
;
; nasm -f elf sqrt.asm -o sqrt.o
; gcc sqrt.o -o sqrt
;
; write the number in terminal
;
; the output will be displayed in terminal

default rel
extern printf
extern scanf

section .data
    format_output:   	db "%f", 0xa, 0
    format_input:	db "%lf", 0
	
section .bss
	x:		resq 1

section .text
    global main
main:
    sub    rsp, 8
	
	mov 	rsi, x
    mov 	rdi, format_input
    mov 	rax, 1
	call scanf	wrt ..plt
	
	fld qword [x]  										;	pushing on stack

	fsqrt												;	calling the function
	
	fstp qword [x]										;	popping the stack for result
	
	movq 	xmm0, qword [x]
    mov 	rdi, format_output
    mov 	rax, 1
    call   printf  wrt ..plt

    add    rsp, 8
    xor    eax, eax										;	return 0;
    ret
