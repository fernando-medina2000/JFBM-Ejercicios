
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 7. Validación de formato

; Descripción: Lee una clave (TEC-123) y valida estrictamente su longitud y caracteres uno por uno.

; Unidad: 2

; Horario : 8 - 9

INCLUDE Irvine32.inc

.data
    cadena      BYTE 50 DUP(0)
    msg_pedir   BYTE "Ingrese la clave (ejemplo TEC-123): ", 0
    msg_error   BYTE "ERROR: Formato o clave incorrecta.", 0Dh, 0Ah, 0
    msg_exito   BYTE "¡CORRECTO! La clave ingresada es valida.", 0Dh, 0Ah, 0

.code
main PROC
    call Clrscr

pedir_cadena:
    mov edx, OFFSET msg_pedir
    call WriteString

    mov edx, OFFSET cadena
    mov ecx, SIZEOF cadena
    call ReadString                

    cmp eax, 7                     
    jne error_formatoh

    mov esi, OFFSET cadena         

    mov ah, [esi]                  
    cmp ah, 'T'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, 'E'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, 'C'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, '-'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, '1'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, '2'
    jne error_formatoh

    inc esi                        
    mov ah, [esi]
    cmp ah, '3'
    jne error_formatoh

    jmp clave_correcta

error_formatoh:
    call Crlf
    mov edx, OFFSET msg_error
    call WriteString
    call Crlf
    jmp pedir_cadena

clave_correcta:
    call Crlf
    mov edx, OFFSET msg_exito
    call WriteString

    exit
main ENDP

END main