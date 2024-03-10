
./a.out:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000578 <_init>:
 578:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 57c:	910003fd 	mov	x29, sp
 580:	9400002a 	bl	628 <call_weak_fn>
 584:	a8c17bfd 	ldp	x29, x30, [sp], #16
 588:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000590 <.plt>:
 590:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 594:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf850>
 598:	f947ca11 	ldr	x17, [x16, #3984]
 59c:	913e4210 	add	x16, x16, #0xf90
 5a0:	d61f0220 	br	x17
 5a4:	d503201f 	nop
 5a8:	d503201f 	nop
 5ac:	d503201f 	nop

00000000000005b0 <__cxa_finalize@plt>:
 5b0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf850>
 5b4:	f947ce11 	ldr	x17, [x16, #3992]
 5b8:	913e6210 	add	x16, x16, #0xf98
 5bc:	d61f0220 	br	x17

00000000000005c0 <__libc_start_main@plt>:
 5c0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf850>
 5c4:	f947d211 	ldr	x17, [x16, #4000]
 5c8:	913e8210 	add	x16, x16, #0xfa0
 5cc:	d61f0220 	br	x17

00000000000005d0 <__gmon_start__@plt>:
 5d0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf850>
 5d4:	f947d611 	ldr	x17, [x16, #4008]
 5d8:	913ea210 	add	x16, x16, #0xfa8
 5dc:	d61f0220 	br	x17

00000000000005e0 <abort@plt>:
 5e0:	90000090 	adrp	x16, 10000 <__FRAME_END__+0xf850>
 5e4:	f947da11 	ldr	x17, [x16, #4016]
 5e8:	913ec210 	add	x16, x16, #0xfb0
 5ec:	d61f0220 	br	x17

Disassembly of section .text:

00000000000005f0 <_start>:
 5f0:	d280001d 	mov	x29, #0x0                   	// #0
 5f4:	d280001e 	mov	x30, #0x0                   	// #0
 5f8:	aa0003e5 	mov	x5, x0
 5fc:	f94003e1 	ldr	x1, [sp]
 600:	910023e2 	add	x2, sp, #0x8
 604:	910003e6 	mov	x6, sp
 608:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf850>
 60c:	f947f800 	ldr	x0, [x0, #4080]
 610:	90000083 	adrp	x3, 10000 <__FRAME_END__+0xf850>
 614:	f947f463 	ldr	x3, [x3, #4072]
 618:	90000084 	adrp	x4, 10000 <__FRAME_END__+0xf850>
 61c:	f947e084 	ldr	x4, [x4, #4032]
 620:	97ffffe8 	bl	5c0 <__libc_start_main@plt>
 624:	97ffffef 	bl	5e0 <abort@plt>

0000000000000628 <call_weak_fn>:
 628:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf850>
 62c:	f947ec00 	ldr	x0, [x0, #4056]
 630:	b4000040 	cbz	x0, 638 <call_weak_fn+0x10>
 634:	17ffffe7 	b	5d0 <__gmon_start__@plt>
 638:	d65f03c0 	ret
 63c:	00000000 	.inst	0x00000000 ; undefined

0000000000000640 <deregister_tm_clones>:
 640:	b0000080 	adrp	x0, 11000 <__data_start>
 644:	91004000 	add	x0, x0, #0x10
 648:	b0000081 	adrp	x1, 11000 <__data_start>
 64c:	91004021 	add	x1, x1, #0x10
 650:	eb00003f 	cmp	x1, x0
 654:	540000a0 	b.eq	668 <deregister_tm_clones+0x28>  // b.none
 658:	90000081 	adrp	x1, 10000 <__FRAME_END__+0xf850>
 65c:	f947e421 	ldr	x1, [x1, #4040]
 660:	b4000041 	cbz	x1, 668 <deregister_tm_clones+0x28>
 664:	d61f0020 	br	x1
 668:	d65f03c0 	ret
 66c:	d503201f 	nop

0000000000000670 <register_tm_clones>:
 670:	b0000080 	adrp	x0, 11000 <__data_start>
 674:	91004000 	add	x0, x0, #0x10
 678:	b0000081 	adrp	x1, 11000 <__data_start>
 67c:	91004021 	add	x1, x1, #0x10
 680:	cb000021 	sub	x1, x1, x0
 684:	9343fc21 	asr	x1, x1, #3
 688:	8b41fc21 	add	x1, x1, x1, lsr #63
 68c:	9341fc21 	asr	x1, x1, #1
 690:	b40000a1 	cbz	x1, 6a4 <register_tm_clones+0x34>
 694:	90000082 	adrp	x2, 10000 <__FRAME_END__+0xf850>
 698:	f947fc42 	ldr	x2, [x2, #4088]
 69c:	b4000042 	cbz	x2, 6a4 <register_tm_clones+0x34>
 6a0:	d61f0040 	br	x2
 6a4:	d65f03c0 	ret

00000000000006a8 <__do_global_dtors_aux>:
 6a8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 6ac:	910003fd 	mov	x29, sp
 6b0:	f9000bf3 	str	x19, [sp, #16]
 6b4:	b0000093 	adrp	x19, 11000 <__data_start>
 6b8:	39404260 	ldrb	w0, [x19, #16]
 6bc:	35000140 	cbnz	w0, 6e4 <__do_global_dtors_aux+0x3c>
 6c0:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf850>
 6c4:	f947e800 	ldr	x0, [x0, #4048]
 6c8:	b4000080 	cbz	x0, 6d8 <__do_global_dtors_aux+0x30>
 6cc:	b0000080 	adrp	x0, 11000 <__data_start>
 6d0:	f9400400 	ldr	x0, [x0, #8]
 6d4:	97ffffb7 	bl	5b0 <__cxa_finalize@plt>
 6d8:	97ffffda 	bl	640 <deregister_tm_clones>
 6dc:	52800020 	mov	w0, #0x1                   	// #1
 6e0:	39004260 	strb	w0, [x19, #16]
 6e4:	f9400bf3 	ldr	x19, [sp, #16]
 6e8:	a8c27bfd 	ldp	x29, x30, [sp], #32
 6ec:	d65f03c0 	ret

00000000000006f0 <frame_dummy>:
 6f0:	17ffffe0 	b	670 <register_tm_clones>

00000000000006f4 <test>:
 6f4:	d503201f 	nop
 6f8:	d65f03c0 	ret

00000000000006fc <main>:
 6fc:	90000080 	adrp	x0, 10000 <__FRAME_END__+0xf850>
 700:	f947f000 	ldr	x0, [x0, #4064]
 704:	90000001 	adrp	x1, 0 <_init-0x578>
 708:	911bd021 	add	x1, x1, #0x6f4
 70c:	f9000001 	str	x1, [x0]
 710:	52800000 	mov	w0, #0x0                   	// #0
 714:	d65f03c0 	ret

0000000000000718 <__libc_csu_init>:
 718:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
 71c:	910003fd 	mov	x29, sp
 720:	a901d7f4 	stp	x20, x21, [sp, #24]
 724:	90000094 	adrp	x20, 10000 <__FRAME_END__+0xf850>
 728:	90000095 	adrp	x21, 10000 <__FRAME_END__+0xf850>
 72c:	91362294 	add	x20, x20, #0xd88
 730:	913602b5 	add	x21, x21, #0xd80
 734:	a902dff6 	stp	x22, x23, [sp, #40]
 738:	cb150294 	sub	x20, x20, x21
 73c:	f9001ff8 	str	x24, [sp, #56]
 740:	2a0003f6 	mov	w22, w0
 744:	aa0103f7 	mov	x23, x1
 748:	9343fe94 	asr	x20, x20, #3
 74c:	aa0203f8 	mov	x24, x2
 750:	97ffff8a 	bl	578 <_init>
 754:	b4000194 	cbz	x20, 784 <__libc_csu_init+0x6c>
 758:	f9000bb3 	str	x19, [x29, #16]
 75c:	d2800013 	mov	x19, #0x0                   	// #0
 760:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
 764:	aa1803e2 	mov	x2, x24
 768:	aa1703e1 	mov	x1, x23
 76c:	2a1603e0 	mov	w0, w22
 770:	91000673 	add	x19, x19, #0x1
 774:	d63f0060 	blr	x3
 778:	eb13029f 	cmp	x20, x19
 77c:	54ffff21 	b.ne	760 <__libc_csu_init+0x48>  // b.any
 780:	f9400bb3 	ldr	x19, [x29, #16]
 784:	a941d7f4 	ldp	x20, x21, [sp, #24]
 788:	a942dff6 	ldp	x22, x23, [sp, #40]
 78c:	f9401ff8 	ldr	x24, [sp, #56]
 790:	a8c47bfd 	ldp	x29, x30, [sp], #64
 794:	d65f03c0 	ret

0000000000000798 <__libc_csu_fini>:
 798:	d65f03c0 	ret

Disassembly of section .fini:

000000000000079c <_fini>:
 79c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 7a0:	910003fd 	mov	x29, sp
 7a4:	a8c17bfd 	ldp	x29, x30, [sp], #16
 7a8:	d65f03c0 	ret
