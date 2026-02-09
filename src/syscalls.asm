global sys_write, sys_exit, sys_read, sys_open, sys_close

sys_write:
    mov rax, 1                 ; syscall write
    syscall
    ret

sys_exit:
    mov rax, 60                ; syscall exit
    syscall 
    ret 

sys_open:
    mov rax, 2                ; syscall open
    syscall
    ret

sys_read:
    mov rax, 0                ; syscall read  
    syscall
    ret

sys_close:
    mov rax, 3               ; syscall close
    syscall 
    ret 