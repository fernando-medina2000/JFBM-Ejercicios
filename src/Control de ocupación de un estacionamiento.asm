
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 6.1. Control de ocupación de un estacionamiento

; Descripción: Control de entradas y salidas de autos utilizando incrementos y decrementos con límites máximos.

; Unidad: 2

; Horario : 8 - 9

INCLUDE Irvine32.inc

.data
    MAX         EQU 5                  
    autos       SDWORD 0             
    msg_estado  BYTE "Autos: ", 0
    msg_max     BYTE "/", 0
    msg_menu    BYTE " | 1:Entra  2:Sale  3:Salir -> ", 0
    msg_entra   BYTE "-> Carro ingresado con exito.", 0Dh, 0Ah, 0
    msg_sale    BYTE "-> Carro salio con exito.", 0Dh, 0Ah, 0
    msg_lleno   BYTE "ESTACIONAMIENTO LLENO. Cerrando...", 0Dh, 0Ah, 0
    msg_vacio   BYTE "Error: No hay autos para sacar.", 0Dh, 0Ah, 0
    msg_pausa   BYTE "Presiona cualquier tecla para continuar...", 0Dh, 0Ah, 0

.code
main PROC
    call Clrscr
inicio:
    mov edx, OFFSET msg_estado
    call WriteString
    mov eax, autos
    call WriteDec
    mov edx, OFFSET msg_max
    call WriteString
    mov eax, MAX
    call WriteDec
    mov edx, OFFSET msg_menu
    call WriteString
    
    call ReadInt
    
    cmp eax, 1
    je  entra_auto
    cmp eax, 2
    je  sale_auto
    cmp eax, 3
    je  fin
    jmp inicio

entra_auto:
    inc autos                  
    mov eax, autos
    cmp eax, MAX
    jge esta_lleno             
    
    call Crlf
    mov edx, OFFSET msg_entra
    call WriteString 
    mov edx, OFFSET msg_pausa
    call WriteString
    call ReadChar
    call Clrscr
    jmp inicio

sale_auto:
    cmp autos, 0
    jle esta_vacio
    dec autos                  
    
    call Crlf
    mov edx, OFFSET msg_sale
    call WriteString
    mov edx, OFFSET msg_pausa
    call WriteString
    call ReadChar
    call Clrscr
    jmp inicio

esta_vacio:
    call Crlf
    mov edx, OFFSET msg_vacio
    call WriteString 
    mov edx, OFFSET msg_pausa
    call WriteString
    call ReadChar
    call Clrscr
    jmp inicio

esta_lleno:
    call Crlf
    mov edx, OFFSET msg_lleno
    call WriteString
    jmp fin

fin:
    exit
main ENDP

END main