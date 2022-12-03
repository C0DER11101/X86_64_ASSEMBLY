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
