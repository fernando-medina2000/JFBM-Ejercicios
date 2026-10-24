; ########################################################################################
; Materia: Lenguajes de Interfaz
; Alumno: Anzures Medina Jose Fernando
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 2. Captura y desplegado de mensajes
; Descripción: Lectura de una cadena de texto desde consola y despliegue de la misma.
;Unidad: 2
; ########################################################################################

INCLUDE Irvine32.inc

.data
    mensajeBienvenida BYTE "Que quieres escribir?", 0
    palabra           BYTE 20 DUP(0)

.code
main PROC
    mov edx, OFFSET mensajeBienvenida
    call WriteString
    call Crlf

    mov edx, OFFSET palabra
    mov ecx, SIZEOF palabra
    call ReadString
    call Crlf

    mov edx, OFFSET palabra
    call WriteString
    call Crlf
    
    exit
main ENDP
