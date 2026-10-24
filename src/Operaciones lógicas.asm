; Materia: Lenguajes de Interfaz

;   Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 11. Operaciones lógicas

; Descripción: Uso de compuertas lógicas (AND, OR, XOR, TEST) para manipulación de estados a nivel de bits.

; Unidad: 2

INCLUDE Irvine32.inc

.data
    msg_Al_Encendida BYTE "La alarma esta encendida", 0
    msg_Al_Apagada   BYTE "La alarma esta apagada", 0

.code
main PROC
    ; 1 -- AND
    mov al, 00000111b
    and al, 00000111b
    call WriteBin

    ; 2 -- OR
    mov al, 00000101b
    or al, 00000010b
    call WriteBin

    ; 3 -- XOR
    mov al, 00000101b
    xor al, 00000001b
    call WriteBin

    exit
main ENDP

END main