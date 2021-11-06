.data

	x: .long 4
	n: .long 4
	aux: .space 4
.text


.globl _start

_start:

	mov x, %eax
	mov $1, %ebx
	mov $2, %ecx
	mov x, %edx

etfor:
	add %eax, %ebx
	cmp %ecx, n
	je eteax
	mul %edx
	mov %ebx, aux
	mov %ecx, %ebx
	div %ebx
	mov aux, %ebx
	inc %ecx
	mov x, %edx
	jmp etfor
eteax:
	mov %ebx, %eax
etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
