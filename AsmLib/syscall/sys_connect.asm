;--------------------------------------------------------------
;>1 syscall
; sys_connect - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_connect                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_connect:                                      
;              mov  eax,362    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_connect
sys_connect:
	mov	eax,362
	int	byte 80h
	or	eax,eax
	ret