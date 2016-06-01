;--------------------------------------------------------------
;>1 syscall
; sys_execveat - kernel function                            
;
;    INPUTS 
;     see AsmRef function -> sys_execveat                                        
;
;    Note: functon call consists of four instructions
;          
;          sys_execveat:                                     
;              mov  eax,358    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_execveat
sys_execveat:
	mov	eax,358
	int	byte 80h
	or	eax,eax
	ret