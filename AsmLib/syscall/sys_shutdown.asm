;--------------------------------------------------------------
;>1 syscall
; sys_shutdown - kernel function                            
;
;    INPUTS 
;     see AsmRef function -> sys_shutdown                                        
;
;    Note: functon call consists of four instructions
;          
;          sys_shutdown:                                     
;              mov  eax,373    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_shutdown
sys_shutdown:
	mov	eax,373
	int	byte 80h
	or	eax,eax
	ret