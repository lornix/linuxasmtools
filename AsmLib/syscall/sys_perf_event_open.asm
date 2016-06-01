;--------------------------------------------------------------
;>1 syscall
; sys_perf_event_open - kernel function                     
;
;    INPUTS 
;     see AsmRef function -> sys_perf_event_open                                 
;
;    Note: functon call consists of four instructions
;          
;          sys_perf_event_open:                              
;              mov  eax,336    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_perf_event_open
sys_perf_event_open:
	mov	eax,336
	int	byte 80h
	or	eax,eax
	ret