;--------------------------------------------------------------
;>1 syscall
; sys_clock_adjtime - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_clock_adjtime                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_clock_adjtime:                                
;              mov  eax,343    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_clock_adjtime
sys_clock_adjtime:
	mov	eax,343
	int	byte 80h
	or	eax,eax
	ret