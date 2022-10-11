DESCRIPTION:

This is a square root calculation done in assembly x86 on 64 bit, nasm syntax. This is done using the FPU Register Stack, it loads the number on the stack and then it calls the "fsqrt" function, popping the number and pushing the result on the stack. Modern processors are equipped with a Floating Point Unit which can calculate these kind of mathematical operations in optimal time.


How to run:

1. Open terminal in current floder

2. Type "$make" in terminal

3. Type "$./sqrt" in terminal

4. Enter the number


CLEAN:

To dispose of "sqrt.o" and "sqrt" enther the following command: "$make clean".
