
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 4. Saltos

; Descripción: Salto incondicional y salto con igualdad

; Unidad: 2


INCLUDE Irvine32.inc
	
.code
main PROC
	mov eax,5

	jmp Continuar

	mov eax,10

Continuar:
	call DumpRegs

	exit

main ENDP

END main

INCLUDE Irvine32.inc
.data
	msgIguales BYTE "Los valores son iguales",0
	msgDiferentes BYTE "Los valores son diferentes",0
.code
main PROC
	mov eax,10
	mov ebx,10

	cmp eax,ebx ; se enciende Zf=1

	je iguales

	mov edx, OFFSET msgDiferentes
	call WriteString

	jmp fin

iguales:
	mov edx,OFFSET msgIguales
	call WriteString

fin:
	call Crlf
	exit

main ENDP

END main