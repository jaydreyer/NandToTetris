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
