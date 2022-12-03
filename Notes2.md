# Math operations and the stack

> Math operations are used to mathematically manipulate registers.

**General form of a math operation is:**

`operation register, value/register`

The first register is subject of the operation.


Example:

```asm
add rax, 5
sub rbx, rax
```

The following image shows the various maths operations:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Operations.png" width="60%" height="30%">

Notice that `mul` and `div` don't take two registers as arguments instead they only take on register, actually they assume that the first argument is the `rax` register.

There are also operations like `adc` and `sbb` they basically are `add carry` and `subtract borrow` respectively.

`adc` is just like simple addition but when you add you also add the carry flag(CF).

Similarly, in `sbb` is just like simple subtraction, but when you subtract you also subtract the carry flag(CF).

# ASCII

> ASCII is a method to represent strings of text.

**ASCII works by mapping numbers to specific characters(letters, numbers, symbols, etc).**

_ASCII uses 7-bit binary codes to represent characters._ **But _extended ASCII_ uses 8-bit binary codes and is usually supported by modern computers.**

# Display a digit

```asm
section .data
	digit db 0, 10
...

_printDigit:

	add rax, 48
	mov [digit], al
	mov rax, 1
	mov rdi, 1
	mov rsi, digit
	mov rdx, 2
	syscall
	ret
```

The code above displays a number between 0 and 9.

Recall from [overviewCode.md](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/overviewCode.md) that `al` register is the last 8-bits of `rax` register(or simple words, the least significant bits of `rax` register).

`mov [digit], al` basically moves the last 8-bits of the `rax` register to the memory address of `digit`, here we are not accessing the memory adress indirectly by the name `digit`, but instead we are directly accessing the memory address of `digit` by using the pointer `[digit]` which points to the memory address of `digit`.

`digit` is actually defined with 2 bytes, 0 and 10. But since we are loading only the lower byte of `rax` register into `digit`, it only overwrites the first byte(i.e 0) and doesnot affect the newline character.

So, the output of this code is 0.

Keep in mind, that while loading the value of a register to a memory address like `digit` you need to use pointer i.e. `[digit]`

If you try to do something like this:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/ErrorSource1.png" width="60%" height="30%">

then you will get an error like this:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Error1.png" width="60%" height="30%">


So, avoid this.


# The stack

> The stack, like registers, is another way to temporarily store data.

### Terminology

1. When you add data onto the top of the stack, you **push** data onto the stack.
2. When you remove data from the top of the stack, you **pop** data from the stack.
3. If you look at the top of the stack without removing or adding anything to it, this is called **peeking**.

## Stack operations

`reg` here means _register_.

|Operations|Effect|
|:--------:|:----:|
|push `reg`/value|pushes a value onto the stack.|
|pop `reg`|pops a value off the stack and stores in `reg`.|
|mov `reg`, `[rsp]`|stores the peek value in reg.|

Here `rsp` is a pointer to the top of the stack, so to access the value pointed to by it we enclose it within square brackets like this: `[rsp]`

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/ImportantNote.png" width="60%" height="30%">


Below an image that shows the assembly code performing some push and pop operations on a stack:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/stackWithAsm.png" width="60%" height="30%">


**Just in case, you need to look up to pointers in X86, just click [this](https://stackoverflow.com/questions/48608423/what-do-square-brackets-mean-in-x86-assembly) link!!**


---
