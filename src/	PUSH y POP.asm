; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 9. PUSH y POP

; Descripción: Manipulación de la pila, comportamiento LIFO y uso de llamadas (CALL/RET).

; Unidad: 2

INCLUDE Irvine32.inc

.code
main PROC
    ; BLOQUE 1: PUSH Y POP
    mov eax, 40
    push eax
    mov eax, 0 
    pop ebx

    ; BLOQUE 2: ORDEN DE LIFO
    mov eax, 10
    push eax
    mov eax, 20
    push eax
    mov eax, 30
    push eax
    
    pop eax
    pop ebx
    pop ecx

    ; BLOQUE 3: CALL Y RET
    mov eax, 50
    mov ebx, 100
    call aumentarDiez

    exit
main ENDP

aumentarDiez PROC
    push ebx
    mov ebx, 10
    add eax, ebx
    pop ebx
    ret
aumentarDiez ENDP

END main