INCLUDE Irvine32.inc ciclo hola mundo

.data

.code
main PROC
	mov ecx,5
ciclo:
	mov eax,ecx
	call WriteDec ; imprimir el valor de eax en consola
	call Crlf   ; realiza el cambio de linea
	loop ciclo
	exit
main ENDP

END main