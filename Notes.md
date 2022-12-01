# Flags

> Flags hold data like registers.

**Flags hold only 1 bit each.**

`They are either true or false`


**_Individual flags are part of a larger register._**

# Pointers

> Pointers are also registers that hold data. They _point to_ data, in simple words, they hold its memory address.

# Control Flow

> All code runs from top to bottom by default. _The direction in which a program flows is called **control flow**._

**The rip register holds the address of the next instruction to be executed. After each instruction it is incremented by 1, making the control flow naturally flow from top to bottom.**

The image shows the working of the register `rip`.

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/ControlFlowAndPointer_rip.png" width="60%" height="30%">

The address of the first `mov` instruction is considered as `x` just for the sake of simplicity. Then after that instruction gets executed, `x` or the address of the start instruction is added to 1 and it is assigned to the register `rip`, now `rip` stores `x+1` which means that `rip` now points to the next instruction after the start instruction, and this process repeats after completion of each instruction but the added value is incremented by 1 each time(i.e `x+1`, `x+2`, `x+3`, etc..).

Now, this is analogy given to just explain what is happening in a very simple manner, in actual sense it may not increment by 1, it may increment by some other integer.

# Jumps

> Jumps can be used to **jump** to different parts of the code based on labels.
> **They are used to divert program flow.**

**General format of the jump is:**

```asm
jmp label
```

`jmp label` basically loads the value of the `label` into the `rip` register.

Example:

```asm
_start:
	jmp _start
```

# Comparisons

> Comparisons allow the program to be able to take different paths based on certain conditions.
> **Comparisons are done on registers.**

**General format of a comparison is:**

```asm
cmp register, register/value
```

Example:

```asm
cmp rax, 23
cmp rax, rbx
```

# Conditional jumps

The image below shows some conditional jumps:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/ConditionalJumps.png" width="60%" height="30%">

**Examples of conditional jumps:**


```asm
cmp rax, 23
je _doThis
```
This code will jump to the address of the label `_doThis` if and only if the value in the `rax` register equals 23.

```asm
cmp rax, rbx
jg _doThis
```

This code will jump to the address of the label `_doThis` if and only if the value in `rax` register is greater than the value in `rbx` register.


# Register as pointers

> The default register can be treated as pointers.

**To treat a register as a pointer, surround the register name with square brackets, such as the register `rax` becomes a pointer when it is written as `[rax]`**

Examples:

```asm
mov rax, rbx
```
**Loads the value in `rbx` register into the `rax` register.**

```asm
mov rax, [rbx]
```

**Loads the value pointed to by the `rbx` register into the `rax` register.**


# Calls

> Calls and jumps are essentially the same.

**When a call is used, the original position where the call was made can be returned to using `ret`.**

The image below shows a modified version of the file `hello.asm`.

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/HelloWorldCodeusingCalls.png" width="60%" height="30%">

the `_printHello` here is called a _subroutine_(in HLL languages it's called a function).
