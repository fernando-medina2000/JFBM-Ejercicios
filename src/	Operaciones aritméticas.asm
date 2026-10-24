
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 8. Operaciones aritméticas

; Descripción: Ejecución de operaciones de suma, resta, multiplicación y división evaluando banderas.

; Unidad: 2

; Horario : 8 - 9

INCLUDE Irvine32.inc

.code
main PROC
    ; 1.- ADD Y SUB
    mov eax, 50
    mov ebx, 20
    add eax, ebx
    sub eax, 15

    ; 2.- CF: Acarreo en suma sin signo
    mov eax, 0
    mov al, 255
    add al, 1

    ; 3.- OF: Desbordamiento en suma con signo
    mov eax, 0
    mov al, 127
    add al, 1

    ; 4.- MUL: Producto dentro de 32 bits
    mov eax, 25
    mov ebx, 3
    mul ebx

    ; 5.- IMUL: Producto con signo
    mov eax, -5
    imul eax, eax, 3

    ; 6.- DIV: División sin signo
    mov eax, 125
    mov edx, 0
    mov ebx, 12
    div ebx

    ; 7.- IDIV y CDQ: División con signo
    mov eax, -125
    cdq
    mov ebx, 12
    idiv ebx

    exit
main ENDP

END main