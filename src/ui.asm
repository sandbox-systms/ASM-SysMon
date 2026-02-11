global render_screen 

section .data 
clear_screen db 27, '[2j', 0         ; código de escape ANSI para limpar a tela
mov_home db 27, '[h', 0              
newline db 10, 0 

render_screen:
    mov rdi, 1                       ; STDOUT 
    mov rsi, clear_screan 
    mov rdx, 4
    mov sys_write 

    mov rsi, cpu_buf
    mov rdx, 256
    call sys_write 

    mov rsi, mem_buf 
    mov rdx, 128
    call sys_write 

    mov rsi, newline
    mov rdx, 1
    call sys_write

    mov rsi, uptime_buf 
    mov rdx, 32
    call sys_write
    ret 