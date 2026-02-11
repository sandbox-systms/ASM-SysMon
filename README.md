## Docx Simples 
---
Arquivo ASM.SYS_MON - Linux Debian v13 - AMD/Intel 
Arquitetura - x86/64 
Compiler/Makefile - asm/nasm/gcc/gdb

---

## Conceito 
- main.asm ; Inicia, limpa tela, entra em loop 
- proc.asm ; Abre arquivos em /proc, lê buffers fixos
- ui.asm ; Formata e escreve na tela via write  
- syscalls.asm ; Centraliza read, open, close, exit
---

## Objetivo 

- Nome do CPU 
- Memoria total e disp. 
- Tempo uptime do sistema 
> O projeto não usa libc. Tudo é feito via syscalls direta. 

---
## Projeto
> Base simples de monitaramento em Assembly, com modularidade, syscalls
> explicitas Makefile "Pro" e é possivel expandir: parsing real, loop de entrada de teclado, 
> ncurses-like interface ANSI, logs, cores. 



