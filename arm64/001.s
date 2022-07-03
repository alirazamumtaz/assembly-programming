# This is my first assembly code
.data
str:
	.ascii "Hey, Locus! Did you found it worthy?\n"

.text
.global _start
.align 8
_start:
	mov x0, #1
	ldr x1, =str
	mov x2, #37
	mov x8, #64
	svc 0

	mov x0, #54
	mov x8, #93
	svc #0
