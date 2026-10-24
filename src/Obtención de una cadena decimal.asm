
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 10. Obtención de una cadena decimal

; Descripción: Cálculos numéricos y conversión de valores enteros a cadenas decimales mediante subrutinas.

; Unidad: 2

INCLUDE Irvine32.inc

.data
    msg_descargados BYTE "CANTIDAD DESCARGADOS : ", 0
    msg_pendientes  BYTE "CANTIDAD PENDIENTES  : ", 0
    Tam_Arch        = 100000
    Bloques         = 125
    Tam_Bloque      = 512

    bytesDescargados DWORD ?
    bytesPendientes  DWORD ?
    bufDescargados   BYTE 11 DUP(0)
    bufPendientes    BYTE 11 DUP(0)

.code
main PROC
    mov eax, Bloques
    mov ebx, Tam_Bloque
    mul ebx                 
    mov bytesDescargados, eax

    mov eax, Tam_Arch
    sub eax, bytesDescargados
    mov bytesPendientes, eax

    ; Mostrar Descargados
    mov eax, bytesDescargados
    mov esi, OFFSET bufDescargados
    call convertirDecimal
    mov edx, OFFSET msg_descargados
    call WriteString
    mov edx, OFFSET bufDescargados
    call WriteString
    call Crlf

    exit
main ENDP

convertirDecimal PROC
    pushad              
    mov ecx, 0          
    mov ebx, 10         

    cmp eax, 0
    jne conversion_loop
    mov byte ptr [esi], '0'
    mov byte ptr [esi+1], 0
    jmp fin_conv

conversion_loop:
    cmp eax, 0
    je pop_loop
    xor edx, edx
    div ebx             
    push edx            
    inc ecx
    jmp conversion_loop

pop_loop:
    pop edx             
    add dl, '0'         
    mov [esi], dl       
    inc esi
    loop pop_loop

    mov byte ptr [esi], 0 

fin_conv:
    popad               
    ret
convertirDecimal ENDP

END main