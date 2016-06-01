;--------------------------------------------------------------
;>1 syscall
; sys_renameat2 - kernel function                           
;
;    INPUTS 
;     see AsmRef function -> sys_renameat2                                       
;
;    Note: functon call consists of four instructions
;          
;          sys_renameat2:                                    
;              mov  eax,353    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_renameat2
sys_renameat2:
	mov	eax,353
	int	byte 80h
	or	eax,eax
	ret