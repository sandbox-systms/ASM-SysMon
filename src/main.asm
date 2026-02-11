global _start 
extern read_cpuinfo, read meminfo, read_uptime, render_screen, sys_exit

section .text
_start:
main_loop:
    call read_cpuinfo           ; Le informaçaõ do processador 
    call read_meminfo           ; A informaçaõ da memoria
    call read_uptime            ; A informaçaõ do uptime    
    call render_screen          ; Renderiza a tela com as informaçoes coletadas    

    :delay simples              ; Um loop de atraso para evitar que o programa consuma muitos recursos
    mov rcx, 5000000            ; Ajuste o valor para controlar a velocidade de atualização
delay: 
    loop delay

    jmp main_loop               ; Volta para o início do loop principal

exit_program:
    xor rdi, rdi                ; status: 0
    call sys_exit               ; Chama o kernel para sair do programa