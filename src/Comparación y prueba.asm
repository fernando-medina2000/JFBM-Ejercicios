
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 3. Comparación y prueba

; Descripción: Evaluación de registros utilizando CMP y demostración de banderas (Flags).

; Unidad: 2

INCLUDE Irvine32.inc
	
.code
main PROC
    ; Caso 1: ZERO FLAG
    mov eax, 5
    mov ebx, 5
    cmp eax, ebx
    call DumpRegs

    ; Caso 2: SIGN FLAG
    mov al, -5
    mov bl, 1
    cmp al, bl
    call DumpRegs

    ; Caso 3: CARRY FLAG
    mov al, 5
    mov bl, 10
    cmp al, bl
    call DumpRegs

    ; Caso 4: OVERFLOW
    mov al, -128
    mov bl, 1
    cmp al, bl
    call DumpRegs

    ; Caso 5: TEST
    mov eax, 0
    mov ebx, 5
    test eax, 1
    call DumpRegs

    exit
main ENDP

END main