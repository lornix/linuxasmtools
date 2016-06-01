;--------------------------------------------------------------
;>1 syscall
; sys_userfaultfd - kernel function                         
;
;    INPUTS 
;     see AsmRef function -> sys_userfaultfd                                     
;
;    Note: functon call consists of four instructions
;          
;          sys_userfaultfd:                                  
;              mov  eax,374    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_userfaultfd
sys_userfaultfd:
	mov	eax,374
	int	byte 80h
	or	eax,eax
	ret