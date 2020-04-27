#!/bin/bash

gcc -c hello64-1.s
ld -o hello64-1 hello64-1.o

gcc -c hello64-2.s
ld -o hello64-2 hello64-2.o

nasm -f elf64 -o hello64-3.o hello64-3.asm
ld -o hello64-3 hello64-3.o
rm hello64-1.o hello64-2.o hello64-3.o 

gcc -c -o main-1.o main-1.c
gcc -c -o main-2.o main-2.c
gcc -fPIC   -c -o foo1.o foo1.c
gcc -fPIC   -c -o foo2.o foo2.c
gcc -shared -o libfoo1.so foo1.o 
gcc -shared -o libfoo2.so foo2.o

gcc -o test1 main-1.o
gcc -o test2 main-2.o  foo1.o foo2.o
gcc -o test3 main-2.o  foo2.o foo1.o
gcc -o test4 main-2.o libfoo1.so foo2.o -Wl,-R,.
gcc -o test5 main-2.o foo1.o libfoo2.so -Wl,-R,.

rm main-1.o main-2.o foo1.o foo2.o