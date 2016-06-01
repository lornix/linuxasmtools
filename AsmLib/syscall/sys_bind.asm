;--------------------------------------------------------------
;>1 syscall
; sys_bind - kernel function                                
;
;    INPUTS 
;     see AsmRef function -> sys_bind                                            
;
;    Note: functon call consists of four instructions
;          
;          sys_bind:                                         
;              mov  eax,361    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_bind
sys_bind:
	mov	eax,361
	int	byte 80h
	or	eax,eax
	ret