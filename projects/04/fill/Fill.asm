// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(BLACKLOOP)     //Fills every pixel when key is pressed
@KBD
D=M
@WHITELOOP
D;JEQ           //Go to white loop if Keyboard memory register = 0
@24575		      //@screen's last pixel
D=M
@WHITELOOP
D;JLT		        //Go to white loop if last pixel is filled, so not to exceed register amount
@i
D=M
@SCREEN		      //@screen's first pixel
D=A+D
A=D
M=-1		        //Register memory set to -1, which is all 1's in binary 2s complement
@i
M=M+1		        //Increment counter to get the next pixel
@BLACKLOOP
0;JMP

(WHITELOOP)	    //Removes every pixel when key is not pressed
@KBD
D=M
@BLACKLOOP
D;JGT           //Go to black loop if Keyboard memory register = 1
@i
D=M
@SCREEN		      //@screen's first pixel
D=A+D
A=D
M=0		          //Register memory set to 0, removes all filled pixels in 16-bit register
@i		    
M=M-1		        //Decrement counter to blank next pixel
@WHITELOOP
0;JMP
