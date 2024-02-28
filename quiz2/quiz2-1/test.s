	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_next_pow2                      ; -- Begin function next_pow2
	.p2align	2
_next_pow2:                             ; @next_pow2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x9, x8, #0x1
	ldr	x8, [sp, #8]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #1
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #2
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #4
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #8
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #16
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [sp, #8]
	orr	x8, x8, x9, lsr #32
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #44]
	add	x0, sp, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x1, l___const.main.testcase@PAGE
	add	x1, x1, l___const.main.testcase@PAGEOFF
	mov	x2, #72
	bl	_memcpy
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adds	x8, x8, #1
	b.eq	LBB1_4
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	_next_pow2
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, sp
	str	x9, [x8]
	str	x0, [x8, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	b	LBB1_1
LBB1_4:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB1_6
	b	LBB1_5
LBB1_5:
	bl	___stack_chk_fail
LBB1_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	3                               ; @__const.main.testcase
l___const.main.testcase:
	.quad	0                               ; 0x0
	.quad	1                               ; 0x1
	.quad	2                               ; 0x2
	.quad	4                               ; 0x4
	.quad	7                               ; 0x7
	.quad	13                              ; 0xd
	.quad	42                              ; 0x2a
	.quad	9                               ; 0x9
	.quad	-1                              ; 0xffffffffffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"next_pow(%llu) = %llu\n"

.subsections_via_symbols
