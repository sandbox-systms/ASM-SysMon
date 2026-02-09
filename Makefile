NAME=asm-sysmon 
ASM=nasm 
ASMFLAGS=-f elf64 -g 
LD=gcc 

SRC=src/main.asm src/ui.asm src/proc.asm src/syscalls.asm
OBJ=$(:.asm=.o)

all: $(NAME) 
$(NAME): $(OBJ) 
	$(LD) -no-pie -o build/$(NAME) $(OBJ)

%.o: %.asm 
	$(ASM) $(ASMFLAGS) $< -o $@

clean: 
	rm -f src/*.o build/$(NAME)

.PHONY: all clean