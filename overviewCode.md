# Overview of [hello.asm](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/hello.asm)

In this file, we see a word `db`, which stands for **define bytes**


So it basically means that we are going to define some raw bytes of data to insert into our code.


```asm
text db "Hello, world!", 10
```

`"Hello, world!" is the bytes of data that we are defining. Each character in the string of text is a single byte. The 10 is a newline character`

`text` is the name assigned to the address memory that this data is located in. Whenever we use `text` later in the code, when the code is compiled, the compiler will determine the actual location in the memory of this data and replace all future instances of `text` with that memory address.

## Registers

> Registers are parts of the processor that temporarily holds memory.

In the x86_64 architecture, registers hold _64 bits_.

That means each register can hold the values:

**Unsigned:** 0 to 18,446,744,073,709,551,616.

**Signed:** -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.

This is what registers look like in this architecture:

![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Registers.png?raw=true)

## System call

A **system call** or a **syscall** is when a program requests a service from the kernel.


_System calls will differ by operating systems because different operating systems use different kernels._

**All syscalls have an ID associated with them(a number).**

**Syscalls also take arguments, meaning, a list of inputs.**

**The table below is very important:**

![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/SystemCallInputsByRegisters.png?raw=true)

The ID for the syscall is in the `rax` register.

The numbers `1` through `6` represent the order in which the corresponding registers are passed as arguments to syscall!!


![image](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/SyscallList.png?raw=true)

The table shows a list of syscalls and the arguments that each one takes.

The arguments that have a `#` symbol before them means that argument is a number that is coming directly from a register.

The `$` before the arguments means it stores the memory address to the data that is in the register.


### sys_write

This system call prints data as output, takes data as input.

0 -> means standard input.
1 -> means standard output.
2 -> means standard error.

This image shows the components of **sys_write** and what arguments it takes. The value of register `rax` is 1.

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/SysWrite.png" width="60%" height="30%">


This image below shows how arguments are passed into **sys_write**

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/sys_write_AGain.png" width="60%" height="30%">

### sys_exit

This system call is used to exit your program/code.

The image below shows the components of **sys_exit** and what arguments it takes. The value of register `rax` is 60.

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/sys_exit.png" width="60%" height="30%">


The `#errorcode` can be assigned any value, but if you assign it 0 that means the your program will terminate without any errors.

The image below shows how **sys_exit** works:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/sys_exit_working.png" width="60%" height="30%">


## Hello world Source code review

The images below show the sections of the code that make up the **Defined bytes**, **sys_write** and **sys_exit** system calls.

#### Defined Bytes(db)

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Sections1.png" width="60%" height="30%">

#### sys_write

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/sections2.png" width="60%" height="30%">

#### sys_exit

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/sections3.png" width="60%" height="30%">


## Sections in X86_64 assembly files


All X86_64 assembly files have three sections:

1. The `.data` section.
2. The `.bss` section.
3. The `.text` section.

The `.data` section is where all the data is defined before compilation.

The `.bss` is where data is allocated for future use.

The `.text` section is where the actual code goes.


## Labels

> A label is used to label a part of code.

Upon compilation, the compiler will calculate the location in which the label will sit in the memory.

Any time the name of the label is used afterwards, that name is replaced by the location in memory by compiler.

## The _start label

The `_start` label is essential for all programs.

When your program is compiled and later executed, it is executed first at the location of `_start`

If the linker cannot find `_start`, it will throw an error!!

## Global

The word `global` is used when you want the linker to be able to know the address of some label.

The object file generated will contain a link to every label declared `global`.

In the case of hello.asm file, we need declare `_start` as `global` since it is required for the code to be properly linked.

---
