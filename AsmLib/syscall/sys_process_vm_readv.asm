;--------------------------------------------------------------
;>1 syscall
; sys_process_vm_readv - kernel function                    
;
;    INPUTS 
;     see AsmRef function -> sys_process_vm_readv                                
;
;    Note: functon call consists of four instructions
;          
;          sys_process_vm_readv:                             
;              mov  eax,347    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_process_vm_readv
sys_process_vm_readv:
	mov	eax,347
	int	byte 80h
	or	eax,eax
	ret