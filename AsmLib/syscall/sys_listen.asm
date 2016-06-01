;--------------------------------------------------------------
;>1 syscall
; sys_listen - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_listen                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_listen:                                       
;              mov  eax,363    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_listen
sys_listen:
	mov	eax,363
	int	byte 80h
	or	eax,eax
	ret