// sa calculam suma din array-ul v
.data

	v: .long 10, 15, 30
	n: .long 3

.text


.globl _start


_start:

	lea v, %edi
	// %edi retine adresa de inceput al array ului
	mov $0, %ecx
	mov $0, %eax
	
	
etfor:
	//for( %ecx = 0; %ecx < n; %ecx ++)
	//	%eax += v[%ecx]
	cmp %ecx, n
	je etexit
	
	mov (%edi, %ecx, 4), %ebx
	add %ebx, %eax
	inc %ecx
	jmp etfor
etexit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
