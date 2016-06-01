;--------------------------------------------------------------
;>1 syscall
; sys_getrandom - kernel function                           
;
;    INPUTS 
;     see AsmRef function -> sys_getrandom                                       
;
;    Note: functon call consists of four instructions
;          
;          sys_getrandom:                                    
;              mov  eax,355    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_getrandom
sys_getrandom:
	mov	eax,355
	int	byte 80h
	or	eax,eax
	ret