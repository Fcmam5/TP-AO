ASSUME DS:data, CS:code
data segment
message db "que fait ce programme ?"
data ends

code segment
main:
	mov ax,data
	mov ds,ax
	mov ah,09h
	moc dx,offest message
	int 21h
	mov cx,26
	mov dl,61h
	mov ah,02h
	bcl: int 21h
	inc dl
	loop bcl
	mov ax,4C00h
	int 21h
	code ends
end main