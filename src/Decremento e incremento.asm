
; Materia: Lenguajes de Interfaz

; Alumno: Anzures Medina Jose Fernando

; Docente: Dr. José Luis Medina Jiménez

; Práctica: 6. DEC(DECREMENTO)

; Descripción: Control de acceso con decremento

; Unidad: 2

; Horario : 8 - 9


;CONTROL DE ACCESO DEC(DECREMENTO)
INCLUDE Irvine32.inc

.data
msgPIN BYTE "INGRESE EL PIN DE ACCESO: ",0
msgERROR BYTE "PIN INCORRECTO: ",0
msgACCESO BYTE "PIN CORRECTO ",0
msgINTENTOS BYTE "INTENTOS RESTANTES :",0
msgBLOQUEO BYTE "SISTEMA BLOQUEADO POR 9861762587 AÑOS: ",0

PinCorrecto = 6767
.code
main PROC

	mov ebx,3 ; Numero de intentos

ciclo:
	mov edx ,OFFSET msgPIN
	call WriteString
	call ReadInt
	

	cmp eax,PinCorrecto

	je acceso

	mov edx ,OFFSET msgERROR
	call WriteString
	

	dec ebx
	jz bloqueado

	mov edx ,OFFSET msgINTENTOS
	call WriteString
	

	mov eax,ebx
	call WriteDec
	call Crlf

	jmp ciclo

acceso:
	mov edx ,OFFSET msgACCESO
	call WriteString
	call Crlf
	jmp fin

bloqueado:
	mov edx ,OFFSET msgBLOQUEO
	call WriteString
	call Crlf
	jmp fin
fin:
	exit
	
main ENDP
END main