	.arch armv8-a
	.file	"main.c"
	.text
	.align	2
	.global	carr
	.type	carr, %function
carr:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 40]
	mov	x1,0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 24
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	x0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 40]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L3
	bl	__stack_chk_fail
.L3:
	ldp	x29, x30, [sp], 48
	ret
	.size	carr, .-carr
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello world"
	.text
	.align	2
	.global	cptr
	.type	cptr, %function
cptr:
	sub	sp, sp, #16
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	cptr, .-cptr
	.section	.rodata
	.align	3
.LC1:
	.string	"%p -> %s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	bl	carr
	str	x0, [x29, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 24]
	bl	printf
	bl	cptr
	str	x0, [x29, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 24]
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
