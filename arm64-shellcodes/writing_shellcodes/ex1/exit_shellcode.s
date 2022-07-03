#  Video Lecture: 39
#  Instructor: Arif Butt
#  Course: System Programming with Linux
#  exit_shellcode1.nasm: Assembly program making exit system call
#  Assemble: nasm -felf64 exit_shellcode1.nasm

.global _start
.align 8
.text
_start:
	MOV x0, #54
	MOV x8, #93
	svc #0
