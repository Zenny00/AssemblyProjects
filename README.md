# AssemblyProjects
A repository of my experimentation with x86 Assembly. Starting with a simple "Hello World!" program, I will attempt to make my way into working with I/O. Overall, I will attempt to build a total of ten unique programs to help me gain familiarity with the language.

## Resources:

I am starting this learning process by following Davy Wybiral's YouTube series, "Intro to x86 assembly language"

- Intro to x86 assembly language: https://www.youtube.com/playlist?list=PLmxT2pVYo5LB5EzTPZGfFN0c2GDiSXgQe
- x86 instruction set documentation: https://www.felixcloutier.com/x86/

## Assembling and Linking

To assemble assembly code I am using the nasm assembler. This can be installed on Debain distributions as follows:
sudo apt install nasm

These are the commands I am running to assemble and link my assembly code:

#### Assembling:
nasm -f elf32 assembly.asm -o object.o

#### Linking:
ld -m elf_i386 object.o -o executable

## Sample Program Output:

### hello_world.asm

A simple program that uses interrupts and system calls to print a simple "Hello, World!" message to the console.

![image](https://github.com/Zenny00/AssemblyProjects/assets/99524099/ee72f9a2-ffda-4ed2-8e01-62e417ad0c86)
