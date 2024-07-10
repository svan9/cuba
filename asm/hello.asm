global _start
 
extern WriteFile
extern GetStdHandle
 
section .data
message: db "Hellow word", 0x0A
 
section .text
_start:
    sub  rsp, 40
    mov  rcx, -11
    call GetStdHandle
    mov  rcx, rax
    mov  rdx, message
    mov  r8d, 19
    xor  r9, r9
    mov  qword [rsp + 32], 0
    call WriteFile
    add  rsp, 40
    ret