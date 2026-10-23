INCLUDE Irvine32.inc ciclo numerico


.data
mensaje BYTE "Hola,Mundo!",0
.code
main PROC
	mov ecx, 10

ciclo:
	mov edx,OFFSET mensaje
	call WriteString ; imprimir el valor de eax en consola
	call Crlf   ; realiza el cambio de linea
	loop ciclo
	exit
main ENDP

END main