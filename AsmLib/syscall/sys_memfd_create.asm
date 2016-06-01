;--------------------------------------------------------------
;>1 syscall
; sys_memfd_create - kernel function                        
;
;    INPUTS 
;     see AsmRef function -> sys_memfd_create                                    
;
;    Note: functon call consists of four instructions
;          
;          sys_memfd_create:                                 
;              mov  eax,356    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_memfd_create
sys_memfd_create:
	mov	eax,356
	int	byte 80h
	or	eax,eax
	ret