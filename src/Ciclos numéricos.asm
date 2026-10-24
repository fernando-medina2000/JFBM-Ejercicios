
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 1. Ciclos numéricos

; Descripción: Implementación de bucles utilizando el registro ECX y la instrucción LOOP.

; Unidad: 2



INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 5
ciclo:
    mov eax, ecx
    call WriteDec ; Imprimir el valor de eax en consola
    call Crlf     ; Realiza el cambio de línea
    loop ciclo
    exit
main ENDP

END main