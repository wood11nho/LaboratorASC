.data
	x: .long 5
	y: .long 7

.text



.globl _start

_start:

	mov x, %eax
	mov y, %ebx
	xor %eax, %ebx
	xor %ebx, %eax
	xor %eax, %ebx
	
etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
