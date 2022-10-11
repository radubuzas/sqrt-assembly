sqrt: sqrt.o
	gcc sqrt.o -o sqrt
sqrt.o: sqrt.asm
	nasm -f elf64 sqrt.asm -o sqrt.o
clean:
	rm -f sqrt.o sqrt
