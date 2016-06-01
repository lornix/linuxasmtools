;--------------------------------------------------------------
;>1 syscall
; sys_seccomp - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_seccomp                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_seccomp:                                      
;              mov  eax,354    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_seccomp
sys_seccomp:
	mov	eax,354
	int	byte 80h
	or	eax,eax
	ret