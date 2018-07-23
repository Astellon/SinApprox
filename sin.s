	.file	"sin.cpp"
	.section	.rodata
	.align 8
	.type	_ZN6approxL2PIE, @object
	.size	_ZN6approxL2PIE, 8
_ZN6approxL2PIE:
	.long	1413754136
	.long	1074340347
	.text
	.globl	_ZN6approx4pade15sinZeroToHalfPiEd
	.type	_ZN6approx4pade15sinZeroToHalfPiEd, @function
_ZN6approx4pade15sinZeroToHalfPiEd:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	-8(%rbp), %xmm2
	movsd	.LC3(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	movsd	.LC4(%rip), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	_ZN6approx4pade15sinZeroToHalfPiEd, .-_ZN6approx4pade15sinZeroToHalfPiEd
	.globl	_ZN6approx4pade3sinEd
	.type	_ZN6approx4pade3sinEd, @function
_ZN6approx4pade3sinEd:
.LFB225:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L20
	movsd	-8(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	_ZN6approx4pade3sinEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L6
.L20:
	movsd	.LC7(%rip), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L21
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L6
.L21:
	movsd	.LC7(%rip), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L22
	movsd	.LC7(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L6
.L22:
	movsd	.LC7(%rip), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L23
	movsd	.LC7(%rip), %xmm1
	movsd	-8(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L6
.L23:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L24
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-8(%rbp), %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L6
.L24:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	fmod
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	_ZN6approx4pade3sinEd
	movq	%xmm0, %rax
.L6:
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	_ZN6approx4pade3sinEd, .-_ZN6approx4pade3sinEd
	.globl	_ZN6approx4pade3sinENS_5PhaseE
	.type	_ZN6approx4pade3sinENS_5PhaseE, @function
_ZN6approx4pade3sinENS_5PhaseE:
.LFB226:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5Phase11getRawValueEv
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$1073741823, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$22, %rax
	movq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L26
	movq	-24(%rbp), %rdx
	movabsq	$4503599627370495, %rax
	xorq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L26:
	leaq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC10(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC7(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jns	.L27
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L29
.L27:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	call	_ZN6approx4pade15sinZeroToHalfPiEd
	movq	%xmm0, %rax
.L29:
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	_ZN6approx4pade3sinENS_5PhaseE, .-_ZN6approx4pade3sinENS_5PhaseE
	.align 2
	.type	_ZN6approx5table12_GLOBAL__N_18SinTableC2Ev, @function
_ZN6approx5table12_GLOBAL__N_18SinTableC2Ev:
.LFB228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$256, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movabsq	$1143914305352105984, %rdx
	cmpq	%rdx, %rax
	ja	.L32
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, -20(%rbp)
	jmp	.L35
.L32:
	call	__cxa_throw_bad_array_new_length
.L35:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jle	.L34
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	pxor	%xmm0, %xmm0
	cvtsi2sd	-20(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	call	sin
	movq	%xmm0, %rax
	movq	%rax, (%rbx)
	addl	$1, -20(%rbp)
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	_ZN6approx5table12_GLOBAL__N_18SinTableC2Ev, .-_ZN6approx5table12_GLOBAL__N_18SinTableC2Ev
	.set	_ZN6approx5table12_GLOBAL__N_18SinTableC1Ev,_ZN6approx5table12_GLOBAL__N_18SinTableC2Ev
	.align 2
	.type	_ZN6approx5table12_GLOBAL__N_18SinTableD2Ev, @function
_ZN6approx5table12_GLOBAL__N_18SinTableD2Ev:
.LFB231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L37:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	_ZN6approx5table12_GLOBAL__N_18SinTableD2Ev, .-_ZN6approx5table12_GLOBAL__N_18SinTableD2Ev
	.set	_ZN6approx5table12_GLOBAL__N_18SinTableD1Ev,_ZN6approx5table12_GLOBAL__N_18SinTableD2Ev
	.align 2
	.type	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd, @function
_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd:
.LFB233:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L55
	movsd	-16(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L41
.L55:
	movsd	.LC7(%rip), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L56
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L41
.L56:
	movsd	.LC7(%rip), %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L57
	movsd	.LC7(%rip), %xmm0
	subsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L41
.L57:
	movsd	.LC7(%rip), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L58
	movsd	.LC7(%rip), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L41
.L58:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.L59
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L41
.L59:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	call	fmod
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd
	movq	%xmm0, %rax
.L41:
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd, .-_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd
	.align 2
	.type	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinENS_5PhaseE, @function
_ZNK6approx5table12_GLOBAL__N_18SinTable3sinENS_5PhaseE:
.LFB234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5Phase11getRawValueEv
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1073741823, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L61
	xorl	$1073741823, -32(%rbp)
.L61:
	movl	-32(%rbp), %eax
	shrl	$22, %eax
	movb	%al, -33(%rbp)
	movl	-32(%rbp), %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$30, %rax
	movq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC10(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jns	.L62
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LC6(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L64
.L62:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	-33(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
.L64:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L65
	call	__stack_chk_fail
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinENS_5PhaseE, .-_ZNK6approx5table12_GLOBAL__N_18SinTable3sinENS_5PhaseE
	.align 2
	.type	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd, @function
_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd:
.LFB235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	-12(%rbp), %xmm0
	movsd	-8(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd, .-_ZNK6approx5table12_GLOBAL__N_18SinTable15sinZeroToHalfPiEd
	.local	_ZN6approx5table12_GLOBAL__N_15tableE
	.comm	_ZN6approx5table12_GLOBAL__N_15tableE,16,16
	.globl	_ZN6approx5table3sinEd
	.type	_ZN6approx5table3sinEd, @function
_ZN6approx5table3sinEd:
.LFB236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movl	$_ZN6approx5table12_GLOBAL__N_15tableE, %edi
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinEd
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	_ZN6approx5table3sinEd, .-_ZN6approx5table3sinEd
	.globl	_ZN6approx5table3sinENS_5PhaseE
	.type	_ZN6approx5table3sinENS_5PhaseE, @function
_ZN6approx5table3sinENS_5PhaseE:
.LFB237:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA237
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZN6approx5table12_GLOBAL__N_15tableE, %edi
.LEHB0:
	call	_ZNK6approx5table12_GLOBAL__N_18SinTable3sinENS_5PhaseE
.LEHE0:
	movq	%xmm0, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6approx5PhaseD1Ev
	movq	%rbx, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L73
	jmp	.L75
.L74:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6approx5PhaseD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L75:
	call	__stack_chk_fail
.L73:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE237-.LLSDACSB237
.LLSDACSB237:
	.uleb128 .LEHB0-.LFB237
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L74-.LFB237
	.uleb128 0
	.uleb128 .LEHB1-.LFB237
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE237:
	.text
	.size	_ZN6approx5table3sinENS_5PhaseE, .-_ZN6approx5table3sinENS_5PhaseE
	.section	.rodata
	.align 4
	.type	_ZN6approx17compiletime_tableL1NE, @object
	.size	_ZN6approx17compiletime_tableL1NE, 4
_ZN6approx17compiletime_tableL1NE:
	.long	256
	.align 32
	.type	_ZN6approx17compiletime_tableL5tableE, @object
	.size	_ZN6approx17compiletime_tableL5tableE, 2064
_ZN6approx17compiletime_tableL5tableE:
	.long	1413754136
	.long	1074340347
	.long	0
	.long	0
	.long	4268163185
	.long	1064903152
	.long	4242458500
	.long	1065951697
	.long	3152219901
	.long	1066588470
	.long	4154680958
	.long	1067000149
	.long	835833601
	.long	1067411767
	.long	1972655565
	.long	1067636837
	.long	3532705091
	.long	1067842560
	.long	4044216340
	.long	1068048229
	.long	314628066
	.long	1068253837
	.long	2046304480
	.long	1068459374
	.long	886507954
	.long	1068581889
	.long	2462980598
	.long	1068684576
	.long	2032607382
	.long	1068787217
	.long	177906713
	.long	1068889808
	.long	1784503073
	.long	1068992344
	.long	3156849708
	.long	1069094822
	.long	608787460
	.long	1069197239
	.long	3349070549
	.long	1069299589
	.long	3417219016
	.long	1069401870
	.long	1453945614
	.long	1069504078
	.long	1203405597
	.long	1069576864
	.long	3470456182
	.long	1069627888
	.long	3572267982
	.long	1069678870
	.long	1854824762
	.long	1069729808
	.long	2966261012
	.long	1069780699
	.long	2972270170
	.long	1069831542
	.long	2241316337
	.long	1069882335
	.long	1149976518
	.long	1069933076
	.long	83249842
	.long	1069983763
	.long	3729833777
	.long	1070034393
	.long	3902563525
	.long	1070084966
	.long	1013556746
	.long	1070135480
	.long	4074521446
	.long	1070185931
	.long	632292433
	.long	1070236320
	.long	4013778722
	.long	1070286642
	.long	1786662755
	.long	1070336898
	.long	3004347014
	.long	1070387084
	.long	3846521617
	.long	1070437199
	.long	504371739
	.long	1070487242
	.long	2065784602
	.long	1070537209
	.long	450883064
	.long	1070587100
	.long	238550446
	.long	1070616504
	.long	3487292304
	.long	1070641369
	.long	1655830135
	.long	1070666194
	.long	3614855543
	.long	1070690976
	.long	1062001469
	.long	1070715716
	.long	2881731442
	.long	1070740411
	.long	785751813
	.long	1070765062
	.long	3672900486
	.long	1070789666
	.long	3269558610
	.long	1070814224
	.long	4194571447
	.long	1070838734
	.long	2484561410
	.long	1070863196
	.long	2773946452
	.long	1070887608
	.long	1115219818
	.long	1070911970
	.long	2158967844
	.long	1070936280
	.long	1974149085
	.long	1070960538
	.long	933144211
	.long	1070984743
	.long	3711903686
	.long	1071008893
	.long	2110225942
	.long	1071032989
	.long	821708190
	.long	1071057029
	.long	254023926
	.long	1071081012
	.long	824036583
	.long	1071104937
	.long	2957945540
	.long	1071128803
	.long	2796464483
	.long	1071152610
	.long	784901295
	.long	1071176357
	.long	1673302999
	.long	1071200042
	.long	1631698430
	.long	1071223665
	.long	1135144330
	.long	1071247225
	.long	668901860
	.long	1071270721
	.long	728580041
	.long	1071294152
	.long	1820278793
	.long	1071317517
	.long	165764288
	.long	1071340816
	.long	587513089
	.long	1071364047
	.long	3623952103
	.long	1071387209
	.long	1234632714
	.long	1071410303
	.long	2570175581
	.long	1071433326
	.long	3907640155
	.long	1071456278
	.long	1535566729
	.long	1071479159
	.long	344050776
	.long	1071501967
	.long	939980347
	.long	1071524701
	.long	3942142227
	.long	1071547360
	.long	1391425749
	.long	1071569945
	.long	2520764520
	.long	1071592453
	.long	3690502842
	.long	1071614884
	.long	1273434640
	.long	1071637238
	.long	2269920951
	.long	1071652092
	.long	648946202
	.long	1071663190
	.long	2569207789
	.long	1071674247
	.long	1947715041
	.long	1071685264
	.long	1297975695
	.long	1071696240
	.long	3140128381
	.long	1071707174
	.long	1411074850
	.long	1071718067
	.long	2939383019
	.long	1071728917
	.long	1675549513
	.long	1071739725
	.long	166902200
	.long	1071750490
	.long	967731400
	.long	1071761211
	.long	2344388123
	.long	1071771888
	.long	2570316632
	.long	1071782521
	.long	4221086751
	.long	1071793109
	.long	1289556703
	.long	1071803653
	.long	660774056
	.long	1071814151
	.long	637203434
	.long	1071824603
	.long	3823692310
	.long	1071835008
	.long	4242632757
	.long	1071845367
	.long	218926679
	.long	1071855680
	.long	2969983475
	.long	1071865944
	.long	2246044450
	.long	1071876161
	.long	689983673
	.long	1071886330
	.long	952468291
	.long	1071896450
	.long	1397053140
	.long	1071906521
	.long	395209649
	.long	1071916543
	.long	621354454
	.long	1071926515
	.long	462975815
	.long	1071936437
	.long	2610628920
	.long	1071946308
	.long	1173094404
	.long	1071956129
	.long	3152274921
	.long	1071965898
	.long	2673451163
	.long	1071975616
	.long	2460177814
	.long	1071985282
	.long	949440823
	.long	1071994896
	.long	881650847
	.long	1072004457
	.long	710767184
	.long	1072013965
	.long	3194290572
	.long	1072023419
	.long	2508419188
	.long	1072032820
	.long	1427975390
	.long	1072042167
	.long	2736528361
	.long	1072051459
	.long	636516414
	.long	1072060697
	.long	2224140048
	.long	1072069879
	.long	1719614412
	.long	1072079006
	.long	1942061685
	.long	1072088077
	.long	1424664750
	.long	1072097092
	.long	3004657018
	.long	1072106050
	.long	938475414
	.long	1072114952
	.long	2376651405
	.long	1072123796
	.long	1594061409
	.long	1072132583
	.long	1464817124
	.long	1072141312
	.long	577417135
	.long	1072149983
	.long	1824734642
	.long	1072158595
	.long	3814135664
	.long	1072167148
	.long	867531467
	.long	1072175643
	.long	201299821
	.long	1072184078
	.long	451500236
	.long	1072192453
	.long	263859903
	.long	1072200768
	.long	2588791978
	.long	1072209022
	.long	1796544321
	.long	1072217216
	.long	857118924
	.long	1072225349
	.long	2750387212
	.long	1072233420
	.long	1876204962
	.long	1072241430
	.long	1234330619
	.long	1072249378
	.long	3834539479
	.long	1072257263
	.long	4106737473
	.long	1072265086
	.long	785911074
	.long	1072272847
	.long	1207142208
	.long	1072280544
	.long	4125786325
	.long	1072288177
	.long	4012486548
	.long	1072295747
	.long	3938122038
	.long	1072303253
	.long	2688952194
	.long	1072310695
	.long	3356596936
	.long	1072318072
	.long	453180130
	.long	1072325385
	.long	1386210973
	.long	1072332632
	.long	688824739
	.long	1072339814
	.long	1494663380
	.long	1072346930
	.long	2653017360
	.long	1072353980
	.long	3023836275
	.long	1072360964
	.long	1477771775
	.long	1072367882
	.long	1191187379
	.long	1072374733
	.long	1056266002
	.long	1072381517
	.long	4270986245
	.long	1072388233
	.long	1159294526
	.long	1072394883
	.long	3530884329
	.long	1072401464
	.long	1731563730
	.long	1072407978
	.long	3298001130
	.long	1072414423
	.long	2892993833
	.long	1072420800
	.long	3780343773
	.long	1072427108
	.long	645027145
	.long	1072433348
	.long	1068069295
	.long	1072439518
	.long	4051746224
	.long	1072445618
	.long	19622151
	.long	1072451650
	.long	881357723
	.long	1072457611
	.long	1378041075
	.long	1072463502
	.long	557060597
	.long	1072469323
	.long	1772140800
	.long	1072475073
	.long	4093443164
	.long	1072480752
	.long	2307601142
	.long	1072486361
	.long	4097623923
	.long	1072491898
	.long	4273126802
	.long	1072497364
	.long	1950234075
	.long	1072502759
	.long	551612319
	.long	1072508082
	.long	3511535930
	.long	1072513332
	.long	1391017649
	.long	1072518511
	.long	1942611595
	.long	1072523617
	.long	45673721
	.long	1072528651
	.long	3476196678
	.long	1072533611
	.long	2842069383
	.long	1072538499
	.long	1647878298
	.long	1072543314
	.long	3410035296
	.long	1072548055
	.long	3066872380
	.long	1072552723
	.long	4158539737
	.long	1072557317
	.long	1647164971
	.long	1072561838
	.long	3391717548
	.long	1072566284
	.long	83265253
	.long	1072570657
	.long	3899706917
	.long	1072574954
	.long	1261158782
	.long	1072579178
	.long	74620924
	.long	1072583327
	.long	3964199186
	.long	1072587400
	.long	3681195844
	.long	1072591399
	.long	2873938188
	.long	1072595323
	.long	907933682
	.long	1072599172
	.long	1455828443
	.long	1072602945
	.long	3907496078
	.long	1072606642
	.long	3370060660
	.long	1072610264
	.long	3552821124
	.long	1072613810
	.long	3882371427
	.long	1072617280
	.long	3797589436
	.long	1072620674
	.long	2749658050
	.long	1072623992
	.long	202085868
	.long	1072627234
	.long	4220661975
	.long	1072630398
	.long	1408704605
	.long	1072633487
	.long	4151720665
	.long	1072636498
	.long	3372784285
	.long	1072639433
	.long	2892293513
	.long	1072642291
	.long	2248119005
	.long	1072645072
	.long	990588717
	.long	1072647776
	.long	2977472132
	.long	1072650402
	.long	3489094832
	.long	1072652951
	.long	2113256375
	.long	1072655423
	.long	2745245815
	.long	1072657817
	.long	702954862
	.long	1072660134
	.long	4201728937
	.long	1072662372
	.long	4289610203
	.long	1072664533
	.long	617154971
	.long	1072666617
	.long	1437446856
	.long	1072668622
	.long	2131272983
	.long	1072670549
	.long	2387005371
	.long	1072672398
	.long	1905645377
	.long	1072674169
	.long	400834950
	.long	1072675862
	.long	1893834707
	.long	1072677476
	.long	1828632353
	.long	1072679012
	.long	4251821691
	.long	1072680469
	.long	337775492
	.long	1072681849
	.long	2748392741
	.long	1072683149
	.long	2683434070
	.long	1072684371
	.long	4240268041
	.long	1072685514
	.long	2939042112
	.long	1072686579
	.long	2902558778
	.long	1072687565
	.long	3971380164
	.long	1072688472
	.long	1703834029
	.long	1072689301
	.long	260921180
	.long	1072690051
	.long	3816385918
	.long	1072690721
	.long	3671818719
	.long	1072691313
	.long	4026464093
	.long	1072691826
	.long	502387704
	.long	1072692261
	.long	1619315981
	.long	1072692616
	.long	3024834977
	.long	1072692892
	.long	379294427
	.long	1072693090
	.long	2240711314
	.long	1072693208
	.long	0
	.long	1072693248
	.text
	.globl	_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	.type	_ZN6approx17compiletime_table15sinZeroToHalfPiEd, @function
_ZN6approx17compiletime_table15sinZeroToHalfPiEd:
.LFB241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	%xmm0, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	-32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	-12(%rbp), %xmm0
	movsd	-8(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	addsd	-32(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE241:
	.size	_ZN6approx17compiletime_table15sinZeroToHalfPiEd, .-_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	.globl	_ZN6approx17compiletime_table3sinEd
	.type	_ZN6approx17compiletime_table3sinEd, @function
_ZN6approx17compiletime_table3sinEd:
.LFB242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L95
	movsd	-8(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	_ZN6approx17compiletime_table3sinEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L81
.L95:
	movsd	.LC7(%rip), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L96
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L81
.L96:
	movsd	.LC7(%rip), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L97
	movsd	.LC7(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	call	_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	movq	%xmm0, %rax
	jmp	.L81
.L97:
	movsd	.LC7(%rip), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L98
	movsd	.LC7(%rip), %xmm1
	movsd	-8(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	call	_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L81
.L98:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L99
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-8(%rbp), %xmm0
	call	_ZN6approx17compiletime_table15sinZeroToHalfPiEd
	movapd	%xmm0, %xmm1
	movsd	.LC6(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L81
.L99:
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	fmod
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	_ZN6approx17compiletime_table3sinEd
	movq	%xmm0, %rax
.L81:
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE242:
	.size	_ZN6approx17compiletime_table3sinEd, .-_ZN6approx17compiletime_table3sinEd
	.globl	_ZN6approx17compiletime_table3sinENS_5PhaseE
	.type	_ZN6approx17compiletime_table3sinENS_5PhaseE, @function
_ZN6approx17compiletime_table3sinENS_5PhaseE:
.LFB243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK6approx5Phase11getRawValueEv
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1073741823, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L101
	xorl	$1073741823, -32(%rbp)
.L101:
	movl	-32(%rbp), %eax
	shrl	$22, %eax
	movb	%al, -33(%rbp)
	movl	-32(%rbp), %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$30, %rax
	movq	%rax, %rdx
	movabsq	$4607182418800017408, %rax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC10(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jns	.L102
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	%xmm0, -64(%rbp)
	movzbl	-33(%rbp), %eax
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	-64(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movzbl	-33(%rbp), %eax
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	addsd	-64(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L104
.L102:
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	%xmm0, -64(%rbp)
	movzbl	-33(%rbp), %eax
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	movsd	-64(%rbp), %xmm4
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movzbl	-33(%rbp), %eax
	movq	%rax, %rsi
	movl	$_ZN6approx17compiletime_tableL5tableE, %edi
	call	_ZNK8SinTableILi256EE3getEm
	addsd	-64(%rbp), %xmm0
.L104:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L105
	call	__stack_chk_fail
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	_ZN6approx17compiletime_table3sinENS_5PhaseE, .-_ZN6approx17compiletime_table3sinENS_5PhaseE
	.section	.text._ZNK8SinTableILi256EE3getEm,"axG",@progbits,_ZNK8SinTableILi256EE3getEm,comdat
	.align 2
	.weak	_ZNK8SinTableILi256EE3getEm
	.type	_ZNK8SinTableILi256EE3getEm, @function
_ZNK8SinTableILi256EE3getEm:
.LFB244:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movsd	8(%rax,%rdx,8), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE244:
	.size	_ZNK8SinTableILi256EE3getEm, .-_ZNK8SinTableILi256EE3getEm
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB245:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L110
	cmpl	$65535, -8(%rbp)
	jne	.L110
	movl	$_ZN6approx5table12_GLOBAL__N_15tableE, %edi
	call	_ZN6approx5table12_GLOBAL__N_18SinTableC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZN6approx5table12_GLOBAL__N_15tableE, %esi
	movl	$_ZN6approx5table12_GLOBAL__N_18SinTableD1Ev, %edi
	call	__cxa_atexit
.L110:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE245:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN6approx4pade15sinZeroToHalfPiEd, @function
_GLOBAL__sub_I__ZN6approx4pade15sinZeroToHalfPiEd:
.LFB246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	_GLOBAL__sub_I__ZN6approx4pade15sinZeroToHalfPiEd, .-_GLOBAL__sub_I__ZN6approx4pade15sinZeroToHalfPiEd
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN6approx4pade15sinZeroToHalfPiEd
	.section	.rodata
	.align 8
.LC0:
	.long	2576980378
	.long	1076205977
	.align 8
.LC1:
	.long	0
	.long	1081049088
	.align 8
.LC2:
	.long	0
	.long	1076101120
	.align 8
.LC3:
	.long	0
	.long	1078853632
	.align 8
.LC4:
	.long	0
	.long	1084469248
	.align 16
.LC6:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC7:
	.long	1413754136
	.long	1074340347
	.align 8
.LC8:
	.long	0
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1074266112
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	0
	.long	1081081856
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
