	.file	"ABigInt.cpp"
.globl _ZN6BigInt2WSE
	.data
	.align 4
	.type	_ZN6BigInt2WSE, @object
	.size	_ZN6BigInt2WSE, 4
_ZN6BigInt2WSE:
	.long	8
	.text
	.align 2
.globl _ZN6BigIntC2Eii
	.type	_ZN6BigIntC2Eii, @function
_ZN6BigIntC2Eii:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	_ZN6BigInt2WSE(%rip), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN6BigIntC2Eii, .-_ZN6BigIntC2Eii
.globl _ZN6BigIntC1Eii
	.set	_ZN6BigIntC1Eii,_ZN6BigIntC2Eii
	.align 2
.globl _ZN6BigIntC2Ei
	.type	_ZN6BigIntC2Ei, @function
_ZN6BigIntC2Ei:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movl	_ZN6BigInt2WSE(%rip), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN6BigIntC2Ei, .-_ZN6BigIntC2Ei
.globl _ZN6BigIntC1Ei
	.set	_ZN6BigIntC1Ei,_ZN6BigIntC2Ei
.globl _ZN6BigInt3ONEE
	.bss
	.align 16
	.type	_ZN6BigInt3ONEE, @object
	.size	_ZN6BigInt3ONEE, 16
_ZN6BigInt3ONEE:
	.zero	16
.globl _ZN6BigInt4ZEROE
	.align 16
	.type	_ZN6BigInt4ZEROE, @object
	.size	_ZN6BigInt4ZEROE, 16
_ZN6BigInt4ZEROE:
	.zero	16
	.text
	.align 2
.globl _ZN6BigIntpLERKS_
	.type	_ZN6BigIntpLERKS_, @function
_ZN6BigIntpLERKS_:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	_ZN6BigInt4growEi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rbx
	movl	$0, %eax
#APP
# 52 "ABigInt.cpp" 1
	clc
l1:	mov	(%rbx), %rax
	adc	%rax, (%rdx)
	lahf
	add	$8, %rdx
	add	$8, %rbx
	sahf
	loop	l1
	jnc	.L4

# 0 "" 2
#NO_APP
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN6BigInt5allocEi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$1, (%rax)
.L4:
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN6BigIntpLERKS_, .-_ZN6BigIntpLERKS_
	.align 2
.globl _ZN6BigIntmIERKS_
	.type	_ZN6BigIntmIERKS_, @function
_ZN6BigIntmIERKS_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rbx
	.cfi_offset 3, -24
	movl	$0, %eax
#APP
# 77 "ABigInt.cpp" 1
	clc
l2:	mov	(%rbx), %rax
	sbb	%rax, (%rdx)
	lahf
	add	$8, %rdx
	add	$8, %rbx
	sahf
	loop	l2
	
# 0 "" 2
#NO_APP
	movq	-32(%rbp), %rax
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN6BigIntmIERKS_, .-_ZN6BigIntmIERKS_
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L6
	cmpl	$65535, -8(%rbp)
	jne	.L6
	movl	$1, %edx
	movl	$1, %esi
	movl	$_ZN6BigInt3ONEE, %edi
	call	_ZN6BigIntC1Eii
	movl	$_ZN6BigIntD1Ev, %eax
	movl	$__dso_handle, %edx
	movl	$_ZN6BigInt3ONEE, %esi
	movq	%rax, %rdi
	call	__cxa_atexit
	movl	$0, %edx
	movl	$1, %esi
	movl	$_ZN6BigInt4ZEROE, %edi
	call	_ZN6BigIntC1Eii
	movl	$_ZN6BigIntD1Ev, %eax
	movl	$__dso_handle, %edx
	movl	$_ZN6BigInt4ZEROE, %esi
	movq	%rax, %rdi
	call	__cxa_atexit
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I__ZN6BigInt2WSE, @function
_GLOBAL__I__ZN6BigInt2WSE:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	_GLOBAL__I__ZN6BigInt2WSE, .-_GLOBAL__I__ZN6BigInt2WSE
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__I__ZN6BigInt2WSE
	.ident	"GCC: (SUSE Linux) 4.5.0 20100604 [gcc-4_5-branch revision 160292]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"ospwg"
	.section	.note.GNU-stack,"",@progbits
