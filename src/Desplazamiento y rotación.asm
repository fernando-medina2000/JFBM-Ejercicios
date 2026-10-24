; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 12. Desplazamiento y rotación

; Descripción: Operaciones de corrimiento de bits con SHL, SHR y SAR utilizando constantes y registros.

; Unidad: 2

INCLUDE Irvine32.inc

.code
main PROC
    ; 1 -- SHL
    mov al, 10000110b
    shl al, 2
    call DumpRegs
    call WriteBin

    ; 2 -- SHR
    mov al, 00001101b
    shr al, 1
    call DumpRegs
    call WriteBin

    ; 3 -- SAR
    mov al, -8
    sar al, 1
    call DumpRegs
    call WriteBin

    exit
main ENDP

END main