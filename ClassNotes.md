## Week 1

### Unit 1.1: Boolean Logic

(x AND y)

x^y

x | Y | AND
--|---|----
0 | 0 | 0
0 | 1 | 0
1 | 0 | 0
1 | 1 | 1

(x OR y)
x v y

x | Y | OR
--|---|----
0 | 0 | 0
0 | 1 | 1
1 | 0 | 1
1 | 1 | 1

NOT(x)

x|NOT|
--|--|
0|1
1|0

Formula and truth table = all possible values and results

Boolean Identities:
* Commutative Laws (x AND y) = (y AND x)
* Associative Laws (x AND (y AND z)) = ((x AND y) AND z)
* Distributive Laws (x AND (y OR z)) = (x AND y) OR (x AND z)
* De Morgan Laws NOT(x AND y) = NOT(x) OR NOT(y)

### Unit 1.2: Boolean Synthesis
Start with Truth Table, and then work backwards to get the function

**Theorem** Any Boolean function can be represented using an expression
containing AND, OR and NOT operations.

Actually, you can get by with just AND and NOT.

NAND

x|y|NAND
---|---|---|
0|0|1
0|1|1
1|0|1
1|1|0

(x NAND y) = NOT(x AND y)

**Theorem** Any Boolean function can be represented using an expression containing only NAND operations

1. NOT(x) = (x NAND x)
2. (x AND y) = NOT(x NAND y)

### Unit 1.3: Logic Gates
A technique for implementing Boolean functions using logic Gates
* Elementary (Nand, And, Or, Not, ...)
* Composite (Mux, Adder, ...)

Nand: Two inputs and a single output
Functional spec: If (a==1 and b==1) then out =0 else out=1

Interface = what, Implementation = how
Circuit Implementation

### Unit 1.4: Hardware Description Language (HDL)
* HDL is a functional/declarative language - not procedural
* Order of statements doesn't matter, but usually you describe diagram from left to right.
* Generally use a, b and out.
* VHDL and Verilog are popular HDLs

### Unit 1.6: Multi-bit Buses
Sometimes bits are manipulated together as an array
We call these  groups of bits a "bus"

## Week 2
### Unit 2.2: Binary Addition
Binary addition is pretty straight-forward. Add the 1's and 0's. If there are two 1's to add, it's 0, and carry the 1, which makes sense because 10 = 2. If you carried the 1 and now you are adding 3 1's, it's 1 and you carry the one, which again makes sense because 1+1+1=3=11 in binary.

The farthest left digit indicates positive (0) or negative (1). This is how you do subtraction.

#### Building an Adder
Half-Adder = Adds two bits
Full-Adder = Adds three bits
Adder = Adds two numbers

##### Half-Adder
Simple, I guess. Adding gives you a "sum" and a "carry".
* 1+1, sum=0 and carry=1
* 1+0, sum=1 and carry=0
* 0+0, sum=0 and carry=0
Table!

| a | b | sum | carry |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
|1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

So, two inputs, a and b are inputs to the half adder, and two outputs, sum and carry come out.

##### Full-Adder
Full-Adder is for adding 3 bits. This would happen when you have to deal with a "carry" from a previous operation.

| a | b | c |sum | carry |
|---|---|---|---| -- |
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

So, three inputs, a, b, and c and two outputs: sum and carry.

##### Multi-bit Adder
Connect 15 full-adders with one half-adder. Or just do 16 full-adders.

So, a multi-adder takes a 16 bit a and 16 bit b, adds them, and returns a 16 bit out.

### Unit 2.3: Negative numbers
Could use farthest left digit to indicate pos/neg, but this is not popular and causes confusion. You get +/- 0, which is a problem.

Instead, use **2's complement**:
Positive numbers in the range: $0...2^n-1-1$ and negative numbers in the range: -1...-2^n-1

This confuses the hell out of me.

To convert a number to negative:
Convert -8 to 2's complement:
Convert 8 to decimal:
1000
Invert the digits:
0111
Add one:
1000

Convert 4 to 2's complement:
4 = 0100
Invert:
1011
Add one:
1100

Convert 6:
0110
Invert:
1001
Add 1:
1010

### Unit 2.4: Arithmetic Logic Unit
Half-Adder: Sum=XOR, Carry=AND

Full-Adder: Can be built from 2 half-adders

16-bit Adder:
* n-bit adder chip can be made from n full-adder chips
* The carry bit is piped from right to left
* The MSB carry bit is ignored

16-bit incrementor
* The single bit 0 and 1 values are represented in HDL as false and true

ALU - Holy shit.
* Building blocks: Add16, and various chips built in project 1
* Can be built with less than 20 lines of HDL code 
