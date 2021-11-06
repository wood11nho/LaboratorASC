.data

	x: .long -5
	y: .long 0
	sir1: .asciz "Numarul este egal cu 0\n"
	sir2: .asciz "Numarul este pozitiv\n"
	sir3: .asciz "NUmarul este negativ\n"
.text


.globl _start

_start:
	mov x, %eax
	mov y, %ebx
	cmp %ebx, %eax
	je etzero
	jl etneg
	jmp etpoz

etzero:
	mov $4, %eax
	mov $1, %ebx
	mov $sir1, %ecx
	mov $24, %edx
	int $0x80
	jmp etexit
etneg:
	mov $4, %eax
	mov $1, %ebx
	mov $sir3, %ecx
	mov $22, %edx
	int $0x80
	jmp etexit
etpoz:
	mov $4, %eax
	mov $1, %ebx
	mov $sir2, %ecx
	mov $22, %edx
	int $0x80
	jmp etexit		
etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
