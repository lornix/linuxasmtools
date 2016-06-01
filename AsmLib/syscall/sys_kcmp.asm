;--------------------------------------------------------------
;>1 syscall
; sys_kcmp - kernel function            n                   
;
;    INPUTS 
;     see AsmRef function -> sys_kcmp            v                               
;
;    Note: functon call consists of four instructions
;          
;          sys_kcmp:            :                            
;              mov  eax,349    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_kcmp
sys_kcmp:
	mov	eax,349
	int	byte 80h
	or	eax,eax
	ret