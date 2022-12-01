# Reviewing [code1.asm](https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/code1.asm)

**This program has taught me two things.**


1. The `.bss` section should be between the `.data` and `.text` sections, otherwise while compiling the code warnings will be thrown and your code will not run as desired.
2. There one more way of compiling you code, it's shown in the image below:

<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/CodeInAssembly.png" width="60%" height="30%">


In the `.bss` section `input resb 16` means that we are reserving 16 bits for the name `input` which we will use an input variable and it can contains only 16 bits.


The rest of the code is pretty easy to understand provided that you watched the previous videos or read the notes in this repository!!

---
