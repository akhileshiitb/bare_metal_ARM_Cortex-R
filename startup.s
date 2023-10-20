.syntax unified 
.extern _stack_top

.section .vectors
.arm
.global _vectors
_vectors:
		.word _start
		.word _undef
		.word _svc_handler
		.word _prefetch_abort_handler
		.word _data_abort_handler
		.word _irq_handler
		.word _fiq_handler

.text
.arm
.align 2
.global _start
.type _start, %function
_start:
		mov r0, #0
		mov r1, #0
		mov r2, #0
		mov r3, #0
		ldr sp, __stack_top // init stack pointer
		bl main
loop:
		b loop

.text 
.align 2
.global __stack_top
.type __stack_top, %object
__stack_top:
		.word _stack_top

.text
.arm
.align 2
.global _undef
.type _undef, %function
_undef:
		b _undef

.text
.arm
.align 2
.global _svc_handler
.type _svc_handler, %function
_svc_handler:
		b _svc_handler

.text
.arm
.align 2
.global _prefetch_abort_handler
.type _prefetch_abort_handler, %function
_prefetch_abort_handler:
		b _prefetch_abort_handler 

.text
.arm
.align 2
.global _data_abort_handler
.type _data_abort_handler, %function
_data_abort_handler:
		b _data_abort_handler


.text
.arm
.align 2
.global _irq_handler
.type _irq_handler, %function
_irq_handler:
		b _irq_handler

.text
.arm
.align 2
.global _fiq_handler
.type _fiq_handler, %function
_fiq_handler:
		b _fiq_handler

