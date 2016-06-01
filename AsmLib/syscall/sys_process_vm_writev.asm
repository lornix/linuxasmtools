;--------------------------------------------------------------
;>1 syscall
; sys_process_vm_writev - kernel function                   
;
;    INPUTS 
;     see AsmRef function -> sys_process_vm_writev                               
;
;    Note: functon call consists of four instructions
;          
;          sys_process_vm_writev:                            
;              mov  eax,348    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_process_vm_writev
sys_process_vm_writev:
	mov	eax,348
	int	byte 80h
	or	eax,eax
	ret