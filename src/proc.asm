global rend_cpuinfo, read_meminfo, read_uptime 

section .text 
cpu_buff: resb 266                  ; tamanho maximo do cpuinfo 
mem_buff: resb 128                  ; tamanho maximo do meminfo
uptime_buff: resb 32                ; tamanho maximo do uptime

read_cpuinfo:
    : abre o arquivo /proc/cpuinfo          ; abrir o arquivo /proc/cpuinfo
    mov rdi, cpuinfo_path                   ; caminho do arquivo
    xor rsi, rsi                            ; flags = 0 (leitura somente) 
    call sys_open                           ; chama sys_open 
    mov rdi, rax 
    mov rsi, cpu_buff                      ; buffer para ler os dados
    mov rdx, 256                           ; tamanho maximo a ler
    call sys_read                          ; chama sys_read 
    call sys_close                         ; fecha o arquivo
    ret

read_meminfo:
    ; abre o arquivo /proc/meminfo
    mov rdi, uptime_path                    ; caminho do arquivo
    xor rsi, rsi                            ; flags = 0 (leitura somente)
    call sys_open                           ; chama sys_open
    mov rdi, rax
    mov rsi, mem_buff                       ; buffer para ler os dados 
    mov rdx, 128
    call sys_read                          ; chama sys_read 
    call sys_close 
    ret 

read_uptime: 
    ; abre o arquivo /proc/uptime
    mov rdi, uptime_path                   ; caminho do arquivo
    xor rsi, rsi                            ; flags = 0 (leitura somente)
    call sys_open                           ; chama sys_open
    mov rdi, rax
    mov rsi, uptime_buff                       ; buffer para ler os dados 
    mov rdx, 32 
    call sys_read                          ; chama sys_read 
    call sys_close                         ; fecha o arquivo
    ret

section .data 
cpuinfo_path db "/proc/cpuinfo", 0 
meminfo_path db "/proc/meminfo", 0
uptime_path db "/proc/uptime", 0