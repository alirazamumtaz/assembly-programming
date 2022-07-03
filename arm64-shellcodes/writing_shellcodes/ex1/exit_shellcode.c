/*
*  Video Lecture: 39
*  Instructor: Arif Butt
*  Course: System Programming with Linux
*  exit_shellcode.c: The shell code executes exit() system call
*  Compile: gcc exit_shellcode.c
*  usage: ./a.out 
*/
#include <stdio.h>
#include <string.h>

char * code = "\xc0\x06\x80\xd2\xa8\x0b\x80\xd2\x01\x00\x00\xd4";

int main(){
   printf("len:%ld bytes\n", strlen(code));
   int (*foo)() = (int(*)())code;
   foo();
   return 0;
}
