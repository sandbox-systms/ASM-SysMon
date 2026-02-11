global  check_input 

section .bss
key_buff resb 8 

check_input:
    mov rdi, 0
    mov rsi, key_buff
    mov rdx, 1
    call sys_read 
    cmp byte [key_buff], 'q'          ; tecla para saida de terminal (encerra programa)
    je .quit 
    ret 

.quit                                 ; label usado para chamada  deencerramento do programa 
    mov rdi, 0 
    call sys_exit