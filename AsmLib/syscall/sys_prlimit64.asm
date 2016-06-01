;--------------------------------------------------------------
;>1 syscall
; sys_prlimit64 - kernel function                           
;
;    INPUTS 
;     see AsmRef function -> sys_prlimit64                                       
;
;    Note: functon call consists of four instructions
;          
;          sys_prlimit64:                                    
;              mov  eax,340    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_prlimit64
sys_prlimit64:
	mov	eax,340
	int	byte 80h
	or	eax,eax
	ret