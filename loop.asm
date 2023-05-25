include 'emu8086.inc'
 .model small
 .stack 100h
 

.data 
 
  array db 5,11,23,34,89
  
.code 
  
  main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset array
    mov cx,5
    
    loopx:
       
       mov dl,[si]
       
       inc si
       loop loopx 
       
       
  main endp