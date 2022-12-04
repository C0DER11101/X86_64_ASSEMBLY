# What is assembly language?

> Each PC has a microprocessor that manages the computer's arithmetical, logical, and cotrol activities.

**Each family of processors has its own set of instructions for handling various operations such as getting input from keyboard, displaying information on screen, etc. These set of instructions are called _machine language instructions_.**

_A processor understands only machine language instructions._

> These machine language instructions are strings of 0s and 1s.

Main internal hardware of a PC consists of processors, memory and registers.


**Registers are processor components that hold data and address.**


`To execute a program, the system copies it from the external device into the internal memory. The it  executes the program instructions.`

**Fundamental unit of computer storage is a bit: it could be ON(1) or OFF(0).**


1 Byte = 8 bits

The processor supports the following data sizes:

Word : a 2-byte data item.

Doubleword : a 4-byte data item.

Quadword : an 8-byte data item.

Paragraph : a 16-byte area.

Kilobyte : 1024 bytes.

Megabyte : 1048576 bytes.


## Binary Number System

Every number system uses positional notation.

Each position is a power of the base which, in this case, is 2(since binary).

|Bit value|Bit number|Positional value as a power of base 2|
|:-------:|:--------:|:-----------------------------------:|
|1|0|$1\times 2^0=1$|
|1|1|$1\times 2^1=2$|
|1|2|$1\times 2^2=4$|
|1|3|$1\times 2^3=8$|
|1|4|$1\times 2^4=16$|
|1|5|$1\times 2^5=32$|
|1|6|$1\times 2^6=64$|
|1|7|$1\times 2^7=128$|

So, the value of the given binary number is:

$1+2+4+8+16+32+64+128=255$

## Hexadecimal Number System

To conver a binary number into its hexadecimal equivalent, just break the binary number into groups of 4-bits from the right.

Example:

Convert 1000110011010001 into hexadecimal equivalent.

Sol:
Break the binary number into groups of 4-bits from the right.

1000 1100 1101 0001

Now, do this:

1000 -> 8

1100 -> C(hexadecimal equivalent)

1101 -> D

0001 -> 1

So, the hexadecimal equivalent is:  8CD1

To convert hexadecimal number to binary, do this:

FAD8 to binary,


F -> 15 -> 1111

A -> 10 -> 1010

D -> 13 -> 1101

8 -> 8 -> 1000

So the binary equivalent is:  1111 1010 1101 1000

# Binary arithmetic

| **(i)** | **(ii)** | **(iii)** | **(iv)** |
| :-----: | :------: | :-------: | :------: |
|         |          |           |    1     |
|    0    |    1     |     1     |    1     |
|   +0    |    +0    |    +1     |    +1    |
|   =0    |    =1    |    =10    |   =11    |

Rules _(iii)_ and _(iv)_ show a carry of a 1-bit into the next left position.



**Example:**



| Decimal |  Binary   |
| :-----: | :-------: |
|   60    | 00111100  |
|   +42   | 00101010  |
|  =102   | =01100110 |



**A negative number is expressed in two's complement notation.**



_Rule for converting a binary number to its two's complement._



**In the original binary number, replace all the 1s with 0s and all the 0s with 1s(this is called _reversing the binary number_) and then add 1 to this newly formed binary number.**



**Example:**

|               Decimal                |  Binary  |
| :----------------------------------: | :------: |
|              Number 53               | 00110101 |
|           Reverse the bits           | 11001010 |
| Add 1 to this reversed binary number | 00000001 |
|              Number -53              | 11001011 |



**To subtract one value from another, convert the number being subtracted to two's complement format and add the numbers.**



**Example:**

Subtract 42 from 53.



|               Decimal               |  Binary  |
| :---------------------------------: | :------: |
|              Number 53              | 00110101 |
|              Number 42              | 00101010 |
|       Reverse the bits of 42        | 11010101 |
| Add 1 to the reversed binary number | 00000001 |
|             Number -42              | 11010110 |
|              53+(-42)               | 00001011 |

**The overflow of the last 1-bit(which was the carry) is lost.**





## Addressing data in memory



> The process through which the processor controls the execution of instructions is referred to as the **fetch-decode-execute cycle** or simply the **execution cycle**.

**The execution cycle consists of three continuous steps:**

1. Fetching the instruction from the memory.
2. Decoding(identifying) the instruction.
3. Executing the instruction.

The processor may access one or more bytes of memory at a time.



Assume a hexadecimal number, 0725H(_the H stands for Hexadecimal_). The number will require 2bytes of memory. The high order byte is 07 and low-order byte is 25.



**The processor stores data in reverse-byte sequence, i.e, the low-order byte is stored in a low memory address and a high-order byte is stored in high memory address.**

So, if the processor brings the value 0725H from register to memory, it will trasfer 25 first to the lower memory address and 07 to next memory address.



The image below shows what was just said:



<img src="https://github.com/C0DER11101/X86_64_ASSEMBLY/blob/X86_64_Linux/MemoryAddress.jpg" width="60%" height="30%">



_When the processor gets numeric data from memory to register, it again reverses it._



**There are two kinds of memory addresses:**

1. Absolute address $\rightarrow$ direct reference of specific location.
2. Segment address(or offset) $\rightarrow$ starting address of a memory segment with the offset value.
