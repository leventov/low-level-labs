	.file	"ABigInt.cpp"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6BigIntC2Eii
	.type	_ZN6BigIntC2Eii, @function
_ZN6BigIntC2Eii:
.LFB13:
	.cfi_startproc
	movq	%rbx, -16(%rsp)
	movq	%rdi, %rbx
	.cfi_offset 3, -24
	movq	%rbp, -8(%rsp)
	movl	%esi, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -16
	movl	%esi, 8(%rbx)
	movslq	_ZN6BigInt2WSE(%rip), %rsi
	movl	%edx, %ebp
	movslq	%edi, %rdi
	movslq	%ebp, %rbp
	call	calloc
	movq	%rax, (%rbx)
	movq	%rbp, (%rax)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN6BigIntC2Eii, .-_ZN6BigIntC2Eii
	.align 2
	.p2align 4,,15
	.globl	_ZN6BigIntC2Ei
	.type	_ZN6BigIntC2Ei, @function
_ZN6BigIntC2Ei:
.LFB16:
	.cfi_startproc
	movq	%rbx, -16(%rsp)
	movq	%rbp, -8(%rsp)
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -16
	.cfi_offset 3, -24
	movl	%esi, %ebp
	movslq	_ZN6BigInt2WSE(%rip), %rsi
	movq	%rdi, %rbx
	movl	$1, 8(%rdi)
	movslq	%ebp, %rbp
	movl	$1, %edi
	call	calloc
	movq	%rax, (%rbx)
	movq	%rbp, (%rax)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN6BigIntC2Ei, .-_ZN6BigIntC2Ei
	.align 2
	.p2align 4,,15
	.globl	_ZN6BigIntpLERKS_
	.type	_ZN6BigIntpLERKS_, @function
_ZN6BigIntpLERKS_:
.LFB18:
	.cfi_startproc
	movq	%rbx, -24(%rsp)
	movq	%rbp, -16(%rsp)
	movq	%rsi, %rbx
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -16
	movl	8(%rsi), %esi
	movq	%rdi, %rbp
	call	_ZN6BigInt4growEi
	movl	8(%rbp), %r12d
	xorl	%eax, %eax
	movq	(%rbx), %rsi
	movq	0(%rbp), %rdx
	movq	%rax, %rbx
	movl	%r12d, %ecx
#APP
# 106 "ABigInt.cpp" 1
	clc
l1:	mov	(%rsi, %rbx), %rax
	adc	%rax, (%rdx, %rbx)
	lea	8(%rbx), %rbx
	dec	%ecx
	jnz	l1
	jnc	.L4

# 0 "" 2
#NO_APP
	leal	1(%r12), %esi
	movq	%rbp, %rdi
	movslq	%r12d, %r12
	call	_ZN6BigInt5allocEi
	movq	0(%rbp), %rax
	movq	$1, (%rax,%r12,8)
.L4:
	movq	%rbp, %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6BigIntpLERKS_, .-_ZN6BigIntpLERKS_
	.align 2
	.p2align 4,,15
	.globl	_ZN6BigIntmIERKS_
	.type	_ZN6BigIntmIERKS_, @function
_ZN6BigIntmIERKS_:
.LFB19:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rdx
	xorl	%ebx, %ebx
	movq	(%rsi), %rsi
	movl	8(%rdi), %ecx
	xorl	%eax, %eax
#APP
# 183 "ABigInt.cpp" 1
	clc
l2:	mov	(%rsi, %rbx), %rax
	sbb	%rax, (%rdx, %rbx)
	lea	8(%rbx), %rbx
	dec	%ecx
	jnz	l2
	
# 0 "" 2
#NO_APP
	movq	%rdi, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN6BigIntmIERKS_, .-_ZN6BigIntmIERKS_
	.globl	_ZN6BigInt2WSE
	.data
	.align 4
	.type	_ZN6BigInt2WSE, @object
	.size	_ZN6BigInt2WSE, 4
_ZN6BigInt2WSE:
	.long	8
	.globl	_ZN6BigIntC1Eii
	.set	_ZN6BigIntC1Eii,_ZN6BigIntC2Eii
	.globl	_ZN6BigIntC1Ei
	.set	_ZN6BigIntC1Ei,_ZN6BigIntC2Ei
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
