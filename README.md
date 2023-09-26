# AssemblyProjects
A repository of my experimentation with x86 Assembly. Starting with a simple "Hello World!" program, I will attempt to make my way into working with I/O. Overall, I will attempt to build a total of ten unique programs to help me gain familiarity with the language.

## Assembling and Linking

To assemble assembly code I am using the nasm assembler. This can be installed on Debain distributions as follows:
sudo apt install nasm

These are the commands I am running to assemble and link my assembly code:

Assembling:
nasm -f elf32 assembly.asm -o object.o

Linking:
ld -m elf_i386 object.o -o executable
