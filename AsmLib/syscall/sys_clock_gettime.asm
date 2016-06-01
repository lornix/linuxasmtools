;--------------------------------------------------------------
;>1 syscall
; sys_clock_gettime - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_clock_gettime                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_clock_gettime:                                
;              mov  eax,265    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_clock_gettime
sys_clock_gettime:
	mov	eax,265
	int	byte 80h
	or	eax,eax
	ret