
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 4.1. Mayor, menor o igual con entrada del usuario

; Descripción: Captura dos números y evalúa cuál es mayor, menor o si son iguales mediante saltos condicionales.

; Unidad: 2

INCLUDE Irvine32.inc

.data
    mensaje1   BYTE "Teclea el primer numero : ", 0
    Num1       SDWORD ?
    mensaje2   BYTE "Teclea el segundo numero : ", 0
    Num2       SDWORD ?
    msgIguales BYTE "Los valores son iguales", 0
    msgMayor   BYTE "El valor 1 es mayor", 0
    msgMenor   BYTE "El valor 1 es menor", 0

.code
main PROC
    mov edx, OFFSET mensaje1
    call WriteString
    call ReadInt
    mov Num1, eax
    call Crlf

    mov edx, OFFSET mensaje2
    call WriteString
    call ReadInt
    mov Num2, eax
    call Crlf

    mov eax, Num1
    cmp eax, Num2

    je iguales
    jg mayor
    jl menor

iguales:
    mov edx, OFFSET msgIguales
    call WriteString
    jmp fin

mayor:
    mov edx, OFFSET msgMayor
    call WriteString
    jmp fin

menor:
    mov edx, OFFSET msgMenor
    call WriteString

fin:
    call Crlf
    exit
main ENDP

END main