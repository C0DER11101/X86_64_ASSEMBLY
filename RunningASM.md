# Run .asm files using nasm.

So, to run the asm files using nasm, follow the commands below:

## Step 1:

_Type the command:_ `nasm -f elf64 -o hello.o hello.asm`.

This command basically creates an object file with name `hello.o`.

![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/asmIMG1.png?raw=true)

## Step 2:

_To make the object an executable file, we need to first link it, so to link the object file, follow this command:_

`ld hello.o -o hello`

This command basically creates an executable file with name `hello`.

![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/asmIMG2.png?raw=true)

## Step 3:

_Run the file. We run the executable file produced using the following format:_

`./hello`
![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/asmIMG3.png?raw=true)

And that pretty much ends the discussion.

:sparkling_heart: Happy learning!!

---
