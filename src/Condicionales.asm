
; Materia: Lenguajes de Interfaz

; Alumno: Anzueres Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 5. concidionales

; Descripción: Ciclo condicional al inicio y al final

; Unidad: 2


;CICLOS CONDICIONAL INICIO (WHILE)
INCLUDE Irvine32.inc
	
.code
main PROC
	mov ebx,1  ; Valor inicial para el ciclo while
ciclo:
	cmp ebx,100 ; Condicion de salida para el ciclo while

	jg fin ; Salto a la etiqueta fin una vez se cumpla la condicion de  salida

	mov eax,ebx
	call WriteDec ; Se imprime el valor actual de ebx en la consola
	call Crlf ; Salto de linea

	inc ebx ; Realiza un incremento de +1 en el registro señalado (ebx)

	jmp ciclo


fin:
	exit
main ENDP
END main


;CICLO CONDICIONAL FINAL (DO WHILE)

INCLUDE Irvine32.inc
	
.code
main PROC
	mov ebx,1  ; Valor inicial para el ciclo while
ciclo:
	mov eax,ebx
	call WriteDec
	call Crlf
	
	inc ebx
	cmp ebx,100

	jle ciclo

	exit
main ENDP
END main