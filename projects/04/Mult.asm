// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
    @R2     // Clear out R2 just in case
    M=0

    @R0
    D=M     // D = RAM[0]
    @END
    D;JEQ   // If R0 = 0, then R2 = 0

    @R1
    D=M
    @END
    D;JEQ   // If R1 = 0, then R2 = 0


(LOOP)

    @R1     //If R1 > 0, then keep going
    D=M
    @END
    D;JEQ

    @R0
    D=M

    @R2
    M=M+D   // Keep adding R0 to itself until R1 = 0

    @R1
    M=M-1

    @LOOP
    0;JMP


(END)
  @END
  0;JMP
