;--------------------------------------------------------------
;>1 syscall
; sys_clock_nanosleep - kernel function                     
;
;    INPUTS 
;     see AsmRef function -> sys_clock_nanosleep                                 
;
;    Note: functon call consists of four instructions
;          
;          sys_clock_nanosleep:                              
;              mov  eax,267    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_clock_nanosleep
sys_clock_nanosleep:
	mov	eax,267
	int	byte 80h
	or	eax,eax
	ret