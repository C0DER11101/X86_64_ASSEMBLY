# Basic syntax of assembly

**An assembly program can be divided into 3 sections:**

1. _data_ section.
2. _bss_ section.
3. _text_ section.



## _data_ section

_This section is used for declaring initialized data or constants._ **This data doesnot change at runtime.**



**Syntax of declaring data section:**

```asm
section .data
```



## _bss_ section

_This section is used for declaring variables._



**Syntax of declaring bss section:**

```asm
section .bss
```



## _text_ section

_This section is used for keeping actual code._ **This section should begin with the declaration _global  _start_, which tells the kernel where the program execution begins:**



**Syntax of declaring text section:**

```asm
section .text
	global _start
_start:
	; assembly code goes here
```



## Comments

Comments in assembly language begin with a semicolon(;).





## Assembly language statements



_Assembly language programs consist of three types of statements:_

* Executable instructions or simply instructions.
* Assembler directives or pseudo-ops.
* Macros.

**Executable instructions tell the processor what to do.** _Each instruction consists of an **operation code(opcode)**. Each executable instruction generates one machine language instruction._



**Assembler directives tell the assembler about the various aspects of assembly process.** _These are non-executable and donot generate machine language instructions._



**Macros are basically a text substitution mechanism.**



## Syntax of assembly language statements



```
[label] mnemonic [operands] [;comment]
```



_The fields in square brackets are optional._

**A basic instruction has two parts: _(i) name of instruction(or mnemonic), which is to be executed_; _(ii) operands or the parameters of the command._**