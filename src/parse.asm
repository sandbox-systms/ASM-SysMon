; ======================================
;   Model name 
;   MemTotal
;   MemAvailable
;   Uptime
; ======================================

global extract_line 

extract_line: 
    ; rsi = buff
    ; rdi = string alvo
    ; retorna ponteiro para inicio 
.loop: 
    ; comparação manual 
    ret