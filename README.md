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

### jump_operation.asm

This is a program that utilizes the jmp operation to skip over a line of code and exit the program with a status of 42.

![image](https://github.com/Zenny00/AssemblyProjects/assets/99524099/dffab1eb-81e3-4adc-805e-d1bd44ba557c)

### conditional_jump.asm

This program has a simple conditional statement to compare the value stored in the ecx register to the value 100.

#### ecx is set to 99:
![image](https://github.com/Zenny00/AssemblyProjects/assets/99524099/89885db8-a3ac-4a27-a7ce-c462b8cb9578)

#### ecx is set to 100:
![image](https://github.com/Zenny00/AssemblyProjects/assets/99524099/83234994-e3cc-4d3c-b775-e550719fa77f)
