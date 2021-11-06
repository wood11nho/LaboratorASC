.data

	n: .long 5

.text


.globl _start

	
_start:
	mov n, %ecx
	dec %ecx
etfor:
	add %ecx, %eax
	loop etfor
	// for ( ecx = n - 1; ecx >= 0; ecx --)
	//		eax += ecx

etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
