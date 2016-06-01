;--------------------------------------------------------------
;>1 syscall
; sys_clock_getres - kernel function                        
;
;    INPUTS 
;     see AsmRef function -> sys_clock_getres                                    
;
;    Note: functon call consists of four instructions
;          
;          sys_clock_getres:                                 
;              mov  eax,266    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_clock_getres
sys_clock_getres:
	mov	eax,266
	int	byte 80h
	or	eax,eax
	ret