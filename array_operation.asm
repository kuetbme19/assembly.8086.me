include 'emu8086.inc'
 .model small
 .stack 100h  
 
.data
 
array1 db 1,2,3,6,5
array2 db 1,2,3,4,5 
a      db  ?
 
.code  
 
   main proc
       
       mov ax,@data
       mov ds,ax
       
       mov si,offset array1
       mov di,offset array2 
       
       mov cx,5
       
      
         loopx:
            
            mov al,[si]
            mov bl,[di]
            
            add al,bl 
            mov a,al
            
            
            inc si
            inc di
            
            
            loop loopx  
            
            
            
            
            
        
            
       
            
            
            
   main endp
   
end main
            
            
            
