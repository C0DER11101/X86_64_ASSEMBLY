# About [code2.asm](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/code2.asm) and [code2_ptB.asm](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/code2_ptB.asm)


In `code2.asm`, we can see that `digit` has been defined with 2 bytes, i.e, 0 and 10.

But look at `_printDigit`, we are moving the value in register `al` into `digit`, we all know that `al` stores the last 8-bits of `rax` register and `digit` is 16-bits long(2 bytes), when those 8-bits from `al` are moved into `digit` they overwrite the first 8-bits inside `digit` which were for 0 but the last 8-bits(which were for 10) remain unaffected.

Hence we get an output like this:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Output1.png" width="60%" height="30%">

Notice that after printing 0 there is a newline, that's why the prompt appears below 0.

In `code2_ptB.asm`, we can see that in `_printDigit`, we are moving the value in `rax` register into `digit`, now `rax` is a 64-bit register, meaning that it can store 64-bits, so when these 64-bits are moved to `digit` which is just 16-bits long, then all the 16-bits are overwritten, meaning this time the first 8-bits for 0 and the second 8-bits for 10 are all overwritten by the 64-bits.

Hence, we get an output like this:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/Output2.png" width="60%" height="30%">

---
