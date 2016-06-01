;--------------------------------------------------------------
;>1 syscall
; sys_membarrier - kernel function                          
;
;    INPUTS 
;     see AsmRef function -> sys_membarrier                                      
;
;    Note: functon call consists of four instructions
;          
;          sys_membarrier:                                   
;              mov  eax,375    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_membarrier
sys_membarrier:
	mov	eax,375
	int	byte 80h
	or	eax,eax
	ret