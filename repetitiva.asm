.data

	n: .long 5	
	
.text


.globl _start

_start:

	mov $0, %eax
	mov $0, %ecx
	
etfor:
	cmp %ecx, n
	je etexit
	add %ecx, %eax
	inc %ecx
	jmp etfor
	
etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
