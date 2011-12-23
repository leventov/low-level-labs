	.file	"ABigInt.cpp"
	.globl	_ZN6BigInt2WSE
	.data
	.align 4
	.type	_ZN6BigInt2WSE, @object
	.size	_ZN6BigInt2WSE, 4
_ZN6BigInt2WSE:
	.long	4
	.text
	.align 2
	.globl	_ZN6BigIntC2Eii
	.type	_ZN6BigIntC2Eii, @function
_ZN6BigIntC2Eii:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	_ZN6BigInt2WSE, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN6BigIntC2Eii, .-_ZN6BigIntC2Eii
	.align 2
	.globl	_ZN6BigIntC2Ei
	.type	_ZN6BigIntC2Ei, @function
_ZN6BigIntC2Ei:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$2, 4(%eax)
	movl	_ZN6BigInt2WSE, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN6BigIntC2Ei, .-_ZN6BigIntC2Ei
	.globl	_ZN6BigInt3ONEE
	.bss
	.align 4
	.type	_ZN6BigInt3ONEE, @object
	.size	_ZN6BigInt3ONEE, 8
_ZN6BigInt3ONEE:
	.zero	8
	.globl	_ZN6BigInt4ZEROE
	.align 4
	.type	_ZN6BigInt4ZEROE, @object
	.size	_ZN6BigInt4ZEROE, 8
_ZN6BigInt4ZEROE:
	.zero	8
	.text
	.align 2
	.globl	_ZN6BigIntpLERKS_
	.type	_ZN6BigIntpLERKS_, @function
_ZN6BigIntpLERKS_:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZN6BigInt4growEi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %ebx
	movl	$0, %eax
#APP
# 52 "ABigInt.cpp" 1
	clc
l1:	mov	(%ebx), %eax
	adc	%eax, (%edx)
	lahf
	add	$4, %edx
	add	$4, %ebx
	sahf
	loop	l1
	jnc	.L4

# 0 "" 2
#NO_APP
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN6BigInt5allocEi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	$1, (%eax)
.L4:
	movl	8(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN6BigIntpLERKS_, .-_ZN6BigIntpLERKS_
	.align 2
	.globl	_ZN6BigIntmIERKS_
	.type	_ZN6BigIntmIERKS_, @function
_ZN6BigIntmIERKS_:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	$0, %eax
#APP
# 77 "ABigInt.cpp" 1
	clc
l2:	mov	(%ebx), %eax
	sbb	%eax, (%edx)
	lahf
	add	$4, %edx
	add	$4, %ebx
	sahf
	loop	l2
	
# 0 "" 2
#NO_APP
	movl	8(%ebp), %eax
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_def_cfa 4, 4
	.cfi_restore 5
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN6BigIntmIERKS_, .-_ZN6BigIntmIERKS_
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L6
	cmpl	$65535, 12(%ebp)
	jne	.L6
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$_ZN6BigInt3ONEE, (%esp)
	call	_ZN6BigIntC1Eii
	movl	$_ZN6BigIntD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZN6BigInt3ONEE, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	$_ZN6BigInt4ZEROE, (%esp)
	call	_ZN6BigIntC1Eii
	movl	$_ZN6BigIntD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZN6BigInt4ZEROE, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN6BigInt2WSE, @function
_GLOBAL__sub_I__ZN6BigInt2WSE:
.LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	_GLOBAL__sub_I__ZN6BigInt2WSE, .-_GLOBAL__sub_I__ZN6BigInt2WSE
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__sub_I__ZN6BigInt2WSE
	.globl	_ZN6BigIntC1Eii
	.set	_ZN6BigIntC1Eii,_ZN6BigIntC2Eii
	.globl	_ZN6BigIntC1Ei
	.set	_ZN6BigIntC1Ei,_ZN6BigIntC2Ei
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",@progbits
