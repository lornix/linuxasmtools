;--------------------------------------------------------------
;>1 syscall
; sys_finit_module - kernel function                        
;
;    INPUTS 
;     see AsmRef function -> sys_finit_module                                    
;
;    Note: functon call consists of four instructions
;          
;          sys_finit_module:                                 
;              mov  eax,350    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_finit_module
sys_finit_module:
	mov	eax,350
	int	byte 80h
	or	eax,eax
	ret