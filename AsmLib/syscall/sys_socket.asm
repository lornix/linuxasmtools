;--------------------------------------------------------------
;>1 syscall
; sys_socket - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_socket                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_socket:                                       
;              mov  eax,359    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_socket
sys_socket:
	mov	eax,359
	int	byte 80h
	or	eax,eax
	ret