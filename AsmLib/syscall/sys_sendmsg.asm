;--------------------------------------------------------------
;>1 syscall
; sys_sendmsg - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_sendmsg                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_sendmsg:                                      
;              mov  eax,370    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_sendmsg
sys_sendmsg:
	mov	eax,370
	int	byte 80h
	or	eax,eax
	ret